package stdgo._internal.regexp;
function benchmarkFindSubmatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.stopTimer();
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("a(a+b+)b" : stdgo.GoString));
        var _wantSubs = (("aaabb" : stdgo.GoString) : stdgo.GoString);
        var _s = (((("acbb" : stdgo.GoString) + _wantSubs?.__copy__() : stdgo.GoString) + ("dd" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _b.startTimer();
        @:check2r _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _subs = @:check2r _re.findSubmatch(_s);
if ((_subs[(0 : stdgo.GoInt)] : stdgo.GoString) != (_wantSubs)) {
                    @:check2r _b.fatalf(("FindSubmatch(%q)[0] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_wantSubs));
                };
if ((_subs[(1 : stdgo.GoInt)] : stdgo.GoString) != (("aab" : stdgo.GoString))) {
                    @:check2r _b.fatalf(("FindSubmatch(%q)[1] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(("aab" : stdgo.GoString)));
                };
                _i++;
            };
        };
    }
