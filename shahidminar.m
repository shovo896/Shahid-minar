clc;
clear;
figure
hold on
axis equal
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Shaheed Minar (3D Model)');
view(45,30)
grid on

% Function to draw a block
drawBlock = @(x,y,z,l,w,h,color) fill3( ...
    [x x+l x+l x x], ...
    [y y y+w y+w y], ...
    [z z z z z]+h, color, 'FaceAlpha', 1);

% Base platform
fill3([-10 10 10 -10], [-10 -10 10 10], [0 0 0 0], [0.8 0.8 0.8]);

% Central Column (Tallest)
drawBlock(-0.5, -1, 0, 1, 2, 8, 'r');

% Side Columns (medium)
drawBlock(-2.5, -1, 0, 1, 2, 6, 'r');
drawBlock(1.5, -1, 0, 1, 2, 6, 'r');

% Edge Columns (shortest)
drawBlock(-4.5, -1, 0, 1, 2, 4, 'r');
drawBlock(3.5, -1, 0, 1, 2, 4, 'r');

% Horizontal bar on top of central column
fill3([-2 2 2 -2], [1.2 1.2 1.5 1.5], [8 8 8 8], 'r');

% Back Wall to highlight the columns
fill3([-6 6 6 -6], [-1.5 -1.5 -1.4 -1.4], [0 0 10 10], [1 1 1]*0.95);

% Optional: Circular base design
theta = linspace(0, 2*pi, 100);
r = 6;
x = r*cos(theta);
y = r*sin(theta);
z = zeros(size(x));
fill3(x, y, z, [0.7 0.7 0.7]);

hold off
