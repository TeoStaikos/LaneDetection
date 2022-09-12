function S = sobel_single(im)

Gx = [1 0 -1;
    2 0 -2;
    1 0 -1];

Gy = [1 2 1;
    0 0 0;
    -1 -2 -1];

Sx = conv2(im,Gx, 'same');
Sy = conv2(im,Gy, 'same');
S = Sx;
S = sqrt(Sx.^2 + Sy.^2);
S = rescale(S);


end