x = [3, -4, 6, -1];
y = [-2, 5, 8, -3];
z = [5, 3, -1, -4];

dist_xy = norm(x - y)
dist_xz = norm(x - z)

cos_xy = dot(x, y) / (norm(x) * norm(y))
cos_xz = dot(x, z) / (norm(x) * norm(z))
