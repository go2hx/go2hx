package stdgo.unicode;
private function set_braille(v:RangeTable):RangeTable {
        stdgo._internal.unicode.Unicode_braille.braille = (v : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>);
        return v;
    }
