package stdgo._internal.regexp;
function _matchFunctionTest(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _test:stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>):Void {
        var __tmp__ = stdgo._internal.regexp.Regexp_matchstring.matchString((@:checkr _test ?? throw "null pointer dereference")._pat?.__copy__(), (@:checkr _test ?? throw "null pointer dereference")._text?.__copy__()), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L104"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L105"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L107"
        if (_m != ((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L108"
            _t.errorf(("Match failure on %s: %t should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
    }
