package stdgo._internal.regexp;
function _testFindIndex(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L205"
        if ((((@:checkr _test ?? throw "null pointer dereference")._matches.length == (0 : stdgo.GoInt)) && (_result.length == (0 : stdgo.GoInt)) : Bool)) {} else if ((((@:checkr _test ?? throw "null pointer dereference")._matches == null) && (_result != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L209"
            _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if ((((@:checkr _test ?? throw "null pointer dereference")._matches != null) && (_result == null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L211"
            _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
        } else if ((((@:checkr _test ?? throw "null pointer dereference")._matches != null) && (_result != null) : Bool)) {
            var _expect = (@:checkr _test ?? throw "null pointer dereference")._matches[(0 : stdgo.GoInt)];
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L214"
            if (((_expect[(0 : stdgo.GoInt)] != _result[(0 : stdgo.GoInt)]) || (_expect[(1 : stdgo.GoInt)] != _result[(1 : stdgo.GoInt)]) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L215"
                _t.errorf(("expected %v got %v: %s" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            };
        };
    }
