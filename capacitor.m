t=linspace(0,0.8,100);
q=10;
R=60;
L=9;
c=0.00005;
Q_t=q*exp((t.*-R)/(2*L)).* cos(sqrt((1/(L.*c))+(-t.*(R/(2*L)).^2)));
plot(t,Q_t)
xlabel Time
ylabel Charge
title 'The charge of a Capacitor over time'
