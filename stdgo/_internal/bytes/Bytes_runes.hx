package stdgo._internal.bytes;
function runes(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt32> {
        var _t = (new stdgo.Slice<stdgo.GoInt32>((stdgo._internal.unicode.utf8.Utf8_runecount.runeCount(_s) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i = (0 : stdgo.GoInt);
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s), _r:stdgo.GoInt32 = __tmp__._0, _l:stdgo.GoInt = __tmp__._1;
            _t[(_i : stdgo.GoInt)] = _r;
            _i++;
            _s = (_s.__slice__(_l) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _t;
    }
