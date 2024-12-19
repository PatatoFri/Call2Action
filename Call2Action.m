%this code listens to your audio and tracks volume levels.
%once dB level is over desired limit it triggers an action of some sort
%currently configured to send a message in world of tanks chat
%why? because it's fun


clc;
clear;
close all;

import java.awt.Robot;
import java.awt.event.*;
robot=java.awt.Robot();

% Parameters
fs = 44100;           % Sampling rate in Hz
nBits = 16;           % Bit depth
nChannels = 1;        % Mono
windowSize = 0.1;     % Length of time window in seconds
numSamples = round(windowSize * fs);  % Number of samples per window

% Create audiorecorder object
recObj = audiorecorder(fs, nBits, nChannels);

% Start recording
disp('Recording started... Press Ctrl+C to stop.');
record(recObj);

% Set up figure for real-time plotting
figure;
h = plot(nan, nan);   % Initialize plot with no data
xlabel('Time (s)');
ylabel('Volume Level (dB)');
title('Real-Time Audio Level');
ylim([-100, 0]);      % Set dB range (adjust if necessary)
xlim([0, 10]);        % 10-second rolling window display
hold on;

% Start real-time audio level monitoring
startTime = tic;
while true
    % Get the latest audio data
    audioData = getaudiodata(recObj);

    % Ensure there’s enough recorded data before processing
    if length(audioData) >= numSamples
        % Extract the most recent segment of audio data
        recentData = audioData(end - numSamples + 1:end);

        % Calculate the RMS value of the recent data segment
        rmsValue = sqrt(mean(recentData.^2));

        % Convert RMS to decibels (dB)
        dBLevel = 20 * log10(rmsValue + eps);  % `+ eps` to avoid log(0)

        % Update plot
        currentTime = toc(startTime);

        % Check if we need to expand the x-axis limit
        if currentTime > 10
            xlim([currentTime - 10, currentTime]);
        end

        % Update the plot with new data point
        set(h, 'YData', [get(h, 'YData'), dBLevel]);  % Update the Y data
        set(h, 'XData', [get(h, 'XData'), currentTime]);  % Update the X data

        drawnow;

        % Pause briefly to allow other processes (adjust if needed)
        pause(0.1);

        if dBLevel > -46.5
            disp('BOOM!')
            robot.keyPress(KeyEvent.VK_ENTER)
            robot.keyRelease(KeyEvent.VK_ENTER)
            input = 'Test test test ytvfrwfdiwhdq';
            disp(input);
            characters = strlength(input);
            disp(characters);
            n = 0;


            while n < characters
                n = n + 1;
                letter = char(input(n));  % Extract the current character as a char
                number = str2double(letter);
                if letter == ' '
                    % Use the space key code for spaces
                    keyCode = KeyEvent.VK_SPACE;
                    robot.keyPress(keyCode);
                    robot.keyRelease(keyCode);
                end
                if letter == 'a' || letter == 'b' || letter == 'c' || letter == 'd' || letter == 'e' || letter == 'f' || letter == 'g' || letter == 'h' || letter == 'i' || letter == 'j' || letter == 'k' || letter == 'l' || letter == 'm' || letter == 'n' || letter == 'o' || letter == 'p' || letter == 'q' || letter == 'r' || letter == 's' || letter == 't' || letter == 'u' || letter == 'v' || letter == 'w' || letter == 'x' || letter == 'y' || letter == 'z'
                    try
                        % Dynamically get the KeyEvent code for the character
                        keyCode = eval(['KeyEvent.VK_' upper(letter)]);
                    catch
                        error('Unsupported character: %s', letter);
                    end
                    robot.keyPress(keyCode);
                    robot.keyRelease(keyCode);
                end
                if letter == 'A' || letter == 'B' || letter == 'C' || letter == 'D' || letter == 'E' || letter == 'F' || letter == 'G' || letter == 'H' || letter == 'I' || letter == 'J' || letter == 'K' || letter == 'L' || letter == 'M' || letter == 'N' || letter == 'O' || letter == 'P' || letter == 'Q' || letter == 'R' || letter == 'S' || letter == 'T' || letter == 'U' || letter == 'V' || letter == 'W' || letter == 'X' || letter == 'Y' || letter == 'Z'
                    try
                        % Dynamically get the KeyEvent code for the character
                        keyCode = eval(['KeyEvent.VK_' upper(letter)]);
                    catch
                        error('Unsupported character: %s', letter);
                    end
                    robot.keyPress(KeyEvent.VK_SHIFT)
                    robot.keyPress(keyCode);
                    robot.keyRelease(keyCode);
                    robot.keyRelease(KeyEvent.VK_SHIFT);
                end
                if isnan(str2double(letter)) == 0
                    try
                        % Dynamically get the KeyEvent code for the character
                        keyCode = eval(['KeyEvent.VK_' upper(letter)]);
                    catch
                        error('Unsupported character: %s', letter);
                    end
                    robot.keyPress(keyCode);
                    robot.keyRelease(keyCode);
                end
                if letter == ',' || letter == ' ' || letter == '!' || letter == '?' || letter == '@' || letter == '#' || letter == '$' || letter == '%' || letter == '^' || letter == '&' || letter == '*' || letter == '(' || letter == ')' || letter == '-' || letter == '_' || letter == '+' || letter == '=' || letter == '[' || letter == ']' || letter == '{' || letter == '}' || letter == '\' || letter == '|' || letter == ';' || letter == ':' || letter == '"' || letter == '\' || letter == '<' || letter == '>' || letter == '/' || letter == '~' || letter == '`'

                    if  letter == ' '
                        keyCode = KeyEvent.VK_TAB;
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                    end
                    if letter == ','
                        keyCode = KeyEvent.VK_COMMA;
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                    end
                    if letter == '!'
                        keyCode = KeyEvent.VK_EXCLAMATION_MARK;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '?'
                        keyCode = KeyEvent.VK_SLASH;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '@'
                        keyCode = KeyEvent.VK_2;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '#'
                        keyCode = KeyEvent.VK_3;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '$'
                        keyCode = KeyEvent.VK_4;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '%'
                        keyCode = KeyEvent.VK_5;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '^'
                        keyCode = KeyEvent.VK_6;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '&'
                        keyCode = KeyEvent.VK_7;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '*'
                        keyCode = KeyEvent.VK_8;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '('
                        keyCode = KeyEvent.VK_9;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == ')'
                        keyCode = KeyEvent.VK_0;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '-'
                        keyCode = KeyEvent.VK_MINUS;
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                    end
                    if letter == '_'
                        keyCode = KeyEvent.VK_MINUS;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '+'
                        keyCode = KeyEvent.VK_EQUALS;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '='
                        keyCode = KeyEvent.VK_EQUALS;
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                    end
                    if letter == '['
                        keyCode = KeyEvent.VK_OPEN_BRACKET;
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                    end
                    if letter == ']'
                        keyCode = KeyEvent.VK_CLOSE_BRACKET;
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                    end
                    if letter == '{'
                        keyCode = KeyEvent.VK_OPEN_BRACKET;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '}'
                        keyCode = KeyEvent.VK_CLOSE_BRACKET;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '\'
                        keyCode = KeyEvent.VK_BACK_SLASH;
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                    end
                    if letter == '|'
                        keyCode = KeyEvent.VK_BACK_SLASH;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == ';'
                        keyCode = KeyEvent.VK_SEMICOLON;
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                    end
                    if letter == ':'
                        keyCode = KeyEvent.VK_SEMICOLON;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '"'
                        keyCode = KeyEvent.VK_QUOTE;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '\'
                        keyCode = KeyEvent.VK_QUOTE;
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                    end
                    if letter == '<'
                        keyCode = KeyEvent.VK_COMMA;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '>'
                        keyCode = KeyEvent.VK_PERIOD;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '/'
                        keyCode = KeyEvent.VK_SLASH;
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                    end
                    if letter == '~'
                        keyCode = KeyEvent.VK_BACK_QUOTE;
                        robot.keyPress(KeyEvent.VK_SHIFT);
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                        robot.keyRelease(KeyEvent.VK_SHIFT);
                    end
                    if letter == '`'
                        keyCode = KeyEvent.VK_BACK_QUOTE;
                        robot.keyPress(keyCode);
                        robot.keyRelease(keyCode);
                    end
                end
                % Display the character being typed
                disp(['Typing: ', letter]);
            end
            robot.keyPress(KeyEvent.VK_TAB)
            robot.keyRelease(KeyEvent.VK_TAB)
            robot.delay(200)
            robot.keyPress(KeyEvent.VK_ENTER)
            robot.keyRelease(KeyEvent.VK_ENTER)
        end
    end

end


