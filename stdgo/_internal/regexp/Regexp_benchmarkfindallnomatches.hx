package stdgo._internal.regexp;
function benchmarkFindAllNoMatches(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("a+b+" : stdgo.GoString));
        var _s = ((("acddee" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _b.reportAllocs();
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _all = @:check2r _re.findAll(_s, (-1 : stdgo.GoInt));
if (_all != null) {
                    @:check2r _b.fatalf(("FindAll(%q) = %q; want nil" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_all));
                };
                _i++;
            };
        };
    }
