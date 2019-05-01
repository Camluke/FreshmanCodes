function nd = days(mo, da, leap)
Jan=31;
Feb =28;
if leap == 1
    Feb =29;
end
if mo==1
    nd=da;
elseif mo==2
    
    