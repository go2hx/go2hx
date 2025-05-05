package stdgo._internal.regexp;
function benchmarkOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L793"
        _b.stopTimer();
        var _x = ((("abcddddddeeeededd" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("^.bc(?:d|e)*$" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L796"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L797"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L798"
                _re.match(_x);
                _i++;
            };
        };
    }
