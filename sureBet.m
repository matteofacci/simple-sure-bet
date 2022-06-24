clear, clc, close all;

q1 = 1.63; % odd 1
q2 = 2.58; % odd 2

C = 79358; % Total available amount

%% Secure earning condition

if (q1 - 1)*(q2-1) > 1
    disp('Safe bet')
else
    disp('NOT SAFE')
end

%% Max win

V = C*(((q1*q2)/(q1+q2))-1);
fprintf("Max win: %f\n\n", V);

%% Possible bets

p1 = C * q2/(q1+q2);
p2 = C * q1/(q1+q2);

fprintf("P1: %f\n", p1);
fprintf("P2: %f\n\n", p2);
fprintf("Rounded P1: %d\n", round(p1));
fprintf("Rounded P2: %d\n\n", round(p2));

a = round(p1)*q1;
b = round(p2)*q2;

fprintf("w1: %f\n\n", a-C);
fprintf("w2: %f\n\n", b-C);

