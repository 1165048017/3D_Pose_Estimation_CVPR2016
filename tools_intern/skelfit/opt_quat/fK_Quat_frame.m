function [jointPositions, quaternions] = fK_Quat_frame(rotationQuat, rootTranslation, nodes, rootRotationalOffsetQuat)

[jointPositions, quaternions] = recursive_fK_Quat_frame(1,...
                                                 rotationQuat, ...
                                                 nodes, ...
                                                 rootTranslation + nodes(1).offset,...
                                                 quatmult( rootRotationalOffsetQuat, rotationQuat{1} ),...
                                                 [], ...
                                                 []);