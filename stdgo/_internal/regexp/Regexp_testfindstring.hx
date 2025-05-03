package stdgo._internal.regexp;
function testFindString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L183"
        for (__0 => _test in stdgo._internal.regexp.Regexp__findtests._findTests) {
            var _result = (stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_test._pat?.__copy__()).findString(_test._text?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L185"
            if (((_test._matches.length == (0 : stdgo.GoInt)) && (_result.length == (0 : stdgo.GoInt)) : Bool)) {} else if (((_test._matches == null) && (_result != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L189"
                _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L192"
                if (_test._matches[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] != (_test._matches[(0 : stdgo.GoInt)][((1 : stdgo.GoInt) : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L193"
                    _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
            } else if (((_test._matches != null) && (_result != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                var _expect = ((_test._text.__slice__(_test._matches[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)], _test._matches[(0 : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L197"
                if (_expect != (_result)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L198"
                    _t.errorf(("expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
            };
        };
    }
