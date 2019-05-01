function nd = days(mo, da, lep)
d31=31;
Feb =28;
d30=30;
if lep==1
    Feb =29;

end
d8=Feb+4*d31+2*d30;
if mo==1
    nd=da;
elseif mo<8 && mo>1
    if mo==3||mo==5||mo==7
        m2=(mo-1)/2;
        nd=da+m2*d31+(m2-1)*d30+Feb;
    else 
        m3=mo/2;
        nd=da+m3*d31+(m3-2)*d30+Feb;
    end
else 
    if mo==8||mo==10||mo==12
       md2=(mo-8)/2;
       nd=da+d8+md2*d31+md2*d30;
    else
        md3=(mo-7)/2;
        nd=da+d8+md3*d31+(md3-1)*d30;
    end
end
fprintf('There are %4.f days.',nd)