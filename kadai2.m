% 課題２　階調数と疑似輪郭
% ２階調，４階調，８階調の画像を生成せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア

ORG=imread('IMG_7791_edited.JPG'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % 画像の表示
pause; % 一時停止

% ２階調画像の生成
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ４階調画像の生成
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ８階調画像の生成
IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>128;
IMG3 = ORG>160;
IMG4 = ORG>192;
IMG5 = ORG>224;
IMG6 = ORG>256;
IMG = IMG0 + IMG1 + IMG2 +IMG3 +IMG4 +IMG5 +IMG6;
imagesc(IMG); colormap(gray); colorbar;  axis image;


標準画像「IMG_7791_edited.JPG」を原画像とする．この画像はディジタルカラー画像である．
ORG=imread('IMG_7791_edited.JPG'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
によって，原画像を読み込み，表示した結果を図１に示す．

https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/2_1.jpg
図1 原画像

以下のように２階調画像を生成する
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;
結果を図２に示す．

https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/2_2.jpg
図2 2階調画像

以下のように４階調画像を生成する
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;
とする．結果を図３に示す．

https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/2_3.jpg
図3 ４階調画像

以下のように８階調画像を生成する
IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>128;
IMG3 = ORG>160;
IMG4 = ORG>192;
IMG5 = ORG>224;
IMG6 = ORG>256;
IMG = IMG0 + IMG1 + IMG2 +IMG3 +IMG4 +IMG5 +IMG6;
imagesc(IMG); colormap(gray); colorbar;  axis image;大
結果を図４に示す．

https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/2_4.jpg
図4 ８階調画像



