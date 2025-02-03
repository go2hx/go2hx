package stdgo.debug.dwarf;
private function set_errUnknownPC(v:stdgo.Error):stdgo.Error {
        stdgo._internal.debug.dwarf.Dwarf_errUnknownPC.errUnknownPC = (v : stdgo.Error);
        return v;
    }
