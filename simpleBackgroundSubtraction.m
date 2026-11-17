function [motionMask] = simpleBackgroundSubtraction(currentFrame, backgroundFrame, threshold )
% Simple Background Subtraction will use a background frame as reference
% and calculate the difference between the current frame and that reference
% to identify motion
%   if the difference in pixel intensities is greater than the threshold,
%   the motion mask should output 1 in that location, otherwise 0.
arguments (Input)
    currentFrame
    backgroundFrame
    threshold
end

arguments (Output)
    motionMask
end

difference = abs(currentFrame - backgroundFrame);

motionMask = difference>threshold;

end