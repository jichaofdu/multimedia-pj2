I = imread('test.png');
thresh = graythresh(I);%�Զ�ȷ����ֵ����ֵ
I2 = im2bw(I,thresh);  %��ͼ���ֵ��
imwrite(I2,'test3.jpg');
