%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameterfile für MoSi Versuch 4 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------------------------------------------------------------------%
% Elektrische Parameter GSM

    L_A = 0.11*10^-3;   % [H] Ankerinduktivität
    R_A = 0.36;         % [Ohm] Ankerwiderstand
    k_M = -42.43e-3;   % [Nm/A] Maschinenkonstante
    

%------------------------------------------------------------------------------------------------------------%
% Parameter Räder

    % Teflonräder
    J_Rx = 1.016e-5;             % [kg*m²] Massenträgheitmoment je Rad Teflon
    m_Rx = 0.0298;              % [kg] Masse je Rad Teflon
    mu = 0.05;                   % [1] Reibungskoeffizient Teflon

    % Stahlräder
    % J_Rx = 4.094e-5;             % [kg*m²] Massenträgheitmoment je Rad Stahl
    % m_Rx =  0.13825             % [kg] Masse je Rad Stahl 
    % mu = 0.05;                   % [1] Reibungskoeffizient Stahl

    r_Rx = 0.025;               % [m] Radius je Rad Teflon & Stahl
    m_Ersatz_Rad = (4 * J_Rx)/(r_Rx^2); % [kg] Masse Ersatzrad


%------------------------------------------------------------------------------------------------------------%
% Mechanische Parameter Fahrzeug + GSM

    KL_R_VH = [10 20 30 40; 0.57 0.2905 0.255 0.207];    % [ohm] Kennlinie R_VH
    c_w = 0.81;                 % Luftwiderstandbeiwert Gehäuse und Batterie
    A = 115.5e-4;               % [m²] Querschnittsfläche
    m_w = 1.604 ;               % [kg] Masse (ohne Räder)
    m_ges  = m_w + 4 * m_Rx;    % [kg] Gesamtmasse

    J_EM = 164e-7;          % [kgm²] Massenträgheitmoment E-Maschine
    J_KR = 1.057e-6;         % [kgm²] Massenträgheitmoment Kegelradgetriebe
    J_W = 2.333e-7;          % [kgm²] Massenträgheitsmoment Antriebswelle
    J_ZR = 6.132e-6;         % [kgm²] Massenträgheitsmoment Antriebsrad
    r_ZR = 0.021;           % [m] wirksamer Radius Antriebsrad

    m_trans = m_w + 4 * m_Rx;                               % [kg]  translatorisch bewegte Masse
    m_Ersatz_Antr = (J_EM + 2*J_KR+J_W + J_ZR)/(r_ZR^2);    % [kg]  Ersatzmasse der Antriebskomponenten (Motor, 
                                                            %       Kegelradgetriebe, Welle, Antriebsrad)
                                                            
    k = (m_trans + m_Ersatz_Antr + m_Ersatz_Rad)/m_trans;   % Drehmassenfaktor k
    
    J = J_EM + J_KR + J_W + J_ZR + 4*J_Rx;   % [kg*m^2] Trägheitsmoment 

%------------------------------------------------------------------------------------------------------------%
% Naturkonstanten

    Erdbeschleunigung = 9.81;   % [m/s²] Erdbeschleunigung
    phi_luft = 1.2;             % [kg/m³]Luftdichte