function [motionMask] = simpleFrameDifferencing(currentFrame, previousFrame, threshold )
% Simple Frame Differencing will use the immediately preceding frame as reference
% and calculate the difference between the current frame and that reference
% to identify motion
%   if the difference in pixel intensities is greater than the threshold,
%   the motion mask should output 1 in that location, otherwise 0.
arguments (Input)
    currentFrame
    previousFrame
    threshold
end

arguments (Output)
    motionMask
end

difference = abs(currentFrame - previousFrame);

motionMask = difference>threshold;

end