expansion_ratio = 1.5;
g = 1.2;
iterations = 50;
accuracy = 0.001;

syms M
f = expansion_ratio - ((1/M)*((2+(g-1)*M^2)/(g+1)))^((g+1)/(2*(g-1)));
d = diff(f);
M = 1.2;
z = subs(d);
disp(d)
disp(double(z));

x = @mach_solver;
y = x(expansion_ratio, g, accuracy);
