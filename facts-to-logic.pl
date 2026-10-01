% Medical Diagnosis – Asthma

% Asthma is a disease
disease(asthma).

% Wheezing is a symptom
symptom(wheezing).

% Breathing difficulty is a symptom
symptom(breathing_difficulty).

% Every patient with asthma has breathing difficulty
breathing_difficulty(X) :-
    patient(X),
    asthma(X).

% Every patient with wheezing and breathing difficulty may have asthma
asthma(X) :-
    patient(X),
    wheezing(X),
    breathing_difficulty(X).

% Ravi has wheezing
patient(ravi).
wheezing(ravi).