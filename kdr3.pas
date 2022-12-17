uses crt;
var
  i,a, b, n: integer;
  h,x, s, p, pogr: real;

function f(x: real): real;
begin
  f := (2 * power(x, 3)) + ((1) * power(x, 2)) + ((0) * x + (9));
end;

function m(x: real): real;
begin
  m := (2*x * (power(x,4)/4) + ((-2)*x) * (power(x,3)/3) + (3*x*x)/2 + 8 * x);
end;
begin
  readln(a, b, n);
  h := (b - a) / n;
  x := a;
  for i := 0 to n - 1 do 
  begin
    s += f(x);
    x += h;
  end;
  s *= h;
  writeln(s);
  p := m(b) - m(a);
  pogr := s - p;
  writeln(p);  
  writeln(pogr);
end.

