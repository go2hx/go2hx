package stdgo.unicode;
private function set_printRanges(v:Array<RangeTable>):Array<RangeTable> {
        stdgo._internal.unicode.Unicode_printRanges.printRanges = ([for (i in v) (i : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>);
        return v;
    }
