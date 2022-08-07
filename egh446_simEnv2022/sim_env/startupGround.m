close_system('sl_groundvehicleDynamics',0);
 
homedir = pwd; 

addpath( genpath(strcat(homedir,[filesep,'toolboxes'])));



cd('toolboxes/MRTB');
startMobileRoboticsSimulationToolbox;

cd(homedir);

open_system('sl_groundvehicleDynamics'); %differential robot

cd(homedir);





