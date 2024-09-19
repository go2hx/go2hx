package stdgo._internal.regexp;
function _matchFunctionTest(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _test:stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>):Void {
        var __tmp__ = stdgo._internal.regexp.Regexp_matchString.matchString(_test._pat?.__copy__(), _test._text?.__copy__()), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            return;
        };
        if (_m != (((_test._matches.length) > (0 : stdgo.GoInt) : Bool))) {
            _t.errorf(("Match failure on %s: %t should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(((_test._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
    }
