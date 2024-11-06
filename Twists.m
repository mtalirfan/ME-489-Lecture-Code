% given any two frames we can find a rotational center that will rotate the first frame into the second
% Rotational twist around a point C:
% R stands for rotational. The twist object comprises of a 2-vector moment and a 1-vector rotation
% Unit twist since magnitude of rotation = 1

C = [1 2]'; 
tw = Twist('R', C)

% to create transformation for a rotation about this unit twist by 2 radians

tw.T(2) 

%to get center of rotation also known as pole

tw.pole';

% For an arbitrary planar transform

T = transl2(2, 3) * trot2(0.5)

% we can compute twist as

tw = Twist(T) 
tw.T
