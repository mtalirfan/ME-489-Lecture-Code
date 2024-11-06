% We can think of this expression as representing a walk along the x-axis for 1 unit, then a rotation by 90° about the x-axis and then a walk of 1 unit along the new y-axis which was the previous z-axis.

T = transl(1, 0, 0) * trotx(pi/2) * transl(0, 1, 0)
trplot(T)
t2r(T) 
transl(T)'
