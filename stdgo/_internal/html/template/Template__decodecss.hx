package stdgo._internal.html.template;
function _decodeCSS(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_s, (92 : stdgo.GoUInt8)) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            return _s;
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while ((_s.length) != ((0 : stdgo.GoInt))) {
            var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_s, (92 : stdgo.GoUInt8)) : stdgo.GoInt);
            if (_i == ((-1 : stdgo.GoInt))) {
                _i = (_s.length);
            };
            {
                final __tmp__0 = (_b.__append__(...((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                final __tmp__1 = (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
                _b = __tmp__0;
                _s = __tmp__1;
            };
            if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                break;
            };
            if (stdgo._internal.html.template.Template__ishex._isHex(_s[(1 : stdgo.GoInt)])) {
                var _j = (2 : stdgo.GoInt);
                while ((((_j < (_s.length) : Bool) && (_j < (7 : stdgo.GoInt) : Bool) : Bool) && stdgo._internal.html.template.Template__ishex._isHex(_s[(_j : stdgo.GoInt)]) : Bool)) {
                    _j++;
                };
                var _r = (stdgo._internal.html.template.Template__hexdecode._hexDecode((_s.__slice__((1 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
                if ((_r > (1114111 : stdgo.GoInt32) : Bool)) {
                    {
                        final __tmp__0 = (_r / (16 : stdgo.GoInt32) : stdgo.GoInt32);
                        final __tmp__1 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                        _r = __tmp__0;
                        _j = __tmp__1;
                    };
                };
                var _n = (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__((_b.length), _b.capacity) : stdgo.Slice<stdgo.GoUInt8>), _r) : stdgo.GoInt);
                {
                    final __tmp__0 = (_b.__slice__(0, ((_b.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    final __tmp__1 = stdgo._internal.html.template.Template__skipcssspace._skipCSSSpace((_s.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>));
                    _b = __tmp__0;
                    _s = __tmp__1;
                };
            } else {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __6:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                {
                    final __tmp__0 = (_b.__append__(...((_s.__slice__((1 : stdgo.GoInt), ((1 : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    final __tmp__1 = (_s.__slice__(((1 : stdgo.GoInt) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _b = __tmp__0;
                    _s = __tmp__1;
                };
            };
        };
        return _b;
    }
