clear all
close all

%% Read Video
video = VideoReader('april21.avi');
numFrames = video.numFrames;


%% Seperate Frames
frames = {};
for i=1:numFrames
    frames{end+1} = read(video, i);
end

%grayVid = cellfun(@rgb2gray, frames, 'UniformOutput', false);

testIm = frames{150};
%testIm = grayVid{150};
imshow(testIm);


S = sobel_RGB(testIm);
%S = sobel_single(testIm);
S_lines = hor_lines(S);




figure('Name', 'Horizontal_Lines')
title('lines')
imshow(S_lines)




[rowsums, max_ind] = row_method(S_lines);







figure
imshow(S)


cutS = S;

custS(1:max_ind, :) = 0;

figure
imshow(cutS)

figure
imshow(testIm);
yline(max_ind, 'r')




