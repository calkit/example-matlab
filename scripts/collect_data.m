disp("Processing data");

addpath("../src");

myfunction();

% Set random seed
rng(432);

voltage = rand(1000, 1);
data = table(voltage);

mkdir("../data/raw");

parquetwrite("../data/raw/data.parquet", data);
