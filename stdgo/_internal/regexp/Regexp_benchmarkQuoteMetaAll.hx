package stdgo._internal.regexp;
function benchmarkQuoteMetaAll(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _specials = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
            stdgo.Go.cfor((_i < (128 : stdgo.GoUInt8) : Bool), _i++, {
                if (stdgo._internal.regexp.Regexp__special._special(_i)) {
                    _specials = (_specials.__append__(_i));
                };
            });
        };
        var _s = ((_specials : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _b.setBytes((_s.length : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.regexp.Regexp__sink._sink = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_s?.__copy__())?.__copy__();
            });
        };
    }
