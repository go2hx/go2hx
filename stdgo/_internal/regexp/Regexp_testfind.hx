package stdgo._internal.regexp;
function testFind(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L157"
        for (__0 => _test in stdgo._internal.regexp.Regexp__findtests._findTests) {
            var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(_test._pat?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L159"
            if ((_re.string() : stdgo.GoString) != (_test._pat)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L160"
                _t.errorf(("String() = `%s`; should be `%s`" : stdgo.GoString), stdgo.Go.toInterface((_re.string() : stdgo.GoString)), stdgo.Go.toInterface(_test._pat));
            };
            var _result = _re.find((_test._text : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L163"
            if (((_test._matches.length == (0 : stdgo.GoInt)) && (_result.length == (0 : stdgo.GoInt)) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L167"
                _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L169"
                _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                var _expect = ((_test._text.__slice__(_test._matches[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)], _test._matches[(0 : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L172"
                if ((_result.length) != (_result.capacity)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L173"
                    _t.errorf(("expected capacity %d got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(_result.capacity), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L175"
                if (_expect != ((_result : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L176"
                    _t.errorf(("expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
            };
        };
    }
