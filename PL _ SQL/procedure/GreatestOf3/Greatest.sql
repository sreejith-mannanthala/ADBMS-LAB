create or replace procedure large(a number,b number,c number) 
is
begin
	if(a>b) then
	if(a>c) then
		dbms_output.put_line(a||' is big');
	end if;
	else 
	if(b>c) then
	dbms_output.put_line(b||' is big'); 
	else
	dbms_output.put_line(c||' is big');
end if;
end if;
end;
/

-------------------------------------------------------------
exec large(5,8,9)
