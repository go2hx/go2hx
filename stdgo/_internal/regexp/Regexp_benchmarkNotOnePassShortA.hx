package stdgo._internal.regexp;
function benchmarkNotOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.stopTimer();
        var _x = (("abcddddddeeeededd" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile((".bc(d|e)*$" : stdgo.GoString));
        _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _re.match(_x);
                _i++;
            };
        };
    }
