package stdgo._internal.regexp;
function _testFindAllSubmatchIndex(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L492"
        if ((((@:checkr _test ?? throw "null pointer dereference")._matches == null) && (_result == null) : Bool)) {} else if ((((@:checkr _test ?? throw "null pointer dereference")._matches == null) && (_result != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L496"
            _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if ((((@:checkr _test ?? throw "null pointer dereference")._matches != null) && (_result == null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L498"
            _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if (((@:checkr _test ?? throw "null pointer dereference")._matches.length) != ((_result.length))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L500"
            _t.errorf(("expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _test ?? throw "null pointer dereference")._matches.length)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if ((((@:checkr _test ?? throw "null pointer dereference")._matches != null) && (_result != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L502"
            for (_k => _match in (@:checkr _test ?? throw "null pointer dereference")._matches) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L503"
                stdgo._internal.regexp.Regexp__testsubmatchindices._testSubmatchIndices(_test, _k, _match, _result[(_k : stdgo.GoInt)], _t);
            };
        };
    }
