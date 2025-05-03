package stdgo._internal.debug.elf;
function sT_BIND(_info:stdgo.GoUInt8):stdgo._internal.debug.elf.Elf_symbind.SymBind {
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3446"
        return ((_info >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_symbind.SymBind);
    }
