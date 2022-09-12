function [rowsums, max_ind] = row_method(im)

rowsums = [];

for i = 1:length(im(:,1))
    
    row = im(i,:);
    rowsums = [rowsums; sum(row)];

end



rowsums = rowsums(3:end-2)
rowsums = rescale(rowsums);
rowsize = length(rowsums)
x = 0:rowsize-1;
scaler = sin(pi*x/rowsize);
scaler = scaler';
rowsums = rowsums .* scaler;
plot(rowsums)


[m, max_ind] = max(rowsums);


% 
% 
% figure
% plot(rowsums)
% title('without scaler');
% 
% x = 0:length(rowsums)-1;
% scaler = sin(pi*x/(length(rowsums)-1));
% 
% 
% rowsums = rowsums .* scaler';

end