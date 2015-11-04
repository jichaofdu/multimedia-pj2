
function [] = getPicInfo( row,column,path )
    I=imread(path);%读取文件
    [y,x,~]=size(I);%获取文件大小
    maxRow = y;     %最大行数和最大列数
    maxColumn = x;
    %接下来的两个if判断用户选取的像素点是否超出到图像边界之外
    if(row > maxRow)
        disp('row index out of bound');
        return;
    end
    if(column > maxColumn)
        disp('column index out of bound');
        return;
    end
    %接下来的4个if确定用户选取的像素点周围有几个像素点（取值边界）
    if(row - 1 < 1)
       topEdge =  row; 
    else
       topEdge =  row - 1;
    end
    if(row + 1 > maxRow)
       bottomEdge =  row; 
    else
       bottomEdge =  row + 1;
    end
    if(column - 1 < 1)
       leftEdge = column; 
    else
       leftEdge = column - 1;
    end
    if(column + 1 > maxColumn)
       rightEdge = column; 
    else
       rightEdge = column + 1;
    end
    %将取值结果输出到控制台
    for i = topEdge:bottomEdge
        for j = leftEdge:rightEdge
            r = I(i,j,1);
            g = I(i,j,2);
            b = I(i,j,3);
            disp(['('  num2str(i)  ',' num2str(j)  '):('  num2str(r)  ','  num2str(g)  ','  num2str(b)  ')']);
        end
    end
    
end

