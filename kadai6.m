% 課題６　画像の二値化
% 下記のプログラムを参考にして画像を二値化せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア
ORG=imread('IMG_5231.jpg'); % 原画像の入力
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause; % 一時停止


IMG = ORG>128; % 128による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
pause;

IMG = dither(ORG); % ディザ法による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示


標準画像「IMG_5231.jpg」を原画像とする．この画像はディジタルカラー画像である．
ORG=imread('IMG_5231.jpg');
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar;
によって，原画像を読み込み，表示した結果を図１に示す．
https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/6_1.jpg
図1 原画像

IMG = ORG>128; 
imagesc(IMG); colormap(gray); colorbar; 
pause
128による二値化を行った結果を図２に示す．
https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/6_2.jpg
図2 二値化（128）

IMG = dither(ORG); 
imagesc(IMG); colormap(gray); colorbar; 
ディザ法による二値化を行い結果を図３に示す．
https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/6_3.jpg
図3 二値化（ディザ法）





