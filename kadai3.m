% 課題３　閾値処理
% 閾値を4パターン設定し,閾値処理た画像を示せ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア

ORG=imread('IMG_5297.jpg'); % 原画像の入力
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換

imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause;

IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 96;
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 128;
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 192;
imagesc(IMG); colormap(gray); colorbar;

標準画像「IMG_5297.jpg」を原画像とする．この画像はディジタルカラー画像である．
ORG=imread('IMG_5297.jpg'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
によって，原画像を読み込み，表示した結果を図１に示す．
https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/3_1.jpg
図1 原画像

以下のように輝度値が64以上の画素を1，その他を0に変換する
IMG = ORG > 64; 
imagesc(IMG); colormap(gray); colorbar;
pause;
結果を図２に示す．

https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/3_2.jpg
図2 輝度値変換64

以下のように輝度値が96以上の画素を1，その他を0に変換する
IMG = ORG > 96; 
imagesc(IMG); colormap(gray); colorbar;
pause;
結果を図３に示す．

https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/3_3.jpg
図3 輝度値変換96

以下のように輝度値が128以上の画素を1，その他を0に変換する
IMG = ORG > 128; 
imagesc(IMG); colormap(gray); colorbar;
pause;
結果を図4に示す．

https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/3_4.jpg
図3 輝度値変換128

以下のように輝度値が192以上の画素を1，その他を0に変換する
IMG = ORG > 192; 
imagesc(IMG); colormap(gray); colorbar;
pause;
結果を図5に示す．

https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/3_5.jpg
図3 輝度値変換192

これらの処理を確認し輝度値による画素変換の概要を理解できた





