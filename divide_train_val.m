% [trainInd,valInd,testInd] = dividerand(5285,0.6,0.4,0.0);
% save('train_id.mat', 'trainInd');
% save('val_id.mat', 'valInd');

% =======================================================

% load('train_id.mat');
% load('val_id.mat');
% 
% trainInd = int32(trainInd);
% valInd = int32(valInd);

% for i=trainInd
%     im = imread(['./trainval/' sprintf('img-%06d.jpg', i)]);
%     imwrite(im, ['./train/' sprintf('%06d.jpg', i)]);
% end
% 
% for i=valInd
%     im = imread(['./trainval/' sprintf('img-%06d.jpg', i)]);
%     imwrite(im, ['./val/' sprintf('%06d.jpg', i)]);
% end


for i=1:5050
    im = imread(['./dataset-to/' sprintf('img13labels-%06d.png', i)]);
    imwrite(im, ['./dataset-to-new/' sprintf('img-%06d_L.png', i)]);
end
