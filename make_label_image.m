% first of all
% generate the .mat for raw_palette
% double click the .csv and then
% in Command Window run the following two commands
% raw_palette_sunrgbd_cell = sunrgbd13labelcolormapping;
% save('raw_palette_sunrgbd.mat', 'raw_palette_sunrgbd_cell');

raw_palette = load('raw_palette_sunrgbd.mat');
raw_palette = raw_palette.raw_palette_sunrgbd_cell;
% get rid of the class names
rgb_val = cell2mat(raw_palette(:,2:end));
rgb_val_uint8 = uint8(rgb_val*255);


all = dir('./dataset-from');
all = all(3:end);
for ind=1:length(all)
    img_name = all(ind).name;
    fprintf('== Converting %s ==\n', img_name);
    label_map = imread(['./dataset-from/' img_name]);
    [row_num, col_num] = size(label_map);
    label_rgb = uint8(zeros(row_num, col_num, 3));
    for i = 1:row_num
        for j = 1:col_num
            label_rgb(i,j,:) = rgb_val_uint8(label_map(i,j)+1,:);
        end
    end
    imwrite(label_rgb, ['./dataset-to/' img_name]);
end
