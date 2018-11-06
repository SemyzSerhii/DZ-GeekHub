class Feature
  class << self

    def sum_diff_product(first_number, second_number)
      {
        sum: first_number + second_number,
        diff: first_number - second_number,
        product: first_number * second_number
      }
    end

    def formula_solution(value_x, value_y)
      ((value_x.abs - value_y.abs) / (1 + (value_x * value_y).abs).to_f).round(4)
    end

    def volume_area_cube(length_of_the_edge)
      {
        volume: length_of_the_edge ** 3,
        area: 6 * length_of_the_edge ** 2
      }
    end

    def average_ar_geo_num(first_number, second_number)
      {
        arithmetical: (first_number + second_number) / 2.to_f,
        geometrical: (Math.sqrt(first_number * second_number)).round(4)
      }
    end

    def average_ar_num_and_geo_mod(first_number, second_number)
      {
        arithmetical: (first_number + second_number) / 2,
        geometrical: Math.sqrt(first_number.abs * second_number.abs)
      }
    end

    def area_hypot_triangle(first_leg, second_leg)
      {
        area: 0.5 * first_leg * second_leg,
        hypotenuse: (Math.sqrt(first_leg ** 2 + second_leg ** 2)).round(4)
      }
    end

    def value_temp_water(f_volue, f_temperature, s_value, s_temperature)
      {
        value: f_volue + s_value,
        tempetature: ((f_volue * f_temperature) + (s_value * s_temperature)) / (f_volue + s_value).to_f
      }
    end

    def permtr_multicutnik(number_of_corners, radius)
     (number_of_corners * 2 * radius * Math.sin(Math::PI / number_of_corners)).round(4)
    end

    def compound_resistance(first_resistance, second_resistance, third_resistance)
      (1 / ((1 / first_resistance.to_f) + (1 / second_resistance.to_f) + (1 / third_resistance.to_f))).round(4)
    end

    def fall_time(height, constant_g = 9.83)
      (Math.sqrt(2 * height / constant_g)).round(4)
    end

    def calcul_value_a_b(value_x, value_y, value_z)
      {
        value_a: ((2 * Math.cos(value_x - Math::PI / 6)) / (1 / 2 + Math.sin(value_y) ** 2)).round(4),
        value_b: 1 + (value_z ** 2 / 3 + value_z ** 2 / 5)
      }
    end

    def area_triangle(side)
      ((1 / 2.to_f) * side * Math.sqrt(side ** 2 - side ** 2 / 2)).round(4)
    end

    def period_of_oscillation(length, constant_g = 9.83)
      (2 * Math::PI * Math.sqrt(length / constant_g)).round(4)
    end

    def force_of_gravity(first_mass, second_mass, distance, g = 0.000000000067385)
      (g * ((first_mass * second_mass) / distance ** 2))
    end

    def sec_leg_radius_inscr_circle(first_leg, hypotenuse)
      second_leg = Math.sqrt(hypotenuse ** 2 - first_leg ** 2)
      triangle_semi_perimeter = 0.5 * (first_leg + hypotenuse + second_leg)
      {
        radius: (Math.sqrt((triangle_semi_perimeter - first_leg) * (triangle_semi_perimeter - hypotenuse) *
          (triangle_semi_perimeter - second_leg)) / triangle_semi_perimeter).round(4),
        second_leg: second_leg
      }
    end

    def area_circle(circumference)
      radius = circumference / (2 * Math::PI)
      (Math::PI * radius ** 2).round(4)
    end

    def ring_area(inner_radius = 20, outer_radius)
      (Math::PI * (inner_radius ** 2 - outer_radius ** 2)).to_i
    end

    def sides_triangle(angles_A, angles_B, angles_C, radius)
      {
        side_a: (calcul_triangle_sides(radius, angles_A)).round(4),
        side_b: (calcul_triangle_sides(radius, angles_B)).round(4),
        side_c: (calcul_triangle_sides(radius, angles_C)).round(4)
      }
    end

    def meeting_time(acceleration_f, acceleration_s, speed_f, speed_s, distance)
      average_acceleration = (acceleration_f + acceleration_s) / 2
      average_speed = speed_f + speed_s
      ((-average_speed + Math.sqrt(-average_speed ** 2 + (4 * distance * average_acceleration))) /
        (2 * average_acceleration)).round(4)
    end

    def sum_arith_progression(value_a, value_d, value_n)
      ((2 * value_a + (value_n - 1) * value_d) / 2) * value_n
    end

    def trapezium_area(greater_base, smaller_base, angle)
      (((greater_base + smaller_base) / 2) * ((greater_base - smaller_base) / 2) * Math.tan(angle)).to_i
    end

    def heig_med_bis_and_rad(side_a, side_b, side_c)
      semiperimeter = ((side_a + side_b + side_c) / 2).to_f
      {
        #length height
        height_a: calcul_triangle_height(side_a, side_b, side_c, side_a),
        height_b: calcul_triangle_height(side_a, side_b, side_c, side_b),
        height_c: calcul_triangle_height(side_a, side_b, side_c, side_c),
        #length median
        median_a: calcul_triangle_median(side_b, side_c, side_a),
        median_b: calcul_triangle_median(side_a, side_c, side_b),
        median_c: calcul_triangle_median(side_a, side_b, side_c),
        #length bisector
        bisector_a: calcul_triangle_bisector(side_b, side_c, side_a),
        bisector_b: calcul_triangle_bisector(side_a, side_c, side_b),
        bisector_c: calcul_triangle_bisector(side_a, side_b, side_c),
        #radius circumscribed inscribed circle
        radius_circumscribed: (side_a * side_b * side_c / (4 * Math.sqrt(semiperimeter *
          (semiperimeter - side_a) * (semiperimeter - side_b) * (semiperimeter - side_c)))).round(1),
        radius_inscribed: Math.sqrt((semiperimeter - side_a) * (semiperimeter - side_b) *
          (semiperimeter - side_c) / semiperimeter).round(1)
      }
    end

    def dist_between_points(coordinates_x_frt_point, coordinates_y_frt_point,
      coordinates_x_scnd_point, coordinates_y_scnd_point)
      distance = (Math.sqrt((coordinates_x_scnd_point - coordinates_x_frt_point) ** 2 +
        (coordinates_y_scnd_point - coordinates_y_frt_point) ** 2)).round
    end

    def permtr_area_triangle(coordinates_x_point_a, coordinates_y_point_a, coordinates_x_point_b,
      coordinates_y_point_b, coordinates_x_point_c, coordinates_y_point_c)
      distance_a = calcuate_distance(coordinates_x_point_b, coordinates_x_point_a,
        coordinates_y_point_b,coordinates_y_point_a)
      distance_b = calcuate_distance(coordinates_x_point_b, coordinates_x_point_c,
        coordinates_y_point_b, coordinates_y_point_c)
      distance_c =  calcuate_distance(coordinates_x_point_c, coordinates_x_point_a,
        coordinates_y_point_c, coordinates_y_point_a)
      semiperimeter = ((distance_a + distance_b + distance_c) / 2)
      {
        perimeter: distance_a + distance_b + distance_c,
        area: Math.sqrt(semiperimeter * (semiperimeter - distance_a) * (semiperimeter - distance_b) *
          (semiperimeter - distance_c)).round
      }
    end

    def area_sector(number_arc, radius = 13.7)
      area = ((number_arc / 2.to_f) * radius ** 2).round
    end

    def angeles_triangle (side_a, side_b, side_c)
      angele_b = ((side_a ** 2 + side_c ** 2) - side_b ** 2) / (2 * side_c * side_a).to_f * 180
      angele_c = ((side_a ** 2 + side_b ** 2) - side_c ** 2) / (2 * side_b * side_a).to_f * 180
      angele_a = 180 - angele_b + angele_c
      {
        angele_a: angele_a.abs.round,
        angele_b: angele_b.abs.round,
        angele_c: angele_c.abs.round
      }
    end

    def calc_equation_1_number(number_x)
      6 + number_x * (-5 + number_x * (4 - 3 * number_x + 2 * (number_x + number_x)))
    end

    def calc_equation_2_number(num_x, num_y)
      num_x * (num_x + num_x + num_x - (num_y + num_y) - 7 * num_x + 15) + num_y * (10 - 4 * num_y) +
        num_x * (num_x + num_x - 3) + 6
    end

    def calc_2_equations(num_x)
      {
        answer1: 1 + num_x * (-2 + num_x * (3 - 4 * num_x)),
        answer2: 1 + num_x * (2 + num_x * (3 + 4 * num_x))
      }
    end

    def max_min_2_number(num_x, num_y)
      {
        max: [num_x, num_y].max,
        min: [num_x, num_y].min,
        max_min: [num_x, num_y].minmax.reverse
      }
    end

    def min_max_3_number(num_x, num_y, num_z)
      {
        max: [num_x, num_y, num_z].max,
        min_max: [num_x, num_y, num_z].minmax
      }
    end

    def min_max_2_equations(num_x, num_y, num_z)
      sum = num_x + num_y + num_z
      product = num_x * num_y * num_z
      new_sum =  ((sum / 2.to_f) ** 2) + 1
      new_product = product ** 2 + 1
      {
        max: sum > product ? sum : product,
        min: new_sum < new_product ? new_sum : new_product
      }
    end

    def a_less_b_less_c(num_a, num_b, num_c)
      (num_a < num_b && num_b < num_c) ? true : false
    end

    def a_more_eq_b_more_eq_c(num_a, num_b, num_c)
      (num_a >= num_b && num_b >= num_c) ? [num_a * 2, num_b * 2, num_c * 2] : [num_a.abs, num_b.abs, num_c.abs]
    end

    def calc_number_z(num_x, num_y)
      num_x > num_y ? num_x - num_y : num_y - (num_x + 1)
    end

    def comp_x_y_and_output(num_x, num_y)
      num_x > num_y ? num_x : [num_x, num_y]
    end

    def comp_x_y_or_x_by_0(num_x, num_y)
      num_x <= num_y ? num_x = 0 : [num_x, num_y]
    end

    def less_halfsum_more_doubled(num_x, num_y)
      num_x > num_y ? [x = (num_x + num_y) / 2.to_f, y = num_x * num_y * 2] :
        [y = (num_x + num_y) / 2.to_f, x = (num_x * num_y) * 2 ]
    end

    def non_negative_number(num_x, num_y, num_z)
      {
        a_more_0: num_x >= 0 ? num_x ** 2 : nil,
        b_more_0: num_y >= 0 ? num_y ** 2 : nil,
        c_more_0: num_z >= 0 ? num_z ** 2 : nil
      }
    end

    def floor_round_int_numb_x(number_x)
      {
        floor: number_x.floor,
        round: number_x.round,
        to_i: number_x.to_i
      }
    end

    def determ_even_numb(number_x)
      number_x % 2 == 0 ? true : false
    end

    def determ_remainder_div_r_s(num_a, num_b, num_r, num_s)
      remainder = num_a % num_b
      {
        remainder_equal_r: remainder == num_r ? true : nil,
        remainder_equal_s: remainder == num_s ? true : nil,
        remainder_not_equal_r_or_s:  remainder != num_r && remainder != num_s ? true : nil
      }
    end

    def determ_hund_in_numb(number_n)
      number_n > 99 ? number_n / 100.to_i : false
    end

    def eq_squa_numb_n_cub_sum(number_n)
      sum = number_n.to_s.split('').map.each {|x| x.to_i}.sum
      number_n ** 2 == sum ** 3 ? true : false
    end

    def incl_sm_lst_frst_lst_b_on_n(num_n)
      {
        including: num_n.to_s.split("").length,
        sum: num_n.to_s.split("").map.each {|x| x.to_i}.sum,
        last: num_n.to_s.split("").last.to_i,
        first: num_n.to_s.split("").first.to_i,
        last_but_one: num_n.to_s[-2].to_i
      }
    end

    def number_check(number)
      {
        palindrome: number == number.to_s.reverse.to_i ? true : false ,
        three_identical_numbers: (number.to_s.split('').uniq.size == 2 && number != number.to_s.reverse.to_i) ?
          true : false ,
        numbers_different: number.to_s.split('') == number.to_s.split('').uniq ?
          true : false
      }
    end

    def calcul_the_progression
      result = 1
      (0.1..10).step(0.1) { |i| result *= 1 + Math.sin(i) }
      result
    end

    private

    def calcul_triangle_sides(r, angles)
      r * 2 * Math.sin(angles).abs
    end

    def calcul_triangle_height(side_a, side_b, side_c, opositive_side)
      semiperimeter = (side_a + side_b + side_c) / 2
      area = Math.sqrt(semiperimeter * (semiperimeter - side_a) * (semiperimeter - side_b) * (semiperimeter - side_c))
      (opositive_side / 2) * area.round(1)
    end

    def calcul_triangle_median(side_1, side_2, side_3)
      (Math.sqrt((2 * side_1 ** 2 + 2 * side_2** 2 - side_3 ** 2) / 2)).round(1)
    end

    def calcul_triangle_bisector(side_1, side_2, side_3)
      semiperimeter = (side_1 + side_2 + side_3) / 2
      (2 * Math.sqrt(side_1 * side_2 * semiperimeter * (semiperimeter - side_3)) / (side_1 + side_2)).round(1)
    end
    def calcuate_distance(coordinate_x_point_1, ccoordinate_x_point_2,coordinate_y_point_1,coordinate_y_point_2)
      Math.sqrt((coordinate_x_point_1 - ccoordinate_x_point_2) ** 2 +
        (coordinate_y_point_1 - coordinate_y_point_2) ** 2).round
    end

  end
end




