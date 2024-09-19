package stdgo._internal.debug.elf;
function st_TYPE(_info:stdgo.GoUInt8):stdgo._internal.debug.elf.Elf_SymType.SymType {
        return ((_info & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_SymType.SymType);
    }
