% Example: VLP with 2 objectives, which is unbounded (but not totally unbounded)
%
%	its the solution consists of feasible points and feasible directions

% min_C [x1;x2]
%
% ordering cone C is generated by [-1;3/2] and [3;-1]
%
% duality parameter c is set to [0;1], which is an interior point of C
%
% 0 <= 3*x1 +   x2 
% 0 <=   x1 + 2*x2 
% 1 <=   x1 +   x2 

clear('vlp');

vlp.B=[[3 1];[1 2];[1 1]];
vlp.a=[0; 0; 1];
vlp.P=[1 0 ; 0 1];

% generating vectors of ordering cone C
vlp.Y=[-1 3; 3/2 -1];
vlp.c=[0;1];

prob2vlp(vlp,'ex08.vlp');

