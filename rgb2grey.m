function [] = rgb2grey(path)
    I=imread(path);%读取文件
    [y,x,~]=size(I);%获取文件大小
    maxRow = y;     %最大行数和最大列数
    maxColumn = x;
    %对整个图片进行扫描
    for i = 1:maxRow
        for j = 1:maxColumn
            r = I(i,j,1);    %获取这个像素点对应的rgb值
            g = I(i,j,2);
            b = I(i,j,3);
            grey = 0.29900 * r + 0.58700 * g + 0.11400 * b; %灰度值计算公式
            I(i,j,1) = grey;    %将计算出的灰度值赋予rgb，当r = g = b时图像呈灰色
            I(i,j,2) = grey;
            I(i,j,3) = grey;
        end
    end
    imwrite(I,'test_grey.png');   %将图片输出



end