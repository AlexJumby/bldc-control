function y = speed_step_response(w_ref, w0)
N = 200;
y = zeros(1,N);
alpha = 0.12;
y(1) = w0;
for k = 2:N
    y(k) = y(k-1) + alpha*(w_ref - y(k-1));
end
end
