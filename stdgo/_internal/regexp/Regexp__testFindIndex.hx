package stdgo._internal.regexp;
function _testFindIndex(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (((_test._matches.length == (0 : stdgo.GoInt)) && (_result.length == (0 : stdgo.GoInt)) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
            _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result == null) : Bool)) {
            _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((_test._matches != null) && (_result != null) : Bool)) {
            var _expect = _test._matches[(0 : stdgo.GoInt)];
            if (((_expect[(0 : stdgo.GoInt)] != _result[(0 : stdgo.GoInt)]) || (_expect[(1 : stdgo.GoInt)] != _result[(1 : stdgo.GoInt)]) : Bool)) {
                _t.errorf(("expected %v got %v: %s" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            };
        };
    }
