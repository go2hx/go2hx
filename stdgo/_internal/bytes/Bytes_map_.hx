package stdgo._internal.bytes;
function map_(_mapping:stdgo.GoInt32 -> stdgo.GoInt32, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _wid = (1 : stdgo.GoInt);
                var _r = (_s[(_i : stdgo.GoInt)] : stdgo.GoInt32);
                if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                        _r = @:tmpset0 __tmp__._0;
                        _wid = @:tmpset0 __tmp__._1;
                    };
                };
                _r = _mapping(_r);
                if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
                    _b = stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune(_b, _r);
                };
                _i = (_i + (_wid) : stdgo.GoInt);
            };
        };
        return _b;
    }
