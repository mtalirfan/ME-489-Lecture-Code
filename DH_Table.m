dh = [ 0 0 1 0; 
       0 0 1 0 ]   
% each row corresponds to one row of DH table i.e. theta, d, a and alpha parameters of each joint 
r = SerialLink(dh)
r.tool
r.gravity
r.base
r.plot([0.2 0.3])
r.teach
r.fkine([0.2 0.3])
% returns the pose of end-effector
