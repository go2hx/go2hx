package stdgo._internal.net.textproto;
function canonicalMIMEHeaderKey(_s:stdgo.GoString):stdgo.GoString {
        var _upper = (true : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if (!stdgo._internal.net.textproto.Textproto__validHeaderFieldByte._validHeaderFieldByte(_c)) {
                    return _s?.__copy__();
                };
                if (((_upper && ((97 : stdgo.GoUInt8) <= _c : Bool) : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.net.textproto.Textproto__canonicalMIMEHeaderKey._canonicalMIMEHeaderKey((_s : stdgo.Slice<stdgo.GoUInt8>));
                        _s = __tmp__._0?.__copy__();
                    };
                    return _s?.__copy__();
                };
                if (((!_upper && ((65 : stdgo.GoUInt8) <= _c : Bool) : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.net.textproto.Textproto__canonicalMIMEHeaderKey._canonicalMIMEHeaderKey((_s : stdgo.Slice<stdgo.GoUInt8>));
                        _s = __tmp__._0?.__copy__();
                    };
                    return _s?.__copy__();
                };
                _upper = _c == ((45 : stdgo.GoUInt8));
            });
        };
        return _s?.__copy__();
    }