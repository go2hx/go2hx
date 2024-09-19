package stdgo._internal.regexp;
function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        var _x = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (15 : stdgo.GoInt) : Bool), _i++, {
                _x = (_x.__append__(...(_x : Array<stdgo.GoUInt8>)));
            });
        };
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("^zbc(d|e)" : stdgo.GoString));
        _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.match(_x);
            });
        };
    }
