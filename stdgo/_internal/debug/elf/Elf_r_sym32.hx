package stdgo._internal.debug.elf;
function r_SYM32(_info:stdgo.GoUInt32):stdgo.GoUInt32 {
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3430"
        return (_info >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
