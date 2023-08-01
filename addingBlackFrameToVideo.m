
test = VideoReader('ba_VA_500.mp4');
vidtest = read(test);
[a,b,c,d] = size(vidtest);
vidtest(:,:,:,d+1) = zeros(a,b,3);

vidObj = VideoWriter('ba_VA_500_2.avi');
open(vidObj)
for i=1:d+1
writeVideo(vidObj, uint8(vidtest(:,:,:,i))); %if the array is black and white, then you can remove the "uint8"
%writeVideo(vidObj, ga_video(:,:,i)); %use this if the video is the black and white version
end
close(vidObj)