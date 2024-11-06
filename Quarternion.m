% converts rotation matrix to a unit quaternion 
q = UnitQuaternion( rpy2tr(0.1, 0.2, 0.3) )
% convert quaternion to rotation matrix
q.R
