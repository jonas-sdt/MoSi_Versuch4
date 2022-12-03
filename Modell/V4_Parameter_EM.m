 L_A = 0.11*10^-3;  % [H] Ankerinduktivität
 R_A = 0.36;    % [Ohm] Ankerwiderstand
 C_Phi = 42.43; % [mNm/A] Maschinenkonstante    C_Phi = k_M

 % Teflonräder
 J = 164*10^-7 + 1.057*10^-6 + 2.333*10^-7 + 6.132*10^-6 + 4*1.016*10^-5;   % [kg*m^2] Trägheitsmoment 
 % Stahlräder
 %J = 164*10^-7 + 1.057*10^-6 + 2.333*10^-7 + 6.132*10^-6 + 4*4.094*10^-5;   % [kg*m^2] Trägheitsmoment


 KL_R_VH = [10 20 30 40; 0.57 0.2905 0.255 0.207];    % Kennlinie R_VH