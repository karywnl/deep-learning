x = -10:0.1:10;
betas = [0.5, 1, 2];
deltas = [0.5, 1, 2];

figure;

subplot(2,3,1); hold on;
for b = betas
    f = 1./(1+exp(-b*x));
    plot(x, b*f.*(1-f));
end
title('Sigmoid deriv');

subplot(2,3,2); hold on;
for b = betas
    f = tanh(b*x);
    plot(x, b*(1-f.^2));
end
title('Tanh deriv');

subplot(2,3,3);
plot(x, double(x>0));
title('ReLU deriv');

subplot(2,3,4);
plot(x, 1./(1+exp(-x)));
title('Softplus deriv');

subplot(2,3,5); hold on;
for d = deltas
    df = ones(size(x));
    df(x<0) = d;
    plot(x, df);
end
title('Leaky ReLU deriv');

subplot(2,3,6); hold on;
for b = betas
    s = 1./(1+exp(-b*x));
    sw = x.*s;
    plot(x, s + b*sw.*(1-s));
end
title('Swish deriv');
