package stdgo._internal.regexp;
function _testFindAllSubmatchIndex(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
            _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result == null) : Bool)) {
            _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if ((_test._matches.length) != ((_result.length))) {
            _t.errorf(("expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_test._matches.length)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result != null) : Bool)) {
            for (_k => _match in _test._matches) {
                stdgo._internal.regexp.Regexp__testSubmatchIndices._testSubmatchIndices(_test, _k, _match, _result[(_k : stdgo.GoInt)], _t);
            };
        };
    }