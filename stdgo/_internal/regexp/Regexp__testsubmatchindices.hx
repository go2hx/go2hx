package stdgo._internal.regexp;
function _testSubmatchIndices(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>, _n:stdgo.GoInt, _expect:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L407"
        if ((_expect.length) != ((_result.length))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L408"
            _t.errorf(("match %d: expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(((_expect.length) / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(((_result.length) / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L409"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L411"
        for (_k => _e in _expect) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L412"
            if (_e != (_result[(_k : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L413"
                _t.errorf(("match %d: submatch error: expected %v got %v: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            };
        };
    }
