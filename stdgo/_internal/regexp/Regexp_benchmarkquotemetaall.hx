package stdgo._internal.regexp;
function benchmarkQuoteMetaAll(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _specials = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
            while ((_i < (128 : stdgo.GoUInt8) : Bool)) {
                if (stdgo._internal.regexp.Regexp__special._special(_i)) {
                    _specials = (_specials.__append__(_i));
                };
                _i++;
            };
        };
        var _s = ((_specials : stdgo.GoString)?.__copy__() : stdgo.GoString);
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
