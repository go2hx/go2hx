package stdgo._internal.regexp;
function _matchTest(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _test:stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>):Void {
        var _re = stdgo._internal.regexp.Regexp__compileTest._compileTest(_t, _test._pat?.__copy__(), stdgo.Go.str()?.__copy__());
        if ((_re == null || (_re : Dynamic).__nil__)) {
            return;
        };
        var _m = (_re.matchString(_test._text?.__copy__()) : Bool);
        if (_m != (((_test._matches.length) > (0 : stdgo.GoInt) : Bool))) {
            _t.errorf(("MatchString failure on %s: %t should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(((_test._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
        _m = _re.match((_test._text : stdgo.Slice<stdgo.GoUInt8>));
        if (_m != (((_test._matches.length) > (0 : stdgo.GoInt) : Bool))) {
            _t.errorf(("Match failure on %s: %t should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(((_test._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
    }
