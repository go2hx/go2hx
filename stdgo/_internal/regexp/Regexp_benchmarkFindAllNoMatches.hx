package stdgo._internal.regexp;
function benchmarkFindAllNoMatches(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a+b+" : stdgo.GoString));
        var _s = (("acddee" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _b.reportAllocs();
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _all = _re.findAll(_s, (-1 : stdgo.GoInt));
                if (_all != null) {
                    _b.fatalf(("FindAll(%q) = %q; want nil" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_all));
                };
            });
        };
    }
