package stdgo._internal.regexp;
function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L737"
        _b.stopTimer();
        var _x = ((("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L739"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (15 : stdgo.GoInt) : Bool)) {
                _x = (_x.__append__(...(_x : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("^zbc(d|e)" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L743"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L744"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L745"
                _re.match(_x);
                _i++;
            };
        };
    }
