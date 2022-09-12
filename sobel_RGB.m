function S = sobel_RGB(im)

R = im(:,:,1);
G = im(:,:,2);
B = im(:,:,3);

Sr = sobel_single(R);
Sg = sobel_single(G);
Sb = sobel_single(B);

S = rgb2gray(cat(3,Sr,Sg,Sb));
S = rescale(S);

end