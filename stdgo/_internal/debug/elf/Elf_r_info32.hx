package stdgo._internal.debug.elf;
function r_INFO32(_sym:stdgo.GoUInt32, _typ:stdgo.GoUInt32):stdgo.GoUInt32 {
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3432"
        return ((_sym << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | _typ : stdgo.GoUInt32);
    }
