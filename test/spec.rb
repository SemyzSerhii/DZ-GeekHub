load 'lib/feature.rb'
require 'quality_assurance'

class Spec
  include QualityAssurance

  def sum_diff_product_t1
    expected_result = { sum: 6, diff: 2, product: 8 }
    assert(expected: expected_result, actual: Feature.sum_diff_product(4, 2))
  end

  def sum_diff_product_t2
    expected_result = { sum: 697, diff: -367, product: 87780 }
    assert(expected: expected_result, actual: Feature.sum_diff_product(165, 532))
  end

  def formula_solution_t1
    assert(expected: result = -0.04081632653061224, actual:Feature.formula_solution(6, 8))
  end

  def formula_solution_t2
    assert(expected: result = 0.02560124127230411, actual:Feature.formula_solution(-56, -23))
  end

  def volume_area_cube_t
    expected_result = { volume: 64, area: 96 }
    assert(expected: expected_result, actual:Feature.volume_area_cube(4))
  end

  def volume_area_cube_t2
    expected_result = { volume: 175616, area: 18816 }
    assert(expected: expected_result, actual:Feature.volume_area_cube(56))
  end

  def average_ar_geo_num_t1
    expected_result = { arithmetical: 49.5, geometrical: 49.07137658554119 }
    assert(expected: expected_result, actual:Feature.average_ar_geo_num(56, 43))
  end

  def average_ar_geo_num_t2
    expected_result = { arithmetical: 3, geometrical: 3 }
    assert(expected: expected_result, actual:Feature.average_ar_geo_num(3, 3))
  end

  def average_ar_num_and_geo_mod_t
    expected_result = { arithmetical: 5, geometrical: 5 }
    assert(expected: expected_result, actual:Feature.average_ar_num_and_geo_mod(5, 5))
  end

  def area_hypot_triangle_t1
    expected_result = { area: 12.5, hypotenuse: 7.0710678118654755 }
    assert(expected: expected_result, actual:Feature.area_hypot_triangle(5, 5))
  end

  def area_hypot_triangle_t2
    expected_result = {  area: 50, hypotenuse: 14.142135623730951}
    assert(expected: expected_result, actual:Feature.area_hypot_triangle(10, 10))
  end

  def value_temp_water_t
    assert(expected: { value: 8, tempetature: 43.75 }, actual:Feature.value_temp_water(5, 40, 3, 50))
  end

  def permtr_multicutnik_t1
    assert(expected: perimeter = 35.26711513754839, actual:Feature.permtr_multicutnik(5, 6))
  end

  def permtr_multicutnik_t2
    assert(expected: perimeter = 376.74311717588023, actual:Feature.permtr_multicutnik(50, 60))
  end

  def compound_resistance_t
    assert(expected: resistance_connection = 1.0526315789473684, actual:Feature.compound_resistance(5, 4, 2))
  end

  def fall_time_t
    assert(expected: time = 0.9021281496396893, actual:Feature.fall_time(4))
  end

  def calcul_value_a_b_t1
    expected_result = { value_a: -2.0542392471657545, value_b: 26 }
    assert(expected: expected_result, actual:Feature.calcul_value_a_b(4, 5, 7))
  end

  def calcul_value_a_b_t2
    expected_result = { value_a: 3.830368057339472, value_b: 154 }
    assert(expected: expected_result, actual:Feature.calcul_value_a_b(20, 15, 17))
  end

  def area_triangle_t
    assert(expected: area = 5.656854249492381, actual:Feature.area_triangle(4))
  end

  def period_of_oscillation_t
    assert(expected: oscillation_period = 5.302151459045603, actual:Feature.period_of_oscillation(7))
  end


  def force_of_gravity_t
    assert(expected: force = 1.3477e-10, actual:Feature.force_of_gravity(6, 4, 3))
  end

  def sec_leg_radius_inscr_circle_t
    expected_result = { second_leg: 3, radius: 0.40824829046386296 }
    assert(expected: expected_result, actual:Feature.sec_leg_radius_inscr_circle(4, 5))
  end

  def area_circle_t
    assert(expected: area = 2.864788975654116, actual:Feature.area_circle(6))
  end

  def ring_area_t
    assert(expected: area = 942, actual:Feature.ring_area(10))
  end

  def sides_triangle_t
    expected_result = { side_a: 12.108839924926851, side_b:15.342788394610215, side_c:4.470647971182814 }
    assert(expected: expected_result, actual:Feature.sides_triangle(4, 5, 6, 8))
  end

  def meeting_time_t
    assert(expected: time = 0.15831239517770007, actual:Feature.meeting_time(20, 60, 40, 80, 200))
  end

  def sum_arith_progressio_t
    assert(expected: sum = 47600, actual:Feature.sum_arith_progression(20, 60, 40))
  end

  def trapezium_area_t
    assert(expected: area = 768, actual:Feature.trapezium_area(100, 20, 60))
  end

  def heig_med_bis_and_rad_t
    expected_result =
      {
        height_a: 13, height_b:13, height_c:19.5,
        median_a: 7.3, median_b: 6.2, median_c: 4.8,
        bisector_a: 4.6, bisector_b: 3.7, bisector_c: 2.6,
        radius_circumscribed: 4.6, radius_inscribed: 0.9
      }
    assert(expected: expected_result, actual:Feature.heig_med_bis_and_rad(4, 5, 6))
  end

  def dist_between_points_t
    assert(expected: distance = 28, actual:Feature.dist_between_points(20, 60, 40, 80))
  end

  def permtr_area_triangle_t
    expected_result = { perimeter: 205, area: 500 }
    assert(expected: expected_result, actual:Feature.permtr_area_triangle(40, 53, 73, 84, 91, 140))
  end

  def area_sector_t
    assert(expected: area = 1877, actual:Feature.area_sector(20))
  end

  def angeles_triangle_t
    expected_result = { angele_a: 14, angele_b: 127, angele_c: 39 }
    assert(expected: expected_result, actual:Feature.angeles_triangle(40, 53, 73))
  end

  def calc_equation_1_number_t
    assert(expected: 9506, actual:Feature.calc_equation_1_number(20))
  end

  def calc_equation_2_number_t
    assert(expected: -5054, actual:Feature.calc_equation_2_number(20, 30))
  end

  def calc_2_equations_t
    assert(expected: { answer1: -30839, answer2: 33241 }, actual:Feature.calc_2_equations(20))
  end

  def max_min_2_number_t
    expected_result = { max: 5, min: 3, max_min: [5, 3]}
    assert(expected: expected_result, actual:Feature.max_min_2_number(5, 3))
  end

  def min_max_3_number_t
    expected_result = { max: 6 , min_max: [4, 6] }
    assert(expected: expected_result, actual:Feature.min_max_3_number(4, 5, 6))
  end

  def min_max_2_equations_t
    expected_result = { max: 120, min:  57.25 }
    assert(expected: expected_result, actual:Feature.min_max_2_equations(4, 5, 6))
  end

  def a_less_b_less_c_t1
    assert(expected: true , actual:Feature.a_less_b_less_c(4, 5, 6))
  end

  def a_less_b_less_c_t2
    assert(expected: false ,actual:Feature.a_less_b_less_c(5, 4, 6))
  end

  def a_more_eq_b_more_eq_c_t1
    assert(expected: [5, 4, 6], actual:Feature.a_more_eq_b_more_eq_c(-5, -4, -6))
  end

  def a_more_eq_b_more_eq_c_t2
    assert(expected: [-10, -10, -10],
      actual:Feature.a_more_eq_b_more_eq_c(-5, -5, -5))
  end

  def calc_number_z_t1
    assert(expected: 1 , actual:Feature.calc_number_z(5, 4))
  end

  def calc_number_z_t2
    assert(expected: 0 , actual:Feature.calc_number_z(4, 5))
  end

  def comp_x_y_and_output_t1
    assert(expected: 5, actual:Feature.comp_x_y_and_output(5, 4))
  end

  def comp_x_y_and_output_t2
    assert(expected: [4, 5], actual:Feature.comp_x_y_and_output(4, 5))
  end

  def comp_x_y_or_x_by_0_t1
    assert(expected: 0 , actual:Feature.comp_x_y_or_x_by_0(5, 5))
  end

  def comp_x_y_or_x_by_0_t2
    assert(expected: [5, 4], actual:Feature.comp_x_y_or_x_by_0(5, 4))
  end

  def less_halfsum_more_doubled_t1
    assert(expected:  [x=4.5, y= 40],
      actual:Feature.less_halfsum_more_doubled(5, 4))
  end

  def less_halfsum_more_doubled_t2
    assert(expected: [y= 4.5, x= 40],
      actual:Feature.less_halfsum_more_doubled(4, 5))
  end

  def non_negative_number_t1
    expected_result = { a_more_0: 36, b_more_0: 25, c_more_0: 16 }
    assert(expected: expected_result, actual:Feature.non_negative_number(6, 5, 4))
  end

  def non_negative_number_t2
    expected_result = { a_more_0: nil, b_more_0: nil, c_more_0: nil }
    assert(expected: expected_result, actual:Feature.non_negative_number(-6, -5, -4))
  end

  def floor_round_int_numb_x_t
    expected_result = { floor: 2, round: 3, to_i: 2 }
    assert(expected: expected_result, actual:Feature.floor_round_int_numb_x(2.6))
  end

  def determ_even_numb_t1
    assert(expected: true , actual:Feature.determ_even_numb(4))
  end

  def determ_even_numb_t2
    assert(expected: false , actual:Feature.determ_even_numb(5))
  end

  def determ_remainder_div_r_s_t1
    expected_result = { remainder_equal_r: true, remainder_equal_s: nil, remainder_not_equal_r_or_s: nil}
    assert(expected: expected_result, actual:Feature.determ_remainder_div_r_s(4, 2, 0, 4))
  end

  def determ_remainder_div_r_s_t2
    expected_result = { remainder_equal_r: nil, remainder_equal_s: true, remainder_not_equal_r_or_s: nil}
    assert(expected: expected_result, actual:Feature.determ_remainder_div_r_s(4, 2, 4, 0))
  end

  def determ_remainder_div_r_s_t3
    expected_result = { remainder_equal_r: nil, remainder_equal_s: nil, remainder_not_equal_r_or_s: true}
    assert(expected: expected_result, actual:Feature.determ_remainder_div_r_s(4, 2, 4, 2))
  end

  def determ_hund_in_numb_t1
    assert(expected: 5, actual:Feature.determ_hund_in_numb(500))
  end

  def determ_hund_in_numb_t2
    assert(expected: false, actual:Feature.determ_hund_in_numb(50))
  end

  def eq_squa_numb_n_cub_sum_t1
    assert(expected: false , actual:Feature.eq_squa_numb_n_cub_sum(50))
  end

  def eq_squa_numb_n_cub_sum_t2
    assert(expected: true, actual:Feature.eq_squa_numb_n_cub_sum(1))
  end

  def incl_sm_lst_frst_lst_b_on_n_t
    expected_result = { including: 2, sum: 13, last: 7, first: 6, last_but_one: 6}
    assert(expected: expected_result, actual:Feature.incl_sm_lst_frst_lst_b_on_n(67))
  end

  def number_check_t1
    expected_result = {palindrome: true , three_identical_numbers: false , numbers_different: false }
    assert(expected: expected_result, actual:Feature.number_check(2002))
  end

  def number_check_t2
    expected_result = { palindrome: false , three_identical_numbers: true , numbers_different: false }
    assert(expected: expected_result, actual:Feature.number_check(2022))
  end

  def number_check_t3
    expected_result = { palindrome: false , three_identical_numbers: false , numbers_different: true }
    assert(expected: expected_result, actual:Feature.number_check(2034))
  end

  def calcul_the_progression_t
  assert(expected: 1.7298409468177145e-14, actual:Feature.calcul_the_progression )
  end
end


