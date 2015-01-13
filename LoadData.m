%% Loadtext
clear all
close all
clc
fclose('all');
%% 读取数据
filename='text.txt';
fileid=fopen(filename,'r');
%
n=0;
text=[];% 长字符文本
data=cell(100,1);% 原格式文本
linesize=zeros(100,1);
while ~feof(fileid)
    % 读取行数据
    tline=fgetl(fileid);
    % 储存
    text1=text;
    text=[text1,tline];
    % 载入数据
    n=n+1;
    disp(n)
    data{n}=tline;
    linesize(n)=length(tline);
end
% 格式校正
if n<100
    linesize(n+1:end)=[];
    data(n+1:end)=[];
end
fclose('all');
%% 查找字符
string='的';
[list]=StringSelection(string,text,linesize);
%% 文本显示
ShowData(data)