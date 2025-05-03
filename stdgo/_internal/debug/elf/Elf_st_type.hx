package stdgo._internal.debug.elf;
function sT_TYPE(_info:stdgo.GoUInt8):stdgo._internal.debug.elf.Elf_symtype.SymType {
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/elf.go#L3447"
        return ((_info & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_symtype.SymType);
    }
