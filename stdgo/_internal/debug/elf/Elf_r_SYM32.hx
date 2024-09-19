package stdgo._internal.debug.elf;
function r_SYM32(_info:stdgo.GoUInt32):stdgo.GoUInt32 {
        return (_info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
