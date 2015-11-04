function [] = rgb2grey(path)
    I=imread(path);%��ȡ�ļ�
    [y,x,~]=size(I);%��ȡ�ļ���С
    maxRow = y;     %����������������
    maxColumn = x;
    %������ͼƬ����ɨ��
    for i = 1:maxRow
        for j = 1:maxColumn
            r = I(i,j,1);    %��ȡ������ص��Ӧ��rgbֵ
            g = I(i,j,2);
            b = I(i,j,3);
            grey = 0.29900 * r + 0.58700 * g + 0.11400 * b; %�Ҷ�ֵ���㹫ʽ
            I(i,j,1) = grey;    %��������ĻҶ�ֵ����rgb����r = g = bʱͼ��ʻ�ɫ
            I(i,j,2) = grey;
            I(i,j,3) = grey;
        end
    end
    imwrite(I,'test_grey.png');   %��ͼƬ���



end