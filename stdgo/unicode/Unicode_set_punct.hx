package stdgo.unicode;
private function set_punct(v:RangeTable):RangeTable {
        stdgo._internal.unicode.Unicode_punct.punct = (v : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>);
        return v;
    }
