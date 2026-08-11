x1 = [-2, 5, -3, 7, 4, -1, 8, -6, 0, 1];
x2 = [12, 15, -13, -6, 4, -7, 13, -2, 10, -5];

x1_minmax = (x1 - min(x1)) / (max(x1) - min(x1))
x2_minmax = (x2 - min(x2)) / (max(x2) - min(x2))

x1_standard = (x1 - mean(x1)) / std(x1)
x2_standard = (x2 - mean(x2)) / std(x2)
