package stdgo._internal.regexp;
function benchmarkFindSubmatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a(a+b+)b" : stdgo.GoString));
        var _wantSubs = ("aaabb" : stdgo.GoString);
        var _s = (((("acbb" : stdgo.GoString) + _wantSubs?.__copy__() : stdgo.GoString) + ("dd" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b.startTimer();
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _subs = _re.findSubmatch(_s);
                if ((_subs[(0 : stdgo.GoInt)] : stdgo.GoString) != (_wantSubs)) {
                    _b.fatalf(("FindSubmatch(%q)[0] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_wantSubs));
                };
                if ((_subs[(1 : stdgo.GoInt)] : stdgo.GoString) != (("aab" : stdgo.GoString))) {
                    _b.fatalf(("FindSubmatch(%q)[1] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(("aab" : stdgo.GoString)));
                };
            });
        };
    }
