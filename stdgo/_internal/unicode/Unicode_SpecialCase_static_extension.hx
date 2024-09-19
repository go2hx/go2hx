package stdgo._internal.unicode;
@:keep @:allow(stdgo._internal.unicode.Unicode.SpecialCase_asInterface) class SpecialCase_static_extension {
    @:keep
    static public function toLower( _special:stdgo._internal.unicode.Unicode_SpecialCase.SpecialCase, _r:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _special:stdgo._internal.unicode.Unicode_SpecialCase.SpecialCase = _special;
        var __tmp__ = stdgo._internal.unicode.Unicode__to._to((1 : stdgo.GoInt), _r, (_special : stdgo.Slice<stdgo._internal.unicode.Unicode_CaseRange.CaseRange>)), _r1:stdgo.GoInt32 = __tmp__._0, _hadMapping:Bool = __tmp__._1;
        if (((_r1 == _r) && !_hadMapping : Bool)) {
            _r1 = stdgo._internal.unicode.Unicode_toLower.toLower(_r);
        };
        return _r1;
    }
    @:keep
    static public function toTitle( _special:stdgo._internal.unicode.Unicode_SpecialCase.SpecialCase, _r:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _special:stdgo._internal.unicode.Unicode_SpecialCase.SpecialCase = _special;
        var __tmp__ = stdgo._internal.unicode.Unicode__to._to((2 : stdgo.GoInt), _r, (_special : stdgo.Slice<stdgo._internal.unicode.Unicode_CaseRange.CaseRange>)), _r1:stdgo.GoInt32 = __tmp__._0, _hadMapping:Bool = __tmp__._1;
        if (((_r1 == _r) && !_hadMapping : Bool)) {
            _r1 = stdgo._internal.unicode.Unicode_toTitle.toTitle(_r);
        };
        return _r1;
    }
    @:keep
    static public function toUpper( _special:stdgo._internal.unicode.Unicode_SpecialCase.SpecialCase, _r:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _special:stdgo._internal.unicode.Unicode_SpecialCase.SpecialCase = _special;
        var __tmp__ = stdgo._internal.unicode.Unicode__to._to((0 : stdgo.GoInt), _r, (_special : stdgo.Slice<stdgo._internal.unicode.Unicode_CaseRange.CaseRange>)), _r1:stdgo.GoInt32 = __tmp__._0, _hadMapping:Bool = __tmp__._1;
        if (((_r1 == _r) && !_hadMapping : Bool)) {
            _r1 = stdgo._internal.unicode.Unicode_toUpper.toUpper(_r);
        };
        return _r1;
    }
}
