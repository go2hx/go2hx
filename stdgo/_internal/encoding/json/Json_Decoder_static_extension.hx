package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    static public function inputOffset( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        return (_dec._scanned + (_dec._scanp : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function _peek( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        var _err:stdgo.Error = (null : stdgo.Error);
        while (true) {
            {
                var _i = (_dec._scanp : stdgo.GoInt);
                while ((_i < (_dec._buf.length) : Bool)) {
                    var _c = (_dec._buf[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (stdgo._internal.encoding.json.Json__isSpace._isSpace(_c)) {
                        {
                            _i++;
                            continue;
                        };
                    };
_dec._scanp = _i;
return { _0 : _c, _1 : (null : stdgo.Error) };
                    _i++;
                };
            };
            if (_err != null) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
            };
            _err = _dec._refill();
        };
    }
    @:keep
    static public function more( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>):Bool {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        var __tmp__ = _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return ((_err == null && _c != ((93 : stdgo.GoUInt8)) : Bool) && (_c != (125 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    static public function _tokenError( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>, _c:stdgo.GoUInt8):{ var _0 : stdgo._internal.encoding.json.Json_Token.Token; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        var _context:stdgo.GoString = ("" : stdgo.GoString);
        {
            final __value__ = _dec._tokenState;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _context = (" looking for beginning of value" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((7 : stdgo.GoInt))) {
                _context = (" looking for beginning of value" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                _context = (" after array element" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo.GoInt))) {
                _context = (" looking for beginning of object key string" : stdgo.GoString);
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                _context = (" after object key" : stdgo.GoString);
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                _context = (" after object key:value pair" : stdgo.GoString);
            };
        };
        return { _0 : (null : stdgo._internal.encoding.json.Json_Token.Token), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(((("invalid character " : stdgo.GoString) + stdgo._internal.encoding.json.Json__quoteChar._quoteChar(_c)?.__copy__() : stdgo.GoString) + _context?.__copy__() : stdgo.GoString)?.__copy__(), _dec.inputOffset()) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>)) };
    }
    @:keep
    static public function token( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>):{ var _0 : stdgo._internal.encoding.json.Json_Token.Token; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        while (true) {
            var __tmp__ = _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.encoding.json.Json_Token.Token), _1 : _err };
            };
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _c;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (91 : stdgo.GoUInt8)))) {
                            if (!_dec._tokenValueAllowed()) {
                                return _dec._tokenError(_c);
                            };
                            _dec._scanp++;
                            _dec._tokenStack = (_dec._tokenStack.__append__(_dec._tokenState));
                            _dec._tokenState = (1 : stdgo.GoInt);
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((91 : stdgo._internal.encoding.json.Json_Delim.Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (93 : stdgo.GoUInt8)))) {
                            if (((_dec._tokenState != (1 : stdgo.GoInt)) && (_dec._tokenState != (3 : stdgo.GoInt)) : Bool)) {
                                return _dec._tokenError(_c);
                            };
                            _dec._scanp++;
                            _dec._tokenState = _dec._tokenStack[((_dec._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            _dec._tokenStack = (_dec._tokenStack.__slice__(0, ((_dec._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                            _dec._tokenValueEnd();
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((93 : stdgo._internal.encoding.json.Json_Delim.Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (123 : stdgo.GoUInt8)))) {
                            if (!_dec._tokenValueAllowed()) {
                                return _dec._tokenError(_c);
                            };
                            _dec._scanp++;
                            _dec._tokenStack = (_dec._tokenStack.__append__(_dec._tokenState));
                            _dec._tokenState = (4 : stdgo.GoInt);
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_Delim.Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (125 : stdgo.GoUInt8)))) {
                            if (((_dec._tokenState != (4 : stdgo.GoInt)) && (_dec._tokenState != (8 : stdgo.GoInt)) : Bool)) {
                                return _dec._tokenError(_c);
                            };
                            _dec._scanp++;
                            _dec._tokenState = _dec._tokenStack[((_dec._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            _dec._tokenStack = (_dec._tokenStack.__slice__(0, ((_dec._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                            _dec._tokenValueEnd();
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_Delim.Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (58 : stdgo.GoUInt8)))) {
                            if (_dec._tokenState != ((6 : stdgo.GoInt))) {
                                return _dec._tokenError(_c);
                            };
                            _dec._scanp++;
                            _dec._tokenState = (7 : stdgo.GoInt);
                            {
                                __continue__ = true;
                                break;
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (44 : stdgo.GoUInt8)))) {
                            if (_dec._tokenState == ((3 : stdgo.GoInt))) {
                                _dec._scanp++;
                                _dec._tokenState = (2 : stdgo.GoInt);
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            if (_dec._tokenState == ((8 : stdgo.GoInt))) {
                                _dec._scanp++;
                                _dec._tokenState = (5 : stdgo.GoInt);
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            return _dec._tokenError(_c);
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (34 : stdgo.GoUInt8)))) {
                            if (((_dec._tokenState == (4 : stdgo.GoInt)) || (_dec._tokenState == (5 : stdgo.GoInt)) : Bool)) {
                                var _x:stdgo.GoString = ("" : stdgo.GoString);
                                var _old = (_dec._tokenState : stdgo.GoInt);
                                _dec._tokenState = (0 : stdgo.GoInt);
                                var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.pointer(_x))) : stdgo.Error);
                                _dec._tokenState = _old;
                                if (_err != null) {
                                    return { _0 : (null : stdgo._internal.encoding.json.Json_Token.Token), _1 : _err };
                                };
                                _dec._tokenState = (6 : stdgo.GoInt);
                                return { _0 : stdgo.Go.toInterface(_x), _1 : (null : stdgo.Error) };
                            };
                            @:fallthrough {
                                __switchIndex__ = 7;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            if (!_dec._tokenValueAllowed()) {
                                return _dec._tokenError(_c);
                            };
                            var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                            {
                                var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
                                if (_err != null) {
                                    return { _0 : (null : stdgo._internal.encoding.json.Json_Token.Token), _1 : _err };
                                };
                            };
                            return { _0 : stdgo.Go.toInterface(_x), _1 : (null : stdgo.Error) };
                            break;
                        };
                    };
                    break;
                };
                if (__continue__) continue;
            };
        };
    }
    @:keep
    static public function _tokenValueEnd( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        {
            final __value__ = _dec._tokenState;
            if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt))) {
                _dec._tokenState = (3 : stdgo.GoInt);
            } else if (__value__ == ((7 : stdgo.GoInt))) {
                _dec._tokenState = (8 : stdgo.GoInt);
            };
        };
    }
    @:keep
    static public function _tokenValueAllowed( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>):Bool {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        {
            final __value__ = _dec._tokenState;
            if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((7 : stdgo.GoInt))) {
                return true;
            };
        };
        return false;
    }
    @:keep
    static public function _tokenPrepareForDecode( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        {
            final __value__ = _dec._tokenState;
            if (__value__ == ((3 : stdgo.GoInt))) {
                var __tmp__ = _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (_c != ((44 : stdgo.GoUInt8))) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(("expected comma after array element" : stdgo.GoString), _dec.inputOffset()) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>));
                };
                _dec._scanp++;
                _dec._tokenState = (2 : stdgo.GoInt);
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                var __tmp__ = _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (_c != ((58 : stdgo.GoUInt8))) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(("expected colon after object key" : stdgo.GoString), _dec.inputOffset()) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>));
                };
                _dec._scanp++;
                _dec._tokenState = (7 : stdgo.GoInt);
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _refill( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        if ((_dec._scanp > (0 : stdgo.GoInt) : Bool)) {
            _dec._scanned = (_dec._scanned + ((_dec._scanp : stdgo.GoInt64)) : stdgo.GoInt64);
            var _n = (stdgo.Go.copySlice(_dec._buf, (_dec._buf.__slice__(_dec._scanp) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            _dec._buf = (_dec._buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
            _dec._scanp = (0 : stdgo.GoInt);
        };
        {};
        if (((_dec._buf.capacity - (_dec._buf.length) : stdgo.GoInt) < (512 : stdgo.GoInt) : Bool)) {
            var _newBuf = (new stdgo.Slice<stdgo.GoUInt8>((_dec._buf.length : stdgo.GoInt).toBasic(), (((2 : stdgo.GoInt) * _dec._buf.capacity : stdgo.GoInt) + (512 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            stdgo.Go.copySlice(_newBuf, _dec._buf);
            _dec._buf = _newBuf;
        };
        var __tmp__ = _dec._r.read((_dec._buf.__slice__((_dec._buf.length), _dec._buf.capacity) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _dec._buf = (_dec._buf.__slice__((0 : stdgo.GoInt), ((_dec._buf.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return _err;
    }
    @:keep
    static public function _readValue( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        var _n_5667936:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_5667000:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var inputBreak = false;
        var _err_5666777:stdgo.Error = (null : stdgo.Error);
        var _scanp_5666753:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _dec._scan._reset();
                    _scanp_5666753 = _dec._scanp;
                    _gotoNext = 5666787i32;
                } else if (__value__ == (5666787i32)) {
                    var __blank__ = 0i32;
                    inputBreak = false;
                    _gotoNext = 5666898i32;
                } else if (__value__ == (5666898i32)) {
                    if (!inputBreak && ((_scanp_5666753 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5666913i32;
                    } else {
                        _gotoNext = 5668008i32;
                    };
                } else if (__value__ == (5666913i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 5666959i32;
                } else if (__value__ == (5666959i32)) {
                    if ((_scanp_5666753 < (_dec._buf.length) : Bool)) {
                        _gotoNext = 5666995i32;
                    } else {
                        _gotoNext = 5667715i32;
                    };
                } else if (__value__ == (5666987i32)) {
                    _scanp_5666753++;
                    _gotoNext = 5666959i32;
                } else if (__value__ == (5666995i32)) {
                    _c_5667000 = _dec._buf[(_scanp_5666753 : stdgo.GoInt)];
                    _dec._scan._bytes++;
                    var __blank__ = 0i32;
                    _gotoNext = 5667043i32;
                } else if (__value__ == (5667043i32)) {
                    {
                        final __value__ = _dec._scan._step((stdgo.Go.setRef(_dec._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>), _c_5667000);
                        if (__value__ == ((10 : stdgo.GoInt))) {
                            _gotoNext = 5667083i32;
                        } else if (__value__ == ((5 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 5667296i32;
                        } else if (__value__ == ((11 : stdgo.GoInt))) {
                            _gotoNext = 5667550i32;
                        } else {
                            _gotoNext = 5666987i32;
                        };
                    };
                } else if (__value__ == (5667083i32)) {
                    _dec._scan._bytes--;
                    inputBreak = true;
                    _gotoNext = 5666898i32;
                } else if (__value__ == (5667296i32)) {
                    if (stdgo._internal.encoding.json.Json__stateEndValue._stateEndValue((stdgo.Go.setRef(_dec._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>), (32 : stdgo.GoUInt8)) == ((10 : stdgo.GoInt))) {
                        _gotoNext = 5667509i32;
                    } else {
                        _gotoNext = 5666987i32;
                    };
                } else if (__value__ == (5667509i32)) {
                    _scanp_5666753++;
                    inputBreak = true;
                    _gotoNext = 5666898i32;
                } else if (__value__ == (5667550i32)) {
                    _dec._err = _dec._scan._err;
                    return { _0 : (0 : stdgo.GoInt), _1 : _dec._scan._err };
                    _gotoNext = 5666987i32;
                } else if (__value__ == (5667715i32)) {
                    if (_err_5666777 != null) {
                        _gotoNext = 5667729i32;
                    } else {
                        _gotoNext = 5667936i32;
                    };
                } else if (__value__ == (5667729i32)) {
                    if (stdgo.Go.toInterface(_err_5666777) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _gotoNext = 5667751i32;
                    } else {
                        _gotoNext = 5667898i32;
                    };
                } else if (__value__ == (5667751i32)) {
                    if (_dec._scan._step((stdgo.Go.setRef(_dec._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>), (32 : stdgo.GoUInt8)) == ((10 : stdgo.GoInt))) {
                        _gotoNext = 5667801i32;
                    } else {
                        _gotoNext = 5667830i32;
                    };
                } else if (__value__ == (5667801i32)) {
                    inputBreak = true;
                    _gotoNext = 5666898i32;
                } else if (__value__ == (5667830i32)) {
                    if (stdgo._internal.encoding.json.Json__nonSpace._nonSpace(_dec._buf)) {
                        _gotoNext = 5667851i32;
                    } else {
                        _gotoNext = 5667898i32;
                    };
                } else if (__value__ == (5667851i32)) {
                    _err_5666777 = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    _gotoNext = 5667898i32;
                } else if (__value__ == (5667898i32)) {
                    _dec._err = _err_5666777;
                    return { _0 : (0 : stdgo.GoInt), _1 : _err_5666777 };
                    _gotoNext = 5667936i32;
                } else if (__value__ == (5667936i32)) {
                    _n_5667936 = (_scanp_5666753 - _dec._scanp : stdgo.GoInt);
                    _err_5666777 = _dec._refill();
                    _scanp_5666753 = (_dec._scanp + _n_5667936 : stdgo.GoInt);
                    _gotoNext = 5666898i32;
                } else if (__value__ == (5668008i32)) {
                    return { _0 : (_scanp_5666753 - _dec._scanp : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function buffered( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>):stdgo._internal.io.Io_Reader.Reader {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        return stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((_dec._buf.__slice__(_dec._scanp) : stdgo.Slice<stdgo.GoUInt8>)));
    }
    @:keep
    static public function decode( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        if (_dec._err != null) {
            return _dec._err;
        };
        {
            var _err = (_dec._tokenPrepareForDecode() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (!_dec._tokenValueAllowed()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ _msg : ("not at beginning of value" : stdgo.GoString), offset : _dec.inputOffset() } : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>));
        };
        var __tmp__ = _dec._readValue(), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _dec._d._init((_dec._buf.__slice__(_dec._scanp, (_dec._scanp + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        _dec._scanp = (_dec._scanp + (_n) : stdgo.GoInt);
        _err = _dec._d._unmarshal(_v);
        _dec._tokenValueEnd();
        return _err;
    }
    @:keep
    static public function disallowUnknownFields( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        _dec._d._disallowUnknownFields = true;
    }
    @:keep
    static public function useNumber( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_Decoder.Decoder> = _dec;
        _dec._d._useNumber = true;
    }
}
