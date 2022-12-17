uses crt;
const
size = 6;
var
a : array [1..size] of integer;
t:text;
i,j,x:integer;
begin
clrscr;
assign(t,'input.txt');
reset(t);
writeln('Исходный массив:');
while not Eof(t) do
for i:=1 to size do
begin
read(t,a[i]);
write(a[i],' ');
end;
writeln;writeln('Отсортируем массив в порядке возрастания:');
for i:=1 to size-1 do
for j:=i+1 to size do
if a[i]>a[j] then
begin
x:=a[i];
a[i]:=a[j];
a[j]:=x;
end;
for i:=1 to size do write (a[i], ' ');
close(t);
end.