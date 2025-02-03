package stdgo.unicode;
private function set_diacritic(v:RangeTable):RangeTable {
        stdgo._internal.unicode.Unicode_diacritic.diacritic = (v : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>);
        return v;
    }
