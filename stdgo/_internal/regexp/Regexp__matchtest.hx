package stdgo._internal.regexp;
function _matchTest(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _test:stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>):Void {
        var _re = stdgo._internal.regexp.Regexp__compiletest._compileTest(_t, (@:checkr _test ?? throw "null pointer dereference")._pat?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L82"
        if (({
            final value = _re;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L83"
            return;
        };
        var _m = (_re.matchString((@:checkr _test ?? throw "null pointer dereference")._text?.__copy__()) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L86"
        if (_m != ((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L87"
            _t.errorf(("MatchString failure on %s: %t should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
        _m = _re.match(((@:checkr _test ?? throw "null pointer dereference")._text : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L91"
        if (_m != ((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L92"
            _t.errorf(("Match failure on %s: %t should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
    }
