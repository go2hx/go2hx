package stdgo._internal.regexp;
function _testSubmatchString(_test:stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L371"
        if ((_submatches.length) != (((_result.length) * (2 : stdgo.GoInt) : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L372"
            _t.errorf(("match %d: expected %d submatches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(((_submatches.length) / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L373"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L375"
        {
            var _k = (0 : stdgo.GoInt);
            while ((_k < (_submatches.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L376"
                if (_submatches[(_k : stdgo.GoInt)] == ((-1 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L377"
                    if (_result[(_k / (2 : stdgo.GoInt) : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L378"
                        _t.errorf(("match %d: expected nil got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L380"
                    {
                        _k = (_k + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                        continue;
                    };
                };
var _expect = (((@:checkr _test ?? throw "null pointer dereference")._text.__slice__(_submatches[(_k : stdgo.GoInt)], _submatches[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString).__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L383"
                if (_expect != (_result[((_k / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L384"
                    _t.errorf(("match %d: expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L385"
                    return;
                };
                _k = (_k + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
    }
