package stdgo._internal.regexp;
function _testFindAllIndex(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L295"
        if ((((@:checkr _test ?? throw "null pointer dereference")._matches == null) && (_result == null) : Bool)) {} else if ((((@:checkr _test ?? throw "null pointer dereference")._matches == null) && (_result != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L299"
            _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if ((((@:checkr _test ?? throw "null pointer dereference")._matches != null) && (_result == null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L301"
            _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if ((((@:checkr _test ?? throw "null pointer dereference")._matches != null) && (_result != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L303"
            if (((@:checkr _test ?? throw "null pointer dereference")._matches.length) != ((_result.length))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L304"
                _t.errorf(("expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _test ?? throw "null pointer dereference")._matches.length)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L305"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L307"
            for (_k => _e in (@:checkr _test ?? throw "null pointer dereference")._matches) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L308"
                if (((_e[(0 : stdgo.GoInt)] != _result[(_k : stdgo.GoInt)][(0 : stdgo.GoInt)]) || (_e[(1 : stdgo.GoInt)] != _result[(_k : stdgo.GoInt)][(1 : stdgo.GoInt)]) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L309"
                    _t.errorf(("match %d: expected %v got %v: %s" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(_result[(_k : stdgo.GoInt)]), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
            };
        };
    }
