package stdgo._internal.debug.elf;
function _canApplyRelocation(_sym:stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>):Bool {
        return ((_sym.section != (0 : stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex)) && (_sym.section < (65280 : stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex) : Bool) : Bool);
    }
