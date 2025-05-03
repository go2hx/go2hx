package stdgo._internal.regexp;
function benchmarkFindString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L616"
        _b.stopTimer();
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("a+b+" : stdgo.GoString));
        var _wantSubs = (("aaabb" : stdgo.GoString) : stdgo.GoString);
        var _s = (((("acbb" : stdgo.GoString) + _wantSubs?.__copy__() : stdgo.GoString) + ("dd" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L620"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L621"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L622"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _subs = (_re.findString(_s.__copy__()).__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L624"
                if (_subs != (_wantSubs)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L625"
                    _b.fatalf(("FindString(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs), stdgo.Go.toInterface(_wantSubs));
                };
                _i++;
            };
        };
    }
