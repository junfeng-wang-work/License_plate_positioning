% ��бУ��
function img_correction = correction(img_area)
I2 = rgb2gray(img_area);
I3 = edge(I2,'Sobel','horizontal');
%�½�����ͼ�����
se = [1 1 1;1 1 1;1 1 1];
%����ͼ��
I4 = imdilate(I3,se);
%Hough �任
[H,T,R] = hough(I4,'Theta',-89:89);
ccc = max(H);
[value, rot_theta] = max(ccc);

if rot_theta > 90
    rot_theta = rot_theta - 180;
end
img_correction = imrotate(img_area , rot_theta,'bilinear', 'loose');
end

