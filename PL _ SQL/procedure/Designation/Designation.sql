create or replace procedure desgn(des varchar)
is cursor c4 is select * from deptt where desgnt=des;
dp_id int;
d_name varchar(10);
stname varchar(10);
stid int;
stcity varchar(10);
desgnt varchar(10);
begin
open c4;
dbms_output.put_line('dpid  '||'dname  '||'stname  '||'stid  

'||'stcity  '||'desgnt  ');
loop
fetch c4 into dp_id,d_name,stname,stid,stcity,desgnt;
exit when c4 %notfound;
dbms_output.put_line(dp_id||'  '||d_name||'  '||stname||'  '||

stid||'  '||stcity||'  '||desgnt);
end loop;
close c4;
end;
/
---------------------------------------------------------------
exec desgn('professor');

