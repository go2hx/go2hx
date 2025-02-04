package stdgo._internal.unicode.utf16;
function _decode(_s:stdgo.Slice<stdgo.GoUInt16>, _buf:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32> {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _ar:stdgo.GoInt32 = (0 : stdgo.GoInt32);
{
                    var _r = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt16);
                    if ((_r < (55296 : stdgo.GoUInt16) : Bool) || ((57344 : stdgo.GoUInt16) <= _r : Bool)) {
                        _ar = (_r : stdgo.GoInt32);
                    } else if (((((((55296 : stdgo.GoUInt16) <= _r : Bool) && (_r < (56320 : stdgo.GoUInt16) : Bool) : Bool) && ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) : Bool) && ((56320 : stdgo.GoUInt16) <= _s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool) && (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] < (57344 : stdgo.GoUInt16) : Bool) : Bool)) {
                        _ar = stdgo._internal.unicode.utf16.Utf16_decoderune.decodeRune((_r : stdgo.GoInt32), (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32));
                        _i++;
                    } else {
                        _ar = (65533 : stdgo.GoInt32);
                    };
                };
_buf = (_buf.__append__(_ar));
                _i++;
            };
        };
        return _buf;
    }
