package stdgo._internal.debug.elf;
function r_INFO(_sym:stdgo.GoUInt32, _typ:stdgo.GoUInt32):stdgo.GoUInt64 {
        return (((_sym : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_typ : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
