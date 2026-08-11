--display data with the use of LIKE Operator using cursor FOR Loop.
set serveroutput on
declare
	Cursor Bob IS select proid, pro_name, pro_price from product where pro_name LIKE  '_e%';
	i product%ROWTYPE;
begin
for i IN Bob
loop
	dbms_output.put_line('Product ID is: '|| i.proid);
	dbms_output.put_line('Product Name is: '|| i.pro_name);
	dbms_output.put_line('Product Price is: '|| i.pro_price);

end loop;
end;
/