function approximate_pdf = parzen_2d_gauss_kernel(X, h, N, l1, l2)

for x1 = l1 : 0.1 : l2
    n1 = int32(x1*10 + 41);
    for x2 = l1 : 0.1 : l2
        n2 = int32(x2*10 + 41);
        hold = 0;
        for i = 1:N
            hold = hold + exp(-([x2; x1] - X(i, :)')'*([x2; x1] - X(i, :)')/(2*h^2));
        end
        approximate_pdf(n1, n2) = (1/(N * 2*pi * (h^2))) * hold;
    end
end

end