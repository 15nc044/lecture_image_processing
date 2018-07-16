% 課題５　判別分析法
% 判別分析法を用いて画像二値化せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

ORG=imread('IMG_5243.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar;
pause;

H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納
myu_T = mean(H);
max_val = 0;
max_thres = 1;
for i=1:255
C1 = H(1:i); %ヒストグラムを2つのクラスに分ける
C2 = H(i+1:256);
n1 = sum(C1); %画素数の算出
n2 = sum(C2);
myu1 = mean(C1); %平均値の算出
myu2 = mean(C2);
sigma1 = var(C1); %分散の算出
sigma2 = var(C2);
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出
if max_val<sigma_B/sigma_w
max_val = sigma_B/sigma_w;
max_thres =i;
end;
end;

IMG = ORG > max_thres;
imagesc(IMG); colormap(gray); colorbar;
pause;

標準画像「IMG_5243.jpg」を原画像とする．この画像はディジタルカラー画像である．
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar;
pause;
によって，原画像であるカラー画像を白黒濃淡画像へ変換し読み込み，表示した結果を図１に示す．

https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/5_1.jpg
図1 白黒濃淡画像



H = imhist(ORG); 
myu_T = mean(H);
max_val = 0;
max_thres = 1;
for i=1:255
C1 = H(1:i); 
C2 = H(i+1:256);
ヒストグラムのデータを列ベクトルEに格納ヒストグラムを2つのクラスに分ける
その後各要素の分散を以下のようにして行う

n1 = sum(C1); 
n2 = sum(C2);
myu1 = mean(C1); 
myu2 = mean(C2);
sigma1 = var(C1); 
sigma2 = var(C2);
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2);
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); 
if max_val<sigma_B/sigma_w
max_val = sigma_B/sigma_w;
max_thres =i;



これらの処理によって二値化された結果を図２に示す．

https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/5_2.jpg
図1 白黒濃淡画像の画像二値化
