Select * from orders; 


Select p.product_name, region, SUM(quantity) from orders o join products p 
on o.product_id= p.product_id
--where /*product_name like 'Monitor' and*/ region like 'North',
--where /*product_name like 'Monitor' and*/ region like 'South',
--where /*product_name like 'Monitor' and*/ region like 'East',
--where /*product_name like 'Monitor' and*/ region like 'West'
GROUP BY p.product_name, region;


---- NORTH -----

Select p.product_name, region, SUM(quantity) from orders o join products p 
on o.product_id= p.product_id
where /*product_name like 'Monitor' and*/ region like 'North'
--where /*product_name like 'Monitor' and*/ region like 'South',
--where /*product_name like 'Monitor' and*/ region like 'East',
--where /*product_name like 'Monitor' and*/ region like 'West'
GROUP BY p.product_name, region;


---- South ---- 

Select p.product_name, region, SUM(quantity) from orders o join products p 
on o.product_id= p.product_id
--where /*product_name like 'Monitor' and*/ region like 'North',
where /*product_name like 'Monitor' and*/ region like 'South'
--where /*product_name like 'Monitor' and*/ region like 'East',
--where /*product_name like 'Monitor' and*/ region like 'West'
GROUP BY p.product_name, region;

--- EAST ---- 

Select p.product_name, region, SUM(quantity) from orders o join products p 
on o.product_id= p.product_id
--where /*product_name like 'Monitor' and*/ region like 'North',
--where /*product_name like 'Monitor' and*/ region like 'South',
where /*product_name like 'Monitor' and*/ region like 'East'
--where /*product_name like 'Monitor' and*/ region like 'West'
GROUP BY p.product_name, region;


--- West ---- 

Select p.product_name, region, SUM(quantity) from orders o join products p 
on o.product_id= p.product_id
--where /*product_name like 'Monitor' and*/ region like 'North',
--where /*product_name like 'Monitor' and*/ region like 'South',
--where /*product_name like 'Monitor' and*/ region like 'East'
where /*product_name like 'Monitor' and*/ region like 'West'
GROUP BY p.product_name, region;





