function [accel,gyro,mag] = readSensorDataMPU9250(imu)
% This function reads the imu sensor created using mpu9250 system object data from the 9 DOF sensor

[accel,gyro,mag] = read(imu);

% Align coordinates in accordance with NED convention
accel = [accel(:,1), accel(:,2), accel(:,3)];
mag = [mag(:,2), mag(:, 1), -mag(:,3)];
end

