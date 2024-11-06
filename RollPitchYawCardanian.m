R = rpy2r(0.1, 0.2, 0.3)

% inverse

gamma = tr2rpy(R)

% oa2r - Convert orientation and approach vectors to rotation matrix

a = [1 0 0]';
o = [0 1 0]';
R = oa2r(o, a)
