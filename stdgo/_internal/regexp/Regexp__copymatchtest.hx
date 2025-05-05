package stdgo._internal.regexp;
function _copyMatchTest(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _test:stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>):Void {
        var _re = stdgo._internal.regexp.Regexp__compiletest._compileTest(_t, (@:checkr _test ?? throw "null pointer dereference")._pat?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L120"
        if (({
            final value = _re;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L121"
            return;
        };
        var _m1 = (_re.matchString((@:checkr _test ?? throw "null pointer dereference")._text?.__copy__()) : Bool);
        var _m2 = (_re.copy().matchString((@:checkr _test ?? throw "null pointer dereference")._text?.__copy__()) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L125"
        if (_m1 != (_m2)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L126"
            _t.errorf(("Copied Regexp match failure on %s: original gave %t; copy gave %t; should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m1), stdgo.Go.toInterface(_m2), stdgo.Go.toInterface((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
    }
