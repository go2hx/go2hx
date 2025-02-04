package stdgo._internal.encoding.json;
function _unquoteBytes(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } {
        var _t = (null : stdgo.Slice<stdgo.GoUInt8>), _ok = false;
        if (((((_s.length) < (2 : stdgo.GoInt) : Bool) || _s[(0 : stdgo.GoInt)] != ((34 : stdgo.GoUInt8)) : Bool) || (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : _t, _1 : _ok };
        };
        _s = (_s.__slice__((1 : stdgo.GoInt), ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _r = (0 : stdgo.GoInt);
        while ((_r < (_s.length) : Bool)) {
            var _c = (_s[(_r : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c == ((92 : stdgo.GoUInt8)) || _c == ((34 : stdgo.GoUInt8)) : Bool) || (_c < (32 : stdgo.GoUInt8) : Bool) : Bool)) {
                break;
            };
            if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                _r++;
                continue;
            };
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__(_r) : stdgo.Slice<stdgo.GoUInt8>)), _rr:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            if (((_rr == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) {
                break;
            };
            _r = (_r + (_size) : stdgo.GoInt);
        };
        if (_r == ((_s.length))) {
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : _s, _1 : true };
                _t = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(((_s.length) + (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _w = (_b.__copyTo__((_s.__slice__((0 : stdgo.GoInt), _r) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        while ((_r < (_s.length) : Bool)) {
            if ((_w >= ((_b.length) - (8 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                var _nb = (new stdgo.Slice<stdgo.GoUInt8>(((((_b.length) + (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _nb.__copyTo__((_b.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>));
                _b = _nb;
            };
            {
                var _c = (_s[(_r : stdgo.GoInt)] : stdgo.GoUInt8);
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        if (_c == ((92 : stdgo.GoUInt8))) {
                            _r++;
                            if ((_r >= (_s.length) : Bool)) {
                                return { _0 : _t, _1 : _ok };
                            };
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _s[(_r : stdgo.GoInt)];
                                        if (__value__ == ((34 : stdgo.GoUInt8)) || __value__ == ((92 : stdgo.GoUInt8)) || __value__ == ((47 : stdgo.GoUInt8)) || __value__ == ((39 : stdgo.GoUInt8))) {
                                            _b[(_w : stdgo.GoInt)] = _s[(_r : stdgo.GoInt)];
                                            _r++;
                                            _w++;
                                            break;
                                        } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                            _b[(_w : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
                                            _r++;
                                            _w++;
                                            break;
                                        } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                                            _b[(_w : stdgo.GoInt)] = (12 : stdgo.GoUInt8);
                                            _r++;
                                            _w++;
                                            break;
                                        } else if (__value__ == ((110 : stdgo.GoUInt8))) {
                                            _b[(_w : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
                                            _r++;
                                            _w++;
                                            break;
                                        } else if (__value__ == ((114 : stdgo.GoUInt8))) {
                                            _b[(_w : stdgo.GoInt)] = (13 : stdgo.GoUInt8);
                                            _r++;
                                            _w++;
                                            break;
                                        } else if (__value__ == ((116 : stdgo.GoUInt8))) {
                                            _b[(_w : stdgo.GoInt)] = (9 : stdgo.GoUInt8);
                                            _r++;
                                            _w++;
                                            break;
                                        } else if (__value__ == ((117 : stdgo.GoUInt8))) {
                                            _r--;
                                            var _rr = (stdgo._internal.encoding.json.Json__getu4._getu4((_s.__slice__(_r) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
                                            if ((_rr < (0 : stdgo.GoInt32) : Bool)) {
                                                return { _0 : _t, _1 : _ok };
                                            };
                                            _r = (_r + ((6 : stdgo.GoInt)) : stdgo.GoInt);
                                            if (stdgo._internal.unicode.utf16.Utf16_issurrogate.isSurrogate(_rr)) {
                                                var _rr1 = (stdgo._internal.encoding.json.Json__getu4._getu4((_s.__slice__(_r) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
                                                {
                                                    var _dec = (stdgo._internal.unicode.utf16.Utf16_decoderune.decodeRune(_rr, _rr1) : stdgo.GoInt32);
                                                    if (_dec != ((65533 : stdgo.GoInt32))) {
                                                        _r = (_r + ((6 : stdgo.GoInt)) : stdgo.GoInt);
                                                        _w = (_w + (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), _dec)) : stdgo.GoInt);
                                                        break;
                                                    };
                                                };
                                                _rr = (65533 : stdgo.GoInt32);
                                            };
                                            _w = (_w + (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), _rr)) : stdgo.GoInt);
                                            break;
                                        } else {
                                            return { _0 : _t, _1 : _ok };
                                        };
                                    };
                                    break;
                                };
                            };
                            break;
                        } else if (_c == ((34 : stdgo.GoUInt8)) || (_c < (32 : stdgo.GoUInt8) : Bool)) {
                            return { _0 : _t, _1 : _ok };
                            break;
                        } else if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                            _b[(_w : stdgo.GoInt)] = _c;
                            _r++;
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
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; } = { _0 : (_b.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>), _1 : true };
            _t = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
