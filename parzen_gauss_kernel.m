function approximate_pdf = parzen_gauss_kernel(X, h, N, l1, l2)

for x = l1 : h : l2
    n = int32(x/h + 5/h + 1);
    hold = 0;
    for i = 1:N
        hold = hold + exp(-(x-X(i))^2/(2*h^2));
    end
    approximate_pdf(n) = (1/(N * sqrt(2*pi) * h)) * hold;
end

end