package stdgo._internal.regexp;
function benchmarkQuoteMetaNone(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _s = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.GoString);
        @:check2r _b.setBytes((_s.length : stdgo.GoInt64));
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.regexp.Regexp__sink._sink = stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_s.__copy__()).__copy__();
                _i++;
            };
        };
    }
