function pr= prime(M,N)
pr=[];
    if N<M
        error('Maximum is less than minimum');
    elseif M<0
        error('Minimum is less than zero');
    else
        for f=M:N
            
            for i=2:N
                
                r=rem(f,i);
                if r==0
                    break
                elseif r==1
                    r3=rem(f,3);
                    r5=rem(f,5);
                    r7=rem(f,7);
                    r11=rem(f,11);
                    r13=rem(f,13);
                    if r3==0||r5==0||r7==0||r11==0||r13==0
                        break
                    else
                        pr=[pr,f]; %#ok<AGROW>
                        break
                    end
                else
               
                end
                
            end
        end
    end
end
                    
                    