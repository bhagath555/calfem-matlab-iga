function [  ] = plotNurbsCurveSimple( Curve )
%[  ] = plotNurbsCurve2DSimple( curve )
%-------------------------------------------------------------
% PURPOSE:
%   Plot NURBS curve geometry 3D, and draw knots (elements).
%
%
% INPUT: Curve = Curve with:
%        Curve.KV (knot vector)
%        Curve.w (column vector storing weights)
%        Curve.CP (Matrix where each row contains a point)
%
% OUTPUT: none
%-------------------------------------------------------------



%% Generate basis
res = 100; % Compute 40 samples, uniformly distributed (and knot points are auto-included)
[ R , U] = nrbasis_num( Curve.KV, Curve.w, res );

%% Calculate NURBS-spline curve
C = R' * Curve.CP;

%% Plot basis
%figure(1)
%plotNurbsBasis(R,U);

%% PLot curve
plotNurbsCurve(C(:,1),C(:,2),C(:,3),Curve.KV,U,Curve.CP(:,1),Curve.CP(:,2),Curve.CP(:,3));

end

