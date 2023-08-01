function [outRect hz win0 rect0 cWhite0 cBlack0 cGrey0 scr0]= OpenStandardScreen 
%OpenStandardScreen creates and opens a psychtoolbox Screen in Ryan's
%standard settings

% using 32 bits, with the Screen being on the wholes primary Screen (if there are
% muiltiple monitors), with a standard CLUT, 16-point Geneva font.

% Outputs include "outRect", the pixel size of the Screen, and hz, the
% refresh rate of the monitor.

%This also defines a color scheme, with the variables cWhite0, cGrey0, and
%cBlack0 being their respective colors.

scrAvail = Screen('Screens');
if length(scrAvail)>1
    scr0 = scrAvail(2);
elseif length(scrAvail)==1
    scr0=scrAvail(1);
end
[win0, outRect] = Screen('OpenWindow',scr0,0,[],32,2);
rect0 = outRect;
clut = [[0:255]' [0:255]' [0:255]'];
oldclut = Screen('LoadCLUT',win0,clut,0);
cWhite0 = 255;
cBlack0 = 0;
cGrey0 = 160;
Screen('TextSize',win0,16');
Screen('TextFont',win0,'Geneva');
hz = Screen('FrameRate', win0);

end

