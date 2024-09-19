package stdgo._internal.regexp;
function _testFindSubmatchIndex(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
            _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result == null) : Bool)) {
            _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result != null) : Bool)) {
            stdgo._internal.regexp.Regexp__testSubmatchIndices._testSubmatchIndices(_test, (0 : stdgo.GoInt), _test._matches[(0 : stdgo.GoInt)], _result, _t);
        };
    }
