package stdgo.unicode;
private function set_caseRanges(v:Array<CaseRange>):Array<CaseRange> {
        stdgo._internal.unicode.Unicode_caseRanges.caseRanges = ([for (i in v) i] : stdgo.Slice<stdgo._internal.unicode.Unicode_CaseRange.CaseRange>);
        return v;
    }
