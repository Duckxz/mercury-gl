:- module test_gl.
:- interface.
:- import_module io,list.
:- pred main(io::di,io::uo) is det.
:- pred main_loop(io::di,io::uo) is det.
:- pred render(io::di,io::uo) is det.
:- pred render_verticelist(list(list(float))::in,io::di,io::uo) is det.
:- pred native_create_window(io::di,io::uo) is det.
:- pred native_destroy_application(io::di,io::uo) is det.
:- pred native_check_should_close(int::out,io::di,io::uo) is det.
:- pred native_config_window(io::di,io::uo) is det.
:- pred native_swap_buffers_and_poll(io::di,io::uo) is det.


:- implementation.
:- mutable(vertices,list(list(float)),[[-0.5,0.5,0.0],[0.5,0.5,0.0],[0.8,0.0,0.0],[0.5,-0.5,0.0],[-0.5,-0.5,0.0],[-0.8,0.0,0.0]],ground,[untrailed,attach_to_io_state]).

:- pragma foreign_decl("C","#include <GLFW/glfw3.h>").
:- pragma foreign_decl("C","#include <unistd.h>").
:- pragma foreign_decl("C","static GLFWwindow* win;").
:- pragma foreign_decl("C","static int fbw,fbh;").

:- import_module gl,int,float,list.
:- pragma foreign_proc("C",native_create_window(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  if(!glfwInit())
    _exit(-1);

  win = glfwCreateWindow(1920,1080,\"test\",NULL,NULL);
  if(!win)
    _exit(-2);

  glfwMakeContextCurrent(win);
  IO1 = IO0;
").

:- pragma foreign_proc("C",native_destroy_application(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  IO1 = IO0;
  printf(\"terminating\");
  glfwTerminate();
  _exit(0);
").

:- pragma foreign_proc("C",native_check_should_close(ShouldClose::out,IO0::di,IO1::uo),[promise_pure],
"
  ShouldClose = glfwWindowShouldClose(win);
  IO1 = IO0;
").

:- pragma foreign_proc("C",native_config_window(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glfwGetFramebufferSize(win,&fbw,&fbh);
  glViewport(0,0,fbw,fbh);
  IO1 = IO0;
").

:- pragma foreign_proc("C",native_swap_buffers_and_poll(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glfwSwapBuffers(win);
  glfwPollEvents();
  IO1 = IO0;
").




render_verticelist(Lst,!IO) :-
  (
    if list.is_empty(Lst) then
      true``
    else
     Vertice = list.det_head(Lst),
     list.det_index0(Vertice,0,Vert1),
     list.det_index0(Vertice,1,Vert2),
     list.det_index0(Vertice,2,Vert3),
     glColor3f(0.1,0.1,0.1,!IO),
     glVertex3f(Vert1,Vert2,Vert3,!IO),
     render_verticelist(list.det_tail(Lst),!IO)
  ).

render(!IO) :-
  glClearColor(1.0,1.0,1.0,1.0,!IO),
  glClear(gl_color_buffer_bit,!IO),
  glMatrixMode(gl_projection,!IO),
  glLoadIdentity(!IO),
  glMatrixMode(gl_modelview,!IO),
  glLoadIdentity(!IO),
  glPushMatrix(!IO),
    glBegin(gl_polygon,!IO),
    get_vertices(Vertices,!IO),
    render_verticelist(Vertices,!IO),
    glEnd(!IO),
  glPopMatrix(!IO).

main_loop(!IO) :-
  native_check_should_close(ShouldClose,!IO),
  (
    if ShouldClose = 1 then
      native_destroy_application(!IO)
    else
      native_config_window(!IO),
      render(!IO),
      native_swap_buffers_and_poll(!IO),
      main_loop(!IO)
  ).

main(!IO) :-
  io.write_string("initializing...\n",!IO),
  native_create_window(!IO),
  io.write_string("window created, entering main loop\n",!IO),
  main_loop(!IO).
