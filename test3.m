I = imread('test.png');
thresh = graythresh(I);%自动确定二值化阈值
I2 = im2bw(I,thresh);  %对图像二值化
imwrite(I2,'test3.jpg');
