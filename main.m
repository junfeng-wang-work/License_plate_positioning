clc;clear;close all;
%��ȡͼƬ
img1 = imread('images\01.jpg');
img2 = imread('images\02.jpg');
img3 = imread('images\03.jpg');
img4 = imread('images\04.jpg');
img5 = imread('images\05.jpg');
img6 = imread('images\06.jpg');
img7 = imread('images\07.jpg');
img8 = imread('images\08.jpg');
img9 = imread('images\09.jpg');
img10 = imread('images\10.jpg');
img11 = imread('images\11.jpg');
img12 = imread('images\12.jpg');
img13 = imread('images\13.jpg');
img14 = imread('images\14.jpg');
img15 = imread('images\15.jpg');
img16 = imread('images\16.jpg');

% ��ɫ����1����ɫ����2������3
color_list = [2,1,1,1,1,1,1,1,2,2,2,2,2,1,1,1];

for img_num =1:16
%ѭ����ͼƬ���ļ�����
eval(['img=img',num2str(img_num),';']);
color = color_list(img_num);

%չʾԭͼ
figure(1);
subplot(4,4,img_num);imshow(img);

%Ԥ��������ֵ�˲���ת���Ҷ�
img_gray = preprocess(img);

%��Ե���:���ʵ���ѡ��Prewitt���ӣ���ֱ����ļ��
[img_edge] = edge_detect(img_gray);

%��̬ѧ����
[img_morphology] = morphology(img_edge,1000);

%�ж��Ƿ�Ҫ��һ��ʼ��ͼ�����ֱ��ͼ���⻯
img_morphology = judge(img_morphology,img);

%����ѡ��
img_area = area_select(img_morphology,img,color);

%��бУ��
img_correction = correction(img_area);

%��ȷѡ��
img_area_new = accurate_select(img_correction,color);
figure(2);
subplot(4,4,img_num);imshow(img_area_new);
end
