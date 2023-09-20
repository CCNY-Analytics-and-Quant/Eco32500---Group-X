SELECT v_data.grade, 
        v_data.violation_code,
        count(v_data.violation_code) AS code_cnt
        ,r_data.boro
  FROM violation_data v_data
        LEFT JOIN restaurant_data r_data
                  ON v_data.camis = r_data.camis
 WHERE score != 0
        and violation_code = '08A'
        -- AND camis = 30075445
 GROUP BY boro, grade, violation_code
 ORDER BY code_cnt DESC