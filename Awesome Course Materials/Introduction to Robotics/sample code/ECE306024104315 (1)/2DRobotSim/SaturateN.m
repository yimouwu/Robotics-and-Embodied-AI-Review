function out = SaturateN(x, sat)

out = norm(x);

if out > sat
    out = x*sat/out;
else
    out = x;
end