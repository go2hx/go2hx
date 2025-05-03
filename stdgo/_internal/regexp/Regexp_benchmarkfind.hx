package stdgo._internal.regexp;
function benchmarkFind(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L588"
        _b.stopTimer();
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("a+b+" : stdgo.GoString));
        var _wantSubs = (("aaabb" : stdgo.GoString) : stdgo.GoString);
        var _s = (((("acbb" : stdgo.GoString) + _wantSubs?.__copy__() : stdgo.GoString) + ("dd" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L592"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L593"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L594"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _subs = _re.find(_s);
//"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L596"
                if ((_subs : stdgo.GoString) != (_wantSubs)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L597"
                    _b.fatalf(("Find(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs), stdgo.Go.toInterface(_wantSubs));
                };
                _i++;
            };
        };
    }
