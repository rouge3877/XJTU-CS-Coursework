int func4(int rdi, int rsi, int rdx){
    int ret = rdx - rsi;
    int cx = (ret >> 31 + ret) >> 1 + rsi; 

    if(cx > rdi){
        rdx = cx - 1;
        ret = func4();
        ret *= 2;
        return ret;
    }else if (cx < rdi){
            ret = 0;
            rsi = cx + 1;
            ret = func4();
            ret = 2*ret + 1;
            return ret;
    }else{
        return 0;
    }

}