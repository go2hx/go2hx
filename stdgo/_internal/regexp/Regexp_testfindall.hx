package stdgo._internal.regexp;
function testFindAll(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L241"
        for (__0 => _test in stdgo._internal.regexp.Regexp__findtests._findTests) {
            var _result = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_test._pat?.__copy__()).findAll((_test._text : stdgo.Slice<stdgo.GoUInt8>), (-1 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L243"
            if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L247"
                _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L249"
                _t.fatalf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L251"
                if ((_test._matches.length) != ((_result.length))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L252"
                    _t.errorf(("expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_test._matches.length)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L253"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L255"
                for (_k => _e in _test._matches) {
                    var _got = _result[(_k : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L257"
                    if ((_got.length) != (_got.capacity)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L258"
                        _t.errorf(("match %d: expected capacity %d got %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_got.length)), stdgo.Go.toInterface(_got.capacity), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    };
                    var _expect = ((_test._text.__slice__(_e[(0 : stdgo.GoInt)], _e[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L261"
                    if (_expect != ((_got : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L262"
                        _t.errorf(("match %d: expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    };
                };
            };
        };
    }
