package stdgo._internal.regexp;
function benchmarkMatchClass_InRange(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L703"
        _b.stopTimer();
        var _x = ((stdgo._internal.strings.Strings_repeat.repeat(("bbbb" : stdgo.GoString), (20 : stdgo.GoInt)) + ("c" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("[ac]" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L708"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L709"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L710"
                if (!_re.matchString(_x.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L711"
                    _b.fatalf(("no match!" : stdgo.GoString));
                };
                _i++;
            };
        };
    }
