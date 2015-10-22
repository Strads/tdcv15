function I_out = filter2d(I_in, h, border_treatment)
[M, N] = size(h);
padX = floor(M/2); padY = floor(N/2);

I_out = zeros(size(I_in));
%Do padding
I_padded = pad(I_in, padX, padY, border_treatment);
%Do convolution
for i = 1:size(I_out,1)
    for j = 1:size(I_out,2)
        filter_area = I_padded(j:j+M-1,i:i+N-1);
        I_out(i,j) = sum(sum(filter_area.*h));
    end
end
