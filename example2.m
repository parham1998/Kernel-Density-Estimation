function example2(index)

%index = 1: N = 1000 and h = 0.1 
%index = 2: N = 1000 and h = 0.01
%index = 3: N = 10000 and h = 0.1

%generate 2D data (gaussian mixture model)
%mean
m1 = [0, 0]';
m2 = [0, 2]';
m = [m1, m2];
%covariance
cov_matrix = 0.2 * eye(2);
s(:, :, 1) = cov_matrix;
s(:, :, 2) = cov_matrix;
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
[X] = random(gm, N);

%plot real distribution
[x1, x2] = meshgrid(-4:0.1:4, -4:0.1:4);
pdfx = p(1)*(1/(2*pi*0.2))*exp(-(x1.^2 + x2.^2)/(2*0.2)) + p(2)*(1/(2*pi*0.2))*exp(-(x1.^2 + (x2-2).^2)/(2*0.2));
figure(1)
surf(x1, x2, pdfx); 

%plot approximate distribution
approximate_pdf = parzen_2d_gauss_kernel(X, h, N, -4, 4);
figure(2)
surf(x1, x2, approximate_pdf); 

end