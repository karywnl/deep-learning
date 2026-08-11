x = -10:0.1:10;
betas = [0.5, 1, 2];
deltas = [0.5, 1, 2];

figure;

subplot(2,3,1); hold on;
for b = betas, plot(x, 1./(1+exp(-b*x))); end
title('Sigmoid');

subplot(2,3,2); hold on;
for b = betas, plot(x, tanh(b*x)); end
title('Tanh');

subplot(2,3,3);
plot(x, max(0,x));
title('ReLU');

subplot(2,3,4);
plot(x, log(1+exp(x)));
title('Softplus');

subplot(2,3,5); hold on;
for d = deltas
    y = x;
    y(x<0) = d*x(x<0);
    plot(x, y);
end
title('Leaky ReLU');

subplot(2,3,6); hold on;
for b = betas
    s = 1./(1+exp(-b*x));
    plot(x, x.*s);
end
title('Swish');
