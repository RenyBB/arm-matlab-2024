P = []; 
a0 = 6000; 
m0 = 0;
w0 = 300; 
P(1, :) = [m0, w0, a0];

figure
plot(0, a0, '.', 'markersize', 24);
hold on;
xlim([0 25])
i = 1
while i < 25
  P
  a = input('How many workers this month?')
  b = 20 * a - a0;
  a0 = b;
  plot(i, a0, '.', 'markersize',24);
  P(i + 1, :) = [i, a, b];
  plot(P(:, 1), P(:, 3), 'color','k');
  i = i + 1;
end
