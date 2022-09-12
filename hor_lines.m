function S = hor_lines(im)

hor = [-1 -1 -1; 2 2 2; -1 -1 -1];

S = conv2(im,hor, 'same');

end