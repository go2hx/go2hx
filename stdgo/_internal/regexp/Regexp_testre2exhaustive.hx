package stdgo._internal.regexp;
function testRE2Exhaustive(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec2_test.go#L16"
        if (stdgo._internal.testing.Testing_short.short()) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/exec2_test.go#L17"
            _t.skip(stdgo.Go.toInterface(("skipping TestRE2Exhaustive during short test" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/exec2_test.go#L19"
        stdgo._internal.regexp.Regexp__testre2._testRE2(_t, ("testdata/re2-exhaustive.txt.bz2" : stdgo.GoString));
    }
