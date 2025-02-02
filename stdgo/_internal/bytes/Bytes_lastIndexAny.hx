package stdgo._internal.bytes;
function lastIndexAny(_s:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):stdgo.GoInt {
        if (_chars == (stdgo.Go.str())) {
            return (-1 : stdgo.GoInt);
        };
        if (((_s.length) > (8 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.bytes.Bytes__makeASCIISet._makeASCIISet(_chars?.__copy__()), _as:stdgo._internal.bytes.Bytes_T_asciiSet.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    {
                        var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                            if (@:check2 _as._contains(_s[(_i : stdgo.GoInt)])) {
                                return _i;
                            };
                            _i--;
                        };
                    };
                    return (-1 : stdgo.GoInt);
                };
            };
        };
        if ((_s.length) == ((1 : stdgo.GoInt))) {
            var _r = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                for (__key__ => __value__ in _chars) {
                    _r = __value__;
                    if (_r == ((65533 : stdgo.GoInt32))) {
                        return (0 : stdgo.GoInt);
                    };
                };
                return (-1 : stdgo.GoInt);
            };
            if ((stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_chars?.__copy__(), _s[(0 : stdgo.GoInt)]) >= (0 : stdgo.GoInt) : Bool)) {
                return (0 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        };
        if ((_chars.length) == ((1 : stdgo.GoInt))) {
            var _cr = (_chars[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            if ((_cr >= (128 : stdgo.GoInt32) : Bool)) {
                _cr = (65533 : stdgo.GoInt32);
            };
            {
                var _i = (_s.length : stdgo.GoInt);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeLastRune.decodeLastRune((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    _i = (_i - (_size) : stdgo.GoInt);
                    if (_r == (_cr)) {
                        return _i;
                    };
                };
            };
            return (-1 : stdgo.GoInt);
        };
        {
            var _i = (_s.length : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var _r = (_s[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
                if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                    if ((stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_chars?.__copy__(), _s[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) >= (0 : stdgo.GoInt) : Bool)) {
                        return (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                    _i--;
                    continue;
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeLastRune.decodeLastRune((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _i = (_i - (_size) : stdgo.GoInt);
                if (_r != ((65533 : stdgo.GoInt32))) {
                    if ((_chars.length) == (_size)) {
                        if (_chars == ((_r : stdgo.GoString))) {
                            return _i;
                        };
                        continue;
                    };
                    if ((stdgo._internal.internal.bytealg.Bytealg_maxLen.maxLen >= _size : Bool)) {
                        if ((stdgo._internal.internal.bytealg.Bytealg_indexString.indexString(_chars?.__copy__(), (_r : stdgo.GoString)?.__copy__()) >= (0 : stdgo.GoInt) : Bool)) {
                            return _i;
                        };
                        continue;
                    };
                };
                for (__0 => _ch in _chars) {
                    if (_r == (_ch)) {
                        return _i;
                    };
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
