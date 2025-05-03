package stdgo._internal.regexp;
function _testFindSubmatchIndex(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L419"
        if ((((@:checkr _test ?? throw "null pointer dereference")._matches == null) && (_result == null) : Bool)) {} else if ((((@:checkr _test ?? throw "null pointer dereference")._matches == null) && (_result != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L423"
            _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if ((((@:checkr _test ?? throw "null pointer dereference")._matches != null) && (_result == null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L425"
            _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if ((((@:checkr _test ?? throw "null pointer dereference")._matches != null) && (_result != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L427"
            stdgo._internal.regexp.Regexp__testsubmatchindices._testSubmatchIndices(_test, (0 : stdgo.GoInt), (@:checkr _test ?? throw "null pointer dereference")._matches[(0 : stdgo.GoInt)], _result, _t);
        };
    }
