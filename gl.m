:- module gl.
:- interface.
:- import_module io,int,uint,float.

:- type glboolean == int.
:- type glboolean_ptr.
:- type glbitfield.
:- type glvoid.
:- type glvoid_ptr.
:- type glbyte.
:- type glbyte_ptr.
:- type glshort == int.
:- type glshort_ptr.
:- type glint == int.
:- type glint_ptr.
:- type glubyte.
:- type glubyte_ptr.
:- type glushort.
:- type glushort_ptr.
:- type gluint == uint.
:- type gluint_ptr.
:- type glsizei == int.
:- type glfloat == float.
:- type glfloat_ptr.
:- type glclampf == float.
:- type glclampf_ptr.
:- type gldouble == float.
:- type gldouble_ptr.
:- type glclampd == float.
:- type glclampd_ptr.

:- type glenum
  ---> gl_false
  ; gl_true
  ; gl_byte
  ; gl_unsigned_byte
  ; gl_short
  ; gl_unsigned_short
  ; gl_int
  ; gl_unsigned_int
  ; gl_float
  ; gl_2_bytes
  ; gl_3_bytes
  ; gl_4_bytes
  ; gl_double
  ; gl_points
  ; gl_lines
  ; gl_line_loop
  ; gl_line_strip
  ; gl_triangles
  ; gl_triangle_strip
  ; gl_triangle_fan
  ; gl_quads
  ; gl_quad_strip
  ; gl_polygon
  ; gl_vertex_array
  ; gl_normal_array
  ; gl_color_array
  ; gl_index_array
  ; gl_texture_coord_array
  ; gl_edge_flag_array
  ; gl_vertex_array_size
  ; gl_vertex_array_type
  ; gl_vertex_array_stride
  ; gl_normal_array_type
  ; gl_normal_array_stride
  ; gl_color_array_size
  ; gl_color_array_type
  ; gl_color_array_stride
  ; gl_index_array_type
  ; gl_index_array_stride
  ; gl_texture_coord_array_size
  ; gl_texture_coord_array_type
  ; gl_texture_coord_array_stride
  ; gl_edge_flag_array_stride
  ; gl_vertex_array_pointer
  ; gl_normal_array_pointer
  ; gl_color_array_pointer
  ; gl_index_array_pointer
  ; gl_texture_coord_array_pointer
  ; gl_edge_flag_array_pointer
  ; gl_v2f
  ; gl_v3f
  ; gl_c4ub_v2f
  ; gl_c4ub_v3f
  ; gl_c3f_v3f
  ; gl_n3f_v3f
  ; gl_c4f_n3f_v3f
  ; gl_t2f_v3f
  ; gl_t4f_v4f
  ; gl_t2f_c4ub_v3f
  ; gl_t2f_c3f_v3f
  ; gl_t2f_n3f_v3f
  ; gl_t2f_c4f_n3f_v3f
  ; gl_t4f_c4f_n3f_v4f
  ; gl_matrix_mode
  ; gl_modelview
  ; gl_projection
  ; gl_texture
  ; gl_point_smooth
  ; gl_point_size
  ; gl_point_size_granularity
  ; gl_point_size_range
  ; gl_line_smooth
  ; gl_line_stipple
  ; gl_line_stipple_pattern
  ; gl_lne_stipple_repeat
  ; gl_line_width
  ; gl_line_width_granularity
  ; gl_line_width_range
  ; gl_point
  ; gl_line
  ; gl_fill
  ; gl_cw
  ; gl_ccw
  ; gl_front
  ; gl_back
  ; gl_polygon_mode
  ; gl_polygon_smooth
  ; gl_polygon_stipple
  ; gl_edge_flag
  ; gl_cull_face
  ; gl_cull_face_mode
  ; gl_front_face
  ; gl_polygon_offset_factor
  ; gl_polygon_offset_units
  ; gl_polygon_offset_point
  ; gl_polygon_offset_line
  ; gl_polygon_offset_fill
  ; gl_compile
  ; gl_compile_and_execute
  ; gl_list_base
  ; gl_list_index
  ; gl_list_mode
  ; gl_never
  ; gl_less
  ; gl_equal
  ; gl_lequal
  ; gl_greater
  ; gl_notequal
  ; gl_gequal
  ; gl_always
  ; gl_depth_test
  ; gl_depth_bits
  ; gl_depth_clear_value
  ; gl_depth_func
  ; gl_depth_range
  ; gl_depth_writemask
  ; gl_depth_component
  ; gl_lighting
  ; gl_light0
  ; gl_light1
  ; gl_light2
  ; gl_light3
  ; gl_light4
  ; gl_light5
  ; gl_light6
  ; gl_light7
  ; gl_spot_exponent
  ; gl_spot_cutoff
  ; gl_linear_attenuation
  ; gl_quadratic_attenuation
  ; gl_ambient
  ; gl_diffuse
  ; gl_specular
  ; gl_shininess
  ; gl_emission
  ; gl_position
  ; gl_spot_direction
  ; gl_ambient_and_diffuse
  ; gl_color_indexes
  ; gl_light_model_two_side
  ; gl_light_model_local_viewer
  ; gl_light_model_ambient
  ; gl_front_and_back
  ; gl_shade_model
  ; gl_flat
  ; gl_smooth
  ; gl_color_material
  ; gl_color_material_face
  ; gl_color_material_parameter
  ; gl_normalize
  ; gl_clip_plane0
  ; gl_clip_plane1
  ; gl_clip_plane2
  ; gl_clip_plane3
  ; gl_clip_plane4
  ; gl_clip_plane5
  ; gl_accum_red_bits
  ; gl_accum_green_bits
  ; gl_accum_blue_bits
  ; gl_accum_alpha_bits
  ; gl_accum_clear_value
  ; gl_accum
  ; gl_add
  ; gl_load
  ; gl_mult
  ; gl_return
  ; gl_alpha_test
  ; gl_alpha_test_ref
  ; gl_alpha_test_func
  ; gl_blend
  ; gl_blend_src
  ; gl_blend_dst
  ; gl_zero
  ; gl_one
  ; gl_src_color
  ; gl_one_minus_src_color
  ; gl_src_alpha
  ; gl_one_minus_src_alpha
  ; gl_dst_alpha
  ; gl_one_minus_dst_alpha
  ; gl_dst_color
  ; gl_one_minus_dst_color
  ; gl_feedback
  ; gl_render
  ; gl_select
  ; gl_2d
  ; gl_3d
  ; gl_3d_color
  ; gl_3d_color_texture
  ; gl_4d_color_texture
  ; gl_point_token
  ; gl_line_token
  ; gl_line_reset_token
  ; gl_polygon_token
  ; gl_bitmap_token
  ; gl_draw_pixel_token
  ; gl_copy_pixel_token
  ; gl_pass_through_token
  ; gl_feedback_buffer_pointer
  ; gl_feedback_buffer_size
  ; gl_selection_buffer_pointer
  ; gl_selection_buffer_size
  ; gl_fog
  ; gl_fog_mode
  ; gl_fog_density
  ; gl_fog_color
  ; gl_fog_index
  ; gl_fog_start
  ; gl_fog_end
  ; gl_linear
  ; gl_exp
  ; gl_exp2
  ; gl_logic_op
  ; gl_index_logic_op
  ; gl_color_logic_op
  ; gl_logic_op_mode
  ; gl_clear
  ; gl_set
  ; gl_copy
  ; gl_copy_inverted
  ; gl_noop
  ; gl_invert
  ; gl_and
  ; gl_nand
  ; gl_or
  ; gl_nor
  ; gl_xor
  ; gl_equiv
  ; gl_and_reverse
  ; gl_and_inverted
  ; gl_or_reverse
  ; gl_or_inverted
  ; gl_stencil_bits
  ; gl_stencil_test
  ; gl_stencil_clear_value
  ; gl_stencil_func
  ; gl_stencil_value_mask
  ; gl_stencil_fail
  ; gl_stencil_pass_depth_fail
  ; gl_stencil_pass_depth_pass
  ; gl_stencil_ref
  ; gl_stencil_writemask
  ; gl_stencil_index
  ; gl_keep
  ; gl_replace
  ; gl_incr
  ; gl_decr
  ; gl_none
  ; gl_left
  ; gl_right
  ; gl_front_left
  ; gl_front_right
  ; gl_back_left
  ; gl_back_right
  ; gl_aux0
  ; gl_aux1
  ; gl_aux2
  ; gl_aux3
  ; gl_color_index
  ; gl_red
  ; gl_green
  ; gl_blue
  ; gl_alpha
  ; gl_luminance
  ; gl_luminance_alpha
  ; gl_alpha_bits
  ; gl_red_bits
  ; gl_green_bits
  ; gl_blue_bits
  ; gl_index_bits
  ; gl_subpixel_bits
  ; gl_aux_buffers
  ; gl_read_buffer
  ; gl_draw_buffer
  ; gl_doublebuffer
  ; gl_stereo
  ; gl_bitmap
  ; gl_color
  ; gl_depth
  ; gl_stencil
  ; gl_dither
  ; gl_rgb
  ; gl_rgba
  ; gl_max_list_nesting
  ; gl_max_eval_order
  ; gl_max_lights
  ; gl_max_clip_planes
  ; gl_max_texture_size
  ; gl_max_pixel_map_table
  ; gl_max_attrib_stack_depth
  ; gl_max_modelview_stack_depth
  ; gl_max_name_stack_depth
  ; gl_max_projection_stack_depth
  ; gl_max_texture_stack_depth
  ; gl_max_viewport_dims
  ; gl_max_client_attrib_stack_depth
  ; gl_attrib_stack_depth
  ; gl_client_attrib_stack_depth
  ; gl_color_clear_value
  ; gl_color_writemask
  ; gl_current_index
  ; gl_current_color
  ; gl_current_normal
  ; gl_current_raster_color
  ; gl_current_raster_distance
  ; gl_current_raster_index
  ; gl_current_raster_position
  ; gl_current_raster_texture_coords
  ; gl_current_raster_position_valid
  ; gl_current_texture_coords
  ; gl_index_clear_value
  ; gl_index_mode
  ; gl_index_writemask
  ; gl_modelview_matrix
  ; gl_modelview_stack_depth
  ; gl_name_stack_depth
  ; gl_projection_matrix
  ; gl_projection_stack_depth
  ; gl_render_mode
  ; gl_rgba_mode
  ; gl_texture_matrix
  ; gl_texture_stack_depth
  ; gl_viewport
  ; gl_auto_normal
  ; gl_map1_color_4
  ; gl_map1_index
  ; gl_map1_normal
  ; gl_map1_texture_coord_1
  ; gl_map1_texture_coord_2
  ; gl_map1_texture_coord_3
  ; gl_map1_texutre_coord_4
  ; gl_map1_vertex_3
  ; gl_map1_vertex_4
  ; gl_map2_color_4
  ; gl_map2_index
  ; gl_map2_normal
  ; gl_map2_texture_coord_1
  ; gl_map2_texture_coord_2
  ; gl_map2_texture_coord_3
  ; gl_map2_texture_coord_4
  ; gl_map2_vertex_3
  ; gl_map2_vertex_4
  ; gl_map1_grid_domain
  ; gl_map1_grid_segments
  ; gl_map2_grid_domain
  ; gl_map2_grid_segments
  ; gl_coeff
  ; gl_order
  ; gl_domain
  ; gl_perspective_correction_hint
  ; gl_point_smooth_hint
  ; gl_line_smooth_hint
  ; gl_polygon_smooth_hint
  ; gl_fog_hint
  ; gl_dont_care
  ; gl_fastest
  ; gl_nicest
  ; gl_scissor_box
  ; gl_scissor_test
  ; gl_map_color
  ; gl_map_stencil
  ; gl_index_shift
  ; gl_index_offset
  ; gl_red_scale
  ; gl_red_bias
  ; gl_green_scale
  ; gl_green_bias
  ; gl_blue_scale
  ; gl_blue_bias
  ; gl_alpha_scale
  ; gl_alpha_bias
  ; gl_depth_scale
  ; gl_depth_bias
  ; gl_pixel_map_s_to_s_size
  ; gl_pixel_map_i_to_i_size
  ; gl_pixel_map_i_to_r_size
  ; gl_pixel_map_i_to_g_size
  ; gl_pixel_map_i_to_b_size
  ; gl_pixel_map_i_to_a_size
  ; gl_pixel_map_r_to_r_size
  ; gl_pixel_map_g_to_g_size
  ; gl_pixel_map_b_to_b_size
  ; gl_pixel_map_a_to_a_size
  ; gl_pixel_map_s_to_s
  ; gl_pixel_map_i_to_i
  ; gl_pixel_map_i_to_r
  ; gl_pixel_map_i_to_g
  ; gl_pixel_map_i_to_b
  ; gl_pixel_map_i_to_a
  ; gl_pixel_map_r_to_r
  ; gl_pixel_map_g_to_g
  ; gl_pixel_map_b_to_b
  ; gl_pixel_map_a_to_a
  ; gl_pack_alignment
  ; gl_pack_lsb_first
  ; gl_pack_row_length
  ; gl_pack_skip_pixels
  ; gl_pack_skip_rows
  ; gl_pack_swap_bytes
  ; gl_unpack_alignment
  ; gl_unpack_lsb_first
  ; gl_unpack_row_length
  ; gl_unpack_skip_pixels
  ; gl_unpack_skip_rows
  ; gl_unpack_swap_bytes
  ; gl_zoom_x
  ; gl_zoom_y
  ; gl_texture_env
  ; gl_texture_env_mode
  ; gl_texture_1d
  ; gl_texture_2d
  ; gl_texture_wrap_s
  ; gl_texture_wrap_t
  ; gl_texture_mag_filter
  ; gl_texture_min_filter
  ; gl_texture_env_color
  ; gl_texture_gen_s
  ; gl_texture_gen_t
  ; gl_texture_gen_r
  ; gl_texture_gen_q
  ; gl_texture_gen_mode
  ; gl_texture_border_color
  ; gl_texture_width
  ; gl_texture_height
  ; gl_texture_border
  ; gl_texture_components
  ; gl_texture_red_size
  ; gl_texture_green_size
  ; gl_texture_blue_size
  ; gl_texture_alpha_size
  ; gl_texture_luminance_size
  ; gl_texture_intensity_size
  ; gl_nearest_mipmap_nearest
  ; gl_nearest_mipmap_linear
  ; gl_linear_mipmap_nearest
  ; gl_linear_mipmap_linear
  ; gl_object_linear
  ; gl_object_plane
  ; gl_eye_linear
  ; gl_eye_plane
  ; gl_sphere_map
  ; gl_decal
  ; gl_modulate
  ; gl_nearest
  ; gl_repeat
  ; gl_clamp
  ; gl_s
  ; gl_t
  ; gl_r
  ; gl_q
  ; gl_vendor
  ; gl_renderer
  ; gl_version
  ; gl_extensions
  ; gl_no_error
  ; gl_invalid_enum
  ; gl_invalid_value
  ; gl_stack_overflow
  ; gl_stack_underflow
  ; gl_out_of_memory
  ; gl_current_bit
  ; gl_point_bit
  ; gl_line_bit
  ; gl_polygon_bit
  ; gl_polygon_stipple_bit
  ; gl_pixel_mode_bit
  ; gl_lighting_bit
  ; gl_fog_bit
  ; gl_depth_buffer_bit
  ; gl_accum_buffer_bit
  ; gl_stencil_buffer_bit
  ; gl_viewport_bit
  ; gl_transform_bit
  ; gl_enable_bit
  ; gl_color_buffer_bit
  ; gl_hint_bit
  ; gl_eval_bit
  ; gl_list_bit
  ; gl_texture_bit
  ; gl_scissor_bit
  ; gl_all_attrib_bits
  ; gl_rescale_normal
  ; gl_clamp_to_edge
  ; gl_max_elements_vertices
  ; gl_max_elements_indices
  ; gl_bgr
  ; gl_bgra
  ; gl_unsigned_byte_3_3_2
  ; gl_unsigned_byte_2_3_3_rev
  ; gl_unsigned_short_5_6_5
  ; gl_unsigned_short_5_6_5_rev
  ; gl_unsigned_short_4_4_4_4
  ; gl_unsigned_short_4_4_4_4_rev
  ; gl_unsigned_short_5_5_5_1
  ; gl_unsigned_short_1_5_5_5_rev
  ; gl_unsigned_int_8_8_8_8
  ; gl_unsigned_int_8_8_8_8_rev
  ; gl_unsigned_int_10_10_10_2
  ; gl_unsigned_int_2_10_10_10_rev
  ; gl_light_model_color_control
  ; gl_single_color
  ; gl_separate_specular_color
  ; gl_texture_min_lod
  ; gl_texture_max_lod
  ; gl_texture_base_level
  ; gl_texture_max_level
  ; gl_smooth_point_size_range
  ; gl_smooth_point_size_granularity
  ; gl_smooth_line_width_range
  ; gl_smooth_line_width_granularity
  ; gl_aliased_point_size_range
  ; gl_aliased_line_width_range
  ; gl_pack_skip_images
  ; gl_pack_image_height
  ; gl_unpack_skip_images
  ; gl_unpack_image_height
  ; gl_texture_3d
  ; gl_proxy_texture_3d
  ; gl_texture_depth
  ; gl_texture_wrap_r
  ; gl_max_3d_texture_size
  ; gl_texture_binding_3d
  ; gl_color_table
  ; gl_post_convolution_color_table
  ; gl_post_color_matrix_color_table
  ; gl_proxy_color_table
  ; gl_proxy_post_convolution_color_table
  ; gl_proxy_post_color_matrix_color_table
  ; gl_color_table_scale
  ; gl_color_table_bias
  ; gl_color_table_format
  ; gl_color_table_width
  ; gl_color_table_red_size
  ; gl_color_table_green_size
  ; gl_color_table_blue_size
  ; gl_color_table_alpha_size
  ; gl_color_table_luminance_size
  ; gl_color_table_intensity_size
  ; gl_convolution_1d
  ; gl_convolution_2d
  ; gl_separable_2d
  ; gl_convolution_border_mode
  ; gl_convolution_filter_scale
  ; gl_convolution_filter_bias
  ; gl_reduce
  ; gl_convolution_format
  ; gl_convolution_width
  ; gl_convolution_height
  ; gl_max_convolution_width
  ; gl_max_convolution_height
  ; gl_post_convolution_red_scale
  ; gl_post_convolution_green_scale
  ; gl_post_convolution_blue_scale
  ; gl_post_convolution_alpha_scale
  ; gl_post_convolution_red_bias
  ; gl_post_convolution_green_bias
  ; gl_post_convolution_blue_bias
  ; gl_post_convolution_alpha_bias
  ; gl_replicate_border
  ; gl_convolution_border_color
  ; gl_color_matrix
  ; gl_color_matrix_stack_depth
  ; gl_max_color_matrix_stack_depth
  ; gl_post_color_matrix_red_scale
  ; gl_post_color_matrix_green_scale
  ; gl_post_color_matrix_blue_scale
  ; gl_post_color_matrix_alpha_scale
  ; gl_post_color_matrix_red_bias
  ; gl_post_color_matrix_green_bias
  ; gl_post_color_matrix_blue_bias
  ; gl_post_color_matrix_alpha_bias
  ; gl_histogram
  ; gl_proxy_histogram
  ; gl_histogram_width
  ; gl_histogram_format
  ; gl_histogram_red_size
  ; gl_histogram_green_size
  ; gl_histogram_blue_size
  ; gl_histogram_alpha_size
  ; gl_histogram_luminance_size
  ; gl_histogram_sink
  ; gl_minmax
  ; gl_minmax_format
  ; gl_minmax_sink
  ; gl_table_too_large
  ; gl_blend_equation
  ; gl_min
  ; gl_max
  ; gl_func_add
  ; gl_func_subtract
  ; gl_func_reverse_subtract
  ; gl_blend_color
  ; gl_texture0
  ; gl_texture1
  ; gl_texture2
  ; gl_texture3
  ; gl_texture4
  ; gl_texture5
  ; gl_texture6
  ; gl_texture7
  ; gl_texture8
  ; gl_texture9
  ; gl_texture10
  ; gl_texture11
  ; gl_texture12
  ; gl_texture13
  ; gl_texture14
  ; gl_texture15
  ; gl_texture16
  ; gl_texture17
  ; gl_texture18
  ; gl_texture19
  ; gl_texture20
  ; gl_texture21
  ; gl_texture22
  ; gl_texture23
  ; gl_texture24
  ; gl_texture25
  ; gl_texture26
  ; gl_texture27
  ; gl_texture28
  ; gl_texture29
  ; gl_texture30
  ; gl_texture31
  ; gl_active_texture
  ; gl_client_active_texture
  ; gl_max_texture_units
  ; gl_normal_map
  ; gl_reflection_map
  ; gl_texture_cube_map
  ; gl_texture_binding_cube_map
  ; gl_texture_cube_map_positive_x
  ; gl_texture_cube_map_negative_x
  ; gl_texture_cube_map_positive_y
  ; gl_texture_cube_map_negative_y
  ; gl_texture_cube_map_positive_z
  ; gl_texture_cube_map_negative_z
  ; gl_proxy_texture_cube_map
  ; gl_max_cube_map_texture_size
  ; gl_compressed_alpha
  ; gl_compressed_luminance
  ; gl_compressed_luminance_alpha
  ; gl_compressed_intensity
  ; gl_compressed_rgb
  ; gl_compressed_rgba
  ; gl_texture_compression_hint
  ; gl_texture_compressed_image_size
  ; gl_texture_compressed
  ; gl_num_compressed_texture_formats
  ; gl_compressed_texture_formats
  ; gl_multisample
  ; gl_sample_alpha_to_coverage
  ; gl_sample_alpha_to_one
  ; gl_sample_coverage
  ; gl_sample_buffers
  ; gl_samples
  ; gl_sample_coverage_value
  ; gl_sample_coverage_invert
  ; gl_multisample_bit
  ; gl_transpose_modelview_matrix
  ; gl_transpose_projection_matrix
  ; gl_transpose_texture_matrix
  ; gl_transpose_color_matrix
  ; gl_combine
  ; gl_combine_alpha
  ; gl_source0_rgb
  ; gl_source1_rgb
  ; gl_source2_rgb
  ; gl_source0_alpha
  ; gl_source1_alpha
  ; gl_source2_alpha
  ; gl_operand0_rgb
  ; gl_operand1_rgb
  ; gl_operand2_rgb
  ; gl_operand0_alpha
  ; gl_operand1_alpha
  ; gl_operand2_alpha
  ; gl_rgb_scale
  ; gl_add_signed
  ; gl_interpolate
  ; gl_subtract
  ; gl_primary_color
  ; gl_previous
  ; gl_dot3_rgb
  ; gl_dot3_rgba
  ; gl_clamp_to_border
  ; gl_texture0_arb
  ; gl_texture1_arb
  ; gl_texture2_arb
  ; gl_texture3_arb
  ; gl_texture4_arb
  ; gl_texture5_arb
  ; gl_texture6_arb
  ; gl_texture7_arb
  ; gl_texture8_arb
  ; gl_texture9_arb
  ; gl_texture10_arb
  ; gl_texture11_arb
  ; gl_texture12_arb
  ; gl_texture13_arb
  ; gl_texture14_arb
  ; gl_texture15_arb
  ; gl_texture16_arb
  ; gl_texture17_arb
  ; gl_texture18_arb
  ; gl_texture19_arb
  ; gl_texture20_arb
  ; gl_texture21_arb
  ; gl_texture22_arb
  ; gl_texture23_arb
  ; gl_texture24_arb
  ; gl_texture25_arb
  ; gl_texture26_arb
  ; gl_texture27_arb
  ; gl_texture28_arb
  ; gl_texture29_arb
  ; gl_texture30_arb
  ; gl_texture31_arb
  ; gl_active_texture_arb
  ; gl_client_active_texture_arb
  ; gl_max_texture_units_arb
  ; gl_depth_stencil_mesa
  ; gl_unsigned_int_24_8_mesa
  ; gl_unsigned_int_8_24_rev_mesa
  ; gl_unsigned_short_15_1_mesa
  ; gl_unsigned_short_1_15_rev_mesa
  ; gl_alpha_blend_equation_ati.

:- pred glClearIndex(glfloat::in,io::di,io::uo) is det.
:- pred glClearColor(glclampf::in,glclampf::in,glclampf::in,glclampf::in,io::di,io::uo) is det.
:- pred glClear(glbitfield::in,io::di,io::uo) is det.
:- pred glIndexMask(gluint::in,io::di,io::uo) is det.
:- pred glColorMask(glboolean::in,glboolean::in,glboolean::in,glboolean::in,io::di,io::uo) is det.
:- pred glAlphaFunc(glenum::in,glclampf::in,io::di,io::uo) is det.
:- pred glBlendFunc(glenum::in,glenum::in,io::di,io::uo) is det.
:- pred glLogicOp(glenum::in,io::di,io::uo) is det.
:- pred glCullFace(glenum::in,io::di,io::uo) is det.
:- pred glFrontFace(glenum::in,io::di,io::uo) is det.
:- pred glPointSize(glfloat::in,io::di,io::uo) is det.
:- pred glLineWidth(glfloat::in,io::di,io::uo) is det.
:- pred glLineStipple(glint::in,glushort::in,io::di,io::uo) is det.
:- pred glPolygonMode(glenum::in,glenum::in,io::di,io::uo) is det.
:- pred glPolygonOffset(glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glPolygonStipple(glubyte_ptr::in,io::di,io::uo) is det.
:- pred glGetPolygonStipple(glubyte_ptr::in,io::di,io::uo) is det.
:- pred glEdgeFlag(glboolean::in,io::di,io::uo) is det.
:- pred glEdgeFlagv(glboolean_ptr::in,io::di,io::uo) is det.
:- pred glScissor(glint::in,glint::in,glsizei::in,glsizei::in,io::di,io::uo) is det.
:- pred glClipPlane(glenum::in,gldouble_ptr::in,io::di,io::uo) is det.
:- pred glGetClipPlane(glenum::in,gldouble_ptr::in,io::di,io::uo) is det.
:- pred glDrawBuffer(glenum::in,io::di,io::uo) is det.
:- pred glReadBuffer(glenum::in,io::di,io::uo) is det.
:- pred glEnable(glenum::in,io::di,io::uo) is det.
:- pred glDisable(glenum::in,io::di,io::uo) is det.
:- func glIsEnabled(glenum::in,io::di,io::uo) = (glboolean::out) is det.
:- pred glEnableClientState(glenum::in,io::di,io::uo) is det.
:- pred glDisableClientState(glenum::in,io::di,io::uo) is det.
:- pred glGetBooleanv(glenum::in,glboolean_ptr::in,io::di,io::uo) is det.
:- pred glGetDoublev(glenum::in,gldouble_ptr::in,io::di,io::uo) is det.
:- pred glGetFloatv(glenum::in,glfloat_ptr::in,io::di,io::uo) is det.
:- pred glGetIntegerv(glenum::in,glint_ptr::in,io::di,io::uo) is det.
:- pred glPushAttrib(glbitfield::in,io::di,io::uo) is det.
:- pred glPopAttrib(io::di,io::uo) is det.
:- pred glPushClientAttrib(glbitfield::in,io::di,io::uo) is det.
:- pred glPopClientAttrib(io::di,io::uo) is det.
:- func glRenderMode(glenum::in,io::di,io::uo) = (glint::out) is det.
:- func glGetError(io::di,io::uo) = (glenum::out) is det.
:- func glGetString(glenum::in,io::di,io::uo) = (glubyte_ptr::out) is det.
:- pred glFinish(io::di,io::uo) is det.
:- pred glFlush(io::di,io::uo) is det.
:- pred glHint(glenum::in,glenum::in,io::di,io::uo) is det.
:- pred glClearDepth(glclampd::in,io::di,io::uo) is det.
:- pred glDepthFunc(glenum::in,io::di,io::uo) is det.
:- pred glDepthMask(glboolean::in,io::di,io::uo) is det.
:- pred glDepthRange(glclampd::in,glclampd::in,io::di,io::uo) is det.
:- pred glClearAccum(glfloat::in,glfloat::in,glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glAccum(glenum::in,glfloat::in,io::di,io::uo) is det.
:- pred glMatrixMode(glenum::in,io::di,io::uo) is det.
:- pred glOrtho(gldouble::in,gldouble::in,gldouble::in,gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glFrustum(gldouble::in,gldouble::in,gldouble::in,gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glViewport(glint::in,glint::in,glsizei::in,glsizei::in,io::di,io::uo) is det.
:- pred glPushMatrix(io::di,io::uo) is det.
:- pred glPopMatrix(io::di,io::uo) is det.
:- pred glLoadIdentity(io::di,io::uo) is det.
:- pred glLoadMatrixd(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glLoadMatrixf(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glMultMatrixd(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glMultMatrixf(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glRotated(gldouble::in,gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glRotatef(glfloat::in,glfloat::in,glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glScaled(gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glScalef(glfloat::in,glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glTranslated(gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glTranslatef(glfloat::in,glfloat::in,glfloat::in,io::di,io::uo) is det.
:- func glIsList(gluint::in,io::di,io::uo) = (glboolean::out) is det.
:- pred glDeleteLists(gluint::in,glsizei::in,io::di,io::uo) is det.
:- func glGenLists(glsizei::in,io::di,io::uo) = (gluint::out) is det.
:- pred glNewList(gluint::in,glenum::in,io::di,io::uo) is det.
:- pred glCallList(gluint::in,io::di,io::uo) is det.
:- pred glCallLists(glsizei::in,glenum::in,glvoid_ptr::in,io::di,io::uo) is det.
:- pred glListBase(gluint::in,io::di,io::uo) is det.
:- pred glBegin(glenum::in,io::di,io::uo) is det.
:- pred glEnd(io::di,io::uo) is det.
:- pred glVertex2d(gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glVertex2f(glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glVertex2i(glint::in,glint::in,io::di,io::uo) is det.
:- pred glVertex2s(glshort::in,glshort::in,io::di,io::uo) is det.
:- pred glVertex3d(gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glVertex3f(glfloat::in,glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glVertex3i(glint::in,glint::in,glint::in,io::di,io::uo) is det.
:- pred glVertex3s(glshort::in,glshort::in,glshort::in,io::di,io::uo) is det.
:- pred glVertex4d(gldouble::in,gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glVertex4f(glfloat::in,glfloat::in,glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glVertex4i(glint::in,glint::in,glint::in,glint::in,io::di,io::uo) is det.
:- pred glVertex4s(glshort::in,glshort::in,glshort::in,glshort::in,io::di,io::uo) is det.
:- pred glVertex2dv(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glVertex2fv(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glVertex2iv(glint_ptr::in,io::di,io::uo) is det.
:- pred glVertex2sv(glshort_ptr::in,io::di,io::uo) is det.
:- pred glVertex3dv(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glVertex3fv(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glVertex3iv(glint_ptr::in,io::di,io::uo) is det.
:- pred glVertex3sv(glshort_ptr::in,io::di,io::uo) is det.
:- pred glVertex4dv(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glVertex4fv(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glVertex4iv(glint_ptr::in,io::di,io::uo) is det.
:- pred glVertex4sv(glshort_ptr::in,io::di,io::uo) is det.
:- pred glNormal3b(glbyte::in,glbyte::in,glbyte::in,io::di,io::uo) is det.
:- pred glNormal3d(gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glNormal3f(glfloat::in,glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glNormal3i(glint::in,glint::in,glint::in,io::di,io::uo) is det.
:- pred glNormal3s(glshort::in,glshort::in,glshort::in,io::di,io::uo) is det.
:- pred glNormal3bv(glbyte_ptr::in,io::di,io::uo) is det.
:- pred glNormal3dv(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glNormal3fv(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glNormal3iv(glint_ptr::in,io::di,io::uo) is det.
:- pred glNormal3sv(glshort_ptr::in,io::di,io::uo) is det.
:- pred glIndexd(gldouble::in,io::di,io::uo) is det.
:- pred glIndexf(glfloat::in,io::di,io::uo) is det.
:- pred glIndexi(glint::in,io::di,io::uo) is det.
:- pred glIndexs(glshort::in,io::di,io::uo) is det.
:- pred glIndexub(glubyte::in,io::di,io::uo) is det.
:- pred glIndexdv(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glIndexfv(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glIndexiv(glint_ptr::in,io::di,io::uo) is det.
:- pred glIndexsv(glshort_ptr::in,io::di,io::uo) is det.
:- pred glIndexubv(glubyte_ptr::in,io::di,io::uo) is det.
:- pred glColor3b(glbyte::in,glbyte::in,glbyte::in,io::di,io::uo) is det.
:- pred glColor3d(gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glColor3f(glfloat::in,glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glColor3i(glint::in,glint::in,glint::in,io::di,io::uo) is det.
:- pred glColor3s(glshort::in,glshort::in,glshort::in,io::di,io::uo) is det.
:- pred glColor3ub(glubyte::in,glubyte::in,glubyte::in,io::di,io::uo) is det.
:- pred glColor3ui(gluint::in,gluint::in,gluint::in,io::di,io::uo) is det.
:- pred glColor3us(glushort::in,glushort::in,glushort::in,io::di,io::uo) is det.
:- pred glColor4b(glbyte::in,glbyte::in,glbyte::in,glbyte::in,io::di,io::uo) is det.
:- pred glColor4d(gldouble::in,gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glColor4f(glfloat::in,glfloat::in,glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glColor4i(glint::in,glint::in,glint::in,glint::in,io::di,io::uo) is det.
:- pred glColor4s(glshort::in,glshort::in,glshort::in,glshort::in,io::di,io::uo) is det.
:- pred glColor4ub(glubyte::in,glubyte::in,glubyte::in,glubyte::in,io::di,io::uo) is det.
:- pred glColor4ui(gluint::in,gluint::in,gluint::in,gluint::in,io::di,io::uo) is det.
:- pred glColor4us(glushort::in,glushort::in,glushort::in,glushort::in,io::di,io::uo) is det.
:- pred glColor3bv(glbyte_ptr::in,io::di,io::uo) is det.
:- pred glColor3dv(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glColor3fv(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glColor3iv(glint_ptr::in,io::di,io::uo) is det.
:- pred glColor3sv(glshort_ptr::in,io::di,io::uo) is det.
:- pred glColor3ubv(glubyte_ptr::in,io::di,io::uo) is det.
:- pred glColor3uiv(gluint_ptr::in,io::di,io::uo) is det.
:- pred glColor3usv(glushort_ptr::in,io::di,io::uo) is det.
:- pred glColor4bv(glbyte_ptr::in,io::di,io::uo) is det.
:- pred glColor4dv(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glColor4fv(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glColor4iv(glint_ptr::in,io::di,io::uo) is det.
:- pred glColor4sv(glshort_ptr::in,io::di,io::uo) is det.
:- pred glColor4ubv(glubyte_ptr::in,io::di,io::uo) is det.
:- pred glColor4uiv(gluint_ptr::in,io::di,io::uo) is det.
:- pred glColor4usv(glushort_ptr::in,io::di,io::uo) is det.
:- pred glTexCoord1d(gldouble::in,io::di,io::uo) is det.
:- pred glTexCoord1f(glfloat::in,io::di,io::uo) is det.
:- pred glTexCoord1i(glint::in,io::di,io::uo) is det.
:- pred glTexCoord1s(glshort::in,io::di,io::uo) is det.
:- pred glTexCoord2d(gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glTexCoord2f(glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glTexCoord2i(glint::in,glint::in,io::di,io::uo) is det.
:- pred glTexCoord2s(glshort::in,glshort::in,io::di,io::uo) is det.
:- pred glTexCoord3d(gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glTexCoord3f(glfloat::in,glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glTexCoord3i(glint::in,glint::in,glint::in,io::di,io::uo) is det.
:- pred glTexCoord3s(glshort::in,glshort::in,glshort::in,io::di,io::uo) is det.
:- pred glTexCoord4d(gldouble::in,gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glTexCoord4f(glfloat::in,glfloat::in,glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glTexCoord4i(glint::in,glint::in,glint::in,glint::in,io::di,io::uo) is det.
:- pred glTexCoord4s(glshort::in,glshort::in,glshort::in,glshort::in,io::di,io::uo) is det.
:- pred glTexCoord2dv(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glTexCoord2fv(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glTexCoord2iv(glint_ptr::in,io::di,io::uo) is det.
:- pred glTexCoord2sv(glshort_ptr::in,io::di,io::uo) is det.
:- pred glTexCoord3dv(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glTexCoord3fv(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glTexCoord3iv(glint_ptr::in,io::di,io::uo) is det.
:- pred glTexCoord3sv(glshort_ptr::in,io::di,io::uo) is det.
:- pred glTexCoord4dv(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glTexCoord4fv(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glTexCoord4iv(glint_ptr::in,io::di,io::uo) is det.
:- pred glTexCoord4sv(glshort_ptr::in,io::di,io::uo) is det.
:- pred glRasterPos2d(gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glRasterPos2f(glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glRasterPos2i(glint::in,glint::in,io::di,io::uo) is det.
:- pred glRasterPos2s(glshort::in,glshort::in,io::di,io::uo) is det.
:- pred glRasterPos3d(gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glRasterPos3f(glfloat::in,glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glRasterPos3i(glint::in,glint::in,glint::in,io::di,io::uo) is det.
:- pred glRasterPos3s(glshort::in,glshort::in,glshort::in,io::di,io::uo) is det.
:- pred glRasterPos4d(gldouble::in,gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glRasterPos4f(glfloat::in,glfloat::in,glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glRasterPos4i(glint::in,glint::in,glint::in,glint::in,io::di,io::uo) is det.
:- pred glRasterPos4s(glshort::in,glshort::in,glshort::in,glshort::in,io::di,io::uo) is det.
:- pred glRasterPos2dv(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glRasterPos2fv(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glRasterPos2iv(glint_ptr::in,io::di,io::uo) is det.
:- pred glRasterPos2sv(glshort_ptr::in,io::di,io::uo) is det.
:- pred glRasterPos3dv(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glRasterPos3fv(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glRasterPos3iv(glint_ptr::in,io::di,io::uo) is det.
:- pred glRasterPos3sv(glshort_ptr::in,io::di,io::uo) is det.
:- pred glRasterPos4dv(gldouble_ptr::in,io::di,io::uo) is det.
:- pred glRasterPos4fv(glfloat_ptr::in,io::di,io::uo) is det.
:- pred glRasterPos4iv(glint_ptr::in,io::di,io::uo) is det.
:- pred glRasterPos4sv(glshort_ptr::in,io::di,io::uo) is det.
:- pred glRectd(gldouble::in,gldouble::in,gldouble::in,gldouble::in,io::di,io::uo) is det.
:- pred glRecti(glint::in,glint::in,glint::in,glint::in,io::di,io::uo) is det.
:- pred glRects(glshort::in,glshort::in,glshort::in,glshort::in,io::di,io::uo) is det.
:- pred glRectdv(gldouble_ptr::in,gldouble_ptr::in,io::di,io::uo) is det.
:- pred glRectfv(glfloat_ptr::in,glfloat_ptr::in,io::di,io::uo) is det.
:- pred glRectiv(glint_ptr::in,glint_ptr::in,io::di,io::uo) is det.
:- pred glRectsv(glshort_ptr::in,glshort_ptr::in,io::di,io::uo) is det.
:- pred glVertexPointer(glint::in,glenum::in,glsizei::in,glvoid_ptr::in,io::di,io::uo) is det.
:- pred glNormalPointer(glenum::in,glsizei::in,glvoid_ptr::in,io::di,io::uo) is det.
:- pred glColorPointer(glint::in,glenum::in,glsizei::in,glvoid_ptr::in,io::di,io::uo) is det.
:- pred glIndexPointer(glenum::in,glsizei::in,glvoid_ptr::in,io::di,io::uo) is det.
:- pred glTexCoordPointer(glint::in,glenum::in,glsizei::in,glvoid_ptr::in,io::di,io::uo) is det.
:- pred glEdgeFlagPointer(glsizei::in,glvoid_ptr::in,io::di,io::uo) is det.
:- pred glGetPointerv(glenum::in,glvoid_ptr::in,io::di,io::uo) is det.
:- pred glArrayElement(glint::in,io::di,io::uo) is det.
:- pred glDrawArrays(glenum::in,glint::in,glsizei::in,io::di,io::uo) is det.
:- pred glDrawElements(glenum::in,glsizei::in,glenum::in,glvoid_ptr::in,io::di,io::uo) is det.
:- pred glInterleavedArrays(glenum::in,glsizei::in,glvoid_ptr::in,io::di,io::uo) is det.
:- pred glShadeModel(glenum::in,io::di,io::uo) is det.
:- pred glLightf(glenum::in,glenum::in,glfloat::in,io::di,io::uo) is det.
:- pred glLighti(glenum::in,glenum::in,glint::in,io::di,io::uo) is det.
:- pred glLightfv(glenum::in,glenum::in,glfloat_ptr::in,io::di,io::uo) is det.
:- pred glLightiv(glenum::in,glenum::in,glint_ptr::in,io::di,io::uo) is det.
:- pred glGetLightfv(glenum::in,glenum::in,glfloat_ptr::in,io::di,io::uo) is det.
:- pred glGetLightiv(glenum::in,glenum::in,glint_ptr::in,io::di,io::uo) is det.
:- pred glLightModelf(glenum::in,glfloat::in,io::di,io::uo) is det.
:- pred glLightModeli(glenum::in,glint::in,io::di,io::uo) is det.
:- pred glLightModelfv(glenum::in,glfloat_ptr::in,io::di,io::uo) is det.
:- pred glLightModeliv(glenum::in,glint_ptr::in,io::di,io::uo) is det.
:- pred glMaterialf(glenum::in,glenum::in,glfloat::in,io::di,io::uo) is det.
:- pred glMateriali(glenum::in,glenum::in,glint::in,io::di,io::uo) is det.
:- pred glMaterialfv(glenum::in,glenum::in,glfloat_ptr::in,io::di,io::uo) is det.
:- pred glMaterialiv(glenum::in,glenum::in,glint_ptr::in,io::di,io::uo) is det.
:- pred glGetMaterialfv(glenum::in,glenum::in,glfloat_ptr::in,io::di,io::uo) is det.
:- pred glGetMaterialiv(glenum::in,glenum::in,glint_ptr::in,io::di,io::uo) is det.
:- pred glColorMaterial(glenum::in,glenum::in,io::di,io::uo) is det.
:- pred glPixelZoom(glfloat::in,glfloat::in,io::di,io::uo) is det.
:- pred glPixelStoref(glenum::in,glfloat::in,io::di,io::uo) is det.
:- pred glPixelStorei(glenum::in,glint::in,io::di,io::uo) is det.
:- pred glPixelTransferf(glenum::in,glfloat::in,io::di,io::uo) is det.
:- pred glPixelTransferi(glenum::in,glint::in,io::di,io::uo) is det.
:- pred glPixelMapfv(glenum::in,glsizei::in,glfloat_ptr::in,io::di,io::uo) is det.
:- pred glPixelMapuiv(glenum::in,glsizei::in,gluint_ptr::in,io::di,io::uo) is det.
:- pred glPixelMapusv(glenum::in,glsizei::in,glushort_ptr::in,io::di,io::uo) is det.
:- pred glGetPixelMapfv(glenum::in,glfloat_ptr::in,io::di,io::uo) is det.
:- pred glGetPixelMapuiv(glenum::in,gluint_ptr::in,io::di,io::uo) is det.
:- pred glGetPixelMapusv(glenum::in,glushort_ptr::in,io::di,io::uo) is det.
:- pred glBitmap(glsizei::in,glsizei::in,glfloat::in,glfloat::in,glfloat::in,glfloat::in,glubyte_ptr::in,io::di,io::uo) is det.
:- pred glReadPixels(glint::in,glint::in,glsizei::in,glsizei::in,glenum::in,glenum::in,glvoid_ptr::in,io::di,io::uo) is det.
:- pred glDrawPixels(glsizei::in,glsizei::in,glenum::in,glenum::in,glvoid_ptr::in,io::di,io::uo) is det.
:- pred glCopyPixels(glint::in,glint::in,glsizei::in,glsizei::in,glenum::in,io::di,io::uo) is det.
:- pred glStencilFunc(glenum::in,glint::in,gluint::in,io::di,io::uo) is det.
:- pred glStencilMask(gluint::in,io::di,io::uo) is det.
:- pred glStencilOp(glenum::in,glenum::in,glenum::in,io::di,io::uo) is det.
:- pred glClearStencil(glint::in,io::di,io::uo) is det.
:- pred glTexGend(glenum::in,glenum::in,gldouble::in,io::di,io::uo) is det.
:- pred glTexGenf(glenum::in,glenum::in,glfloat::in,io::di,io::uo) is det.
:- pred glTexGeni(glenum::in,glenum::in,glint::in,io::di,io::uo) is det.
:- pred glTexGendv(glenum::in,glenum::in,gldouble_ptr::in,io::di,io::uo) is det.
:- pred glTexGenfv(glenum::in,glenum::in,glfloat_ptr::in,io::di,io::uo) is det.
:- pred glTexGeniv(glenum::in,glenum::in,glint_ptr::in,io::di,io::uo) is det.
:- pred glGetTexGendv(glenum::in,glenum::in,gldouble_ptr::in,io::di,io::uo) is det.
:- pred glGetTexGenfv(glenum::in,glenum::in,glfloat_ptr::in,io::di,io::uo) is det.
:- pred glGetTexGeniv(glenum::in,glenum::in,glint_ptr::in,io::di,io::uo) is det.
:- pred glTexEnvf(glenum::in,glenum::in,glfloat::in,io::di,io::uo) is det.
:- pred glTexEnvi(glenum::in,glenum::in,glint::in,io::di,io::uo) is det.
:- pred glTexEnvfv(glenum::in,glenum::in,glfloat_ptr::in,io::di,io::uo) is det.
:- pred glTexEnviv(glenum::in,glenum::in,glint_ptr::in,io::di,io::uo) is det.
:- pred glGetTexEnvfv(glenum::in,glenum::in,glfloat_ptr::in,io::di,io::uo) is det.
:- pred glGetTexEnviv(glenum::in,glenum::in,glint_ptr::in,io::di,io::uo) is det.
:- pred glTexParameterf(glenum::in , glenum::in , glfloat::in  ,io::di,io::uo) is det.
:- pred glTexParameteri(glenum::in , glenum::in , glint::in  ,io::di,io::uo) is det.
:- pred glTexParameterfv(glenum::in , glenum::in , glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glTexParameteriv(glenum::in , glenum::in , glint_ptr::in  ,io::di,io::uo) is det.
:- pred glGetTexParameterfv(glenum::in ,glenum::in , glfloat_ptr::in ,io::di,io::uo) is det.
:- pred glGetTexParameteriv(glenum::in ,glenum::in , glint_ptr::in  ,io::di,io::uo) is det.
:- pred glGetTexLevelParameterfv(glenum::in , glint::in ,glenum::in , glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glGetTexLevelParameteriv(glenum::in , glint::in ,glenum::in , glint_ptr::in  ,io::di,io::uo) is det.
:- pred glTexImage1D(glenum::in , glint::in ,glint::in ,glsizei::in , glint::in ,glenum::in , glenum::in , glvoid_ptr::in  ,io::di,io::uo) is det.
:- pred glTexImage2D(glenum::in , glint::in ,glint::in ,glsizei::in , glsizei::in ,glint::in , glenum::in , glenum::in , glvoid_ptr::in  ,io::di,io::uo) is det.
:- pred glGetTexImage(glenum::in , glint::in ,glenum::in , glenum::in ,glvoid_ptr::in  ,io::di,io::uo) is det.
:- pred glGenTextures(glsizei::in , gluint_ptr::in  ,io::di,io::uo) is det.
:- pred glDeleteTextures(glsizei::in ,  gluint_ptr::in ,io::di,io::uo) is det.
:- pred glBindTexture(glenum::in , gluint::in  ,io::di,io::uo) is det.
:- pred glPrioritizeTextures(glsizei::in,gluint_ptr::in,glclampf_ptr::in,io::di,io::uo) is det.
:- func glAreTexturesResident(glsizei::in,gluint_ptr::in,glboolean_ptr::in,io::di,io::uo) = (glboolean::out) is det.
:- func glIsTexture(gluint::in,io::di,io::uo) = (glboolean::out) is det.
:- pred glTexSubImage1D(glenum::in , glint::in ,glint::in ,glsizei::in , glenum::in ,glenum::in ,  glvoid_ptr::in  ,io::di,io::uo) is det.
:- pred glTexSubImage2D(glenum::in , glint::in ,glint::in , glint::in ,glsizei::in , glsizei::in ,glenum::in , glenum::in ,glvoid_ptr::in  ,io::di,io::uo) is det.
:- pred glCopyTexImage1D(glenum::in , glint::in ,glenum::in , glint::in , glint::in ,glsizei::in , glint::in  ,io::di,io::uo) is det.
:- pred glCopyTexImage2D(glenum::in , glint::in ,glenum::in ,glint::in , glint::in ,glsizei::in , glsizei::in ,glint::in  ,io::di,io::uo) is det.
:- pred glCopyTexSubImage1D(glenum::in , glint::in ,glint::in , glint::in , glint::in ,glsizei::in  ,io::di,io::uo) is det.
:- pred glCopyTexSubImage2D(glenum::in , glint::in ,glint::in , glint::in ,glint::in , glint::in ,glsizei::in , glsizei::in  ,io::di,io::uo) is det.
:- pred glMap1d(glenum::in , gldouble::in , gldouble::in ,glint::in ,glint::in ,  gldouble_ptr::in  ,io::di,io::uo) is det.
:- pred glMap1f(glenum::in , glfloat::in , glfloat::in ,glint::in ,glint::in ,  glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glMap2d(glenum::in ,gldouble::in , gldouble::in , glint::in , glint::in ,gldouble::in , gldouble::in , glint::in , glint::in , gldouble_ptr::in  ,io::di,io::uo) is det.
:- pred glMap2f(glenum::in ,glfloat::in , glfloat::in , glint::in , glint::in ,glfloat::in , glfloat::in , glint::in , glint::in , glfloat_ptr::in ,io::di,io::uo) is det.
:- pred glGetMapdv(glenum::in , glenum::in , gldouble_ptr::in ,io::di,io::uo) is det.
:- pred glGetMapfv(glenum::in , glenum::in , glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glGetMapiv(glenum::in , glenum::in , glint_ptr::in  ,io::di,io::uo) is det.
:- pred glEvalCoord1d(gldouble::in  ,io::di,io::uo) is det.
:- pred glEvalCoord1f(glfloat::in  ,io::di,io::uo) is det.
:- pred glEvalCoord1dv( gldouble_ptr::in  ,io::di,io::uo) is det.
:- pred glEvalCoord1fv( glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glEvalCoord2d(gldouble::in , gldouble::in ,io::di,io::uo) is det.
:- pred glEvalCoord2f(glfloat::in , glfloat::in,io::di,io::uo) is det.
:- pred glEvalCoord2dv( gldouble_ptr::in  ,io::di,io::uo) is det.
:- pred glEvalCoord2fv( glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glMapGrid1d(glint::in , gldouble::in , gldouble::in  ,io::di,io::uo) is det.
:- pred glMapGrid1f(glint::in , glfloat::in , glfloat::in  ,io::di,io::uo) is det.
:- pred glMapGrid2d(glint::in , gldouble::in , gldouble::in ,glint::in , gldouble::in , gldouble::in  ,io::di,io::uo) is det.
:- pred glMapGrid2f(glint::in , glfloat::in , glfloat::in ,glint::in , glfloat::in , glfloat::in  ,io::di,io::uo) is det.
:- pred glEvalPoint1(glint::in  ,io::di,io::uo) is det.
:- pred glEvalPoint2(glint::in , glint::in  ,io::di,io::uo) is det.
:- pred glEvalMesh1(glenum::in , glint::in , glint::in  ,io::di,io::uo) is det.
:- pred glEvalMesh2(glenum::in , glint::in , glint::in , glint::in , glint::in  ,io::di,io::uo) is det.
:- pred glFogf(glenum::in , glfloat::in  ,io::di,io::uo) is det.
:- pred glFogi(glenum::in , glint::in  ,io::di,io::uo) is det.
:- pred glFogfv(glenum::in ,  glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glFogiv(glenum::in ,  glint_ptr::in  ,io::di,io::uo) is det.
:- pred glFeedbackBuffer(glsizei::in , glenum::in , glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glPassThrough(glfloat::in  ,io::di,io::uo) is det.
:- pred glSelectBuffer(glsizei::in , gluint_ptr::in  ,io::di,io::uo) is det.
:- pred glInitNames(io::di,io::uo) is det.
:- pred glLoadName(gluint::in  ,io::di,io::uo) is det.
:- pred glPushName(gluint::in  ,io::di,io::uo) is det.
:- pred glPopName(io::di,io::uo) is det.
:- pred glDrawRangeElements( glenum::in , gluint::in ,gluint::in , glsizei::in , glenum::in ,  glvoid_ptr::in  ,io::di,io::uo) is det.
:- pred glTexImage3D( glenum::in , glint::in ,glint::in ,glsizei::in , glsizei::in ,glsizei::in , glint::in ,glenum::in , glenum::in , glvoid_ptr::in  ,io::di,io::uo) is det.
:- pred glTexSubImage3D( glenum::in , glint::in ,glint::in , glint::in ,glint::in , glsizei::in ,glsizei::in , glsizei::in ,glenum::in ,glenum::in ,  glvoid_ptr::in ,io::di,io::uo) is det.
:- pred glCopyTexSubImage3D( glenum::in , glint::in ,glint::in , glint::in ,glint::in , glint::in ,glint::in , glsizei::in ,glsizei::in  ,io::di,io::uo) is det.
:- pred glColorTable( glenum::in , glenum::in ,glsizei::in , glenum::in ,glenum::in ,  glvoid_ptr::in  ,io::di,io::uo) is det.
:- pred glColorSubTable( glenum::in ,glsizei::in , glsizei::in ,glenum::in , glenum::in , glvoid_ptr::in  ,io::di,io::uo) is det.
:- pred glColorTableParameteriv(glenum::in , glenum::in , glint_ptr::in ,io::di,io::uo) is det.
:- pred glColorTableParameterfv(glenum::in , glenum::in , glfloat_ptr::in ,io::di,io::uo) is det.
:- pred glCopyColorSubTable( glenum::in , glsizei::in ,glint::in , glint::in , glsizei::in  ,io::di,io::uo) is det.
:- pred glCopyColorTable( glenum::in , glenum::in ,glint::in , glint::in , glsizei::in  ,io::di,io::uo) is det.
:- pred glGetColorTable( glenum::in , glenum::in ,glenum::in , glvoid_ptr::in  ,io::di,io::uo) is det.
:- pred glGetColorTableParameterfv( glenum::in , glenum::in ,glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glGetColorTableParameteriv( glenum::in , glenum::in ,glint_ptr::in  ,io::di,io::uo) is det.
:- pred glBlendEquation( glenum::in  ,io::di,io::uo) is det.
:- pred glBlendColor( glclampf::in , glclampf::in ,glclampf::in , glclampf::in  ,io::di,io::uo) is det.
:- pred glHistogram( glenum::in , glsizei::in ,glenum::in , glboolean::in  ,io::di,io::uo) is det.
:- pred glResetHistogram( glenum::in  ,io::di,io::uo) is det.
:- pred glGetHistogram( glenum::in , glboolean::in ,glenum::in , glenum::in ,glvoid_ptr::in  ,io::di,io::uo) is det.
:- pred glGetHistogramParameterfv( glenum::in , glenum::in ,glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glGetHistogramParameteriv( glenum::in , glenum::in ,glint_ptr::in  ,io::di,io::uo) is det.
:- pred glMinmax( glenum::in , glenum::in ,glboolean::in ,io::di,io::uo) is det.
:- pred glResetMinmax( glenum::in  ,io::di,io::uo) is det.
:- pred glGetMinmax( glenum::in , glboolean::in,glenum::in, glenum::in,glvoid_ptr::in ,io::di,io::uo) is det.
:- pred glGetMinmaxParameterfv( glenum::in , glenum::in ,glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glGetMinmaxParameteriv( glenum::in , glenum::in ,glint_ptr::in  ,io::di,io::uo) is det.
:- pred glConvolutionFilter1D( glenum::in ,glenum::in , glsizei::in, glenum::in, glenum::in, glvoid_ptr::in ,io::di,io::uo) is det.
:- pred glConvolutionFilter2D( glenum::in ,glenum::in , glsizei::in, glsizei::in, glenum::in,glenum::in,  glvoid_ptr::in ,io::di,io::uo) is det.
:- pred glConvolutionParameterf( glenum::in , glenum::in ,glfloat::in  ,io::di,io::uo) is det.
:- pred glConvolutionParameterfv( glenum::in , glenum::in , glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glConvolutionParameteri( glenum::in , glenum::in ,glint::in  ,io::di,io::uo) is det.
:- pred glConvolutionParameteriv( glenum::in , glenum::in , glint_ptr::in  ,io::di,io::uo) is det.
:- pred glCopyConvolutionFilter1D( glenum::in ,glenum::in , glint::in , glint::in , glsizei::in ,io::di,io::uo) is det.
:- pred glCopyConvolutionFilter2D( glenum::in ,glenum::in , glint::in , glint::in , glsizei::in ,glsizei::in ,io::di,io::uo) is det.
:- pred glGetConvolutionFilter( glenum::in , glenum::in,glenum::in, glvoid_ptr::in ,io::di,io::uo) is det.
:- pred glGetConvolutionParameterfv( glenum::in , glenum::in ,glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glGetConvolutionParameteriv( glenum::in , glenum::in ,glint_ptr::in  ,io::di,io::uo) is det.
:- pred glSeparableFilter2D( glenum::in ,glenum::in , glsizei::in, glsizei::in, glenum::in,glenum::in,  glvoid_ptr::in,  glvoid_ptr::in ,io::di,io::uo) is det.
:- pred glGetSeparableFilter( glenum::in , glenum::in,glenum::in, glvoid_ptr::in, glvoid_ptr::in, glvoid_ptr::in ,io::di,io::uo) is det.
:- pred glActiveTexture( glenum::in ,io::di,io::uo) is det.
:- pred glClientActiveTexture( glenum::in ,io::di,io::uo) is det.
:- pred glCompressedTexImage1D( glenum::in , glint::in, glenum::in , glsizei::in, glint::in, glsizei::in,  glvoid_ptr::in ,io::di,io::uo) is det.
:- pred glCompressedTexImage2D( glenum::in , glint::in, glenum::in , glsizei::in, glsizei::in, glint::in, glsizei::in,  glvoid_ptr::in ,io::di,io::uo) is det.
:- pred glCompressedTexImage3D( glenum::in , glint::in, glenum::in , glsizei::in, glsizei::in, glsizei::in, glint::in, glsizei::in,  glvoid_ptr::in,io::di,io::uo) is det.
:- pred glCompressedTexSubImage1D( glenum::in , glint::in, glint::in, glsizei::in, glenum::in, glsizei::in,  glvoid_ptr::in ,io::di,io::uo) is det.
:- pred glCompressedTexSubImage2D( glenum::in , glint::in, glint::in, glint::in, glsizei::in, glsizei::in, glenum::in, glsizei::in,  glvoid_ptr::in ,io::di,io::uo) is det.
:- pred glCompressedTexSubImage3D( glenum::in , glint::in, glint::in, glint::in, glint::in, glsizei::in, glsizei::in, glsizei::in, glenum::in, glsizei::in,  glvoid_ptr::in ,io::di,io::uo) is det.
:- pred glGetCompressedTexImage( glenum::in , glint::in, glvoid_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord1d( glenum::in , gldouble::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord1dv( glenum::in ,  gldouble_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord1f( glenum::in , glfloat::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord1fv( glenum::in ,  glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord1i( glenum::in , glint::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord1iv( glenum::in ,  glint_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord1s( glenum::in , glshort::in,io::di,io::uo) is det.
:- pred glMultiTexCoord1sv( glenum::in ,  glshort_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord2d( glenum::in,gldouble::in,  gldouble::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord2dv( glenum::in,gldouble_ptr::in,io::di,io::uo) is det.
:- pred glMultiTexCoord2f( glenum::in , glfloat::in,  glfloat::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord2fv( glenum::in ,  glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord2i( glenum::in , glint::in,  glint::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord2iv( glenum::in ,  glint_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord2s( glenum::in , glshort::in,  glshort::in,io::di,io::uo) is det.
:- pred glMultiTexCoord2sv( glenum::in ,  glshort_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord3d( glenum::in , gldouble::in,  gldouble::in, gldouble::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord3dv( glenum::in ,  gldouble_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord3f( glenum::in , glfloat::in,  glfloat::in , glfloat::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord3fv( glenum::in ,  glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord3i( glenum::in , glint::in,  glint::in, glint::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord3iv( glenum::in ,  glint_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord3s( glenum::in , glshort::in,  glshort::in, glshort::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord3sv( glenum::in ,  glshort_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord4d( glenum::in , gldouble::in,  gldouble::in, gldouble::in , gldouble::in,io::di,io::uo) is det.
:- pred glMultiTexCoord4dv( glenum::in ,  gldouble_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord4f( glenum::in , glfloat::in,  glfloat::in, glfloat::in , glfloat::in,io::di,io::uo) is det.
:- pred glMultiTexCoord4fv( glenum::in ,  glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord4i( glenum::in , glint::in,  glint::in, glint::in , glint::in,io::di,io::uo) is det.
:- pred glMultiTexCoord4iv( glenum::in ,  glint_ptr::in  ,io::di,io::uo) is det.
:- pred glMultiTexCoord4s( glenum::in , glshort::in,  glshort::in, glshort::in, glshort::in,io::di,io::uo) is det.
:- pred glMultiTexCoord4sv( glenum::in ,  glshort_ptr::in  ,io::di,io::uo) is det.
:- pred glLoadTransposeMatrixd(  gldouble_ptr::in  ,io::di,io::uo) is det.
:- pred glLoadTransposeMatrixf(  glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glMultTransposeMatrixd(  gldouble_ptr::in  ,io::di,io::uo) is det.
:- pred glMultTransposeMatrixf(  glfloat_ptr::in  ,io::di,io::uo) is det.
:- pred glSampleCoverage( glclampf::in, glboolean::in ,io::di,io::uo) is det.
:- pred glActiveTextureARB(glenum::in,io::di,io::uo) is det.
:- pred glClientActiveTextureARB(glenum::in,io::di,io::uo) is det.
:- pred glMultiTexCoord1dARB(glenum::in,gldouble::in, io::di,io::uo) is det.
:- pred glMultiTexCoord1dvARB(glenum::in ,  gldouble_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord1fARB(glenum::in , glfloat::in, io::di,io::uo) is det.
:- pred glMultiTexCoord1fvARB(glenum::in ,  glfloat_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord1iARB(glenum::in , glint::in, io::di,io::uo) is det.
:- pred glMultiTexCoord1ivARB(glenum::in ,  glint_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord1sARB(glenum::in , glshort::in, io::di,io::uo) is det.
:- pred glMultiTexCoord1svARB(glenum::in ,  glshort_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord2dARB(glenum::in , gldouble::in,  gldouble::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord2dvARB(glenum::in ,  gldouble_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord2fARB(glenum::in , glfloat::in,  glfloat::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord2fvARB(glenum::in ,  glfloat_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord2iARB(glenum::in , glint::in,  glint::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord2ivARB(glenum::in ,  glint_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord2sARB(glenum::in , glshort::in,  glshort::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord2svARB(glenum::in ,  glshort_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord3dARB(glenum::in , gldouble::in,  gldouble::in, gldouble::in,io::di,io::uo) is det.
:- pred glMultiTexCoord3dvARB(glenum::in ,  gldouble_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord3fARB(glenum::in , glfloat::in,  glfloat::in , glfloat::in,io::di,io::uo) is det.
:- pred glMultiTexCoord3fvARB(glenum::in ,  glfloat_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord3iARB(glenum::in , glint::in,  glint::in , glint::in,io::di,io::uo) is det.
:- pred glMultiTexCoord3ivARB(glenum::in ,  glint_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord3sARB(glenum::in , glshort::in,  glshort::in , glshort::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord3svARB(glenum::in ,  glshort_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord4dARB(glenum::in , gldouble::in,  gldouble::in , gldouble::in , gldouble::in,io::di,io::uo) is det.
:- pred glMultiTexCoord4dvARB(glenum::in ,  gldouble_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord4fARB(glenum::in , glfloat::in,  glfloat::in , glfloat::in , glfloat::in,io::di,io::uo) is det.
:- pred glMultiTexCoord4fvARB(glenum::in ,  glfloat_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord4iARB(glenum::in , glint::in,  glint::in , glint::in, glint::in,io::di,io::uo) is det.
:- pred glMultiTexCoord4ivARB(glenum::in ,  glint_ptr::in ,io::di,io::uo) is det.
:- pred glMultiTexCoord4sARB(glenum::in , glshort::in,  glshort::in , glshort::in, glshort::in,io::di,io::uo) is det.
:- pred glMultiTexCoord4svARB(glenum::in ,  glshort_ptr::in ,io::di,io::uo) is det.
:- pred glEGLImageTargetTexture2DOES(glenum::in,glvoid_ptr::in,io::di,io::uo) is det.
:- pred glEGLImageTargetRenderbufferStorageOES(glenum::in , glvoid_ptr::in,io::di,io::uo) is det.

:- implementation.
:- pragma foreign_decl("C","#include <GL/gl.h>").

:- import_module io.

:- pragma foreign_type("C",glboolean_ptr,"GLboolean*").
:- pragma foreign_type("C",glvoid,"GLvoid").
:- pragma foreign_type("C",glvoid_ptr,"GLvoid*").
:- pragma foreign_type("C",glbyte,"GLbyte").
:- pragma foreign_type("C",glbyte_ptr,"GLbyte*").
:- pragma foreign_type("C",glshort_ptr,"GLshort*").
:- pragma foreign_type("C",glint_ptr,"GLint*").
:- pragma foreign_type("C",glubyte,"GLubyte").
:- pragma foreign_type("C",glubyte_ptr,"GLubyte*").
:- pragma foreign_type("C",glushort,"GLushort").
:- pragma foreign_type("C",glushort_ptr,"GLushort*").
:- pragma foreign_type("C",gluint_ptr,"GLuint*").
:- pragma foreign_type("C",glfloat_ptr,"GLfloat*").
:- pragma foreign_type("C",gldouble_ptr,"GLdouble*").
:- pragma foreign_type("C",glbitfield,"GLbitfield").
:- pragma foreign_type("C",glclampf_ptr,"GLclampf*").
:- pragma foreign_type("C",glclampd_ptr,"GLclampd*").

:- pragma foreign_enum("C",glenum/0,
[
  gl_false - "GL_FALSE",
  gl_true - "GL_TRUE",
  gl_byte - "GL_BYTE",
  gl_unsigned_byte - "GL_UNSIGNED_BYTE",
  gl_short - "GL_SHORT",
  gl_unsigned_short - "GL_UNSIGNED_SHORT",
  gl_int - "GL_INT",
  gl_unsigned_int - "GL_UNSIGNED_INT",
  gl_float - "GL_FLOAT",
  gl_2_bytes - "GL_2_BYTES",
  gl_3_bytes - "GL_3_BYTES",
  gl_4_bytes - "GL_4_BYTES",
  gl_double - "GL_DOUBLE",
  gl_points - "GL_POINTS",
  gl_lines  - "GL_LINES",
  gl_line_loop  - "GL_LINE_LOOP",
  gl_line_strip - "GL_LINE_STRIP",
  gl_triangles  - "GL_TRIANGLES",
  gl_triangle_strip - "GL_TRIANGLE_STRIP",
  gl_triangle_fan - "GL_TRIANGLE_FAN",
  gl_quads  - "GL_QUADS",
  gl_quad_strip  - "GL_QUAD_STRIP",
  gl_polygon - "GL_POLYGON",
  gl_vertex_array  - "GL_VERTEX_ARRAY",
  gl_normal_array  - "GL_NORMAL_ARRAY",
  gl_color_array- "GL_COLOR_ARRAY",
  gl_index_array- "GL_INDEX_ARRAY",
  gl_texture_coord_array  - "GL_TEXTURE_COORD_ARRAY",
  gl_edge_flag_array- "GL_EDGE_FLAG_ARRAY",
  gl_vertex_array_size - "GL_VERTEX_ARRAY_SIZE",
  gl_vertex_array_type - "GL_VERTEX_ARRAY_TYPE",
  gl_vertex_array_stride  - "GL_VERTEX_ARRAY_STRIDE",
  gl_normal_array_type - "GL_NORMAL_ARRAY_TYPE",
  gl_normal_array_stride  - "GL_NORMAL_ARRAY_STRIDE",
  gl_color_array_size  - "GL_COLOR_ARRAY_SIZE",
  gl_color_array_type  - "GL_COLOR_ARRAY_TYPE",
  gl_color_array_stride- "GL_COLOR_ARRAY_STRIDE",
  gl_index_array_type  - "GL_INDEX_ARRAY_TYPE",
  gl_index_array_stride- "GL_INDEX_ARRAY_STRIDE",
  gl_texture_coord_array_size - "GL_TEXTURE_COORD_ARRAY_SIZE",
  gl_texture_coord_array_type - "GL_TEXTURE_COORD_ARRAY_TYPE",
  gl_texture_coord_array_stride  - "GL_TEXTURE_COORD_ARRAY_STRIDE",
  gl_edge_flag_array_stride- "GL_EDGE_FLAG_ARRAY_STRIDE",
  gl_vertex_array_pointer - "GL_VERTEX_ARRAY_POINTER",
  gl_normal_array_pointer - "GL_NORMAL_ARRAY_POINTER",
  gl_color_array_pointer  - "GL_COLOR_ARRAY_POINTER",
  gl_index_array_pointer  - "GL_INDEX_ARRAY_POINTER",
  gl_texture_coord_array_pointer - "GL_TEXTURE_COORD_ARRAY_POINTER",
  gl_edge_flag_array_pointer  - "GL_EDGE_FLAG_ARRAY_POINTER",
  gl_v2f - "GL_V2F",
  gl_v3f - "GL_V3F",
  gl_c4ub_v2f- "GL_C4UB_V2F",
  gl_c4ub_v3f- "GL_C4UB_V3F",
  gl_c3f_v3f- "GL_C3F_V3F",
  gl_n3f_v3f- "GL_N3F_V3F",
  gl_c4f_n3f_v3f- "GL_C4F_N3F_V3F",
  gl_t2f_v3f- "GL_T2F_V3F",
  gl_t4f_v4f- "GL_T4F_V4F",
  gl_t2f_c4ub_v3f  - "GL_T2F_C4UB_V3F",
  gl_t2f_c3f_v3f- "GL_T2F_C3F_V3F",
  gl_t2f_n3f_v3f- "GL_T2F_N3F_V3F",
  gl_t2f_c4f_n3f_v3f- "GL_T2F_C4F_N3F_V3F",
  gl_t4f_c4f_n3f_v4f- "GL_T4F_C4F_N3F_V4F",
  gl_matrix_mode - "GL_MATRIX_MODE",
  gl_modelview- "GL_MODELVIEW",
  gl_projection  - "GL_PROJECTION",
  gl_texture  - "GL_TEXTURE",
  gl_point_smooth - "GL_POINT_SMOOTH",
  gl_point_size- "GL_POINT_SIZE",
  gl_point_size_granularity - "GL_POINT_SIZE_GRANULARITY",
  gl_point_size_range- "GL_POINT_SIZE_RANGE",
  gl_line_smooth  - "GL_LINE_SMOOTH",
  gl_line_stipple - "GL_LINE_STIPPLE",
  gl_line_stipple_pattern- "GL_LINE_STIPPLE_PATTERN",
  gl_lne_stipple_repeat  - "GL_LINE_STIPPLE_REPEAT",
  gl_line_width- "GL_LINE_WIDTH",
  gl_line_width_granularity - "GL_LINE_WIDTH_GRANULARITY",
  gl_line_width_range- "GL_LINE_WIDTH_RANGE",
  gl_point- "GL_POINT",
  gl_line - "GL_LINE",
  gl_fill - "GL_FILL",
  gl_cw- "GL_CW",
  gl_ccw  - "GL_CCW",
  gl_front- "GL_FRONT",
  gl_back - "GL_BACK",
  gl_polygon_mode- "GL_POLYGON_MODE",
  gl_polygon_smooth - "GL_POLYGON_SMOOTH",
  gl_polygon_stipple- "GL_POLYGON_STIPPLE",
  gl_edge_flag- "GL_EDGE_FLAG",
  gl_cull_face- "GL_CULL_FACE",
  gl_cull_face_mode - "GL_CULL_FACE_MODE",
  gl_front_face  - "GL_FRONT_FACE",
  gl_polygon_offset_factor - "GL_POLYGON_OFFSET_FACTOR",
  gl_polygon_offset_units  - "GL_POLYGON_OFFSET_UNITS",
  gl_polygon_offset_point  - "GL_POLYGON_OFFSET_POINT",
  gl_polygon_offset_line- "GL_POLYGON_OFFSET_LINE",
  gl_polygon_offset_fill- "GL_POLYGON_OFFSET_FILL",
  gl_compile- "GL_COMPILE",
  gl_compile_and_execute - "GL_COMPILE_AND_EXECUTE",
  gl_list_base - "GL_LIST_BASE",
  gl_list_index- "GL_LIST_INDEX",
  gl_list_mode - "GL_LIST_MODE",
  gl_never- "GL_NEVER",
  gl_less- "GL_LESS",
  gl_equal- "GL_EQUAL",
  gl_lequal  - "GL_LEQUAL",
  gl_greater - "GL_GREATER",
  gl_notequal- "GL_NOTEQUAL",
  gl_gequal  - "GL_GEQUAL",
  gl_always  - "GL_ALWAYS",
  gl_depth_test - "GL_DEPTH_TEST",
  gl_depth_bits - "GL_DEPTH_BITS",
  gl_depth_clear_value - "GL_DEPTH_CLEAR_VALUE",
  gl_depth_func - "GL_DEPTH_FUNC",
  gl_depth_range- "GL_DEPTH_RANGE",
  gl_depth_writemask- "GL_DEPTH_WRITEMASK",
  gl_depth_component- "GL_DEPTH_COMPONENT",
  gl_lighting- "GL_LIGHTING",
  gl_light0 - "GL_LIGHT0",
  gl_light1 - "GL_LIGHT1",
  gl_light2 - "GL_LIGHT2",
  gl_light3 - "GL_LIGHT3",
  gl_light4 - "GL_LIGHT4",
  gl_light5 - "GL_LIGHT5",
  gl_light6 - "GL_LIGHT6",
  gl_light7 - "GL_LIGHT7",
  gl_spot_exponent - "GL_SPOT_EXPONENT",
  gl_spot_cutoff- "GL_SPOT_CUTOFF",
  gl_clip_plane0 - "GL_CLIP_PLANE0",
  gl_clip_plane1 - "GL_CLIP_PLANE1",
  gl_clip_plane2 - "GL_CLIP_PLANE2",
  gl_clip_plane3 - "GL_CLIP_PLANE3",
  gl_clip_plane4 - "GL_CLIP_PLANE4",
  gl_clip_plane5 - "GL_CLIP_PLANE5",
  gl_accum_red_bits - "GL_ACCUM_RED_BITS",
  gl_accum_green_bits  - "GL_ACCUM_GREEN_BITS",
  gl_accum_blue_bits- "GL_ACCUM_BLUE_BITS",
  gl_accum_alpha_bits  - "GL_ACCUM_ALPHA_BITS",
  gl_accum_clear_value - "GL_ACCUM_CLEAR_VALUE",
  gl_accum- "GL_ACCUM",
  gl_add - "GL_ADD",
  gl_load- "GL_LOAD",
  gl_mult- "GL_MULT",
  gl_return  - "GL_RETURN",
  gl_alpha_test- "GL_ALPHA_TEST",
  gl_alpha_test_ref  - "GL_ALPHA_TEST_REF",
  gl_alpha_test_func - "GL_ALPHA_TEST_FUNC",
  gl_blend - "GL_BLEND",
  gl_blend_src - "GL_BLEND_SRC",
  gl_blend_dst - "GL_BLEND_DST",
  gl_zero  - "GL_ZERO",
  gl_one- "GL_ONE",
  gl_src_color - "GL_SRC_COLOR",
  gl_one_minus_src_color - "GL_ONE_MINUS_SRC_COLOR",
  gl_src_alpha - "GL_SRC_ALPHA",
  gl_one_minus_src_alpha - "GL_ONE_MINUS_SRC_ALPHA",
  gl_dst_alpha - "GL_DST_ALPHA",
  gl_one_minus_dst_alpha - "GL_ONE_MINUS_DST_ALPHA",
  gl_dst_color - "GL_DST_COLOR",
  gl_one_minus_dst_color - "GL_ONE_MINUS_DST_COLOR",
  gl_feedback - "GL_FEEDBACK",
  gl_render- "GL_RENDER",
  gl_select- "GL_SELECT",
  gl_2d - "GL_2D",
  gl_3d - "GL_3D",
  gl_3d_color  - "GL_3D_COLOR",
  gl_3d_color_texture - "GL_3D_COLOR_TEXTURE",
  gl_4d_color_texture - "GL_4D_COLOR_TEXTURE",
  gl_point_token- "GL_POINT_TOKEN",
  gl_line_token- "GL_LINE_TOKEN",
  gl_line_reset_token - "GL_LINE_RESET_TOKEN",
  gl_polygon_token - "GL_POLYGON_TOKEN",
  gl_bitmap_token  - "GL_BITMAP_TOKEN",
  gl_draw_pixel_token - "GL_DRAW_PIXEL_TOKEN",
  gl_copy_pixel_token - "GL_COPY_PIXEL_TOKEN",
  gl_pass_through_token- "GL_PASS_THROUGH_TOKEN",
  gl_feedback_buffer_pointer - "GL_FEEDBACK_BUFFER_POINTER",
  gl_feedback_buffer_size - "GL_FEEDBACK_BUFFER_SIZE",
  gl_selection_buffer_pointer - "GL_SELECTION_BUFFER_POINTER",
  gl_selection_buffer_size - "GL_SELECTION_BUFFER_SIZE",
  gl_fog  - "GL_FOG",
  gl_fog_mode - "GL_FOG_MODE",
  gl_fog_density - "GL_FOG_DENSITY",
  gl_fog_color- "GL_FOG_COLOR",
  gl_fog_index- "GL_FOG_INDEX",
  gl_fog_start- "GL_FOG_START",
  gl_fog_end  - "GL_FOG_END",
  gl_linear- "GL_LINEAR",
  gl_exp  - "GL_EXP",
  gl_exp2 - "GL_EXP2",
  gl_logic_op- "GL_LOGIC_OP",
  gl_index_logic_op - "GL_INDEX_LOGIC_OP",
  gl_color_logic_op - "GL_COLOR_LOGIC_OP",
  gl_logic_op_mode  - "GL_LOGIC_OP_MODE",
  gl_clear- "GL_CLEAR",
  gl_set  - "GL_SET",
  gl_copy - "GL_COPY",
  gl_copy_inverted  - "GL_COPY_INVERTED",
  gl_noop - "GL_NOOP",
  gl_invert  - "GL_INVERT",
  gl_and  - "GL_AND",
  gl_nand - "GL_NAND",
  gl_or- "GL_OR",
  gl_nor  - "GL_NOR",
  gl_xor  - "GL_XOR",
  gl_equiv- "GL_EQUIV",
  gl_and_reverse - "GL_AND_REVERSE",
  gl_and_inverted- "GL_AND_INVERTED",
  gl_or_reverse  - "GL_OR_REVERSE",
  gl_or_inverted - "GL_OR_INVERTED",
  gl_stencil_bits  - "GL_STENCIL_BITS",
  gl_stencil_test  - "GL_STENCIL_TEST",
  gl_stencil_clear_value  - "GL_STENCIL_CLEAR_VALUE",
  gl_stencil_func  - "GL_STENCIL_FUNC",
  gl_stencil_value_mask- "GL_STENCIL_VALUE_MASK",
  gl_stencil_fail  - "GL_STENCIL_FAIL",
  gl_stencil_pass_depth_fail - "GL_STENCIL_PASS_DEPTH_FAIL",
  gl_stencil_pass_depth_pass - "GL_STENCIL_PASS_DEPTH_PASS",
  gl_stencil_ref- "GL_STENCIL_REF",
  gl_stencil_writemask- "GL_STENCIL_WRITEMASK",
  gl_stencil_index - "GL_STENCIL_INDEX",
  gl_keep- "GL_KEEP",
  gl_replace- "GL_REPLACE",
  gl_incr- "GL_INCR",
  gl_decr- "GL_DECR",
  gl_none  - "GL_NONE",
  gl_left  - "GL_LEFT",
  gl_right - "GL_RIGHT",
  gl_front_left- "GL_FRONT_LEFT",
  gl_front_right  - "GL_FRONT_RIGHT",
  gl_back_left- "GL_BACK_LEFT",
  gl_back_right- "GL_BACK_RIGHT",
  gl_aux0  - "GL_AUX0",
  gl_aux1  - "GL_AUX1",
  gl_aux2  - "GL_AUX2",
  gl_aux3  - "GL_AUX3",
  gl_color_index  - "GL_COLOR_INDEX",
  gl_red- "GL_RED",
  gl_green - "GL_GREEN",
  gl_blue  - "GL_BLUE",
  gl_alpha - "GL_ALPHA",
  gl_luminance- "GL_LUMINANCE",
  gl_luminance_alpha - "GL_LUMINANCE_ALPHA",
  gl_alpha_bits- "GL_ALPHA_BITS",
  gl_red_bits - "GL_RED_BITS",
  gl_green_bits- "GL_GREEN_BITS",
  gl_blue_bits- "GL_BLUE_BITS",
  gl_index_bits- "GL_INDEX_BITS",
  gl_subpixel_bits- "GL_SUBPIXEL_BITS",
  gl_aux_buffers  - "GL_AUX_BUFFERS",
  gl_read_buffer  - "GL_READ_BUFFER",
  gl_draw_buffer  - "GL_DRAW_BUFFER",
  gl_doublebuffer - "GL_DOUBLEBUFFER",
  gl_stereo- "GL_STEREO",
  gl_bitmap- "GL_BITMAP",
  gl_color - "GL_COLOR",
  gl_depth - "GL_DEPTH",
  gl_stencil  - "GL_STENCIL",
  gl_dither- "GL_DITHER",
  gl_rgb- "GL_RGB",
  gl_rgba  - "GL_RGBA",
  gl_max_list_nesting- "GL_MAX_LIST_NESTING",
  gl_max_eval_order  - "GL_MAX_EVAL_ORDER",
  gl_max_lights- "GL_MAX_LIGHTS",
  gl_max_clip_planes - "GL_MAX_CLIP_PLANES",
  gl_max_texture_size- "GL_MAX_TEXTURE_SIZE",
  gl_max_pixel_map_table - "GL_MAX_PIXEL_MAP_TABLE",
  gl_max_attrib_stack_depth - "GL_MAX_ATTRIB_STACK_DEPTH",
  gl_max_modelview_stack_depth  - "GL_MAX_MODELVIEW_STACK_DEPTH",
  gl_max_name_stack_depth- "GL_MAX_NAME_STACK_DEPTH",
  gl_max_projection_stack_depth - "GL_MAX_PROJECTION_STACK_DEPTH",
  gl_max_texture_stack_depth- "GL_MAX_TEXTURE_STACK_DEPTH",
  gl_max_viewport_dims- "GL_MAX_VIEWPORT_DIMS",
  gl_max_client_attrib_stack_depth - "GL_MAX_CLIENT_ATTRIB_STACK_DEPTH",
  gl_attrib_stack_depth  - "GL_ATTRIB_STACK_DEPTH",
  gl_client_attrib_stack_depth  - "GL_CLIENT_ATTRIB_STACK_DEPTH",
  gl_color_clear_value- "GL_COLOR_CLEAR_VALUE",
  gl_color_writemask - "GL_COLOR_WRITEMASK",
  gl_current_index- "GL_CURRENT_INDEX",
  gl_current_color- "GL_CURRENT_COLOR",
  gl_current_normal  - "GL_CURRENT_NORMAL",
  gl_current_raster_color- "GL_CURRENT_RASTER_COLOR",
  gl_current_raster_distance- "GL_CURRENT_RASTER_DISTANCE",
  gl_current_raster_index- "GL_CURRENT_RASTER_INDEX",
  gl_current_raster_position- "GL_CURRENT_RASTER_POSITION",
  gl_current_raster_texture_coords - "GL_CURRENT_RASTER_TEXTURE_COORDS",
  gl_current_raster_position_valid - "GL_CURRENT_RASTER_POSITION_VALID",
  gl_current_texture_coords - "GL_CURRENT_TEXTURE_COORDS",
  gl_index_clear_value- "GL_INDEX_CLEAR_VALUE",
  gl_index_mode- "GL_INDEX_MODE",
  gl_index_writemask - "GL_INDEX_WRITEMASK",
  gl_modelview_matrix- "GL_MODELVIEW_MATRIX",
  gl_modelview_stack_depth  - "GL_MODELVIEW_STACK_DEPTH",
  gl_name_stack_depth- "GL_NAME_STACK_DEPTH",
  gl_projection_matrix- "GL_PROJECTION_MATRIX",
  gl_projection_stack_depth - "GL_PROJECTION_STACK_DEPTH",
  gl_render_mode  - "GL_RENDER_MODE",
  gl_rgba_mode- "GL_RGBA_MODE",
  gl_texture_matrix  - "GL_TEXTURE_MATRIX",
  gl_texture_stack_depth - "GL_TEXTURE_STACK_DEPTH",
  gl_viewport - "GL_VIEWPORT",
  gl_auto_normal- "GL_AUTO_NORMAL",
  gl_map1_color_4  - "GL_MAP1_COLOR_4",
  gl_map1_index - "GL_MAP1_INDEX",
  gl_map1_normal- "GL_MAP1_NORMAL",
  gl_map1_texture_coord_1 - "GL_MAP1_TEXTURE_COORD_1",
  gl_map1_texture_coord_2 - "GL_MAP1_TEXTURE_COORD_2",
  gl_map1_texture_coord_3 - "GL_MAP1_TEXTURE_COORD_3",
  gl_map1_texutre_coord_4 - "GL_MAP1_TEXTURE_COORD_4",
  gl_map1_vertex_3 - "GL_MAP1_VERTEX_3",
  gl_map1_vertex_4 - "GL_MAP1_VERTEX_4",
  gl_map2_color_4  - "GL_MAP2_COLOR_4",
  gl_map2_index - "GL_MAP2_INDEX",
  gl_map2_normal- "GL_MAP2_NORMAL",
  gl_map2_texture_coord_1 - "GL_MAP2_TEXTURE_COORD_1",
  gl_map2_texture_coord_2 - "GL_MAP2_TEXTURE_COORD_2",
  gl_map2_texture_coord_3 - "GL_MAP2_TEXTURE_COORD_3",
  gl_map2_texture_coord_4 - "GL_MAP2_TEXTURE_COORD_4",
  gl_map2_vertex_3 - "GL_MAP2_VERTEX_3",
  gl_map2_vertex_4 - "GL_MAP2_VERTEX_4",
  gl_map1_grid_domain  - "GL_MAP1_GRID_DOMAIN",
  gl_map1_grid_segments- "GL_MAP1_GRID_SEGMENTS",
  gl_map2_grid_domain  - "GL_MAP2_GRID_DOMAIN",
  gl_map2_grid_segments- "GL_MAP2_GRID_SEGMENTS",
  gl_coeff  - "GL_COEFF",
  gl_order  - "GL_ORDER",
  gl_domain - "GL_DOMAIN",
  gl_perspective_correction_hint - "GL_PERSPECTIVE_CORRECTION_HINT",
  gl_point_smooth_hint - "GL_POINT_SMOOTH_HINT",
  gl_line_smooth_hint  - "GL_LINE_SMOOTH_HINT",
  gl_polygon_smooth_hint  - "GL_POLYGON_SMOOTH_HINT",
  gl_fog_hint- "GL_FOG_HINT",
  gl_dont_care  - "GL_DONT_CARE",
  gl_fastest- "GL_FASTEST",
  gl_nicest - "GL_NICEST",
  gl_scissor_box  - "GL_SCISSOR_BOX",
  gl_scissor_test - "GL_SCISSOR_TEST",
  gl_map_color-  "GL_MAP_COLOR",
  gl_map_stencil - "GL_MAP_STENCIL",
  gl_index_shift - "GL_INDEX_SHIFT",
  gl_index_offset- "GL_INDEX_OFFSET",
  gl_red_scale- "GL_RED_SCALE",
  gl_red_bias- "GL_RED_BIAS",
  gl_green_scale - "GL_GREEN_SCALE",
  gl_green_bias  - "GL_GREEN_BIAS",
  gl_blue_scale  - "GL_BLUE_SCALE",
  gl_blue_bias- "GL_BLUE_BIAS",
  gl_alpha_scale - "GL_ALPHA_SCALE",
  gl_alpha_bias  - "GL_ALPHA_BIAS",
  gl_depth_scale - "GL_DEPTH_SCALE",
  gl_depth_bias  - "GL_DEPTH_BIAS",
  gl_pixel_map_s_to_s_size - "GL_PIXEL_MAP_S_TO_S_SIZE",
  gl_pixel_map_i_to_i_size - "GL_PIXEL_MAP_I_TO_I_SIZE",
  gl_pixel_map_i_to_r_size - "GL_PIXEL_MAP_I_TO_R_SIZE",
  gl_pixel_map_i_to_g_size - "GL_PIXEL_MAP_I_TO_G_SIZE",
  gl_pixel_map_i_to_b_size - "GL_PIXEL_MAP_I_TO_B_SIZE",
  gl_pixel_map_i_to_a_size - "GL_PIXEL_MAP_I_TO_A_SIZE",
  gl_pixel_map_r_to_r_size - "GL_PIXEL_MAP_R_TO_R_SIZE",
  gl_pixel_map_g_to_g_size - "GL_PIXEL_MAP_G_TO_G_SIZE",
  gl_pixel_map_b_to_b_size - "GL_PIXEL_MAP_B_TO_B_SIZE",
  gl_pixel_map_a_to_a_size - "GL_PIXEL_MAP_A_TO_A_SIZE",
  gl_pixel_map_s_to_s- "GL_PIXEL_MAP_S_TO_S",
  gl_pixel_map_i_to_i- "GL_PIXEL_MAP_I_TO_I",
  gl_pixel_map_i_to_r- "GL_PIXEL_MAP_I_TO_R",
  gl_pixel_map_i_to_g- "GL_PIXEL_MAP_I_TO_G",
  gl_pixel_map_i_to_b- "GL_PIXEL_MAP_I_TO_B",
  gl_pixel_map_i_to_a- "GL_PIXEL_MAP_I_TO_A",
  gl_pixel_map_r_to_r- "GL_PIXEL_MAP_R_TO_R",
  gl_pixel_map_g_to_g- "GL_PIXEL_MAP_G_TO_G",
  gl_pixel_map_b_to_b- "GL_PIXEL_MAP_B_TO_B",
  gl_pixel_map_a_to_a- "GL_PIXEL_MAP_A_TO_A",
  gl_pack_alignment - "GL_PACK_ALIGNMENT",
  gl_pack_lsb_first - "GL_PACK_LSB_FIRST",
  gl_pack_row_length- "GL_PACK_ROW_LENGTH",
  gl_pack_skip_pixels- "GL_PACK_SKIP_PIXELS",
  gl_pack_skip_rows - "GL_PACK_SKIP_ROWS",
  gl_pack_swap_bytes- "GL_PACK_SWAP_BYTES",
  gl_unpack_alignment- "GL_UNPACK_ALIGNMENT",
  gl_unpack_lsb_first- "GL_UNPACK_LSB_FIRST",
  gl_unpack_row_length  - "GL_UNPACK_ROW_LENGTH",
  gl_unpack_skip_pixels - "GL_UNPACK_SKIP_PIXELS",
  gl_unpack_skip_rows- "GL_UNPACK_SKIP_ROWS",
  gl_unpack_swap_bytes  - "GL_UNPACK_SWAP_BYTES",
  gl_zoom_x  - "GL_ZOOM_X",
  gl_zoom_y  - "GL_ZOOM_Y",
  gl_texture_env  - "GL_TEXTURE_ENV",
  gl_texture_env_mode- "GL_TEXTURE_ENV_MODE",
  gl_texture_1d- "GL_TEXTURE_1D",
  gl_texture_2d- "GL_TEXTURE_2D",
  gl_texture_wrap_s  - "GL_TEXTURE_WRAP_S",
  gl_texture_wrap_t  - "GL_TEXTURE_WRAP_T",
  gl_texture_mag_filter  - "GL_TEXTURE_MAG_FILTER",
  gl_texture_min_filter  - "GL_TEXTURE_MIN_FILTER",
  gl_texture_env_color- "GL_TEXTURE_ENV_COLOR",
  gl_texture_gen_s- "GL_TEXTURE_GEN_S",
  gl_texture_gen_t- "GL_TEXTURE_GEN_T",
  gl_texture_gen_r- "GL_TEXTURE_GEN_R",
  gl_texture_gen_q- "GL_TEXTURE_GEN_Q",
  gl_texture_gen_mode- "GL_TEXTURE_GEN_MODE",
  gl_texture_border_color- "GL_TEXTURE_BORDER_COLOR",
  gl_texture_width- "GL_TEXTURE_WIDTH",
  gl_texture_height  - "GL_TEXTURE_HEIGHT",
  gl_texture_border  - "GL_TEXTURE_BORDER",
  gl_texture_components  - "GL_TEXTURE_COMPONENTS",
  gl_texture_red_size- "GL_TEXTURE_RED_SIZE",
  gl_texture_green_size  - "GL_TEXTURE_GREEN_SIZE",
  gl_texture_blue_size- "GL_TEXTURE_BLUE_SIZE",
  gl_texture_alpha_size  - "GL_TEXTURE_ALPHA_SIZE",
  gl_texture_luminance_size - "GL_TEXTURE_LUMINANCE_SIZE",
  gl_texture_intensity_size - "GL_TEXTURE_INTENSITY_SIZE",
  gl_nearest_mipmap_nearest - "GL_NEAREST_MIPMAP_NEAREST",
  gl_nearest_mipmap_linear  - "GL_NEAREST_MIPMAP_LINEAR",
  gl_linear_mipmap_nearest  - "GL_LINEAR_MIPMAP_NEAREST",
  gl_linear_mipmap_linear- "GL_LINEAR_MIPMAP_LINEAR",
  gl_object_linear- "GL_OBJECT_LINEAR",
  gl_object_plane - "GL_OBJECT_PLANE",
  gl_eye_linear- "GL_EYE_LINEAR",
  gl_eye_plane- "GL_EYE_PLANE",
  gl_sphere_map- "GL_SPHERE_MAP",
  gl_decal - "GL_DECAL",
  gl_modulate - "GL_MODULATE",
  gl_nearest  - "GL_NEAREST",
  gl_repeat- "GL_REPEAT",
  gl_clamp - "GL_CLAMP",
  gl_s - "GL_S",
  gl_t - "GL_T",
  gl_r - "GL_R",
  gl_q - "GL_Q",
  gl_vendor  - "GL_VENDOR",
  gl_renderer- "GL_RENDERER",
  gl_version - "GL_VERSION",
  gl_extensions - "GL_EXTENSIONS",
  gl_no_error - "GL_NO_ERROR",
  gl_invalid_enum - "GL_INVALID_ENUM",
  gl_invalid_value- "GL_INVALID_VALUE",
  gl_stack_overflow  - "GL_STACK_OVERFLOW",
  gl_stack_underflow - "GL_STACK_UNDERFLOW",
  gl_out_of_memory- "GL_OUT_OF_MEMORY",
  gl_current_bit  - "GL_CURRENT_BIT",
  gl_point_bit - "GL_POINT_BIT",
  gl_line_bit  - "GL_LINE_BIT",
  gl_polygon_bit  - "GL_POLYGON_BIT",
  gl_polygon_stipple_bit - "GL_POLYGON_STIPPLE_BIT",
  gl_pixel_mode_bit- "GL_PIXEL_MODE_BIT",
  gl_lighting_bit - "GL_LIGHTING_BIT",
  gl_fog_bit- "GL_FOG_BIT",
  gl_depth_buffer_bit - "GL_DEPTH_BUFFER_BIT",
  gl_stencil_buffer_bit  - "GL_STENCIL_BUFFER_BIT",
  gl_viewport_bit - "GL_VIEWPORT_BIT",
  gl_transform_bit- "GL_TRANSFORM_BIT",
  gl_enable_bit- "GL_ENABLE_BIT",
  gl_color_buffer_bit - "GL_COLOR_BUFFER_BIT",
  gl_eval_bit  - "GL_EVAL_BIT",
  gl_list_bit  - "GL_LIST_BIT",
  gl_accum_buffer_bit - "GL_ACCUM_BUFFER_BIT",
  gl_hint_bit  - "GL_HINT_BIT",
  gl_texture_bit  - "GL_TEXTURE_BIT",
  gl_scissor_bit  - "GL_SCISSOR_BIT",
  gl_all_attrib_bits  - "GL_ALL_ATTRIB_BITS",
  gl_rescale_normal - "GL_RESCALE_NORMAL",
  gl_clamp_to_edge - "GL_CLAMP_TO_EDGE",
  gl_max_elements_vertices - "GL_MAX_ELEMENTS_VERTICES",
  gl_max_elements_indices - "GL_MAX_ELEMENTS_INDICES",
  gl_bgr - "GL_BGR",
  gl_bgra - "GL_BGRA",
  gl_unsigned_byte_3_3_2 - "GL_UNSIGNED_BYTE_3_3_2",
  gl_unsigned_byte_2_3_3_rev - "GL_UNSIGNED_BYTE_2_3_3_REV",
  gl_unsigned_short_5_6_5 - "GL_UNSIGNED_SHORT_5_6_5",
  gl_unsigned_short_5_6_5_rev - "GL_UNSIGNED_SHORT_5_6_5_REV",
  gl_unsigned_short_4_4_4_4 - "GL_UNSIGNED_SHORT_4_4_4_4",
  gl_unsigned_short_4_4_4_4_rev - "GL_UNSIGNED_SHORT_4_4_4_4_REV",
  gl_unsigned_short_5_5_5_1 - "GL_UNSIGNED_SHORT_5_5_5_1",
  gl_unsigned_short_1_5_5_5_rev - "GL_UNSIGNED_SHORT_1_5_5_5_REV",
  gl_unsigned_int_8_8_8_8 - "GL_UNSIGNED_INT_8_8_8_8",
  gl_unsigned_int_8_8_8_8_rev - "GL_UNSIGNED_INT_8_8_8_8_REV",
  gl_unsigned_int_10_10_10_2 - "GL_UNSIGNED_INT_10_10_10_2",
  gl_unsigned_int_2_10_10_10_rev - "GL_UNSIGNED_INT_2_10_10_10_REV",
  gl_light_model_color_control - "GL_LIGHT_MODEL_COLOR_CONTROL",
  gl_single_color - "GL_SINGLE_COLOR",
  gl_separate_specular_color - "GL_SEPARATE_SPECULAR_COLOR",
  gl_texture_min_lod - "GL_TEXTURE_MIN_LOD",
  gl_texture_max_lod - "GL_TEXTURE_MAX_LOD",
  gl_texture_base_level - "GL_TEXTURE_BASE_LEVEL",
  gl_texture_max_level - "GL_TEXTURE_MAX_LEVEL",
  gl_smooth_point_size_range - "GL_SMOOTH_POINT_SIZE_RANGE",
  gl_smooth_point_size_granularity - "GL_SMOOTH_POINT_SIZE_GRANULARITY",
  gl_smooth_line_width_range - "GL_SMOOTH_LINE_WIDTH_RANGE",
  gl_smooth_line_width_granularity - "GL_SMOOTH_LINE_WIDTH_GRANULARITY",
  gl_aliased_point_size_range - "GL_ALIASED_POINT_SIZE_RANGE",
  gl_aliased_line_width_range - "GL_ALIASED_LINE_WIDTH_RANGE",
  gl_pack_skip_images - "GL_PACK_SKIP_IMAGES",
  gl_pack_image_height - "GL_PACK_IMAGE_HEIGHT",
  gl_unpack_skip_images - "GL_UNPACK_SKIP_IMAGES",
  gl_unpack_image_height - "GL_UNPACK_IMAGE_HEIGHT",
  gl_texture_3d - "GL_TEXTURE_3D",
  gl_proxy_texture_3d - "GL_PROXY_TEXTURE_3D",
  gl_texture_depth - "GL_TEXTURE_DEPTH",
  gl_texture_wrap_r - "GL_TEXTURE_WRAP_R",
  gl_max_3d_texture_size - "GL_MAX_3D_TEXTURE_SIZE",
  gl_texture_binding_3d - "GL_TEXTURE_BINDING_3D",
  gl_color_table - "GL_COLOR_TABLE",
  gl_post_convolution_color_table - "GL_POST_CONVOLUTION_COLOR_TABLE",
  gl_post_color_matrix_color_table - "GL_POST_COLOR_MATRIX_COLOR_TABLE",
  gl_proxy_color_table - "GL_PROXY_COLOR_TABLE",
  gl_proxy_post_convolution_color_table - "GL_PROXY_POST_CONVOLUTION_COLOR_TABLE",
  gl_proxy_post_color_matrix_color_table - "GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE",
  gl_color_table_scale - "GL_COLOR_TABLE_SCALE",
  gl_color_table_bias - "GL_COLOR_TABLE_BIAS",
  gl_color_table_format - "GL_COLOR_TABLE_FORMAT",
  gl_color_table_width - "GL_COLOR_TABLE_WIDTH",
  gl_color_table_red_size - "GL_COLOR_TABLE_RED_SIZE",
  gl_color_table_green_size - "GL_COLOR_TABLE_GREEN_SIZE",
  gl_color_table_blue_size - "GL_COLOR_TABLE_BLUE_SIZE",
  gl_color_table_alpha_size - "GL_COLOR_TABLE_ALPHA_SIZE",
  gl_color_table_luminance_size - "GL_COLOR_TABLE_LUMINANCE_SIZE",
  gl_color_table_intensity_size - "GL_COLOR_TABLE_INTENSITY_SIZE",
  gl_convolution_1d - "GL_CONVOLUTION_1D",
  gl_convolution_2d - "GL_CONVOLUTION_2D",
  gl_separable_2d - "GL_SEPARABLE_2D",
  gl_convolution_border_mode - "GL_CONVOLUTION_BORDER_MODE",
  gl_convolution_filter_scale - "GL_CONVOLUTION_FILTER_SCALE",
  gl_convolution_filter_bias - "GL_CONVOLUTION_FILTER_BIAS",
  gl_reduce - "GL_REDUCE",
  gl_convolution_format - "GL_CONVOLUTION_FORMAT",
  gl_convolution_width - "GL_CONVOLUTION_WIDTH",
  gl_convolution_height - "GL_CONVOLUTION_HEIGHT",
  gl_max_convolution_width - "GL_MAX_CONVOLUTION_WIDTH",
  gl_max_convolution_height - "GL_MAX_CONVOLUTION_HEIGHT",
  gl_post_convolution_red_scale - "GL_POST_CONVOLUTION_RED_SCALE",
  gl_post_convolution_green_scale - "GL_POST_CONVOLUTION_GREEN_SCALE",
  gl_post_convolution_blue_scale - "GL_POST_CONVOLUTION_BLUE_SCALE",
  gl_post_convolution_alpha_scale - "GL_POST_CONVOLUTION_ALPHA_SCALE",
  gl_post_convolution_red_bias - "GL_POST_CONVOLUTION_RED_BIAS",
  gl_post_convolution_green_bias - "GL_POST_CONVOLUTION_GREEN_BIAS",
  gl_post_convolution_blue_bias - "GL_POST_CONVOLUTION_BLUE_BIAS",
  gl_post_convolution_alpha_bias - "GL_POST_CONVOLUTION_ALPHA_BIAS",
  gl_replicate_border - "GL_REPLICATE_BORDER",
  gl_convolution_border_color - "GL_CONVOLUTION_BORDER_COLOR",
  gl_color_matrix - "GL_COLOR_MATRIX",
  gl_color_matrix_stack_depth - "GL_COLOR_MATRIX_STACK_DEPTH",
  gl_max_color_matrix_stack_depth - "GL_MAX_COLOR_MATRIX_STACK_DEPTH",
  gl_post_color_matrix_red_scale - "GL_POST_COLOR_MATRIX_RED_SCALE",
  gl_post_color_matrix_green_scale - "GL_POST_COLOR_MATRIX_GREEN_SCALE",
  gl_post_color_matrix_blue_scale - "GL_POST_COLOR_MATRIX_BLUE_SCALE",
  gl_post_color_matrix_alpha_scale - "GL_POST_COLOR_MATRIX_ALPHA_SCALE",
  gl_post_color_matrix_red_bias - "GL_POST_COLOR_MATRIX_RED_BIAS",
  gl_post_color_matrix_green_bias - "GL_POST_COLOR_MATRIX_GREEN_BIAS",
  gl_post_color_matrix_blue_bias - "GL_POST_COLOR_MATRIX_BLUE_BIAS",
  gl_post_color_matrix_alpha_bias - "GL_POST_COLOR_MATRIX_ALPHA_BIAS",
  gl_histogram - "GL_HISTOGRAM",
  gl_proxy_histogram - "GL_PROXY_HISTOGRAM",
  gl_histogram_width - "GL_HISTOGRAM_WIDTH",
  gl_histogram_format - "GL_HISTOGRAM_FORMAT",
  gl_histogram_red_size - "GL_HISTOGRAM_RED_SIZE",
  gl_histogram_green_size - "GL_HISTOGRAM_GREEN_SIZE",
  gl_histogram_blue_size - "GL_HISTOGRAM_BLUE_SIZE",
  gl_histogram_alpha_size - "GL_HISTOGRAM_ALPHA_SIZE",
  gl_histogram_luminance_size - "GL_HISTOGRAM_LUMINANCE_SIZE",
  gl_histogram_sink - "GL_HISTOGRAM_SINK",
  gl_minmax - "GL_MINMAX",
  gl_minmax_format - "GL_MINMAX_FORMAT",
  gl_minmax_sink - "GL_MINMAX_SINK",
  gl_table_too_large - "GL_TABLE_TOO_LARGE",
  gl_blend_equation - "GL_BLEND_EQUATION",
  gl_min - "GL_MIN",
  gl_max - "GL_MAX",
  gl_func_add - "GL_FUNC_ADD",
  gl_func_subtract - "GL_FUNC_SUBTRACT",
  gl_func_reverse_subtract - "GL_FUNC_REVERSE_SUBTRACT",
  gl_blend_color - "GL_BLEND_COLOR",
  gl_texture0 - "GL_TEXTURE0",
  gl_texture1 - "GL_TEXTURE1",
  gl_texture2 - "GL_TEXTURE2",
  gl_texture3 - "GL_TEXTURE3",
  gl_texture4 - "GL_TEXTURE4",
  gl_texture5 - "GL_TEXTURE5",
  gl_texture6 - "GL_TEXTURE6",
  gl_texture7 - "GL_TEXTURE7",
  gl_texture8 - "GL_TEXTURE8",
  gl_texture9 - "GL_TEXTURE9",
  gl_texture10 - "GL_TEXTURE10",
  gl_texture11 - "GL_TEXTURE11",
  gl_texture12 - "GL_TEXTURE12",
  gl_texture13 - "GL_TEXTURE13",
  gl_texture14 - "GL_TEXTURE14",
  gl_texture15 - "GL_TEXTURE15",
  gl_texture16 - "GL_TEXTURE16",
  gl_texture17 - "GL_TEXTURE17",
  gl_texture18 - "GL_TEXTURE18",
  gl_texture19 - "GL_TEXTURE19",
  gl_texture20 - "GL_TEXTURE20",
  gl_texture21 - "GL_TEXTURE21",
  gl_texture22 - "GL_TEXTURE22",
  gl_texture23 - "GL_TEXTURE23",
  gl_texture24 - "GL_TEXTURE24",
  gl_texture25 - "GL_TEXTURE25",
  gl_texture26 - "GL_TEXTURE26",
  gl_texture27 - "GL_TEXTURE27",
  gl_texture28 - "GL_TEXTURE28",
  gl_texture29 - "GL_TEXTURE29",
  gl_texture30 - "GL_TEXTURE30",
  gl_texture31 - "GL_TEXTURE31",
  gl_active_texture - "GL_ACTIVE_TEXTURE",
  gl_client_active_texture - "GL_CLIENT_ACTIVE_TEXTURE",
  gl_max_texture_units - "GL_MAX_TEXTURE_UNITS",
  gl_normal_map - "GL_NORMAL_MAP",
  gl_reflection_map - "GL_REFLECTION_MAP",
  gl_texture_cube_map - "GL_TEXTURE_CUBE_MAP",
  gl_texture_binding_cube_map - "GL_TEXTURE_BINDING_CUBE_MAP",
  gl_texture_cube_map_positive_x - "GL_TEXTURE_CUBE_MAP_POSITIVE_X",
  gl_texture_cube_map_negative_x - "GL_TEXTURE_CUBE_MAP_NEGATIVE_X",
  gl_texture_cube_map_positive_y - "GL_TEXTURE_CUBE_MAP_POSITIVE_Y",
  gl_texture_cube_map_negative_y - "GL_TEXTURE_CUBE_MAP_NEGATIVE_Y",
  gl_texture_cube_map_positive_z - "GL_TEXTURE_CUBE_MAP_POSITIVE_Z",
  gl_texture_cube_map_negative_z - "GL_TEXTURE_CUBE_MAP_NEGATIVE_Z",
  gl_proxy_texture_cube_map - "GL_PROXY_TEXTURE_CUBE_MAP",
  gl_max_cube_map_texture_size - "GL_MAX_CUBE_MAP_TEXTURE_SIZE",
  gl_compressed_alpha - "GL_COMPRESSED_ALPHA",
  gl_compressed_luminance - "GL_COMPRESSED_LUMINANCE",
  gl_compressed_luminance_alpha - "GL_COMPRESSED_LUMINANCE_ALPHA",
  gl_compressed_intensity - "GL_COMPRESSED_INTENSITY",
  gl_compressed_rgb - "GL_COMPRESSED_RGB",
  gl_compressed_rgba - "GL_COMPRESSED_RGBA",
  gl_texture_compression_hint - "GL_TEXTURE_COMPRESSION_HINT",
  gl_texture_compressed_image_size - "GL_TEXTURE_COMPRESSED_IMAGE_SIZE",
  gl_texture_compressed - "GL_TEXTURE_COMPRESSED",
  gl_num_compressed_texture_formats - "GL_NUM_COMPRESSED_TEXTURE_FORMATS",
  gl_compressed_texture_formats - "GL_COMPRESSED_TEXTURE_FORMATS",
  gl_multisample - "GL_MULTISAMPLE",
  gl_sample_alpha_to_coverage - "GL_SAMPLE_ALPHA_TO_COVERAGE",
  gl_sample_alpha_to_one - "GL_SAMPLE_ALPHA_TO_ONE",
  gl_sample_coverage - "GL_SAMPLE_COVERAGE",
  gl_sample_buffers - "GL_SAMPLE_BUFFERS",
  gl_samples - "GL_SAMPLES",
  gl_sample_coverage_value - "GL_SAMPLE_COVERAGE_VALUE",
  gl_sample_coverage_invert - "GL_SAMPLE_COVERAGE_INVERT",
  gl_multisample_bit - "GL_MULTISAMPLE_BIT",
  gl_transpose_modelview_matrix - "GL_TRANSPOSE_MODELVIEW_MATRIX",
  gl_transpose_projection_matrix - "GL_TRANSPOSE_PROJECTION_MATRIX",
  gl_transpose_texture_matrix - "GL_TRANSPOSE_TEXTURE_MATRIX",
  gl_transpose_color_matrix - "GL_TRANSPOSE_COLOR_MATRIX",
  gl_combine - "GL_COMBINE",
  gl_combine_alpha - "GL_COMBINE_ALPHA",
  gl_source0_rgb - "GL_SOURCE0_RGB",
  gl_source1_rgb - "GL_SOURCE1_RGB",
  gl_source2_rgb - "GL_SOURCE2_RGB",
  gl_source0_alpha - "GL_SOURCE0_ALPHA",
  gl_source1_alpha - "GL_SOURCE1_ALPHA",
  gl_source2_alpha - "GL_SOURCE2_ALPHA",
  gl_operand0_rgb - "GL_OPERAND0_RGB",
  gl_operand1_rgb - "GL_OPERAND1_RGB",
  gl_operand2_rgb - "GL_OPERAND2_RGB",
  gl_operand0_alpha - "GL_OPERAND0_ALPHA",
  gl_operand1_alpha - "GL_OPERAND1_ALPHA",
  gl_operand2_alpha - "GL_OPERAND2_ALPHA",
  gl_rgb_scale - "GL_RGB_SCALE",
  gl_add_signed - "GL_ADD_SIGNED",
  gl_interpolate - "GL_INTERPOLATE",
  gl_subtract - "GL_SUBTRACT",
  gl_primary_color - "GL_PRIMARY_COLOR",
  gl_previous - "GL_PREVIOUS",
  gl_dot3_rgb - "GL_DOT3_RGB",
  gl_dot3_rgba - "GL_DOT3_RGBA",
  gl_clamp_to_border - "GL_CLAMP_TO_BORDER",
  gl_texture0_arb - "GL_TEXTURE0_ARB",
  gl_texture1_arb - "GL_TEXTURE1_ARB",
  gl_texture2_arb - "GL_TEXTURE2_ARB",
  gl_texture3_arb - "GL_TEXTURE3_ARB",
  gl_texture4_arb - "GL_TEXTURE4_ARB",
  gl_texture5_arb - "GL_TEXTURE5_ARB",
  gl_texture6_arb - "GL_TEXTURE6_ARB",
  gl_texture7_arb - "GL_TEXTURE7_ARB",
  gl_texture8_arb - "GL_TEXTURE8_ARB",
  gl_texture9_arb - "GL_TEXTURE9_ARB",
  gl_texture10_arb - "GL_TEXTURE10_ARB",
  gl_texture11_arb - "GL_TEXTURE11_ARB",
  gl_texture12_arb - "GL_TEXTURE12_ARB",
  gl_texture13_arb - "GL_TEXTURE13_ARB",
  gl_texture14_arb - "GL_TEXTURE14_ARB",
  gl_texture15_arb - "GL_TEXTURE15_ARB",
  gl_texture16_arb - "GL_TEXTURE16_ARB",
  gl_texture17_arb - "GL_TEXTURE17_ARB",
  gl_texture18_arb - "GL_TEXTURE18_ARB",
  gl_texture19_arb - "GL_TEXTURE19_ARB",
  gl_texture20_arb - "GL_TEXTURE20_ARB",
  gl_texture21_arb - "GL_TEXTURE21_ARB",
  gl_texture22_arb - "GL_TEXTURE22_ARB",
  gl_texture23_arb - "GL_TEXTURE23_ARB",
  gl_texture24_arb - "GL_TEXTURE24_ARB",
  gl_texture25_arb - "GL_TEXTURE25_ARB",
  gl_texture26_arb - "GL_TEXTURE26_ARB",
  gl_texture27_arb - "GL_TEXTURE27_ARB",
  gl_texture28_arb - "GL_TEXTURE28_ARB",
  gl_texture29_arb - "GL_TEXTURE29_ARB",
  gl_texture30_arb - "GL_TEXTURE30_ARB",
  gl_texture31_arb - "GL_TEXTURE31_ARB",
  gl_active_texture_arb - "GL_ACTIVE_TEXTURE_ARB",
  gl_client_active_texture_arb - "GL_CLIENT_ACTIVE_TEXTURE_ARB",
  gl_max_texture_units_arb - "GL_MAX_TEXTURE_UNITS_ARB",
  gl_depth_stencil_mesa - "GL_DEPTH_STENCIL_MESA",
  gl_unsigned_int_24_8_mesa - "GL_UNSIGNED_INT_24_8_MESA",
  gl_unsigned_int_8_24_rev_mesa - "GL_UNSIGNED_INT_8_24_REV_MESA",
  gl_unsigned_short_15_1_mesa - "GL_UNSIGNED_SHORT_15_1_MESA",
  gl_unsigned_short_1_15_rev_mesa - "GL_UNSIGNED_SHORT_1_15_REV_MESA",
  gl_alpha_blend_equation_ati - "GL_ALPHA_BLEND_EQUATION_ATI",
  gl_ambient - "GL_AMBIENT",
  gl_ambient_and_diffuse - "GL_AMBIENT_AND_DIFFUSE",
  gl_color_indexes - "GL_COLOR_INDEXES",
  gl_color_material - "GL_COLOR_MATERIAL",
  gl_color_material_face - "GL_COLOR_MATERIAL_FACE",
  gl_color_material_parameter - "GL_COLOR_MATERIAL_PARAMETER",
  gl_diffuse - "GL_DIFFUSE",
  gl_emission - "GL_EMISSION",
  gl_flat - "GL_FLAT",
  gl_front_and_back - "GL_FRONT_AND_BACK",
  gl_light_model_ambient - "GL_LIGHT_MODEL_AMBIENT",
  gl_light_model_local_viewer - "GL_LIGHT_MODEL_LOCAL_VIEWER",
  gl_light_model_two_side - "GL_LIGHT_MODEL_TWO_SIDE",
  gl_linear_attenuation - "GL_LINEAR_ATTENUATION",
  gl_normalize - "GL_NORMALIZE",
  gl_position - "GL_POSITION",
  gl_quadratic_attenuation - "GL_QUADRATIC_ATTENUATION",
  gl_shade_model - "GL_SHADE_MODEL",
  gl_shininess - "GL_SHININESS",
  gl_smooth - "GL_SMOOTH",
  gl_specular - "GL_SPECULAR",
  gl_spot_direction - "GL_SPOT_DIRECTION"
]).

:- pragma foreign_proc("C",glClearIndex(C::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glClearIndex(C);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glClearColor(Red::in,Green::in,Blue::in,Alpha::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glClearColor(Red,Green,Blue,Alpha);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glClear(Mask::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glClear(Mask);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glIndexMask(Mask::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glIndexMask(Mask);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColorMask(Red::in,Green::in,Blue::in,Alpha::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColorMask(Red,Green,Blue,Alpha);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glAlphaFunc(Func::in,Ref::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glAlphaFunc(Func,Ref);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glBlendFunc(Sfactor::in,Dfactor::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glBlendFunc(Sfactor,Dfactor);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLogicOp(Opcode::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLogicOp(Opcode);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCullFace(Mode::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCullFace(Mode);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glFrontFace(Mode::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glFrontFace(Mode);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPointSize(Size::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPointSize(Size);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLineWidth(Width::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLineWidth(Width);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLineStipple(Factor::in,Pattern::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLineStipple(Factor,Pattern);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPolygonMode(Face::in,Mode::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPolygonMode(Face,Mode);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPolygonOffset(Factor::in,Units::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPolygonOffset(Factor,Units);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPolygonStipple(Mask::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPolygonStipple(Mask);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetPolygonStipple(Mask::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetPolygonStipple(Mask);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEdgeFlag(Flag::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEdgeFlag(Flag);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEdgeFlagv(Flag::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEdgeFlagv(Flag);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glScissor(X::in,Y::in,Width::in,Height::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glScissor(X,Y,Width,Height);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glClipPlane(Plane::in,Equation::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glClipPlane(Plane,Equation);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetClipPlane(Plane::in,Equation::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetClipPlane(Plane,Equation);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glDrawBuffer(Mode::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glDrawBuffer(Mode);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glReadBuffer(Mode::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glReadBuffer(Mode);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEnable(Cap::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEnable(Cap);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glDisable(Cap::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glDisable(Cap);
  IO1 = IO0;
").

:- pragma foreign_proc("C",glIsEnabled(Enum::in,IO0::di,IO1::uo) = (Boolean::out),[promise_pure,will_not_call_mercury],
"
  Boolean = glIsEnabled(Enum);
  IO1 = IO0;
").

:- pragma foreign_proc("C",glEnableClientState(Cap::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEnableClientState(Cap);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glDisableClientState(Cap::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glDisableClientState(Cap);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetBooleanv(Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetBooleanv(Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetDoublev(Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetDoublev(Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetFloatv(Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetFloatv(Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetIntegerv(Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetIntegerv(Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPushAttrib(Mask::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPushAttrib(Mask);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPopAttrib(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPopAttrib();
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPushClientAttrib(Mask::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPushClientAttrib(Mask);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPopClientAttrib(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPopClientAttrib();
  IO1 = IO0;
").

:- pragma foreign_proc("C",glRenderMode(Mode::in,IO0::di,IO1::uo) = (Glint::out),[promise_pure,will_not_call_mercury],
"
  Glint = glRenderMode(Mode);
  IO1 = IO0;
").

:- pragma foreign_proc("C",glGetError(IO0::di,IO1::uo) = (Error::out),[promise_pure,will_not_call_mercury],
"
  Error = glGetError();
  IO1 = IO0;
").

:- pragma foreign_proc("C",glGetString(Name::in,IO0::di,IO1::uo) = (Enum::out),[promise_pure,will_not_call_mercury],
"
  Enum = glGetString(Name);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glFinish(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glFinish();
  IO1 = IO0;
").
:- pragma foreign_proc("C",glFlush(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glFlush();
  IO1 = IO0;
").
:- pragma foreign_proc("C",glHint(Target::in,Mode::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glHint(Target,Mode);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glClearDepth(Depth::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glClearDepth(Depth);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glDepthFunc(Func::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glDepthFunc(Func);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glDepthMask(Flag::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glDepthMask(Flag);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glDepthRange(Near_val::in,Far_val::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glDepthRange(Near_val,Far_val);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glClearAccum(Red::in,Green::in,Blue::in,Alpha::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glClearAccum(Red,Green,Blue,Alpha);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glAccum(Op::in,Value::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glAccum(Op,Value);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMatrixMode(Mode::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMatrixMode(Mode);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glOrtho(Left::in,Right::in,Bottom::in,Top::in,Near_val::in,Far_val::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glOrtho(Left,Right,Bottom,Top,Near_val,Far_val);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glFrustum(Left::in,Right::in,Bottom::in,Top::in,Near_val::in,Far_val::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glFrustum(Left,Right,Bottom,Top,Near_val,Far_val);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glViewport(X::in,Y::in,Width::in,Height::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glViewport(X,Y,Width,Height);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPushMatrix(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPushMatrix();
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPopMatrix(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPopMatrix();
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLoadIdentity(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLoadIdentity();
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLoadMatrixd(M::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLoadMatrixd(M);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLoadMatrixf(M::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLoadMatrixf(M);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultMatrixd(M::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultMatrixd(M);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultMatrixf(M::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultMatrixf(M);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRotated(Angle::in,X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRotated(Angle,X,Y,Z);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRotatef(Angle::in,X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRotatef((float)Angle,(float)X,(float)Y,(float)Z);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glScaled(X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glScaled(X,Y,Z);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glScalef(X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glScalef((float)X,(float)Y,(float)Z);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTranslated(X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTranslated(X,Y,Z);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTranslatef(X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTranslatef((float)X,(float)Y,(float)Z);
  IO1 = IO0;
").

:- pragma foreign_proc("C",glIsList(Gluint::in,IO0::di,IO1::uo) = (Boolean::out),[promise_pure,will_not_call_mercury],
"
  Boolean = glIsList(Gluint);
  IO1 = IO0;
").

:- pragma foreign_proc("C",glDeleteLists(List::in,Range::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glDeleteLists(List,Range);
  IO1 = IO0;
").

:- pragma foreign_proc("C",glGenLists(Glsizei::in,IO0::di,IO1::uo) = (List::out),[promise_pure,will_not_call_mercury],
"
  List = glGenLists(Glsizei);
  IO1 = IO0;
").

:- pragma foreign_proc("C",glNewList(List::in,Mode::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glNewList(List,Mode);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCallList(List::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCallList(List);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCallLists(N::in,Type::in,Lists::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCallLists(N,Type,Lists);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glListBase(Base::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glListBase(Base);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glBegin(Mode::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glBegin(Mode);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEnd(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEnd();
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex2d(X::in,Y::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex2d(X,Y);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex2f(X::in,Y::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex2f(X,Y);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex2i(X::in,Y::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex2i(X,Y);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex2s(X::in,Y::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex2s(X,Y);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex3f(X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex3f(X,Y,Z);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex3i(X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex3i(X,Y,Z);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex3s(X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex3s(X,Y,Z);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex4d(X::in,Y::in,Z::in,W::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex4d(X,Y,Z,W);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex4f(X::in,Y::in,Z::in,W::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex4f(X,Y,Z,W);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex4i(X::in,Y::in,Z::in,W::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex4i(X,Y,Z,W);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex4s(X::in,Y::in,Z::in,W::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex4s(X,Y,Z,W);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex2dv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex2dv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex2fv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex2fv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex2iv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex2iv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex2sv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex2sv(V);
  IO1 = IO0;
").

:- pragma foreign_proc("C",glVertex3d(X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex3d(X,Y,Z);
  IO1 = IO0;
").

:- pragma foreign_proc("C",glVertex3dv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex3dv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex3fv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex3fv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex3iv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex3iv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex3sv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex3sv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex4dv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex4dv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex4fv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex4fv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex4iv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex4iv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertex4sv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertex4sv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glNormal3b(Nx::in,Ny::in,Nz::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glNormal3b(Nx,Ny,Nz);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glNormal3d(Nx::in,Ny::in,Nz::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glNormal3d(Nx,Ny,Nz);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glNormal3f(Nx::in,Ny::in,Nz::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glNormal3f(Nx,Ny,Nz);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glNormal3i(Nx::in,Ny::in,Nz::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glNormal3i(Nx,Ny,Nz);
  IO1 = IO0;
").

:- pragma foreign_proc("C",glNormal3s(Nx::in,Ny::in,Nz::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glNormal3s(Nx,Ny,Nz);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glNormal3bv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glNormal3bv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glNormal3dv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glNormal3dv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glNormal3fv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glNormal3fv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glNormal3iv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glNormal3iv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glNormal3sv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glNormal3sv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glIndexd(C::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glIndexd(C);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glIndexf(C::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glIndexf(C);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glIndexi(C::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glIndexi(C);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glIndexs(C::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glIndexs(C);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glIndexub(C::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glIndexub(C);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glIndexdv(C::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glIndexdv(C);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glIndexfv(C::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glIndexfv(C);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glIndexiv(C::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glIndexiv(C);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glIndexsv(C::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glIndexsv(C);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glIndexubv(C::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glIndexubv(C);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3b(Red::in,Green::in,Blue::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3b(Red,Green,Blue);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3d(Red::in,Green::in,Blue::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3d(Red,Green,Blue);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3f(Red::in,Green::in,Blue::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3f(Red,Green,Blue);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3i(Red::in,Green::in,Blue::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3i(Red,Green,Blue);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3s(Red::in,Green::in,Blue::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3s(Red,Green,Blue);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3ub(Red::in,Green::in,Blue::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3ub(Red,Green,Blue);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3ui(Red::in,Green::in,Blue::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3ui(Red,Green,Blue);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3us(Red::in,Green::in,Blue::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3us(Red,Green,Blue);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4b(Red::in,Green::in,Blue::in,Alpha::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4b(Red,Green,Blue,Alpha);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4d(Red::in,Green::in,Blue::in,Alpha::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4d(Red,Green,Blue,Alpha);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4f(Red::in,Green::in,Blue::in,Alpha::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4f(Red,Green,Blue,Alpha);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4i(Red::in,Green::in,Blue::in,Alpha::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4i(Red,Green,Blue,Alpha);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4s(Red::in,Green::in,Blue::in,Alpha::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4s(Red,Green,Blue,Alpha);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4ub(Red::in,Green::in,Blue::in,Alpha::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4ub(Red,Green,Blue,Alpha);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4ui(Red::in,Green::in,Blue::in,Alpha::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4ui(Red,Green,Blue,Alpha);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4us(Red::in,Green::in,Blue::in,Alpha::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4us(Red,Green,Blue,Alpha);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3bv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3bv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3dv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3dv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3fv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3fv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3iv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3iv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3sv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3sv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3ubv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3ubv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3uiv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3uiv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor3usv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor3usv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4bv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4bv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4dv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4dv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4fv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4fv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4iv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4iv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4sv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4sv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4ubv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4ubv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4uiv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4uiv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColor4usv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColor4usv(V);
  IO1 = IO0;
").

:- pragma foreign_proc("C",glTexCoord1d(S::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord1d(S);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord1f(S::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord1f(S);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord1i(S::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord1i(S);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord1s(S::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord1s(S);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord2d(S::in,T::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord2d(S,T);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord2f(S::in,T::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord2f(S,T);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord2i(S::in,T::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord2i(S,T);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord2s(S::in,T::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord2s(S,T);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord3d(S::in,T::in,R::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord3d(S,T,R);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord3f(S::in,T::in,R::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord3f(S,T,R);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord3i(S::in,T::in,R::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord3i(S,T,R);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord3s(S::in,T::in,R::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord3s(S,T,R);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord4d(S::in,T::in,R::in,Q::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord4d(S,T,R,Q);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord4f(S::in,T::in,R::in,Q::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord4f(S,T,R,Q);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord4i(S::in,T::in,R::in,Q::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord4i(S,T,R,Q);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord4s(S::in,T::in,R::in,Q::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord4s(S,T,R,Q);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord2dv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord2dv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord2fv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord2fv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord2iv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord2iv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord2sv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord2sv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord3dv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord3dv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord3fv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord3fv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord3iv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord3iv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord3sv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord3sv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord4dv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord4dv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord4fv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord4fv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord4iv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord4iv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoord4sv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoord4sv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos2d(X::in,Y::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos2d(X,Y);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos2f(X::in,Y::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos2f(X,Y);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos2i(X::in,Y::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos2i(X,Y);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos2s(X::in,Y::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos2s(X,Y);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos3d(X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos3d(X,Y,Z);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos3f(X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos3f(X,Y,Z);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos3i(X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos3i(X,Y,Z);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos3s(X::in,Y::in,Z::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos3s(X,Y,Z);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos4d(X::in,Y::in,Z::in,W::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos4d(X,Y,Z,W);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos4f(X::in,Y::in,Z::in,W::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos4f(X,Y,Z,W);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos4i(X::in,Y::in,Z::in,W::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos4i(X,Y,Z,W);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos4s(X::in,Y::in,Z::in,W::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos4s(X,Y,Z,W);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos2dv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos2dv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos2fv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos2fv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos2iv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos2iv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos2sv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos2sv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos3dv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos3dv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos3fv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos3fv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos3iv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos3iv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos3sv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos3sv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos4dv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos4dv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos4fv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos4fv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos4iv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos4iv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRasterPos4sv(V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRasterPos4sv(V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRectd(X1::in,Y1::in,X2::in,Y2::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRectd(X1,Y1,X2,Y2);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRecti(X1::in,Y1::in,X2::in,Y2::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRecti(X1,Y1,X2,Y2);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRects(X1::in,Y1::in,X2::in,Y2::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRects(X1,Y1,X2,Y2);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRectdv(V1::in,V2::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRectdv(V1,V2);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRectfv(V1::in,V2::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRectfv(V1,V2);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRectiv(V1::in,V2::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRectiv(V1,V2);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glRectsv(V1::in,V2::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glRectsv(V1,V2);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glVertexPointer(Size::in,Type::in,Stride::in,Ptr::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glVertexPointer(Size,Type,Stride,Ptr);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glNormalPointer(Type::in,Stride::in,Ptr::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glNormalPointer(Type,Stride,Ptr);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColorPointer(Size::in,Type::in,Stride::in,Ptr::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColorPointer(Size,Type,Stride,Ptr);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glIndexPointer(Type::in,Stride::in,Ptr::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glIndexPointer(Type,Stride,Ptr);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexCoordPointer(Size::in,Type::in,Stride::in,Ptr::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexCoordPointer(Size,Type,Stride,Ptr);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEdgeFlagPointer(Stride::in,Ptr::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEdgeFlagPointer(Stride,Ptr);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetPointerv(Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetPointerv(Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glArrayElement(I::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glArrayElement(I);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glDrawArrays(Mode::in,First::in,Count::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glDrawArrays(Mode,First,Count);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glDrawElements(Mode::in,Count::in,Type::in,Indices::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glDrawElements(Mode,Count,Type,Indices);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glInterleavedArrays(Format::in,Stride::in,Pointer::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glInterleavedArrays(Format,Stride,Pointer);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glShadeModel(Mode::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glShadeModel(Mode);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLightf(Light::in,Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLightf(Light,Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLighti(Light::in,Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLighti(Light,Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLightfv(Light::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLightfv(Light,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLightiv(Light::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLightiv(Light,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetLightfv(Light::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetLightfv(Light,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetLightiv(Light::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetLightiv(Light,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLightModelf(Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLightModelf(Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLightModeli(Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLightModeli(Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLightModelfv(Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLightModelfv(Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLightModeliv(Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLightModeliv(Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMaterialf(Face::in,Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMaterialf(Face,Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMateriali(Face::in,Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMateriali(Face,Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMaterialfv(Face::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMaterialfv(Face,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMaterialiv(Face::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMaterialiv(Face,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetMaterialfv(Face::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetMaterialfv(Face,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetMaterialiv(Face::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetMaterialiv(Face,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColorMaterial(Face::in,Mode::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColorMaterial(Face,Mode);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPixelZoom(Xfactor::in,Yfactor::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPixelZoom(Xfactor,Yfactor);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPixelStoref(Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPixelStoref(Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPixelStorei(Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPixelStorei(Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPixelTransferf(Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPixelTransferf(Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPixelTransferi(Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPixelTransferi(Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPixelMapfv(Map::in,Mapsize::in,Values::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPixelMapfv(Map,Mapsize,Values);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPixelMapuiv(Map::in,Mapsize::in,Values::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPixelMapuiv(Map,Mapsize,Values);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPixelMapusv(Map::in,Mapsize::in,Values::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPixelMapusv(Map,Mapsize,Values);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetPixelMapfv(Map::in,Values::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetPixelMapfv(Map,Values);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetPixelMapuiv(Map::in,Values::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetPixelMapuiv(Map,Values);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetPixelMapusv(Map::in,Values::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetPixelMapusv(Map,Values);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glBitmap(Width::in,Height::in,Xorig::in,Yorig::in,Xmove::in,Ymove::in,Bitmap::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glBitmap(Width,Height,Xorig,Yorig,Xmove,Ymove,Bitmap);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glReadPixels(X::in,Y::in,Width::in,Height::in,Format::in,Type::in,Pixels::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glReadPixels(X,Y,Width,Height,Format,Type,Pixels);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glDrawPixels(Width::in,Height::in,Format::in,Type::in,Pixels::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glDrawPixels(Width,Height,Format,Type,Pixels);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCopyPixels(X::in,Y::in,Width::in,Height::in,Type::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCopyPixels(X,Y,Width,Height,Type);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glStencilFunc(Func::in,Ref::in,Mask::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glStencilFunc(Func,Ref,Mask);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glStencilMask(Mask::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glStencilMask(Mask);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glStencilOp(Fail::in,Zfail::in,Zpass::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glStencilOp(Fail,Zfail,Zpass);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glClearStencil(S::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glClearStencil(S);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexGend(Coord::in,Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexGend(Coord,Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexGenf(Coord::in,Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexGenf(Coord,Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexGeni(Coord::in,Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexGeni(Coord,Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexGendv(Coord::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexGendv(Coord,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexGenfv(Coord::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexGenfv(Coord,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexGeniv(Coord::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexGeniv(Coord,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetTexGendv(Coord::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetTexGendv(Coord,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetTexGenfv(Coord::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetTexGenfv(Coord,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetTexGeniv(Coord::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetTexGeniv(Coord,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexEnvf(Target::in,Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexEnvf(Target,Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexEnvi(Target::in,Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexEnvi(Target,Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexEnvfv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexEnvfv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexEnviv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexEnviv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetTexEnvfv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetTexEnvfv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetTexEnviv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetTexEnviv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexParameterf(Target::in,Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexParameterf(Target,Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexParameteri(Target::in,Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexParameteri(Target,Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexParameterfv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexParameterfv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexParameteriv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexParameteriv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetTexParameterfv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetTexParameterfv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetTexParameteriv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetTexParameteriv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetTexLevelParameterfv(Target::in,Level::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetTexLevelParameterfv(Target,Level,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetTexLevelParameteriv(Target::in,Level::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetTexLevelParameteriv(Target,Level,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexImage1D(Target::in,Level::in,InternalFormat::in,Width::in,Border::in,Format::in,Type::in,Pixels::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexImage1D(Target,Level,InternalFormat,Width,Border,Format,Type,Pixels);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexImage2D(Target::in,Level::in,InternalFormat::in,Width::in,Height::in,Border::in,Format::in,Type::in,Pixels::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexImage2D(Target,Level,InternalFormat,Width,Height,Border,Format,Type,Pixels);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetTexImage(Target::in,Level::in,Format::in,Type::in,Pixels::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetTexImage(Target,Level,Format,Type,Pixels);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGenTextures(N::in,Textures::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGenTextures(N,Textures);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glDeleteTextures(N::in,Textures::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glDeleteTextures(N,Textures);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glBindTexture(Target::in,Texture::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glBindTexture(Target,Texture);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPrioritizeTextures(N::in,Textures::in,Priorities::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPrioritizeTextures(N,Textures,Priorities);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glAreTexturesResident(N::in,Textures::in,Residences::in,IO0::di,IO1::uo) = (Bool::out),[promise_pure,will_not_call_mercury],
"
  Bool = glAreTexturesResident(N,Textures,Residences);
  IO1 = IO0;
").

:- pragma foreign_proc("C",glIsTexture(Texture::in,IO0::di,IO1::uo) = (Bool::out),[promise_pure,will_not_call_mercury],
"
  Bool = glIsTexture(Texture);
  IO1 = IO0;
").

:- pragma foreign_proc("C",glTexSubImage1D(Target::in,Level::in,Xoffset::in,Width::in,Format::in,Type::in,Pixels::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexSubImage1D(Target,Level,Xoffset,Width,Format,Type,Pixels);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexSubImage2D(Target::in,Level::in,Xoffset::in,Yoffset::in,Width::in,Height::in,Format::in,Type::in,Pixels::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexSubImage2D(Target,Level,Xoffset,Yoffset,Width,Height,Format,Type,Pixels);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCopyTexImage1D(Target::in,Level::in,InternalFormat::in,X::in,Y::in,Width::in,Border::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCopyTexImage1D(Target,Level,InternalFormat,X,Y,Width,Border);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCopyTexImage2D(Target::in,Level::in,InternalFormat::in,X::in,Y::in,Width::in,Height::in,Border::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCopyTexImage2D(Target,Level,InternalFormat,X,Y,Width,Height,Border);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCopyTexSubImage1D(Target::in,Level::in,Xoffset::in,X::in,Y::in,Width::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCopyTexSubImage1D(Target,Level,Xoffset,X,Y,Width);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCopyTexSubImage2D(Target::in,Level::in,Xoffset::in,Yoffset::in,X::in,Y::in,Width::in,Height::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCopyTexSubImage2D(Target,Level,Xoffset,Yoffset,X,Y,Width,Height);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMap1d(Target::in,U1::in,U2::in,Stride::in,Order::in,Points::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMap1d(Target,U1,U2,Stride,Order,Points);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMap1f(Target::in,U1::in,U2::in,Stride::in,Order::in,Points::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMap1f(Target,U1,U2,Stride,Order,Points);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMap2d(Target::in,U1::in,U2::in,Ustride::in,Uorder::in,V1::in,V2::in,Vstride::in,Vorder::in,Points::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMap2d(Target,U1,U2,Ustride,Uorder,V1,V2,Vstride,Vorder,Points);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMap2f(Target::in,U1::in,U2::in,Ustride::in,Uorder::in,V1::in,V2::in,Vstride::in,Vorder::in,Points::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMap2f(Target,U1,U2,Ustride,Uorder,V1,V2,Vstride,Vorder,Points);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetMapdv(Target::in,Query::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetMapdv(Target,Query,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetMapfv(Target::in,Query::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetMapfv(Target,Query,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetMapiv(Target::in,Query::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetMapiv(Target,Query,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEvalCoord1d(U::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEvalCoord1d(U);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEvalCoord1f(U::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEvalCoord1f(U);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEvalCoord1dv(U::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEvalCoord1dv(U);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEvalCoord1fv(U::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEvalCoord1fv(U);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEvalCoord2d(U::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEvalCoord2d(U,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEvalCoord2f(U::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEvalCoord2f(U,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEvalCoord2dv(U::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEvalCoord2dv(U);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEvalCoord2fv(U::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEvalCoord2fv(U);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMapGrid1d(Un::in,U1::in,U2::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMapGrid1d(Un,U1,U2);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMapGrid1f(Un::in,U1::in,U2::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMapGrid1f(Un,U1,U2);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMapGrid2d(Un::in,U1::in,U2::in,Vn::in,V1::in,V2::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMapGrid2d(Un,U1,U2,Vn,V1,V2);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMapGrid2f(Un::in,U1::in,U2::in,Vn::in,V1::in,V2::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMapGrid2f(Un,U1,U2,Vn,V1,V2);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEvalPoint1(I::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEvalPoint1(I);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEvalPoint2(I::in,J::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEvalPoint2(I,J);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEvalMesh1(Mode::in,I1::in,I2::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEvalMesh1(Mode,I1,I2);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEvalMesh2(Mode::in,I1::in,I2::in,J1::in,J2::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEvalMesh2(Mode,I1,I2,J1,J2);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glFogf(Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glFogf(Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glFogi(Pname::in,Param::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glFogi(Pname,Param);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glFogfv(Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glFogfv(Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glFogiv(Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glFogiv(Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glFeedbackBuffer(Size::in,Type::in,Buffer::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glFeedbackBuffer(Size,Type,Buffer);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPassThrough(Token::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPassThrough(Token);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glSelectBuffer(Size::in,Buffer::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glSelectBuffer(Size,Buffer);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glInitNames(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glInitNames();
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLoadName(Name::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLoadName(Name);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPushName(Name::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPushName(Name);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glPopName(IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glPopName();
  IO1 = IO0;
").
:- pragma foreign_proc("C",glDrawRangeElements(Mode::in,Start::in,End::in,Count::in,Type::in,Indices::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glDrawRangeElements(Mode,Start,End,Count,Type,Indices);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexImage3D(Target::in,Level::in,InternalFormat::in,Width::in,Height::in,Depth::in,Border::in,Format::in,Type::in,Pixels::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexImage3D(Target,Level,InternalFormat,Width,Height,Depth,Border,Format,Type,Pixels);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glTexSubImage3D(Target::in,Level::in,Xoffset::in,Yoffset::in,Zoffset::in,Width::in,Height::in,Depth::in,Format::in,Type::in,Pixels::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glTexSubImage3D(Target,Level,Xoffset,Yoffset,Zoffset,Width,Height,Depth,Format,Type,Pixels);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCopyTexSubImage3D(Target::in,Level::in,Xoffset::in,Yoffset::in,Zoffset::in,X::in,Y::in,Width::in,Height::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCopyTexSubImage3D(Target,Level,Xoffset,Yoffset,Zoffset,X,Y,Width,Height);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColorTable(Target::in,InternalFormat::in,Width::in,Format::in,Type::in,Table::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColorTable(Target,InternalFormat,Width,Format,Type,Table);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColorSubTable(Target::in,Start::in,Count::in,Format::in,Type::in,Data::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColorSubTable(Target,Start,Count,Format,Type,Data);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColorTableParameteriv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColorTableParameteriv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glColorTableParameterfv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glColorTableParameterfv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCopyColorSubTable(Target::in,Start::in,X::in,Y::in,Width::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCopyColorSubTable(Target,Start,X,Y,Width);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCopyColorTable(Target::in,InternalFormat::in,X::in,Y::in,Width::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCopyColorTable(Target,InternalFormat,X,Y,Width);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetColorTable(Target::in,Format::in,Type::in,Table::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetColorTable(Target,Format,Type,Table);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetColorTableParameterfv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetColorTableParameterfv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetColorTableParameteriv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetColorTableParameteriv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glBlendEquation(Mode::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glBlendEquation(Mode);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glBlendColor(Red::in,Green::in,Blue::in,Alpha::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glBlendColor(Red,Green,Blue,Alpha);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glHistogram(Target::in,Width::in,InternalFormat::in,Sink::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glHistogram(Target,Width,InternalFormat,Sink);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glResetHistogram(Target::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glResetHistogram(Target);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetHistogram(Target::in,Reset::in,Format::in,Type::in,Values::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetHistogram(Target,Reset,Format,Type,Values);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetHistogramParameterfv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetHistogramParameterfv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetHistogramParameteriv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetHistogramParameteriv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMinmax(Target::in,InternalFormat::in,Sink::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMinmax(Target,InternalFormat,Sink);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glResetMinmax(Target::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glResetMinmax(Target);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetMinmax(Target::in,Reset::in,Format::in,Types::in,Values::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetMinmax(Target,Reset,Format,Types,Values);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetMinmaxParameterfv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetMinmaxParameterfv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetMinmaxParameteriv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetMinmaxParameteriv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glConvolutionFilter1D(Target::in,InternalFormat::in,Width::in,Format::in,Type::in,Image::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glConvolutionFilter1D(Target,InternalFormat,Width,Format,Type,Image);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glConvolutionFilter2D(Target::in,InternalFormat::in,Width::in,Height::in,Format::in,Type::in,Image::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glConvolutionFilter2D(Target,InternalFormat,Width,Height,Format,Type,Image);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glConvolutionParameterf(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glConvolutionParameterf(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glConvolutionParameterfv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glConvolutionParameterfv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glConvolutionParameteri(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glConvolutionParameteri(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glConvolutionParameteriv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glConvolutionParameteriv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCopyConvolutionFilter1D(Target::in,InternalFormat::in,X::in,Y::in,Width::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCopyConvolutionFilter1D(Target,InternalFormat,X,Y,Width);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCopyConvolutionFilter2D(Target::in,InternalFormat::in,X::in,Y::in,Width::in,Height::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCopyConvolutionFilter2D(Target,InternalFormat,X,Y,Width,Height);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetConvolutionFilter(Target::in,Format::in,Type::in,Image::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetConvolutionFilter(Target,Format,Type,Image);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetConvolutionParameterfv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetConvolutionParameterfv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetConvolutionParameteriv(Target::in,Pname::in,Params::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetConvolutionParameteriv(Target,Pname,Params);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glSeparableFilter2D(Target::in,InternalFormat::in,Width::in,Height::in,Format::in,Type::in,Row::in,Column::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glSeparableFilter2D(Target,InternalFormat,Width,Height,Format,Type,Row,Column);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetSeparableFilter(Target::in,Format::in,Type::in,Row::in,Column::in,Span::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetSeparableFilter(Target,Format,Type,Row,Column,Span);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glActiveTexture(Texture::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glActiveTexture(Texture);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glClientActiveTexture(Texture::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glClientActiveTexture(Texture);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCompressedTexImage1D(Target::in,Level::in,InternalFormat::in,Width::in,Border::in,ImageSize::in,Data::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCompressedTexImage1D(Target,Level,InternalFormat,Width,Border,ImageSize,Data);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCompressedTexImage2D(Target::in,Level::in,InternalFormat::in,Width::in,Height::in,Border::in,ImageSize::in,Data::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCompressedTexImage2D(Target,Level,InternalFormat,Width,Height,Border,ImageSize,Data);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCompressedTexImage3D(Target::in,Level::in,InternalFormat::in,Width::in,Height::in,Depth::in,Border::in,ImageSize::in,Data::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCompressedTexImage3D(Target,Level,InternalFormat,Width,Height,Depth,Border,ImageSize,Data);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCompressedTexSubImage1D(Target::in,Level::in,Xoffset::in,Width::in,Format::in,ImageSize::in,Data::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCompressedTexSubImage1D(Target,Level,Xoffset,Width,Format,ImageSize,Data);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCompressedTexSubImage2D(Target::in,Level::in,Xoffset::in,Yoffset::in,Width::in,Height::in,Format::in,ImageSize::in,Data::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCompressedTexSubImage2D(Target,Level,Xoffset,Yoffset,Width,Height,Format,ImageSize,Data);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glCompressedTexSubImage3D(Target::in,Level::in,Xoffset::in,Yoffset::in,Zoffset::in,Width::in,Height::in,Depth::in,Format::in,ImageSize::in,Data::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glCompressedTexSubImage3D(Target,Level,Xoffset,Yoffset,Zoffset,Width,Height,Depth,Format,ImageSize,Data);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glGetCompressedTexImage(Target::in,Lod::in,Img::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glGetCompressedTexImage(Target,Lod,Img);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1d(Target::in,S::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1d(Target,S);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1dv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1dv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1f(Target::in,S::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1f(Target,S);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1fv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1fv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1i(Target::in,S::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1i(Target,S);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1iv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1iv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1s(Target::in,S::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1s(Target,S);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1sv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1sv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2d(Target::in,S::in,T::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2d(Target,S,T);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2dv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2dv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2f(Target::in,S::in,T::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2f(Target,S,T);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2fv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2fv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2i(Target::in,S::in,T::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2i(Target,S,T);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2iv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2iv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2s(Target::in,S::in,T::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2s(Target,S,T);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2sv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2sv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3d(Target::in,S::in,T::in,R::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3d(Target,S,T,R);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3dv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3dv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3f(Target::in,S::in,T::in,R::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3f(Target,S,T,R);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3fv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3fv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3i(Target::in,S::in,T::in,R::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3i(Target,S,T,R);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3iv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3iv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3s(Target::in,S::in,T::in,R::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3s(Target,S,T,R);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3sv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3sv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4d(Target::in,S::in,T::in,R::in,Q::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4d(Target,S,T,R,Q);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4dv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4dv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4f(Target::in,S::in,T::in,R::in,Q::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4f(Target,S,T,R,Q);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4fv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4fv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4i(Target::in,S::in,T::in,R::in,Q::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4i(Target,S,T,R,Q);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4iv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4iv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4s(Target::in,S::in,T::in,R::in,Q::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4s(Target,S,T,R,Q);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4sv(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4sv(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLoadTransposeMatrixd(M::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLoadTransposeMatrixd(M);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glLoadTransposeMatrixf(M::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glLoadTransposeMatrixf(M);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultTransposeMatrixd(M::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultTransposeMatrixd(M);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultTransposeMatrixf(M::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultTransposeMatrixf(M);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glSampleCoverage(Value::in,Invert::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glSampleCoverage(Value,Invert);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glActiveTextureARB(Texture::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glActiveTextureARB(Texture);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glClientActiveTextureARB(Texture::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glClientActiveTextureARB(Texture);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1dARB(Target::in,S::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1dARB(Target,S);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1dvARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1dvARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1fARB(Target::in,S::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1fARB(Target,S);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1fvARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1fvARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1iARB(Target::in,S::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1iARB(Target,S);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1ivARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1ivARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1sARB(Target::in,S::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1sARB(Target,S);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord1svARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord1svARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2dARB(Target::in,S::in,T::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2dARB(Target,S,T);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2dvARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2dvARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2fARB(Target::in,S::in,T::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2fARB(Target,S,T);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2fvARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2fvARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2iARB(Target::in,S::in,T::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2iARB(Target,S,T);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2ivARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2ivARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2sARB(Target::in,S::in,T::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2sARB(Target,S,T);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord2svARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord2svARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3dARB(Target::in,S::in,T::in,R::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3dARB(Target,S,T,R);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3dvARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3dvARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3fARB(Target::in,S::in,T::in,R::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3fARB(Target,S,T,R);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3fvARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3fvARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3iARB(Target::in,S::in,T::in,R::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3iARB(Target,S,T,R);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3ivARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3ivARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3sARB(Target::in,S::in,T::in,R::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3sARB(Target,S,T,R);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord3svARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord3svARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4dARB(Target::in,S::in,T::in,R::in,Q::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4dARB(Target,S,T,R,Q);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4dvARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4dvARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4fARB(Target::in,S::in,T::in,R::in,Q::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4fARB(Target,S,T,R,Q);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4fvARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4fvARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4iARB(Target::in,S::in,T::in,R::in,Q::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4iARB(Target,S,T,R,Q);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4ivARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4ivARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4sARB(Target::in,S::in,T::in,R::in,Q::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4sARB(Target,S,T,R,Q);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glMultiTexCoord4svARB(Target::in,V::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glMultiTexCoord4svARB(Target,V);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEGLImageTargetTexture2DOES(Target::in,Image::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEGLImageTargetTexture2DOES(Target,Image);
  IO1 = IO0;
").
:- pragma foreign_proc("C",glEGLImageTargetRenderbufferStorageOES(Target::in,Image::in,IO0::di,IO1::uo),[promise_pure,will_not_call_mercury],
"
  glEGLImageTargetRenderbufferStorageOES(Target,Image);
  IO1 = IO0;
").

:- end_module gl.
