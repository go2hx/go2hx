package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_fmt_asInterface) class T_fmt_static_extension {
    @:keep
    @:tdfield
    static public function _fmtFloat( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoInt32, _prec:stdgo.GoInt):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._precPresent) {
            _prec = (@:checkr _f ?? throw "null pointer dereference")._prec;
        };
        var _num = stdgo._internal.strconv.Strconv_appendfloat.appendFloat(((@:checkr _f ?? throw "null pointer dereference")._intbuf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _v, (_verb : stdgo.GoUInt8), _prec, _size);
        if (((_num[(1 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (_num[(1 : stdgo.GoInt)] == (43 : stdgo.GoUInt8)) : Bool)) {
            _num = (_num.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _num[(0 : stdgo.GoInt)] = (43 : stdgo.GoUInt8);
        };
        if ((((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._space && _num[(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8)) : Bool) && !(@:checkr _f ?? throw "null pointer dereference")._fmtFlags._plus : Bool)) {
            _num[(0 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        };
        if (((_num[(1 : stdgo.GoInt)] == (73 : stdgo.GoUInt8)) || (_num[(1 : stdgo.GoInt)] == (78 : stdgo.GoUInt8)) : Bool)) {
            var _oldZero = ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero : Bool);
            (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero = false;
            if (((_num[(1 : stdgo.GoInt)] == ((78 : stdgo.GoUInt8)) && !(@:checkr _f ?? throw "null pointer dereference")._fmtFlags._space : Bool) && !(@:checkr _f ?? throw "null pointer dereference")._fmtFlags._plus : Bool)) {
                _num = (_num.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            @:check2r _f._pad(_num);
            (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero = _oldZero;
            return;
        };
        if (((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._sharp && (_verb != (98 : stdgo.GoInt32)) : Bool)) {
            var _digits = (0 : stdgo.GoInt);
            {
                final __value__ = _verb;
                if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32))) {
                    _digits = _prec;
                    if (_digits == ((-1 : stdgo.GoInt))) {
                        _digits = (6 : stdgo.GoInt);
                    };
                };
            };
            var _tailBuf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(6, 6).__setNumber32__();
            var _tail = (_tailBuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _hasDecimalPoint = (false : Bool);
            var _sawNonzeroDigit = (false : Bool);
            {
                var _i = (1 : stdgo.GoInt);
                while ((_i < (_num.length) : Bool)) {
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _num[(_i : stdgo.GoInt)];
                                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (46 : stdgo.GoUInt8)))) {
                                    _hasDecimalPoint = true;
                                    break;
                                    break;
                                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == ((112 : stdgo.GoUInt8)) || __value__ == ((80 : stdgo.GoUInt8))))) {
                                    _tail = (_tail.__append__(...((_num.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                                    _num = (_num.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                                    break;
                                    break;
                                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8))))) {
                                    if (((_verb != (120 : stdgo.GoInt32)) && (_verb != (88 : stdgo.GoInt32)) : Bool)) {
                                        _tail = (_tail.__append__(...((_num.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                                        _num = (_num.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                                        break;
                                    };
                                    @:fallthrough {
                                        __switchIndex__ = 3;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else {
                                    if (_num[(_i : stdgo.GoInt)] != ((48 : stdgo.GoUInt8))) {
                                        _sawNonzeroDigit = true;
                                    };
                                    if (_sawNonzeroDigit) {
                                        _digits--;
                                    };
                                    break;
                                };
                            };
                            break;
                        };
                    };
                    _i++;
                };
            };
            if (!_hasDecimalPoint) {
                if (((_num.length == (2 : stdgo.GoInt)) && (_num[(1 : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
                    _digits--;
                };
                _num = (_num.__append__((46 : stdgo.GoUInt8)));
            };
            while ((_digits > (0 : stdgo.GoInt) : Bool)) {
                _num = (_num.__append__((48 : stdgo.GoUInt8)));
                _digits--;
            };
            _num = (_num.__append__(...(_tail : Array<stdgo.GoUInt8>)));
        };
        if (((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._plus || (_num[(0 : stdgo.GoInt)] != (43 : stdgo.GoUInt8)) : Bool)) {
            if ((((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero && (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._widPresent : Bool) && ((@:checkr _f ?? throw "null pointer dereference")._wid > (_num.length) : Bool) : Bool)) {
                @:check2r (@:checkr _f ?? throw "null pointer dereference")._buf._writeByte(_num[(0 : stdgo.GoInt)]);
                @:check2r _f._writePadding(((@:checkr _f ?? throw "null pointer dereference")._wid - (_num.length) : stdgo.GoInt));
                @:check2r (@:checkr _f ?? throw "null pointer dereference")._buf._write((_num.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                return;
            };
            @:check2r _f._pad(_num);
            return;
        };
        @:check2r _f._pad((_num.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _fmtQc( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _c:stdgo.GoUInt64):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        var _r = (_c : stdgo.GoInt32);
        if ((_c > (1114111i64 : stdgo.GoUInt64) : Bool)) {
            _r = (65533 : stdgo.GoInt32);
        };
        var _buf = ((@:checkr _f ?? throw "null pointer dereference")._intbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._plus) {
            @:check2r _f._pad(stdgo._internal.strconv.Strconv_appendquoterunetoascii.appendQuoteRuneToASCII(_buf, _r));
        } else {
            @:check2r _f._pad(stdgo._internal.strconv.Strconv_appendquoterune.appendQuoteRune(_buf, _r));
        };
    }
    @:keep
    @:tdfield
    static public function _fmtC( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _c:stdgo.GoUInt64):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        var _r = (_c : stdgo.GoInt32);
        if ((_c > (1114111i64 : stdgo.GoUInt64) : Bool)) {
            _r = (65533 : stdgo.GoInt32);
        };
        var _buf = ((@:checkr _f ?? throw "null pointer dereference")._intbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _f._pad(stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune(_buf, _r));
    }
    @:keep
    @:tdfield
    static public function _fmtQ( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _s:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        _s = @:check2r _f._truncateString(_s?.__copy__())?.__copy__();
        if (((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._sharp && stdgo._internal.strconv.Strconv_canbackquote.canBackquote(_s?.__copy__()) : Bool)) {
            @:check2r _f._padString(((("`" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            return;
        };
        var _buf = ((@:checkr _f ?? throw "null pointer dereference")._intbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._plus) {
            @:check2r _f._pad(stdgo._internal.strconv.Strconv_appendquotetoascii.appendQuoteToASCII(_buf, _s?.__copy__()));
        } else {
            @:check2r _f._pad(stdgo._internal.strconv.Strconv_appendquote.appendQuote(_buf, _s?.__copy__()));
        };
    }
    @:keep
    @:tdfield
    static public function _fmtBx( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _b:stdgo.Slice<stdgo.GoUInt8>, _digits:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        @:check2r _f._fmtSbx((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _b, _digits?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _fmtSx( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _s:stdgo.GoString, _digits:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        @:check2r _f._fmtSbx(_s?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), _digits?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _fmtSbx( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>, _digits:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        var _length = (_b.length : stdgo.GoInt);
        if (_b == null) {
            _length = (_s.length);
        };
        if (((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._precPresent && ((@:checkr _f ?? throw "null pointer dereference")._prec < _length : Bool) : Bool)) {
            _length = (@:checkr _f ?? throw "null pointer dereference")._prec;
        };
        var _width = ((2 : stdgo.GoInt) * _length : stdgo.GoInt);
        if ((_width > (0 : stdgo.GoInt) : Bool)) {
            if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._space) {
                if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._sharp) {
                    _width = (_width * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
                _width = (_width + ((_length - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            } else if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._sharp) {
                _width = (_width + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        } else {
            if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._widPresent) {
                @:check2r _f._writePadding((@:checkr _f ?? throw "null pointer dereference")._wid);
            };
            return;
        };
        if ((((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._widPresent && ((@:checkr _f ?? throw "null pointer dereference")._wid > _width : Bool) : Bool) && !(@:checkr _f ?? throw "null pointer dereference")._fmtFlags._minus : Bool)) {
            @:check2r _f._writePadding(((@:checkr _f ?? throw "null pointer dereference")._wid - _width : stdgo.GoInt));
        };
        var _buf = ((@:checkr _f ?? throw "null pointer dereference")._buf : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
        if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._sharp) {
            _buf = (_buf.__append__((48 : stdgo.GoUInt8), _digits[(16 : stdgo.GoInt)]));
        };
        var _c:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                if (((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._space && (_i > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _buf = (_buf.__append__((32 : stdgo.GoUInt8)));
                    if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._sharp) {
                        _buf = (_buf.__append__((48 : stdgo.GoUInt8), _digits[(16 : stdgo.GoInt)]));
                    };
                };
if (_b != null) {
                    _c = _b[(_i : stdgo.GoInt)];
                } else {
                    _c = _s[(_i : stdgo.GoInt)];
                };
_buf = (_buf.__append__(_digits[((_c >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)], _digits[((_c & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
                _i++;
            };
        };
        ((@:checkr _f ?? throw "null pointer dereference")._buf : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__setData__(_buf);
        if ((((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._widPresent && ((@:checkr _f ?? throw "null pointer dereference")._wid > _width : Bool) : Bool) && (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._minus : Bool)) {
            @:check2r _f._writePadding(((@:checkr _f ?? throw "null pointer dereference")._wid - _width : stdgo.GoInt));
        };
    }
    @:keep
    @:tdfield
    static public function _fmtBs( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        _b = @:check2r _f._truncate(_b);
        @:check2r _f._pad(_b);
    }
    @:keep
    @:tdfield
    static public function _fmtS( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _s:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        _s = @:check2r _f._truncateString(_s?.__copy__())?.__copy__();
        @:check2r _f._padString(_s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _truncate( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._precPresent) {
            var _n = ((@:checkr _f ?? throw "null pointer dereference")._prec : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_b.length) : Bool)) {
                    _n--;
                    if ((_n < (0 : stdgo.GoInt) : Bool)) {
                        return (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    var _wid = (1 : stdgo.GoInt);
                    if ((_b[(_i : stdgo.GoInt)] >= (128 : stdgo.GoUInt8) : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                            _wid = @:tmpset0 __tmp__._1;
                        };
                    };
                    _i = (_i + (_wid) : stdgo.GoInt);
                };
            };
        };
        return _b;
    }
    @:keep
    @:tdfield
    static public function _truncateString( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._precPresent) {
            var _n = ((@:checkr _f ?? throw "null pointer dereference")._prec : stdgo.GoInt);
            for (_i => _ in _s) {
                _n--;
                if ((_n < (0 : stdgo.GoInt) : Bool)) {
                    return (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                };
            };
        };
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _fmtInteger( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _u:stdgo.GoUInt64, _base:stdgo.GoInt, _isSigned:Bool, _verb:stdgo.GoInt32, _digits:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        var _negative = (_isSigned && ((_u : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool) : Bool);
        if (_negative) {
            _u = -_u;
        };
        var _buf = ((@:checkr _f ?? throw "null pointer dereference")._intbuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._widPresent || (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._precPresent : Bool)) {
            var _width = (((3 : stdgo.GoInt) + (@:checkr _f ?? throw "null pointer dereference")._wid : stdgo.GoInt) + (@:checkr _f ?? throw "null pointer dereference")._prec : stdgo.GoInt);
            if ((_width > (_buf.length) : Bool)) {
                _buf = (new stdgo.Slice<stdgo.GoUInt8>((_width : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var _prec = (0 : stdgo.GoInt);
        if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._precPresent) {
            _prec = (@:checkr _f ?? throw "null pointer dereference")._prec;
            if (((_prec == (0 : stdgo.GoInt)) && (_u == (0i64 : stdgo.GoUInt64)) : Bool)) {
                var _oldZero = ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero : Bool);
                (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero = false;
                @:check2r _f._writePadding((@:checkr _f ?? throw "null pointer dereference")._wid);
                (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero = _oldZero;
                return;
            };
        } else if (((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero && (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._widPresent : Bool)) {
            _prec = (@:checkr _f ?? throw "null pointer dereference")._wid;
            if (((_negative || (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._plus : Bool) || (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._space : Bool)) {
                _prec--;
            };
        };
        var _i = (_buf.length : stdgo.GoInt);
        {
            final __value__ = _base;
            if (__value__ == ((10 : stdgo.GoInt))) {
                while ((_u >= (10i64 : stdgo.GoUInt64) : Bool)) {
                    _i--;
                    var _next = (_u / (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _buf[(_i : stdgo.GoInt)] = ((((48i64 : stdgo.GoUInt64) + _u : stdgo.GoUInt64) - (_next * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
                    _u = _next;
                };
            } else if (__value__ == ((16 : stdgo.GoInt))) {
                while ((_u >= (16i64 : stdgo.GoUInt64) : Bool)) {
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = _digits[((_u & (15i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)];
                    _u = (_u >> ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                };
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                while ((_u >= (8i64 : stdgo.GoUInt64) : Bool)) {
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = (((48i64 : stdgo.GoUInt64) + (_u & (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
                    _u = (_u >> ((3i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                };
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                while ((_u >= (2i64 : stdgo.GoUInt64) : Bool)) {
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = (((48i64 : stdgo.GoUInt64) + (_u & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
                    _u = (_u >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                };
            } else {
                throw stdgo.Go.toInterface(("fmt: unknown base; can\'t happen" : stdgo.GoString));
            };
        };
        _i--;
        _buf[(_i : stdgo.GoInt)] = _digits[(_u : stdgo.GoInt)];
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_prec > ((_buf.length) - _i : stdgo.GoInt) : Bool) : Bool)) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        };
        if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._sharp) {
            {
                final __value__ = _base;
                if (__value__ == ((2 : stdgo.GoInt))) {
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = (98 : stdgo.GoUInt8);
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
                } else if (__value__ == ((8 : stdgo.GoInt))) {
                    if (_buf[(_i : stdgo.GoInt)] != ((48 : stdgo.GoUInt8))) {
                        _i--;
                        _buf[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
                    };
                } else if (__value__ == ((16 : stdgo.GoInt))) {
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = _digits[(16 : stdgo.GoInt)];
                    _i--;
                    _buf[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
                };
            };
        };
        if (_verb == ((79 : stdgo.GoInt32))) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (111 : stdgo.GoUInt8);
            _i--;
            _buf[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        };
        if (_negative) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (45 : stdgo.GoUInt8);
        } else if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._plus) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (43 : stdgo.GoUInt8);
        } else if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._space) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        };
        var _oldZero = ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero : Bool);
        (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero = false;
        @:check2r _f._pad((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero = _oldZero;
    }
    @:keep
    @:tdfield
    static public function _fmtUnicode( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _u:stdgo.GoUInt64):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        var _buf = ((@:checkr _f ?? throw "null pointer dereference")._intbuf.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _prec = (4 : stdgo.GoInt);
        if (((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._precPresent && ((@:checkr _f ?? throw "null pointer dereference")._prec > (4 : stdgo.GoInt) : Bool) : Bool)) {
            _prec = (@:checkr _f ?? throw "null pointer dereference")._prec;
            var _width = (((((2 : stdgo.GoInt) + _prec : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_width > (_buf.length) : Bool)) {
                _buf = (new stdgo.Slice<stdgo.GoUInt8>((_width : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var _i = (_buf.length : stdgo.GoInt);
        if ((((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._sharp && (_u <= (1114111i64 : stdgo.GoUInt64) : Bool) : Bool) && stdgo._internal.strconv.Strconv_isprint.isPrint((_u : stdgo.GoInt32)) : Bool)) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (39 : stdgo.GoUInt8);
            _i = (_i - (stdgo._internal.unicode.utf8.Utf8_runelen.runeLen((_u : stdgo.GoInt32))) : stdgo.GoInt);
            stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), (_u : stdgo.GoInt32));
            _i--;
            _buf[(_i : stdgo.GoInt)] = (39 : stdgo.GoUInt8);
            _i--;
            _buf[(_i : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        };
        while ((_u >= (16i64 : stdgo.GoUInt64) : Bool)) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = ("0123456789ABCDEFX" : stdgo.GoString)[((_u & (15i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)];
            _prec--;
            _u = (_u >> ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        _i--;
        _buf[(_i : stdgo.GoInt)] = ("0123456789ABCDEFX" : stdgo.GoString)[(_u : stdgo.GoInt)];
        _prec--;
        while ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _i--;
            _buf[(_i : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
            _prec--;
        };
        _i--;
        _buf[(_i : stdgo.GoInt)] = (43 : stdgo.GoUInt8);
        _i--;
        _buf[(_i : stdgo.GoInt)] = (85 : stdgo.GoUInt8);
        var _oldZero = ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero : Bool);
        (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero = false;
        @:check2r _f._pad((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero = _oldZero;
    }
    @:keep
    @:tdfield
    static public function _fmtBoolean( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _v:Bool):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        if (_v) {
            @:check2r _f._padString(("true" : stdgo.GoString));
        } else {
            @:check2r _f._padString(("false" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function _padString( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _s:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        if ((!(@:checkr _f ?? throw "null pointer dereference")._fmtFlags._widPresent || ((@:checkr _f ?? throw "null pointer dereference")._wid == (0 : stdgo.GoInt)) : Bool)) {
            @:check2r (@:checkr _f ?? throw "null pointer dereference")._buf._writeString(_s?.__copy__());
            return;
        };
        var _width = ((@:checkr _f ?? throw "null pointer dereference")._wid - stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString(_s?.__copy__()) : stdgo.GoInt);
        if (!(@:checkr _f ?? throw "null pointer dereference")._fmtFlags._minus) {
            @:check2r _f._writePadding(_width);
            @:check2r (@:checkr _f ?? throw "null pointer dereference")._buf._writeString(_s?.__copy__());
        } else {
            @:check2r (@:checkr _f ?? throw "null pointer dereference")._buf._writeString(_s?.__copy__());
            @:check2r _f._writePadding(_width);
        };
    }
    @:keep
    @:tdfield
    static public function _pad( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        if ((!(@:checkr _f ?? throw "null pointer dereference")._fmtFlags._widPresent || ((@:checkr _f ?? throw "null pointer dereference")._wid == (0 : stdgo.GoInt)) : Bool)) {
            @:check2r (@:checkr _f ?? throw "null pointer dereference")._buf._write(_b);
            return;
        };
        var _width = ((@:checkr _f ?? throw "null pointer dereference")._wid - stdgo._internal.unicode.utf8.Utf8_runecount.runeCount(_b) : stdgo.GoInt);
        if (!(@:checkr _f ?? throw "null pointer dereference")._fmtFlags._minus) {
            @:check2r _f._writePadding(_width);
            @:check2r (@:checkr _f ?? throw "null pointer dereference")._buf._write(_b);
        } else {
            @:check2r (@:checkr _f ?? throw "null pointer dereference")._buf._write(_b);
            @:check2r _f._writePadding(_width);
        };
    }
    @:keep
    @:tdfield
    static public function _writePadding( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _n:stdgo.GoInt):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            return;
        };
        var _buf = ((@:checkr _f ?? throw "null pointer dereference")._buf : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
        var _oldLen = (_buf.length : stdgo.GoInt);
        var _newLen = (_oldLen + _n : stdgo.GoInt);
        if ((_newLen > _buf.capacity : Bool)) {
            _buf = (new stdgo.Slice<stdgo.GoUInt8>(((_buf.capacity * (2 : stdgo.GoInt) : stdgo.GoInt) + _n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
            _buf.__copyTo__(((@:checkr _f ?? throw "null pointer dereference")._buf : stdgo._internal.fmt.Fmt_t_buffer.T_buffer));
        };
        var _padByte = ((32 : stdgo.GoUInt8) : stdgo.GoUInt8);
        if ((@:checkr _f ?? throw "null pointer dereference")._fmtFlags._zero) {
            _padByte = (48 : stdgo.GoUInt8);
        };
        var _padding = (_buf.__slice__(_oldLen, _newLen) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
        for (_i => _ in _padding) {
            _padding[(_i : stdgo.GoInt)] = _padByte;
        };
        ((@:checkr _f ?? throw "null pointer dereference")._buf : stdgo._internal.fmt.Fmt_t_buffer.T_buffer).__setData__((_buf.__slice__(0, _newLen) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer));
    }
    @:keep
    @:tdfield
    static public function _init( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>, _buf:stdgo.Ref<stdgo._internal.fmt.Fmt_t_buffer.T_buffer>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._buf = _buf;
        @:check2r _f._clearflags();
    }
    @:keep
    @:tdfield
    static public function _clearflags( _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.fmt.Fmt_t_fmt.T_fmt> = _f;
        (@:checkr _f ?? throw "null pointer dereference")._fmtFlags = (new stdgo._internal.fmt.Fmt_t_fmtflags.T_fmtFlags() : stdgo._internal.fmt.Fmt_t_fmtflags.T_fmtFlags);
    }
}
