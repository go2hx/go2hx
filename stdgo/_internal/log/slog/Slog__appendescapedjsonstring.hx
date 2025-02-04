package stdgo._internal.log.slog;
function _appendEscapedJSONString(_buf:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        var _char = (function(_b:stdgo.GoUInt8):Void {
            _buf = (_buf.__append__(_b));
        } : stdgo.GoUInt8 -> Void);
        var _str = (function(_s:stdgo.GoString):Void {
            _buf = (_buf.__append__(...(_s : Array<stdgo.GoUInt8>)));
        } : stdgo.GoString -> Void);
        var _start = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    var _b = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                        if (stdgo._internal.log.slog.Slog__safeset._safeSet[(_b : stdgo.GoInt)]) {
                            _i++;
                            continue;
                        };
                        if ((_start < _i : Bool)) {
                            _str((_s.__slice__(_start, _i) : stdgo.GoString)?.__copy__());
                        };
                        _char((92 : stdgo.GoUInt8));
                        {
                            final __value__ = _b;
                            if (__value__ == ((92 : stdgo.GoUInt8)) || __value__ == ((34 : stdgo.GoUInt8))) {
                                _char(_b);
                            } else if (__value__ == ((10 : stdgo.GoUInt8))) {
                                _char((110 : stdgo.GoUInt8));
                            } else if (__value__ == ((13 : stdgo.GoUInt8))) {
                                _char((114 : stdgo.GoUInt8));
                            } else if (__value__ == ((9 : stdgo.GoUInt8))) {
                                _char((116 : stdgo.GoUInt8));
                            } else {
                                _str(("u00" : stdgo.GoString));
                                _char(stdgo._internal.log.slog.Slog__hex._hex[((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)]);
                                _char(stdgo._internal.log.slog.Slog__hex._hex[((_b & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]);
                            };
                        };
                        _i++;
                        _start = _i;
                        continue;
                    };
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                if (((_c == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) {
                    if ((_start < _i : Bool)) {
                        _str((_s.__slice__(_start, _i) : stdgo.GoString)?.__copy__());
                    };
                    _str(("\\ufffd" : stdgo.GoString));
                    _i = (_i + (_size) : stdgo.GoInt);
                    _start = _i;
                    continue;
                };
                if (((_c == (8232 : stdgo.GoInt32)) || (_c == (8233 : stdgo.GoInt32)) : Bool)) {
                    if ((_start < _i : Bool)) {
                        _str((_s.__slice__(_start, _i) : stdgo.GoString)?.__copy__());
                    };
                    _str(("\\u202" : stdgo.GoString));
                    _char(stdgo._internal.log.slog.Slog__hex._hex[((_c & (15 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]);
                    _i = (_i + (_size) : stdgo.GoInt);
                    _start = _i;
                    continue;
                };
                _i = (_i + (_size) : stdgo.GoInt);
            };
        };
        if ((_start < (_s.length) : Bool)) {
            _str((_s.__slice__(_start) : stdgo.GoString)?.__copy__());
        };
        return _buf;
    }
