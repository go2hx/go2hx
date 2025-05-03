package stdgo._internal.encoding.json;
function _unquoteBytes(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } {
        var _t = (null : stdgo.Slice<stdgo.GoUInt8>), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1180"
        if (((((_s.length) < (2 : stdgo.GoInt) : Bool) || _s[(0 : stdgo.GoInt)] != ((34 : stdgo.GoUInt8)) : Bool) || (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1181"
            return { _0 : _t, _1 : _ok };
        };
        _s = (_s.__slice__((1 : stdgo.GoInt), ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _r = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1189"
        while ((_r < (_s.length) : Bool)) {
            var _c = (_s[(_r : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1191"
            if (((_c == ((92 : stdgo.GoUInt8)) || _c == ((34 : stdgo.GoUInt8)) : Bool) || (_c < (32 : stdgo.GoUInt8) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1192"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1194"
            if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1195"
                _r++;
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1196"
                continue;
            };
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__(_r) : stdgo.Slice<stdgo.GoUInt8>)), _rr:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1199"
            if (((_rr == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1200"
                break;
            };
            _r = (_r + (_size) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1204"
        if (_r == ((_s.length))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1205"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : _s, _1 : true };
                _t = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(((_s.length) + (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _w = (_b.__copyTo__((_s.__slice__((0 : stdgo.GoInt), _r) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1210"
        while ((_r < (_s.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1214"
            if ((_w >= ((_b.length) - (8 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                var _nb = (new stdgo.Slice<stdgo.GoUInt8>(((((_b.length) + (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1216"
                _nb.__copyTo__((_b.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>));
                _b = _nb;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1219"
            {
                var _c = (_s[(_r : stdgo.GoInt)] : stdgo.GoUInt8);
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        if (_c == ((92 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1221"
                            _r++;
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1222"
                            if ((_r >= (_s.length) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1223"
                                return { _0 : _t, _1 : _ok };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1225"
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _s[(_r : stdgo.GoInt)];
                                        if (__value__ == ((34 : stdgo.GoUInt8)) || __value__ == ((92 : stdgo.GoUInt8)) || __value__ == ((47 : stdgo.GoUInt8)) || __value__ == ((39 : stdgo.GoUInt8))) {
                                            _b[(_w : stdgo.GoInt)] = _s[(_r : stdgo.GoInt)];
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1230"
                                            _r++;
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1231"
                                            _w++;
                                            break;
                                        } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                            _b[(_w : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1234"
                                            _r++;
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1235"
                                            _w++;
                                            break;
                                        } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                                            _b[(_w : stdgo.GoInt)] = (12 : stdgo.GoUInt8);
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1238"
                                            _r++;
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1239"
                                            _w++;
                                            break;
                                        } else if (__value__ == ((110 : stdgo.GoUInt8))) {
                                            _b[(_w : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1242"
                                            _r++;
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1243"
                                            _w++;
                                            break;
                                        } else if (__value__ == ((114 : stdgo.GoUInt8))) {
                                            _b[(_w : stdgo.GoInt)] = (13 : stdgo.GoUInt8);
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1246"
                                            _r++;
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1247"
                                            _w++;
                                            break;
                                        } else if (__value__ == ((116 : stdgo.GoUInt8))) {
                                            _b[(_w : stdgo.GoInt)] = (9 : stdgo.GoUInt8);
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1250"
                                            _r++;
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1251"
                                            _w++;
                                            break;
                                        } else if (__value__ == ((117 : stdgo.GoUInt8))) {
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1253"
                                            _r--;
                                            var _rr = (stdgo._internal.encoding.json.Json__getu4._getu4((_s.__slice__(_r) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1255"
                                            if ((_rr < (0 : stdgo.GoInt32) : Bool)) {
                                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1256"
                                                return { _0 : _t, _1 : _ok };
                                            };
                                            _r = (_r + ((6 : stdgo.GoInt)) : stdgo.GoInt);
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1259"
                                            if (stdgo._internal.unicode.utf16.Utf16_issurrogate.isSurrogate(_rr)) {
                                                var _rr1 = (stdgo._internal.encoding.json.Json__getu4._getu4((_s.__slice__(_r) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
                                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1261"
                                                {
                                                    var _dec = (stdgo._internal.unicode.utf16.Utf16_decoderune.decodeRune(_rr, _rr1) : stdgo.GoInt32);
                                                    if (_dec != ((65533 : stdgo.GoInt32))) {
                                                        _r = (_r + ((6 : stdgo.GoInt)) : stdgo.GoInt);
                                                        _w = (_w + (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), _dec)) : stdgo.GoInt);
                                                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1265"
                                                        break;
                                                    };
                                                };
                                                _rr = (65533 : stdgo.GoInt32);
                                            };
                                            _w = (_w + (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), _rr)) : stdgo.GoInt);
                                            break;
                                        } else {
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1227"
                                            return { _0 : _t, _1 : _ok };
                                        };
                                    };
                                    break;
                                };
                            };
                            break;
                        } else if (_c == ((34 : stdgo.GoUInt8)) || (_c < (32 : stdgo.GoUInt8) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1275"
                            return { _0 : _t, _1 : _ok };
                            break;
                        } else if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                            _b[(_w : stdgo.GoInt)] = _c;
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1280"
                            _r++;
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1281"
                            _w++;
                            break;
                        } else {
                            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__(_r) : stdgo.Slice<stdgo.GoUInt8>)), _rr:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                            _r = (_r + (_size) : stdgo.GoInt);
                            _w = (_w + (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), _rr)) : stdgo.GoInt);
                        };
                        break;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode.go#L1290"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : (_b.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>), _1 : true };
            _t = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
