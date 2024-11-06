syms theta
R=rot2(theta)

% rot2 provides orthonormal rotation matrix, whereas trot2 provides homogeneous transformation

T1=transl2(1,2)*trot2(30,'deg')
plotvol([0 5 0 5]);
trplot2(T1, 'frame', '1', 'color', 'b')
T2 = transl2(2, 1) 
trplot2(T2, 'frame', '2', 'color', 'r');
T3 = T1*T2
trplot2(T3, 'frame', '3', 'color', 'g');
T4 = T2*T1;
trplot2(T4, 'frame', '4', 'color', 'c'); 
P = [3 ; 2 ]; 
plot_point(P, 'label', 'P', 'solid', 'ko');


% To determine the coordinate of the point P wrt {1}
P1 = inv(T1) * [P; 1]
% Conversions from homogeneous to Euclidean space
h2e( inv(T1) * e2h(P) )
