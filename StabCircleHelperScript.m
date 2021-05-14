clc
clear
close all


% load packgage for drawing easier cirlces (for noise, gain, etc...)
pkg load matgeom

% Example from Gonzales text (problem 3.7)
% format s-param matrix
smag = [0.385, 0.045, 2.7, 0.89];
sang = [-55, 90, 78, -26.5];
s = my_pol2cart(smag, sang);



% Generate coordinates for input stab circle

[cs, rs] = InputStabCircle(s);
stab_center_in = [real(cs) imag(cs)];



% Generate coordinates for output stab circle
[cl, rl] = OutputStabCircle(s);
stab_center_out = [real(cl) imag(cl)];


% Generate smith circle
xc = 0;
yc = 0;
r  = 1;

figure(1)
hold on

drawCircle(stab_center_in(1), stab_center_in(2), rs, 180);
drawCircle(stab_center_out(1), stab_center_out(2), rl);
drawCircle(xc, yc, r);
xlim([-3, 3])
ylim([-3, 3])
legend("Input Stability Circle", "Output Stability Circle","smith")
axis equal
hold off
saveas(gcf,"stabCircleExample.svg")


% output string saying whether stability region is inside or outside of stab
% circles


if (abs(s(2,2)) < 1)
  InputStabRegion = "outside";
elseif (abs(s(2,2)) > 1)
  InputStabRegion = "inside";
else
  InputStabRegion = "Undefined";
endif



if (abs(s(1,1)) < 1)
  OutputStabRegion = "outside";
elseif (abs(s(1,1)) > 1)
  OutputStabRegion = "inside";
else
  OutputStabRegion = "Undefined";
endif


printf("Input Stability Region is %s\n",InputStabRegion)
printf("Output Stability Region is %s\n",OutputStabRegion)
