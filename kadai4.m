% 課題４　画像のヒストグラム
% 画素の濃度ヒストグラムを生成せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア

ORG=imread('IMG_5305_edited.jpg'); % 原画像の入力
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar;
pause;

imhist(ORG); % ヒストグラムの表示

標準画像「IMG_5305_edited.jpg」を原画像とする．この画像はディジタルカラー画像である．
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar;
によって，原画像を白黒濃淡画像へと変換する，表示した結果を図１に示す．
https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/4_1.jpg
図1 白黒濃淡画像

imhist(ORG); 
によってヒストグラムを表示する
結果を図２に示す．
https://raw.githubusercontent.com/15nc044/lecture_image_processing/master/4_2.jpg
図2 ヒストグラム表示


ディジタルカラー画像を白黒濃淡画像へと変換しそのヒストグラムを観測することによってその概要を理解できた

