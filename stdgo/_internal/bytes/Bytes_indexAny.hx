package stdgo._internal.bytes;
function indexAny(_s:stdgo.Slice<stdgo.GoUInt8>, _chars:stdgo.GoString):stdgo.GoInt {
        if (_chars == (stdgo.Go.str())) {
            return (-1 : stdgo.GoInt);
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
            var _r = (_chars[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                _r = (65533 : stdgo.GoInt32);
            };
            return stdgo._internal.bytes.Bytes_indexRune.indexRune(_s, _r);
        };
        if (((_s.length) > (8 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.bytes.Bytes__makeASCIISet._makeASCIISet(_chars?.__copy__()), _as:stdgo._internal.bytes.Bytes_T_asciiSet.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    for (_i => _c in _s) {
                        if (_as._contains(_c)) {
                            return _i;
                        };
                    };
                    return (-1 : stdgo.GoInt);
                };
            };
        };
        var _width:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i = (_i + (_width) : stdgo.GoInt), {
                var _r = (_s[(_i : stdgo.GoInt)] : stdgo.GoInt32);
                if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                    if ((stdgo._internal.internal.bytealg.Bytealg_indexByteString.indexByteString(_chars?.__copy__(), _s[(_i : stdgo.GoInt)]) >= (0 : stdgo.GoInt) : Bool)) {
                        return _i;
                    };
                    _width = (1 : stdgo.GoInt);
                    continue;
                };
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (_r != ((65533 : stdgo.GoInt32))) {
                    if ((_chars.length) == (_width)) {
                        if (_chars == ((_r : stdgo.GoString))) {
                            return _i;
                        };
                        continue;
                    };
                    if ((stdgo._internal.internal.bytealg.Bytealg_maxLen.maxLen >= _width : Bool)) {
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
            });
        };
        return (-1 : stdgo.GoInt);
    }