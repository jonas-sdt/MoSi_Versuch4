% Teflonräder
J_Rx = 1016e-5;         % Massenträgheitmoment je Rad Teflon
J = 164*10^-7 + 1.057*10^-6 + 2.333*10^-7 + 6.132*10^-6 + 4*1.016*10^-5;   % [kg*m^2] Trägheitsmoment 
m_Rx = 0.0298;          % Masse je Rad Teflon
mu = 0.1;   % Reibungskoeffizient Teflon

% Stahlräder
%J_Rx = 4094e-5;       % Massenträgheitmoment je Rad Stahl
%J = 164*10^-7 + 1.057*10^-6 + 2.333*10^-7 + 6.132*10^-6 + 4*4.094*10^-5;   % [kg*m^2] Trägheitsmoment
%m_Rx =  0.13825       % Masse je Rad Stahl 
%mu = 0.3;   % Reibungskoeffizient Teflon

L_A = 0.11*10^-3;  % [H] Ankerinduktivität
R_A = 0.36;    % [Ohm] Ankerwiderstand
C_Phi = 42.43; % [m*Nm/A] Maschinenkonstante    C_Phi = k_M
k_M = C_Phi;
KL_R_VH = [10 20 30 40; 0.57 0.2905 0.255 0.207];    % Kennlinie R_VH
c_w = 0.81;             % Luftwiderstandbeiwert Gehäuse und Batterie
A = 115.5e-4;           % [m²] Querschnittsfläche
phi_luft = 1.2;         % Luftdichte
m_w = 1.604 ;         % Masse (ohne Räder)
m_ges  = m_w + 4 * m_Rx;    % GesamtMasse

J_EM = 164e-7;          % Massenträgheitmoment E-Maschine
J_KR = 1057e-6;         % Massenträgheitmoment Kegelradgetriebe
J_W = 2333e-7;          % Massenträgheitsmoment Antriebswelle
J_ZR = 6132e-6;         % Massenträgheitsmoment Antriebsrad
r_Zr = 0.021;           % wirksamer Radius Antriebsrad
r_Rx = 0.025;           % Radius je Rad Teflon & Stahl
r_ZR = 0.021;           % wirksamer Radius Antriebsrad
m_trans = m_w + 4 * m_Rx;
m_Ersatz_Antr = (J_EM + 2*J_KR+J_W + J_ZR)/(r_Zr^2);
m_Ersatz_Rad = (4 * J_Rx)/(r_Rx^2);
Erdbeschleunigung = 9.81;   %Erdbeschleunigung
k = (m_trans + m_Ersatz_Antr + m_Ersatz_Rad)./m_trans;
    



