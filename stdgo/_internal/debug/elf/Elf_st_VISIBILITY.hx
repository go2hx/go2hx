package stdgo._internal.debug.elf;
function st_VISIBILITY(_other:stdgo.GoUInt8):stdgo._internal.debug.elf.Elf_SymVis.SymVis {
        return ((_other & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_SymVis.SymVis);
    }
