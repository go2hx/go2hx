package stdgo._internal.regexp;
function benchmarkFindStringSubmatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L649"
        _b.stopTimer();
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("a(a+b+)b" : stdgo.GoString));
        var _wantSubs = (("aaabb" : stdgo.GoString) : stdgo.GoString);
        var _s = (((("acbb" : stdgo.GoString) + _wantSubs?.__copy__() : stdgo.GoString) + ("dd" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L653"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L654"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L655"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _subs = _re.findStringSubmatch(_s.__copy__());
//"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L657"
                if (_subs[(0 : stdgo.GoInt)] != (_wantSubs)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L658"
                    _b.fatalf(("FindStringSubmatch(%q)[0] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_wantSubs));
                };
//"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L660"
                if (_subs[(1 : stdgo.GoInt)] != (("aab" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L661"
                    _b.fatalf(("FindStringSubmatch(%q)[1] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(("aab" : stdgo.GoString)));
                };
                _i++;
            };
        };
    }
