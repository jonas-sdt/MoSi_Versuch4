%Laden der Daten
[File,Path] = uigetfile('*.mat','MATLAB-Datenfile w�hlen');
if ~isnumeric(File)
    %File �ffnen
    load(fullfile(Path,File))
%     Zeit = Zeit';
%     Amplitude = Amplitude';
    Zeit(end) = round(Zeit(end),3);
end