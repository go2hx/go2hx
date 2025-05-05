package stdgo._internal.debug.elf;
function r_TYPE32(_info:stdgo.GoUInt32):stdgo.GoUInt32 {
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3431"
        return (_info & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
