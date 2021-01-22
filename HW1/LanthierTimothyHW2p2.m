clear; clc;
n = 500;
long_seq = (1);
long_seq_length = 1;
long_seq_int = 0;
for m = 1:n
    start_int = m;
    sequence=[m];
    while m ~= 1
        if rem(m,2) == 0
            sequence(end+1) = m/2;
            m = m/2;
        else
            sequence(end+1) = 3*m+1;
            m = 3*m+1;
        end
    end
    if length(sequence) > long_seq_length
        long_seq = sequence;
        long_seq_length = length(sequence);
        long_seq_int = start_int;
    end
end
max_steps = long_seq_length-1
long_seq_int

        
        