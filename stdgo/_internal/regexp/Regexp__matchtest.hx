package stdgo._internal.regexp;
function _matchTest(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _test:stdgo.Ref<stdgo._internal.regexp.Regexp_findtest.FindTest>):Void {
        var _re = stdgo._internal.regexp.Regexp__compiletest._compileTest(_t, (@:checkr _test ?? throw "null pointer dereference")._pat?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        if ((_re == null || (_re : Dynamic).__nil__)) {
            return;
        };
        var _m = (@:check2r _re.matchString((@:checkr _test ?? throw "null pointer dereference")._text?.__copy__()) : Bool);
        if (_m != ((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool))) {
            @:check2r _t.errorf(("MatchString failure on %s: %t should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
        _m = @:check2r _re.match(((@:checkr _test ?? throw "null pointer dereference")._text : stdgo.Slice<stdgo.GoUInt8>));
        if (_m != ((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool))) {
            @:check2r _t.errorf(("Match failure on %s: %t should be %t" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_m), stdgo.Go.toInterface((((@:checkr _test ?? throw "null pointer dereference")._matches.length) > (0 : stdgo.GoInt) : Bool)));
        };
    }
