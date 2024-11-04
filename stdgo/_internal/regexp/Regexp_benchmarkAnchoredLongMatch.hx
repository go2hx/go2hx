package stdgo._internal.regexp;
function benchmarkAnchoredLongMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        var _x = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (15 : stdgo.GoInt) : Bool)) {
                _x = (_x.__append__(...(_x : Array<stdgo.GoUInt8>)));
                _i++;
            };
        };
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("^.bc(d|e)" : stdgo.GoString));
        _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _re.match(_x);
                _i++;
            };
        };
    }
