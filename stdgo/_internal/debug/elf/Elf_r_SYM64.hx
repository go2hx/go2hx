package stdgo._internal.debug.elf;
function r_SYM64(_info:stdgo.GoUInt64):stdgo.GoUInt32 {
        return ((_info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
