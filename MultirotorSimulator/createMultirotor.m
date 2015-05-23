function multirotor = createMultirotor()
%-------parameters-----------
I = [   0.5119e-6 0 0; 
        0 0.5160e-6 0;
        0 0 0.5897e-6];
m = 0.022; 

% here we mix a X quadcopter. any other mix is possible by adding or
% removing propdrives.
%
% CW        CCW
% 1         4
%  \ front /
%    \   /
%    /   \
%  /       \
% 2         3
%CCW        CW
mixing = 'X';
propdrives=[    createPropDrive(-0.032,0.032,'CW'),...
                createPropDrive(-0.032,-0.032,'CCW'),...
                createPropDrive(0.032,-0.032,'CW'),...
                createPropDrive(0.032,0.032,'CCW')];

multirotor = struct( 'Roll',pi/2,...
            'Pitch',0,...
            'Yaw',0,...
            'DRoll',0,...
            'DPitch',0,...
            'DYaw',0,...
            'X',0,...
            'Y',0,...
            'Z',0,...
            'VelX',0,...
            'VelY',0,...
            'VelZ',0,...
            'Mass',m,...
            'Inertia',I,...
            'PropDrives',propdrives,...
            'Mixing', mixing);

end