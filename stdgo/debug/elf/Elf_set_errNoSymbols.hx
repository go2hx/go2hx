package stdgo.debug.elf;
private function set_errNoSymbols(v:stdgo.Error):stdgo.Error {
        stdgo._internal.debug.elf.Elf_errNoSymbols.errNoSymbols = (v : stdgo.Error);
        return v;
    }
