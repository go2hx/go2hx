package stdgo._internal.regexp;
function benchmarkLiteral(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _x = ((stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (50 : stdgo.GoInt)) + ("y" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L668"
        _b.stopTimer();
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("y" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L670"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L671"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L672"
                if (!_re.matchString(_x.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L673"
                    _b.fatalf(("no match!" : stdgo.GoString));
                };
                _i++;
            };
        };
    }
