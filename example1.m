function example1(index)

%index = 1: N = 1000 and h = 0.1 
%index = 2: N = 1000 and h = 0.01
%index = 3: N = 10000 and h = 0.1

%generate 1D data (gaussian mixture model)
%mean
m1 = 0;
m2 = 2;
m = [m1, m2]';
%variance
s(:, :, 1) = 0.2;
s(:, :, 2) = 0.2;
%prior probability
p = [1/3, 2/3];

%N: number of data
if index == 1
    N = 1000;
    h = 0.1;
elseif index == 2
    N = 1000;
    h = 0.01;
elseif index == 3
    N = 10000;
    h = 0.1;
end

randn('seed', 0);
%gaussian mixture model
gm = gmdistribution(m, s, p);
X = random(gm, N);

figure(1)
hold on
%plot 1D data
scatter(X, zeros(N, 1), 'g', '.'); 

%plot real distribution
x = -5 : h : 5;
pdfx = (p(1))*(1/sqrt(2*pi*s(:, :, 1)))*exp(-(x.^2)/(2*s(:, :, 1))) + (p(2))*(1/sqrt(2*pi*s(:, :, 2)))*exp(-((x-2).^2)/(2*s(:, :, 2)));
plot(x, pdfx, 'b'); 

%plot approximate distribution
approximate_pdf = parzen_gauss_kernel(X, h, N, -5, 5);
plot(x, approximate_pdf, 'r');

legend('data', 'real distribution', 'approximate distribution');
hold off

end