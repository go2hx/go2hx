package stdgo._internal.strconv;
function _appendEscapedRune(_buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32, _quote:stdgo.GoUInt8, aSCIIonly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoUInt8> {
        var _runeTmp:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
        if (((_r == (_quote : stdgo.GoInt32)) || (_r == (92 : stdgo.GoInt32)) : Bool)) {
            _buf = (_buf.__append__((92 : stdgo.GoUInt8)));
            _buf = (_buf.__append__((_r : stdgo.GoUInt8)));
            return _buf;
        };
        if (aSCIIonly) {
            if (((_r < (128 : stdgo.GoInt32) : Bool) && stdgo._internal.strconv.Strconv_isprint.isPrint(_r) : Bool)) {
                _buf = (_buf.__append__((_r : stdgo.GoUInt8)));
                return _buf;
            };
        } else if ((stdgo._internal.strconv.Strconv_isprint.isPrint(_r) || (_graphicOnly && stdgo._internal.strconv.Strconv__isingraphiclist._isInGraphicList(_r) : Bool) : Bool)) {
            var _n = (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_runeTmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _r) : stdgo.GoInt);
            _buf = (_buf.__append__(...((_runeTmp.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            return _buf;
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _r;
                    if (__value__ == ((7 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...((("\\a" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else if (__value__ == ((8 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...((("\\b" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else if (__value__ == ((12 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...((("\\f" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else if (__value__ == ((10 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...((("\\n" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else if (__value__ == ((13 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...((("\\r" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else if (__value__ == ((9 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...((("\\t" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else if (__value__ == ((11 : stdgo.GoInt32))) {
                        _buf = (_buf.__append__(...((("\\v" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                        break;
                    } else {
                        {
                            var __switchIndex__ = -1;
                            var __run__ = true;
                            while (__run__) {
                                __run__ = false;
                                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && ((_r < (32 : stdgo.GoInt32) : Bool) || (_r == (127 : stdgo.GoInt32)) : Bool))) {
                                    _buf = (_buf.__append__(...((("\\x" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                                    _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[(((_r : stdgo.GoUInt8) >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)]));
                                    _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[(((_r : stdgo.GoUInt8) & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
                                    break;
                                    break;
                                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && !stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_r))) {
                                    _r = (65533 : stdgo.GoInt32);
                                    @:fallthrough {
                                        __switchIndex__ = 2;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_r < (65536 : stdgo.GoInt32) : Bool))) {
                                    _buf = (_buf.__append__(...((("\\u" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                                    {
                                        var _s = (12 : stdgo.GoInt);
                                        while ((_s >= (0 : stdgo.GoInt) : Bool)) {
                                            _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[(((_r >> (_s : stdgo.GoUInt) : stdgo.GoInt32) & (15 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]));
                                            _s = (_s - ((4 : stdgo.GoInt)) : stdgo.GoInt);
                                        };
                                    };
                                    break;
                                    break;
                                } else {
                                    _buf = (_buf.__append__(...((("\\U" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                                    {
                                        var _s = (28 : stdgo.GoInt);
                                        while ((_s >= (0 : stdgo.GoInt) : Bool)) {
                                            _buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[(((_r >> (_s : stdgo.GoUInt) : stdgo.GoInt32) & (15 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]));
                                            _s = (_s - ((4 : stdgo.GoInt)) : stdgo.GoInt);
                                        };
                                    };
                                    break;
                                };
                                break;
                            };
                        };
                    };
                };
                break;
            };
        };
        return _buf;
    }
