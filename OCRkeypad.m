I = imread('keypad.jpg');
I = rgb2gray(I);

figure;
imshow(I)
% Run OCR on the image
results = ocr(I);
results.Text
% Set 'TextLayout' to 'Block' to instruct ocr to assume the image
% contains just one block of text.
results = ocr(I, 'TextLayout', 'Block');

results.Text
BW = imbinarize(I);

figure;
imshowpair(I, BW, 'montage');