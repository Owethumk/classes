s = tf('s'); 
G =  (s^2+10)/(8*s^4+210*s^2+900); % First transfer function 
D1 =  ((s^2+4.567^2)/((s+2)^2)); %First section of notch filter 
D2 =  ((s^2+2.323^2)/((s+1.1)^2));%second section of notch filer 
D = D1*D2;
sys =  feedback(G,D,-1); %putting notch filter and foret transfer function into negatove feedback
G2 = (s^2-10)/(8*s^4-30*s^2-100);% second transfer function

%% root loci plots
rlocus(G)
rlocus(G2)

