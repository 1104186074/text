%% Loadtext
clear all
close all
clc
fclose('all');
%% ��ȡ����
filename='text.txt';
fileid=fopen(filename,'r');
%
n=0;
text=[];% ���ַ��ı�
data=cell(100,1);% ԭ��ʽ�ı�
linesize=zeros(100,1);
while ~feof(fileid)
    % ��ȡ������
    tline=fgetl(fileid);
    % ����
    text1=text;
    text=[text1,tline];
    % ��������
    n=n+1;
    disp(n)
    data{n}=tline;
    linesize(n)=length(tline);
end
% ��ʽУ��
if n<100
    linesize(n+1:end)=[];
    data(n+1:end)=[];
end
fclose('all');
%% �����ַ�
string='��';
[list]=StringSelection(string,text,linesize);
%% �ı���ʾ
ShowData(data)