package stdgo._internal.regexp;
function benchmarkOnePassLongPrefix(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L813"
        _b.stopTimer();
        var _x = ((("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("^abcdefghijklmnopqrstuvwxyz.*$" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L816"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L817"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L818"
                _re.match(_x);
                _i++;
            };
        };
    }
