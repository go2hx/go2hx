package stdgo._internal.regexp;
function _copyMatchTest(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _test:stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>):Void {
        var _re = stdgo._internal.regexp.Regexp__compiletest._compileTest(_t, (@:checkr _test ?? throw "null pointer dereference")._pat?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        if ((_re == null || (_re : Dynamic).__nil__)) {
            return;
        };
        var _m1 = (@:check2r _re.matchString((@:checkr _test ?? throw "null pointer dereference")._text?.__copy__()) : Bool);
        var _m2 = (@:check2r @:check2r _re.copy().matchString((@:checkr _test ?? throw "null pointer dereference")._text?.__copy__()) : Bool);
        if (_m1 != (_m2)) {
            @:check2r _t.errorf(("Copied Regexp match failure on %s: original gave %t; copy gave %t; should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m1), stdgo.Go.toInterface(_m2), stdgo.Go.toInterface((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
    }
