%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameter Wagen Teflon %
%%%%%%%%%%%%%%%%%%%%%%%%%%

% Parameter GSM
    k_M = -42.43e-3;             % [Nm/A] Maschinenkonstante

% Parameter Räder
    J_Rx = 1.016e-5;             % [kg*m²] Massenträgheitmoment je Rad Teflon (war fehlerhaft)
    m_Rx = 0.0298;              % [kg] Masse je Rad Teflon
    r_Rx = 0.025;               % [m] Radius je Rad Teflon & Stahl
    mu = 0.05;                   % [1] Reibungskoeffizient Teflon
    m_Ersatz_Rad = (4 * J_Rx)/(r_Rx^2); % [kg] Masse Ersatzrad

% Mechanische Parameter Fahrzeug + GSM
    r_ZR = 0.021;               % [m] wirksamer Radius Antriebsrad
    c_w = 0.81;                 % Luftwiderstandbeiwert Gehäuse und Batterie
    A = 115.5e-4;               % [m²] Querschnittsfläche
    m_w = 1.604 ;               % [kg] Masse (ohne Räder)
    m_ges  = m_w + 4 * m_Rx;    % [kg] Gesamtmasse
    m_trans = m_w + 4 * m_Rx;   % [kg]  translatorisch bewegte Masse
    J_EM = 164e-7;              % [kgm²] Massenträgheitmoment E-Maschine
    J_KR = 1.057e-6;             % [kgm²] Massenträgheitmoment Kegelradgetriebe  (war fehlerhaft)
    J_W = 2.333e-7;              % [kgm²] Massenträgheitsmoment Antriebswelle  (war fehlerhaft)
    J_ZR = 6.132e-6;             % [kgm²] Massenträgheitsmoment Antriebsrad (war fehlerhaft)
    m_Ersatz_Antr = (J_EM + 2*J_KR+J_W + J_ZR)/(r_ZR^2);    % [kg]  Ersatzmasse der Antriebskomponenten (Motor, 
                                                            %       Kegelradgetriebe, Welle, Antriebsrad)
    k = (m_trans + m_Ersatz_Antr + m_Ersatz_Rad)/m_trans;   % Drehmassenfaktor k

% Naturkonstanten
    Erdbeschleunigung = -9.81;   % [m/s²] Erdbeschleunigung
    phi_luft = 1.2;             % [kg/m³]Luftdichte