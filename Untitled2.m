clear all;
close all;
clc;
stepsize = 0.005;
t = -5:stepsize:5;
length_t = length(t);
mid_point = (length_t + 1) / 2;
x_t = zeros(1, length_t);
h_t = zeros(1, length_t);
y_t = zeros(1, length_t);

% Define x(t) as sin(t)
for i = 1:length_t
    x_t(i) = sin(t(i));
end

% Define h(t) as cos(t)
for i = 1:length_t
    h_t(i) = cos(t(i));
end

%%% Module For Flipping:
for i = 1:length_t
    h_t_flipped(i) = h_t(length_t - i + 1);
end

%%% Module For Delaying And Shifting:
for i = 1:length_t
    delayed_signal = zeros(1, length_t);
    index = 0;
    To = t(i);
    for ii = 1:length_t
        if t(ii) <= To
            index = index + 1;
        else
            break;
        end
    end
    
    if To < 0
        newindex = mid_point - index;
        for ii = 1:length_t
            if ii - newindex > 0
                delayed_signal(ii - newindex) = h_t_flipped(1, ii);
            end
        end
    else 
        newindex = index - mid_point;
        for ii = 1:length_t
            if ii + newindex < length_t
                delayed_signal(ii + newindex) = h_t_flipped(1, ii);
            end
        end
    end
    
    subplot(2, 1, 1), plot(t, x_t);
    hold on;
    plot(t, delayed_signal);
    hold off;
    pause(0.0005);
    
    temp = x_t .* delayed_signal;
    
    %%% Module For Integration:
    y_t(i) = (stepsize / 2) * (temp(1) + temp(end) + 2 * sum(temp(2:end-1)));
    subplot(2, 1, 2), plot(t,y_t);
end