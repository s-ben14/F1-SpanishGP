lap = 1:10;

hamilton = [82.1 81.5 81.2 80.9 80.8 80.6 80.7 80.9 81.1 81.4];
russell = [82.3 81.8 81.4 81.0 80.9 80.8 80.9 81.0 81.2 81.5];
norris = [82.5 82.0 81.7 81.4 81.2 81.1 81.1 81.2 81.4 81.7];
verstappen = [82.4 81.9 81.5 81.1 81.0 80.9 81.0 81.1 81.3 81.6];
piastri = [82.6 82.1 81.8 81.5 81.3 81.2 81.3 81.4 81.6 81.8];

plot(lap, hamilton)
hold on

plot(lap, russell)
plot(lap, norris)
plot(lap, verstappen)
plot(lap, piastri)
xlabel('Lap Number')
ylabel('Lap Time (Seconds)')
title('Barcelona GP Lap Time Comparison')

legend('Hamilton','Russell','Norris','Verstappen','Piastri')

grid on

Driver = [
    "Lewis Hamilton"
    "George Russell"
    "Lando Norris"
    "Max Verstappen"
    "Oscar Piastri"
    "Isack Hadjar"
    "Pierre Gasly"
    "Liam Lawson"
    "Arvid Lindblad"
    "Franco Colapinto"
    "Gabriel Bortoleto"
    "Carlos Sainz"
    "Esteban Ocon"
    "Sergio Perez"
    "Charles Leclerc"
    "Kimi Antonelli"
    "Oliver Bearman"
    "Alexander Albon"
    "Fernando Alonso"
    "Nico Hulkenberg"
    "Valtteri Bottas"
    "Lance Stroll"
];

Team = [
    "Ferrari"
    "Mercedes"
    "McLaren"
    "Red Bull Racing"
    "McLaren"
    "Red Bull Racing"
    "Alpine"
    "Racing Bulls"
    "Racing Bulls"
    "Alpine"
    "Audi"
    "Williams"
    "Haas"
    "Cadillac"
    "Ferrari"
    "Mercedes"
    "Haas"
    "Williams"
    "Aston Martin"
    "Audi"
    "Cadillac"
    "Aston Martin"
];

Status = [
    "P1"
    "P2"
    "P3"
    "P4"
    "P5"
    "P6"
    "P7"
    "P8"
    "P9"
    "P10"
    "P11"
    "P12"
    "P13"
    "P14"
    "DNF"
    "DNF"
    "DNF"
    "NC"
    "DNF"
    "DNF"
    "DNF"
    "DNF"
];

LapsCompleted = [
    66
    66
    66
    66
    66
    65
    65
    65
    65
    65
    64
    64
    64
    63
    62
    61
    60
    55
    37
    29
    15
    5
];

RaceTable = table(Driver, Team, Status, LapsCompleted);

clc

fprintf('=========================================\n');
fprintf('2026 SPANISH GRAND PRIX ANALYSIS\n');
fprintf('Circuit de Barcelona-Catalunya\n');
fprintf('=========================================\n\n');

disp(RaceTable)
figure

bar(LapsCompleted)

title('2026 Spanish GP Classification')
ylabel('Laps Completed')
xlabel('Driver')

set(gca,'XTick',1:length(Driver))
set(gca,'XTickLabel',Driver)

xtickangle(45)

grid on