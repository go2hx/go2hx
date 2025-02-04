package stdgo._internal.regexp;
function testRE2Exhaustive(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            @:check2r _t.skip(stdgo.Go.toInterface(("skipping TestRE2Exhaustive during short test" : stdgo.GoString)));
        };
        stdgo._internal.regexp.Regexp__testre2._testRE2(_t, ("testdata/re2-exhaustive.txt.bz2" : stdgo.GoString));
    }
