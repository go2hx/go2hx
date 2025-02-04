package stdgo._internal.debug.elf;
function sT_VISIBILITY(_other:stdgo.GoUInt8):stdgo._internal.debug.elf.Elf_symvis.SymVis {
        return ((_other & (3 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo._internal.debug.elf.Elf_symvis.SymVis);
    }
