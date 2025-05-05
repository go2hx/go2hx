package stdgo._internal.regexp;
function testFindAllString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L270"
        for (__0 => _test in stdgo._internal.regexp.Regexp__findtests._findTests) {
            var _result = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_test._pat?.__copy__()).findAllString(_test._text?.__copy__(), (-1 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L272"
            if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L276"
                _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L278"
                _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L280"
                if ((_test._matches.length) != ((_result.length))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L281"
                    _t.errorf(("expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_test._matches.length)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L282"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L284"
                for (_k => _e in _test._matches) {
                    var _expect = ((_test._text.__slice__(_e[(0 : stdgo.GoInt)], _e[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L286"
                    if (_expect != (_result[(_k : stdgo.GoInt)])) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L287"
                        _t.errorf(("expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                    };
                };
            };
        };
    }
