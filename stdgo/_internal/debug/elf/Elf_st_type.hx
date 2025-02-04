package stdgo._internal.debug.elf;
function sT_TYPE(_info:stdgo.GoUInt8):stdgo._internal.debug.elf.Elf_symtype.SymType {
        return ((_info & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_symtype.SymType);
    }
