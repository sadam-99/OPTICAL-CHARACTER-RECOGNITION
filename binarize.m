I = imread('keypad.jpg');
%Convert the image into a binary image.

BW = imbinarize(I);
%Display the original image next to the binary version.
%B = rgb2gray(I);
figure
imshow(I)
imshowpair(I,BW,'montage')
figure
%imshow(BW)