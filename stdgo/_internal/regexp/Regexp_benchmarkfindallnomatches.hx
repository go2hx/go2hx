package stdgo._internal.regexp;
function benchmarkFindAllNoMatches(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("a+b+" : stdgo.GoString));
        var _s = ((("acddee" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L605"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L606"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L607"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _all = _re.findAll(_s, (-1 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L609"
                if (_all != null) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L610"
                    _b.fatalf(("FindAll(%q) = %q; want nil" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_all));
                };
                _i++;
            };
        };
    }
