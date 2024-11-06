plotvol([-5 4 -1 5]);
T0 = eye(3,3);
trplot2(T0, 'frame', '0');
X = transl2(2, 3);
trplot2(X, 'frame', 'X');
R = trot2(2); 
trplot2(R*X, 'framelabel', 'RX', 'color', 'r');
trplot2(X*R, 'framelabel', 'XR', 'color', 'r'); 
C = [1 2]';
plot_point(C, 'label', ' C', 'solid', 'ko')

% creating a transformation matrix for rotation about point C
% we first apply an origin shift, a translation from C to the origin of the reference frame, apply the rotation about that origin, and then apply the inverse origin shift, a translation from the reference frame origin back to C. A more better way to do this is through twists.
% We see that the frame {RX} has been rotated about the origin, while frame {XR} has been rotated about the origin of {X}.

RC = transl2(C) * R * transl2(-C) 
trplot2(RC*X, 'framelabel', 'XC', 'color', 'r');

