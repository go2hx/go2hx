package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    @:tdfield
    static public function inputOffset( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        return ((@:checkr _dec ?? throw "null pointer dereference")._scanned + ((@:checkr _dec ?? throw "null pointer dereference")._scanp : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _peek( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        var _err:stdgo.Error = (null : stdgo.Error);
        while (true) {
            {
                var _i = ((@:checkr _dec ?? throw "null pointer dereference")._scanp : stdgo.GoInt);
                while ((_i < ((@:checkr _dec ?? throw "null pointer dereference")._buf.length) : Bool)) {
                    var _c = ((@:checkr _dec ?? throw "null pointer dereference")._buf[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
                        {
                            _i++;
                            continue;
                        };
                    };
(@:checkr _dec ?? throw "null pointer dereference")._scanp = _i;
return { _0 : _c, _1 : (null : stdgo.Error) };
                    _i++;
                };
            };
            if (_err != null) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
            };
            _err = @:check2r _dec._refill();
        };
    }
    @:keep
    @:tdfield
    static public function more( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Bool {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        var __tmp__ = @:check2r _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return ((_err == null && _c != ((93 : stdgo.GoUInt8)) : Bool) && (_c != (125 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _tokenError( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>, _c:stdgo.GoUInt8):{ var _0 : stdgo._internal.encoding.json.Json_token.Token; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        var _context:stdgo.GoString = ("" : stdgo.GoString);
        {
            final __value__ = (@:checkr _dec ?? throw "null pointer dereference")._tokenState;
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
        return { _0 : (null : stdgo._internal.encoding.json.Json_token.Token), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError(((("invalid character " : stdgo.GoString) + stdgo._internal.encoding.json.Json__quotechar._quoteChar(_c)?.__copy__() : stdgo.GoString) + _context?.__copy__() : stdgo.GoString)?.__copy__(), @:check2r _dec.inputOffset()) : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>)) };
    }
    @:keep
    @:tdfield
    static public function token( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):{ var _0 : stdgo._internal.encoding.json.Json_token.Token; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        while (true) {
            var __tmp__ = @:check2r _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.encoding.json.Json_token.Token), _1 : _err };
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
                            if (!@:check2r _dec._tokenValueAllowed()) {
                                return @:check2r _dec._tokenError(_c);
                            };
                            (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenStack = ((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.__append__((@:checkr _dec ?? throw "null pointer dereference")._tokenState));
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (1 : stdgo.GoInt);
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((91 : stdgo._internal.encoding.json.Json_delim.Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (93 : stdgo.GoUInt8)))) {
                            if ((((@:checkr _dec ?? throw "null pointer dereference")._tokenState != (1 : stdgo.GoInt)) && ((@:checkr _dec ?? throw "null pointer dereference")._tokenState != (3 : stdgo.GoInt)) : Bool)) {
                                return @:check2r _dec._tokenError(_c);
                            };
                            (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (@:checkr _dec ?? throw "null pointer dereference")._tokenStack[(((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenStack = ((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.__slice__(0, (((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                            @:check2r _dec._tokenValueEnd();
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((93 : stdgo._internal.encoding.json.Json_delim.Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (123 : stdgo.GoUInt8)))) {
                            if (!@:check2r _dec._tokenValueAllowed()) {
                                return @:check2r _dec._tokenError(_c);
                            };
                            (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenStack = ((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.__append__((@:checkr _dec ?? throw "null pointer dereference")._tokenState));
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (4 : stdgo.GoInt);
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_delim.Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (125 : stdgo.GoUInt8)))) {
                            if ((((@:checkr _dec ?? throw "null pointer dereference")._tokenState != (4 : stdgo.GoInt)) && ((@:checkr _dec ?? throw "null pointer dereference")._tokenState != (8 : stdgo.GoInt)) : Bool)) {
                                return @:check2r _dec._tokenError(_c);
                            };
                            (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (@:checkr _dec ?? throw "null pointer dereference")._tokenStack[(((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenStack = ((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.__slice__(0, (((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                            @:check2r _dec._tokenValueEnd();
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_delim.Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (58 : stdgo.GoUInt8)))) {
                            if ((@:checkr _dec ?? throw "null pointer dereference")._tokenState != ((6 : stdgo.GoInt))) {
                                return @:check2r _dec._tokenError(_c);
                            };
                            (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (7 : stdgo.GoInt);
                            {
                                __continue__ = true;
                                break;
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (44 : stdgo.GoUInt8)))) {
                            if ((@:checkr _dec ?? throw "null pointer dereference")._tokenState == ((3 : stdgo.GoInt))) {
                                (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (2 : stdgo.GoInt);
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            if ((@:checkr _dec ?? throw "null pointer dereference")._tokenState == ((8 : stdgo.GoInt))) {
                                (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (5 : stdgo.GoInt);
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            return @:check2r _dec._tokenError(_c);
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (34 : stdgo.GoUInt8)))) {
                            if ((((@:checkr _dec ?? throw "null pointer dereference")._tokenState == (4 : stdgo.GoInt)) || ((@:checkr _dec ?? throw "null pointer dereference")._tokenState == (5 : stdgo.GoInt)) : Bool)) {
                                var _x:stdgo.GoString = ("" : stdgo.GoString);
                                var _x__pointer__ = stdgo.Go.pointer(_x);
                                var _x__pointer__ = stdgo.Go.pointer(_x);
                                var _x__pointer__ = stdgo.Go.pointer(_x);
                                var _x__pointer__ = stdgo.Go.pointer(_x);
                                var _old = ((@:checkr _dec ?? throw "null pointer dereference")._tokenState : stdgo.GoInt);
                                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (0 : stdgo.GoInt);
                                var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(_x__pointer__)) : stdgo.Error);
                                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = _old;
                                if (_err != null) {
                                    return { _0 : (null : stdgo._internal.encoding.json.Json_token.Token), _1 : _err };
                                };
                                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (6 : stdgo.GoInt);
                                return { _0 : stdgo.Go.toInterface(_x), _1 : (null : stdgo.Error) };
                            };
                            @:fallthrough {
                                __switchIndex__ = 7;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            if (!@:check2r _dec._tokenValueAllowed()) {
                                return @:check2r _dec._tokenError(_c);
                            };
                            var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                            {
                                var _err = (@:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
                                if (_err != null) {
                                    return { _0 : (null : stdgo._internal.encoding.json.Json_token.Token), _1 : _err };
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
    @:tdfield
    static public function _tokenValueEnd( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        {
            final __value__ = (@:checkr _dec ?? throw "null pointer dereference")._tokenState;
            if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt))) {
                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (3 : stdgo.GoInt);
            } else if (__value__ == ((7 : stdgo.GoInt))) {
                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (8 : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tokenValueAllowed( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Bool {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        {
            final __value__ = (@:checkr _dec ?? throw "null pointer dereference")._tokenState;
            if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((7 : stdgo.GoInt))) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _tokenPrepareForDecode( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        {
            final __value__ = (@:checkr _dec ?? throw "null pointer dereference")._tokenState;
            if (__value__ == ((3 : stdgo.GoInt))) {
                var __tmp__ = @:check2r _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (_c != ((44 : stdgo.GoUInt8))) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError(("expected comma after array element" : stdgo.GoString), @:check2r _dec.inputOffset()) : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>));
                };
                (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (2 : stdgo.GoInt);
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                var __tmp__ = @:check2r _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (_c != ((58 : stdgo.GoUInt8))) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError(("expected colon after object key" : stdgo.GoString), @:check2r _dec.inputOffset()) : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>));
                };
                (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (7 : stdgo.GoInt);
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _refill( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        if (((@:checkr _dec ?? throw "null pointer dereference")._scanp > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _dec ?? throw "null pointer dereference")._scanned = ((@:checkr _dec ?? throw "null pointer dereference")._scanned + (((@:checkr _dec ?? throw "null pointer dereference")._scanp : stdgo.GoInt64)) : stdgo.GoInt64);
            var _n = ((@:checkr _dec ?? throw "null pointer dereference")._buf.__copyTo__(((@:checkr _dec ?? throw "null pointer dereference")._buf.__slice__((@:checkr _dec ?? throw "null pointer dereference")._scanp) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            (@:checkr _dec ?? throw "null pointer dereference")._buf = ((@:checkr _dec ?? throw "null pointer dereference")._buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _dec ?? throw "null pointer dereference")._scanp = (0 : stdgo.GoInt);
        };
        {};
        if ((((@:checkr _dec ?? throw "null pointer dereference")._buf.capacity - ((@:checkr _dec ?? throw "null pointer dereference")._buf.length) : stdgo.GoInt) < (512 : stdgo.GoInt) : Bool)) {
            var _newBuf = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _dec ?? throw "null pointer dereference")._buf.length : stdgo.GoInt).toBasic(), (((2 : stdgo.GoInt) * (@:checkr _dec ?? throw "null pointer dereference")._buf.capacity : stdgo.GoInt) + (512 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _newBuf.__copyTo__((@:checkr _dec ?? throw "null pointer dereference")._buf);
            (@:checkr _dec ?? throw "null pointer dereference")._buf = _newBuf;
        };
        var __tmp__ = (@:checkr _dec ?? throw "null pointer dereference")._r.read(((@:checkr _dec ?? throw "null pointer dereference")._buf.__slice__(((@:checkr _dec ?? throw "null pointer dereference")._buf.length), (@:checkr _dec ?? throw "null pointer dereference")._buf.capacity) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _dec ?? throw "null pointer dereference")._buf = ((@:checkr _dec ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), (((@:checkr _dec ?? throw "null pointer dereference")._buf.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return _err;
    }
    @:keep
    @:tdfield
    static public function _readValue( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        var _n_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_10:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var inputBreak = false;
        var _err_9:stdgo.Error = (null : stdgo.Error);
        var _scanp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    @:check2 (@:checkr _dec ?? throw "null pointer dereference")._scan._reset();
                    _scanp_8 = (@:checkr _dec ?? throw "null pointer dereference")._scanp;
                    _gotoNext = 5473171i32;
                } else if (__value__ == (5473171i32)) {
                    var __blank__ = 0i32;
                    inputBreak = false;
                    _gotoNext = 5473282i32;
                } else if (__value__ == (5473282i32)) {
                    if (!inputBreak && ((_scanp_8 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5473297i32;
                    } else {
                        _gotoNext = 5474392i32;
                    };
                } else if (__value__ == (5473297i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 5473343i32;
                } else if (__value__ == (5473343i32)) {
                    if ((_scanp_8 < ((@:checkr _dec ?? throw "null pointer dereference")._buf.length) : Bool)) {
                        _gotoNext = 5473379i32;
                    } else {
                        _gotoNext = 5474099i32;
                    };
                } else if (__value__ == (5473371i32)) {
                    _scanp_8++;
                    _gotoNext = 5473343i32;
                } else if (__value__ == (5473379i32)) {
                    _c_10 = (@:checkr _dec ?? throw "null pointer dereference")._buf[(_scanp_8 : stdgo.GoInt)];
                    (@:checkr _dec ?? throw "null pointer dereference")._scan._bytes++;
                    _gotoNext = 5473427i32;
                } else if (__value__ == (5473427i32)) {
                    {
                        final __value__ = (@:checkr _dec ?? throw "null pointer dereference")._scan._step((stdgo.Go.setRef((@:checkr _dec ?? throw "null pointer dereference")._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), _c_10);
                        if (__value__ == ((10 : stdgo.GoInt))) {
                            _gotoNext = 5473467i32;
                        } else if (__value__ == ((5 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 5473680i32;
                        } else if (__value__ == ((11 : stdgo.GoInt))) {
                            _gotoNext = 5473934i32;
                        } else {
                            _gotoNext = 5473371i32;
                        };
                    };
                } else if (__value__ == (5473467i32)) {
                    (@:checkr _dec ?? throw "null pointer dereference")._scan._bytes--;
                    inputBreak = true;
                    _gotoNext = 5473282i32;
                } else if (__value__ == (5473680i32)) {
                    if (stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue((stdgo.Go.setRef((@:checkr _dec ?? throw "null pointer dereference")._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), (32 : stdgo.GoUInt8)) == ((10 : stdgo.GoInt))) {
                        _gotoNext = 5473893i32;
                    } else {
                        _gotoNext = 5473371i32;
                    };
                } else if (__value__ == (5473893i32)) {
                    _scanp_8++;
                    inputBreak = true;
                    _gotoNext = 5473282i32;
                } else if (__value__ == (5473934i32)) {
                    (@:checkr _dec ?? throw "null pointer dereference")._err = (@:checkr _dec ?? throw "null pointer dereference")._scan._err;
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _dec ?? throw "null pointer dereference")._scan._err };
                    _gotoNext = 5473371i32;
                } else if (__value__ == (5474099i32)) {
                    if (_err_9 != null) {
                        _gotoNext = 5474113i32;
                    } else {
                        _gotoNext = 5474320i32;
                    };
                } else if (__value__ == (5474113i32)) {
                    if (stdgo.Go.toInterface(_err_9) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 5474135i32;
                    } else {
                        _gotoNext = 5474282i32;
                    };
                } else if (__value__ == (5474135i32)) {
                    if ((@:checkr _dec ?? throw "null pointer dereference")._scan._step((stdgo.Go.setRef((@:checkr _dec ?? throw "null pointer dereference")._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), (32 : stdgo.GoUInt8)) == ((10 : stdgo.GoInt))) {
                        _gotoNext = 5474185i32;
                    } else {
                        _gotoNext = 5474214i32;
                    };
                } else if (__value__ == (5474185i32)) {
                    inputBreak = true;
                    _gotoNext = 5473282i32;
                } else if (__value__ == (5474214i32)) {
                    if (stdgo._internal.encoding.json.Json__nonspace._nonSpace((@:checkr _dec ?? throw "null pointer dereference")._buf)) {
                        _gotoNext = 5474235i32;
                    } else {
                        _gotoNext = 5474282i32;
                    };
                } else if (__value__ == (5474235i32)) {
                    _err_9 = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    _gotoNext = 5474282i32;
                } else if (__value__ == (5474282i32)) {
                    (@:checkr _dec ?? throw "null pointer dereference")._err = _err_9;
                    return { _0 : (0 : stdgo.GoInt), _1 : _err_9 };
                    _gotoNext = 5474320i32;
                } else if (__value__ == (5474320i32)) {
                    _n_11 = (_scanp_8 - (@:checkr _dec ?? throw "null pointer dereference")._scanp : stdgo.GoInt);
                    _err_9 = @:check2r _dec._refill();
                    _scanp_8 = ((@:checkr _dec ?? throw "null pointer dereference")._scanp + _n_11 : stdgo.GoInt);
                    _gotoNext = 5473282i32;
                } else if (__value__ == (5474392i32)) {
                    return { _0 : (_scanp_8 - (@:checkr _dec ?? throw "null pointer dereference")._scanp : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function buffered( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):stdgo._internal.io.Io_reader.Reader {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        return stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(((@:checkr _dec ?? throw "null pointer dereference")._buf.__slice__((@:checkr _dec ?? throw "null pointer dereference")._scanp) : stdgo.Slice<stdgo.GoUInt8>)));
    }
    @:keep
    @:tdfield
    static public function decode( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        if ((@:checkr _dec ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _dec ?? throw "null pointer dereference")._err;
        };
        {
            var _err = (@:check2r _dec._tokenPrepareForDecode() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (!@:check2r _dec._tokenValueAllowed()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ _msg : ("not at beginning of value" : stdgo.GoString), offset : @:check2r _dec.inputOffset() } : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>));
        };
        var __tmp__ = @:check2r _dec._readValue(), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        @:check2 (@:checkr _dec ?? throw "null pointer dereference")._d._init(((@:checkr _dec ?? throw "null pointer dereference")._buf.__slice__((@:checkr _dec ?? throw "null pointer dereference")._scanp, ((@:checkr _dec ?? throw "null pointer dereference")._scanp + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _dec ?? throw "null pointer dereference")._scanp = ((@:checkr _dec ?? throw "null pointer dereference")._scanp + (_n) : stdgo.GoInt);
        _err = @:check2 (@:checkr _dec ?? throw "null pointer dereference")._d._unmarshal(_v);
        @:check2r _dec._tokenValueEnd();
        return _err;
    }
    @:keep
    @:tdfield
    static public function disallowUnknownFields( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        (@:checkr _dec ?? throw "null pointer dereference")._d._disallowUnknownFields = true;
    }
    @:keep
    @:tdfield
    static public function useNumber( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        (@:checkr _dec ?? throw "null pointer dereference")._d._useNumber = true;
    }
}
