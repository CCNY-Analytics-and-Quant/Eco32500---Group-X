SELECT r_data.camis
       ,r_data.dba
  FROM restaurant_data r_data
       LEFT JOIN violation_data v_data
                 ON r_data.camis = v_data.camis
 WHERE r_data.dba not like 'Test%'
 ORDER BY r_data.camis
