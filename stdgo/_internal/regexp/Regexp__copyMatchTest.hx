package stdgo._internal.regexp;
function _copyMatchTest(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _test:stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>):Void {
        var _re = stdgo._internal.regexp.Regexp__compileTest._compileTest(_t, _test._pat?.__copy__(), stdgo.Go.str()?.__copy__());
        if ((_re == null || (_re : Dynamic).__nil__)) {
            return;
        };
        var _m1 = (_re.matchString(_test._text?.__copy__()) : Bool);
        var _m2 = (_re.copy().matchString(_test._text?.__copy__()) : Bool);
        if (_m1 != (_m2)) {
            _t.errorf(("Copied Regexp match failure on %s: original gave %t; copy gave %t; should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m1), stdgo.Go.toInterface(_m2), stdgo.Go.toInterface(((_test._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
    }
