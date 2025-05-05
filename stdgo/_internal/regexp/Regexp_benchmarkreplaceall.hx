package stdgo._internal.regexp;
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _x = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L718"
        _b.stopTimer();
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("[cjrw]" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L720"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L721"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L722"
                _re.replaceAllString(_x.__copy__(), (stdgo.Go.str() : stdgo.GoString).__copy__());
                _i++;
            };
        };
    }
