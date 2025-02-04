package stdgo._internal.debug.elf;
function sT_BIND(_info:stdgo.GoUInt8):stdgo._internal.debug.elf.Elf_symbind.SymBind {
        return ((_info >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_symbind.SymBind);
    }
