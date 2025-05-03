package stdgo._internal.debug.elf;
function r_SYM64(_info:stdgo.GoUInt64):stdgo.GoUInt32 {
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3532"
        return ((_info >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
