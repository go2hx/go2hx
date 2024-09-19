package stdgo._internal.regexp;
function benchmarkOnePassLongNotPrefix(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        var _x = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("^.bcdefghijklmnopqrstuvwxyz.*$" : stdgo.GoString));
        _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _re.match(_x);
            });
        };
    }
