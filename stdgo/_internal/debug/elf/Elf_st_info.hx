package stdgo._internal.debug.elf;
function sT_INFO(_bind:stdgo._internal.debug.elf.Elf_symbind.SymBind, _typ:stdgo._internal.debug.elf.Elf_symtype.SymType):stdgo.GoUInt8 {
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3449"
        return (((_bind : stdgo.GoUInt8) << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | ((_typ : stdgo.GoUInt8) & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
    }
