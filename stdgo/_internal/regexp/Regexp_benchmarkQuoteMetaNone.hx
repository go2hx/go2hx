package stdgo._internal.regexp;
function benchmarkQuoteMetaNone(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s = ("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString);
        _b.setBytes((_s.length : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                stdgo._internal.regexp.Regexp__sink._sink = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_s.__copy__()).__copy__();
                _i++;
            };
        };
    }
