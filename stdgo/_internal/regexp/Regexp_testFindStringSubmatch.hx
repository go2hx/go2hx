package stdgo._internal.regexp;
function testFindStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__findTests._findTests) {
            var _result = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_test._pat?.__copy__()).findStringSubmatch(_test._text?.__copy__());
            if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                stdgo._internal.regexp.Regexp__testSubmatchString._testSubmatchString((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>), (0 : stdgo.GoInt), _test._matches[(0 : stdgo.GoInt)], _result, _t);
            };
        };
    }
