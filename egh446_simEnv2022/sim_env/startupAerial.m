close_system('sl_quadrotorDynamics',0);
 
homedir = pwd; 


addpath(genpath(strcat(homedir,[filesep,'toolboxes'])));

cd('toolboxes/MRTB');
startMobileRoboticsSimulationToolbox;

cd(homedir);

% cd('toolboxes/aerial_robot'); 
open_system('sl_quadrotorDynamics'); % quadrotor model


cd(homedir);




