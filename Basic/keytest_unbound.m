function [r,rt]= keytest_unbound

start_time = GetSecs;
KbName('UnifyKeyNames');
while KbCheck; end

while 1
    keyisdown=0;
    while ~keyisdown
        [keyisdown,secs,keycode] = KbCheck;
        WaitSecs(0.0001);
    end
%     response=char(KbName(keycode));
%     r = str2double(response);
%     rt = (secs-start_time)*1000; %Response time in ms
    
    break
end

    