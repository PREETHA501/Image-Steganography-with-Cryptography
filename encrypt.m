function p = encrypt(M,N,e)
    p = powermod(M,e,N);
    