function I_pad = pad(I_in, padX, padY, type)
I_pad = zeros(2*padX+size(I_in,1),2*padY+size(I_in,2));
I_pad(padX+1:end-padX, padY+1:end-padY) = I_in;

if strcmp(type,'replicate')
    % Sides:
    I_pad(1:padX,padY+1:end-padY) = repmat(I_in(1,:),1,padX);
    I_pad(end-padX+1:end,padY+1:end-padY) = repmat(I_in(end,:),1,padX);
    I_pad(padX+1:end-padX,1:padY) = repmat(I_in(:,1),padY,1);
    I_pad(padX+1:end-padX,end-padY+1:end) = repmat(I_in(:,end),padY,1);
    % Corners
    I_pad(end-padX+1:end,end-padY+1) = ones(padX,padY)*I_in(end,end);
    I_pad(1:padX,1:padY) = ones(padX,padY)*I_in(1,1);
    I_pad(1:padX,end-padY+1) = ones(padX,padY)*I_in(1,end);
    I_pad(end-padX+1,1:padY) = ones(padX,padY)*I_in(end,1);
    
elseif strcmp(type,'symmetric')
    error('Not yet implemented')
    
else
    error('Type of padding not defined!')
end
