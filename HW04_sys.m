function sys = HW04_sys(s, A, a, beta)
    sys = A / (s * (s + a) + beta * A);
end

