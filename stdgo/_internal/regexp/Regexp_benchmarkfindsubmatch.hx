package stdgo._internal.regexp;
function benchmarkFindSubmatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L631"
        _b.stopTimer();
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("a(a+b+)b" : stdgo.GoString));
        var _wantSubs = (("aaabb" : stdgo.GoString) : stdgo.GoString);
        var _s = (((("acbb" : stdgo.GoString) + _wantSubs?.__copy__() : stdgo.GoString) + ("dd" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L635"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L636"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L637"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _subs = _re.findSubmatch(_s);
//"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L639"
                if ((_subs[(0 : stdgo.GoInt)] : stdgo.GoString) != (_wantSubs)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L640"
                    _b.fatalf(("FindSubmatch(%q)[0] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_wantSubs));
                };
//"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L642"
                if ((_subs[(1 : stdgo.GoInt)] : stdgo.GoString) != (("aab" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L643"
                    _b.fatalf(("FindSubmatch(%q)[1] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(("aab" : stdgo.GoString)));
                };
                _i++;
            };
        };
    }
