% 課題１　標本化間隔と空間解像度
% 画像をダウンサンプリングして（標本化間隔を大きくして）
% 表示せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア

ORG=imread('IMG_7791_edited.jpg'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
pause; % 一時停止
IMG = imresize(ORG,0.5); % 画像の縮小
IMG2 = imresize(IMG,2,'box'); % 画像の拡大
imagesc(IMG2); axis image; % 画像の表示
pause; % 一時停止

IMG = imresize(IMG,0.5); % 画像の縮小
IMG2 = imresize(IMG,4,'box'); % 画像の拡大
imagesc(IMG2); axis image; % 画像の表示
pause; % 一時停止

IMG = imresize(IMG,0.5); % 画像の縮小
IMG2 = imresize(IMG,8,'box'); % 画像の拡大
imagesc(IMG2); axis image; % 画像の表示
pause; % 一時停止

IMG = imresize(IMG,0.5); % 画像の縮小
IMG2 = imresize(IMG,16,'box'); % 画像の拡大
imagesc(IMG2); axis image; % 画像の表示
pause; % 一時停止

IMG = imresize(IMG,0.5); % 画像の縮小
IMG2 = imresize(IMG,32,'box'); % 画像の拡大
imagesc(IMG2); axis image; % 画像の表示

標準画像「IMG_7791_edited.jpg」を原画像とする．この画像は縦512画像，横512画素による正方形のディジタルカラー画像である．
ORG=imread('IMG_7791_edited.jpg'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
によって，原画像を読み込み，表示した結果を図１に示す．
https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/1_1.jpg

図1 原画像
原画像を1/2サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．なお，拡大する際には，単純補間するために「box」オプションを設定する．
IMG = imresize(ORG,0.5); % 画像の縮小
IMG2 = imresize(IMG,2,'box'); % 画像の拡大
1/2サンプリングの結果を図２に示す．
https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/1_2.jpg

図2 1/2サンプリング
同様に原画像を1/4サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．すなわち，
IMG = imresize(ORG,0.5); % 画像の縮小
IMG2 = imresize(IMG,2,'box'); % 画像の拡大
とする．1/4サンプリングの結果を図３に示す．
https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/1_3.jpg

図3 1/4サンプリング
1/8から1/32サンプリングは，
IMG = imresize(ORG,0.5); % 画像の縮小
IMG2 = imresize(IMG,2,'box'); % 画像の拡大
を繰り返す．サンプリングの結果を図４～６に示す．

図4 1/8サンプリング
https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/1_4.jpg

図5 1/16サンプリング
https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/1_5.jpg
このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生する




