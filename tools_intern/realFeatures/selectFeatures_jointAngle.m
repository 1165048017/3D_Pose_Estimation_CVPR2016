function [aFeatures, strDescription] = selectFeatures_jointAngle()
% [aFeatures, strDescription] = selectFeatures_jointAngle;
% 
% this function is called by selectFeatures(strFeatures, iWhich)
%

% * angle (elbow):    ('lwrist', 'lelbow') vs.  ('lelbow','lshoulder')
% * angle (knee):     ('lhip', 'lknee')    vs.  ('lknee','lankle')
% * angle (hip):      ('lknee', 'lhip')    vs.  ('root' (oder 'belly'), 'neck')
% * angle (shoulder): ('lelbow', 'lshoulder') vs. ('neck', 'root')
%                     ('lelbow', 'lshoulder') vs. ('lshoulder', 'neck')
% * angle (head):     ('headtop','head')   vs.  ('neck','chest')
%
selectSome = {...
            'lwrist'  'lelbow'    'lelbow'    'lshoulder'; ... % 1
            'lhip'    'lknee'     'lknee'     'lankle'; ...    % 2
            'lknee'   'lhip'      'root'      'neck'; ...      % 3
            'lelbow'  'lshoulder' 'neck'      'root'; ...     % 4
            ...%'lelbow'  'lshoulder' 'neck'      'belly'; ...     % 4
            'lelbow'  'lshoulder' 'lshoulder' 'neck'; ...      % 5
            ...
            'rwrist'  'relbow'    'relbow'    'rshoulder'; ... % 6
            'rhip'    'rknee'     'rknee'     'rankle'; ...    % 7
            'rknee'   'rhip'      'root'      'neck'; ...      % 8
            'relbow'  'rshoulder' 'neck'      'root'; ...     % 9
            ...%'relbow'  'rshoulder' 'neck'      'belly'; ...     % 9
            'relbow'  'rshoulder' 'rshoulder' 'neck'; ...      %10
            ...
            'headtop' 'head'      'neck'      'chest'; ...     %11
            };
description = {...
        'linker Ellenbogen \\\hline'; ...
        'linkes Knie \\\hline'; ...
        'linke H�fte \\\hline'; ...
        'linke Schulter (bzgl. K�rpersenkrechter) \\\hline'; ...
        'linke Schulter (bzgl. K�rperhorizontaler) \\\hline'; ...
        'rechter Ellenbogen \\\hline\hline'; ...
        'rechtes Knie \\\hline'; ...
        'rechte H�fte \\\hline'; ...
        'rechte Schulter (bzgl. K�rpersenkrechter) \\\hline'; ...
        'rechte Schulter (bzgl. K�rperhorizontaler) \\\hline\hline'; ...
        'Hals \\\hline'};

% resortJointAngle = [1, 6, 5, 9, 4, 10, 2, 7, 3, 8, 11];
resortJointAngle = 1:11;

aFeatures = selectSome(resortJointAngle,:);
strDescription = description(resortJointAngle,:);
