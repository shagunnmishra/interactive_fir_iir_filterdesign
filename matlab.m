%% INETRACTIVE FIR/IIR FILTER DESIGN
% this program generates a noisy sinusoidal signal
% allows user to choose between FIR and IIR filter design
% it then filters the signal and plots:
% 1) noisy signal
% 2) filtered output
% 3) frequency response of the filter

%% signal parameters

fs = 1000;                     % Sampling frequency(Hz)
t = 0:1/fs:1;                  
signal = sin(2*pi*50*t);       % Original signal(50 Hz sine wave)
noisy_signal = signal + 0.5*randn(size(t));

%% user input section
disp('Choose Filter Type:')
disp('1. FIR Filter')
disp('2. IIR Filter')
choice = input('Enter 1 or 2: ');

% filter specifications

order = input('Enter filter order: ');
cutoff_freq = input('Enter cutoff frequency (Hz): ');

Wn = cutoff_freq/(fs/2);   % Normalized cutoff frequency
%% filter design section

if choice == 1

    % FIR filter design

    b = ones(1,order+1)/(order+1); % numerator coefficients
    a = 1;                        % FIR filter denominator
    filter_name = 'FIR Filter';
elseif choice == 2

    % IIR filter design
    alpha = Wn;
    b = [alpha];
    a = [1 alpha-1];
    filter_name = 'IIR Butterworth Filter';
else
    error('Invalid choice');
end

% filtering operation
filtered_output = filter(b,a,noisy_signal);

%% Plot Results
figure;

% plot 1: Noisy signal
subplot(3,1,1)
plot(t,noisy_signal)
title('Noisy Signal')
xlabel('Time')
ylabel('Amplitude')
grid on

% plot 2: Filtered output
subplot(3,1,2)
plot(t,filtered_output)
title(['Filtered Output - ' filter_name])
xlabel('Time')
ylabel('Amplitude')
grid on

% plot 3: frequency response
subplot(3,1,3)
N = 1024;
H = fft(b,N);
f = (0:N-1)*(fs/N);

plot(f, abs(H))
xlim([0 fs/2])
xlabel('frequency (HZ)')
ylabel('magnitude')
title('Frequency Response')
grid on
%% end of the program
% compare how FIR  and IIR behave differently
% - FIR: linear phase, more stable, usually higher order needed
% - IIR: efficient(lower order), but may have nonlinear phase
