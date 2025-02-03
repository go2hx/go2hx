package stdgo.unicode;
private function set_graphicRanges(v:Array<RangeTable>):Array<RangeTable> {
        stdgo._internal.unicode.Unicode_graphicRanges.graphicRanges = ([for (i in v) (i : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>);
        return v;
    }
