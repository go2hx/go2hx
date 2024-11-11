package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_ss_asInterface) class T_ss_static_extension {
    @:keep
    static public function _doScanf( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        var _numProcessed = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                __deferstack__.unshift(() -> stdgo._internal.fmt.Fmt__errorHandler._errorHandler(_a0));
            };
            var _end = ((_format.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i <= _end : Bool)) {
                    var _w = (_s._advance((_format.__slice__(_i) : stdgo.GoString)?.__copy__()) : stdgo.GoInt);
                    if ((_w > (0 : stdgo.GoInt) : Bool)) {
                        _i = (_i + (_w) : stdgo.GoInt);
                        continue;
                    };
                    if (_format[(_i : stdgo.GoInt)] != ((37 : stdgo.GoUInt8))) {
                        if ((_w < (0 : stdgo.GoInt) : Bool)) {
                            _s._errorString(("input does not match format" : stdgo.GoString));
                        };
                        break;
                    };
                    _i++;
                    var _widPresent:Bool = false;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__parsenum._parsenum(_format?.__copy__(), _i, _end);
                        _s._ssave._maxWid = __tmp__._0;
                        _widPresent = __tmp__._1;
                        _i = __tmp__._2;
                    };
                    if (!_widPresent) {
                        _s._ssave._maxWid = (1073741824 : stdgo.GoInt);
                    };
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
                    _i = (_i + (_w) : stdgo.GoInt);
                    if (_c != ((99 : stdgo.GoInt32))) {
                        _s.skipSpace();
                    };
                    if (_c == ((37 : stdgo.GoInt32))) {
                        _s._scanPercent();
                        continue;
                    };
                    _s._ssave._argLimit = _s._ssave._limit;
                    {
                        var _f = (_s._count + _s._ssave._maxWid : stdgo.GoInt);
                        if ((_f < _s._ssave._argLimit : Bool)) {
                            _s._ssave._argLimit = _f;
                        };
                    };
                    if ((_numProcessed >= (_a.length) : Bool)) {
                        _s._errorString(((("too few operands for format \'%" : stdgo.GoString) + (_format.__slice__((_i - _w : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\'" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        break;
                    };
                    var _arg = (_a[(_numProcessed : stdgo.GoInt)] : stdgo.AnyInterface);
                    _s._scanOne(_c, _arg);
                    _numProcessed++;
                    _s._ssave._argLimit = _s._ssave._limit;
                };
            };
            if ((_numProcessed < (_a.length) : Bool)) {
                _s._errorString(("too many operands" : stdgo.GoString));
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numProcessed, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numProcessed, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numProcessed, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _advance( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _format:stdgo.GoString):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var _i = (0 : stdgo.GoInt);
        while ((_i < (_format.length) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _fmtc:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
            if (stdgo._internal.fmt.Fmt__isSpace._isSpace(_fmtc)) {
                var _newlines = (0 : stdgo.GoInt);
                var _trailingSpace = (false : Bool);
                while ((stdgo._internal.fmt.Fmt__isSpace._isSpace(_fmtc) && (_i < (_format.length) : Bool) : Bool)) {
                    if (_fmtc == ((10 : stdgo.GoInt32))) {
                        _newlines++;
                        _trailingSpace = false;
                    } else {
                        _trailingSpace = true;
                    };
                    _i = (_i + (_w) : stdgo.GoInt);
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_format.__slice__(_i) : stdgo.GoString)?.__copy__());
                        _fmtc = __tmp__._0;
                        _w = __tmp__._1;
                    };
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _newlines : Bool)) {
                        var _inputc = (_s._getRune() : stdgo.GoInt32);
while ((stdgo._internal.fmt.Fmt__isSpace._isSpace(_inputc) && (_inputc != (10 : stdgo.GoInt32)) : Bool)) {
                            _inputc = _s._getRune();
                        };
if (((_inputc != (10 : stdgo.GoInt32)) && (_inputc != (-1 : stdgo.GoInt32)) : Bool)) {
                            _s._errorString(("newline in format does not match input" : stdgo.GoString));
                        };
                        _j++;
                    };
                };
                if (_trailingSpace) {
                    var _inputc = (_s._getRune() : stdgo.GoInt32);
                    if (_newlines == ((0 : stdgo.GoInt))) {
                        if ((!stdgo._internal.fmt.Fmt__isSpace._isSpace(_inputc) && (_inputc != (-1 : stdgo.GoInt32)) : Bool)) {
                            _s._errorString(("expected space in input to match format" : stdgo.GoString));
                        };
                        if (_inputc == ((10 : stdgo.GoInt32))) {
                            _s._errorString(("newline in input does not match format" : stdgo.GoString));
                        };
                    };
                    while ((stdgo._internal.fmt.Fmt__isSpace._isSpace(_inputc) && (_inputc != (10 : stdgo.GoInt32)) : Bool)) {
                        _inputc = _s._getRune();
                    };
                    if (_inputc != ((-1 : stdgo.GoInt32))) {
                        _s.unreadRune();
                    };
                };
                continue;
            };
            if (_fmtc == ((37 : stdgo.GoInt32))) {
                if ((_i + _w : stdgo.GoInt) == ((_format.length))) {
                    _s._errorString(("missing verb: % at end of format string" : stdgo.GoString));
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_format.__slice__((_i + _w : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _nextc:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
                if (_nextc != ((37 : stdgo.GoInt32))) {
                    return _i;
                };
                _i = (_i + (_w) : stdgo.GoInt);
            };
            var _inputc = (_s._mustReadRune() : stdgo.GoInt32);
            if (_fmtc != (_inputc)) {
                _s.unreadRune();
                return (-1 : stdgo.GoInt);
            };
            _i = (_i + (_w) : stdgo.GoInt);
        };
        return _i;
    }
    @:keep
    static public function _doScan( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _a:stdgo.Slice<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        var _numProcessed = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                __deferstack__.unshift(() -> stdgo._internal.fmt.Fmt__errorHandler._errorHandler(_a0));
            };
            for (__0 => _arg in _a) {
                _s._scanOne((118 : stdgo.GoInt32), _arg);
                _numProcessed++;
            };
            if (_s._ssave._nlIsEnd) {
                while (true) {
                    var _r = (_s._getRune() : stdgo.GoInt32);
                    if (((_r == (10 : stdgo.GoInt32)) || (_r == (-1 : stdgo.GoInt32)) : Bool)) {
                        break;
                    };
                    if (!stdgo._internal.fmt.Fmt__isSpace._isSpace(_r)) {
                        _s._errorString(("expected newline" : stdgo.GoString));
                        break;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numProcessed, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numProcessed, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _numProcessed, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _scanOne( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _verb:stdgo.GoInt32, _arg:stdgo.AnyInterface):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        _s._buf = (_s._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_T_buffer.T_buffer);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_arg : stdgo._internal.fmt.Fmt_Scanner.Scanner)) : stdgo._internal.fmt.Fmt_Scanner.Scanner), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.fmt.Fmt_Scanner.Scanner), _1 : false };
            }, _v = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _err = _v.scan(stdgo.Go.asInterface(_s), _verb);
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                    _s._error(_err);
                };
                return;
            };
        };
        {
            final __type__ = _arg;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>))) {
                var _v:stdgo.Pointer<Bool> = __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<Bool>) : __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__().value;
                _v.value = _s._scanBool(_verb);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoComplex64>))) {
                var _v:stdgo.Pointer<stdgo.GoComplex64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoComplex64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoComplex64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoComplex64>) : __type__.__underlying__().value;
                _v.value = (_s._scanComplex(_verb, (64 : stdgo.GoInt)) : stdgo.GoComplex64);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoComplex128>))) {
                var _v:stdgo.Pointer<stdgo.GoComplex128> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoComplex128>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoComplex128>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoComplex128>) : __type__.__underlying__().value;
                _v.value = _s._scanComplex(_verb, (128 : stdgo.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt>))) {
                var _v:stdgo.Pointer<stdgo.GoInt> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt>) : __type__.__underlying__().value;
                _v.value = (_s._scanInt(_verb, (32 : stdgo.GoInt)) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt8>))) {
                var _v:stdgo.Pointer<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__().value;
                _v.value = (_s._scanInt(_verb, (8 : stdgo.GoInt)) : stdgo.GoInt8);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt16>))) {
                var _v:stdgo.Pointer<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__().value;
                _v.value = (_s._scanInt(_verb, (16 : stdgo.GoInt)) : stdgo.GoInt16);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt32>))) {
                var _v:stdgo.Pointer<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__().value;
                _v.value = (_s._scanInt(_verb, (32 : stdgo.GoInt)) : stdgo.GoInt32);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt64>))) {
                var _v:stdgo.Pointer<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__().value;
                _v.value = _s._scanInt(_verb, (64 : stdgo.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (32 : stdgo.GoInt)) : stdgo.GoUInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt8>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (8 : stdgo.GoInt)) : stdgo.GoUInt8);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt16>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (16 : stdgo.GoInt)) : stdgo.GoUInt16);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt32>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (32 : stdgo.GoInt)) : stdgo.GoUInt32);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt64>))) {
                var _v:stdgo.Pointer<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__().value;
                _v.value = _s._scanUint(_verb, (64 : stdgo.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUIntptr>))) {
                var _v:stdgo.Pointer<stdgo.GoUIntptr> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUIntptr>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUIntptr>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUIntptr>) : __type__.__underlying__().value;
                _v.value = (_s._scanUint(_verb, (32 : stdgo.GoInt)) : stdgo.GoUIntptr);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat32>))) {
                var _v:stdgo.Pointer<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__().value;
                if (_s._okVerb(_verb, ("beEfFgGv" : stdgo.GoString), ("float32" : stdgo.GoString))) {
                    _s.skipSpace();
                    _s._notEOF();
                    _v.value = (_s._convertFloat(_s._floatToken()?.__copy__(), (32 : stdgo.GoInt)) : stdgo.GoFloat32);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat64>))) {
                var _v:stdgo.Pointer<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__().value;
                if (_s._okVerb(_verb, ("beEfFgGv" : stdgo.GoString), ("float64" : stdgo.GoString))) {
                    _s.skipSpace();
                    _s._notEOF();
                    _v.value = _s._convertFloat(_s._floatToken()?.__copy__(), (64 : stdgo.GoInt));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoString>))) {
                var _v:stdgo.Pointer<stdgo.GoString> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoString>) : __type__.__underlying__().value;
                _v.value = _s._convertString(_verb)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                var _v:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value;
                (_v : stdgo.Slice<stdgo.GoUInt8>).__setData__((_s._convertString(_verb) : stdgo.Slice<stdgo.GoUInt8>));
            } else {
                var _v:stdgo.AnyInterface = __type__?.__underlying__();
                var _val = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                var _ptr = (_val?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                if (_ptr.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _s._errorString((("type not a pointer: " : stdgo.GoString) + (_val.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    return;
                };
                {
                    var _v = (_ptr.elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                    {
                        final __value__ = _v.kind();
                        if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            _v.setBool(_s._scanBool(_verb));
                        } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            _v.setInt(_s._scanInt(_verb, _v.type().bits()));
                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            _v.setUint(_s._scanUint(_verb, _v.type().bits()));
                        } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            _v.setString(_s._convertString(_verb)?.__copy__());
                        } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            var _typ = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                            if (_typ.elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _s._errorString((("can\'t scan type: " : stdgo.GoString) + (_val.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                            };
                            var _str = (_s._convertString(_verb)?.__copy__() : stdgo.GoString);
                            _v.set(stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_typ, (_str.length), (_str.length))?.__copy__());
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < (_str.length) : Bool)) {
                                    _v.index(_i).setUint((_str[(_i : stdgo.GoInt)] : stdgo.GoUInt64));
                                    _i++;
                                };
                            };
                        } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            _s.skipSpace();
                            _s._notEOF();
                            _v.setFloat(_s._convertFloat(_s._floatToken()?.__copy__(), _v.type().bits()));
                        } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            _v.setComplex(_s._scanComplex(_verb, _v.type().bits()));
                        } else {
                            _s._errorString((("can\'t scan type: " : stdgo.GoString) + (_val.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        };
                    };
                };
            };
        };
    }
    @:keep
    static public function _scanPercent( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        _s.skipSpace();
        _s._notEOF();
        if (!_s._accept(("%" : stdgo.GoString))) {
            _s._errorString(("missing literal %" : stdgo.GoString));
        };
    }
    @:keep
    static public function _hexString( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        _s._notEOF();
        while (true) {
            var __tmp__ = _s._hexByte(), _b:stdgo.GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                break;
            };
            _s._buf._writeByte(_b);
        };
        if ((_s._buf.length) == ((0 : stdgo.GoInt))) {
            _s._errorString(("no hex data for %x string" : stdgo.GoString));
            return stdgo.Go.str()?.__copy__();
        };
        return (_s._buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _hexByte( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var _b = (0 : stdgo.GoUInt8), _ok = false;
        var _rune1 = (_s._getRune() : stdgo.GoInt32);
        if (_rune1 == ((-1 : stdgo.GoInt32))) {
            return { _0 : _b, _1 : _ok };
        };
        var __tmp__ = stdgo._internal.fmt.Fmt__hexDigit._hexDigit(_rune1), _value1:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _s.unreadRune();
            return { _0 : _b, _1 : _ok };
        };
        var __tmp__ = stdgo._internal.fmt.Fmt__hexDigit._hexDigit(_s._mustReadRune()), _value2:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _s._errorString(("illegal hex digit" : stdgo.GoString));
            return { _0 : _b, _1 : _ok };
        };
        return { _0 : (((_value1 << (4i64 : stdgo.GoUInt64) : stdgo.GoInt) | _value2 : stdgo.GoInt) : stdgo.GoUInt8), _1 : true };
    }
    @:keep
    static public function _quotedString( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        _s._notEOF();
        var _quote = (_s._getRune() : stdgo.GoInt32);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _quote;
                    if (__value__ == ((96 : stdgo.GoInt32))) {
                        while (true) {
                            var _r = (_s._mustReadRune() : stdgo.GoInt32);
                            if (_r == (_quote)) {
                                break;
                            };
                            _s._buf._writeRune(_r);
                        };
                        return (_s._buf : stdgo.GoString)?.__copy__();
                        break;
                    } else if (__value__ == ((34 : stdgo.GoInt32))) {
                        _s._buf._writeByte((34 : stdgo.GoUInt8));
                        while (true) {
                            var _r = (_s._mustReadRune() : stdgo.GoInt32);
                            _s._buf._writeRune(_r);
                            if (_r == ((92 : stdgo.GoInt32))) {
                                _s._buf._writeRune(_s._mustReadRune());
                            } else if (_r == ((34 : stdgo.GoInt32))) {
                                break;
                            };
                        };
                        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((_s._buf : stdgo.GoString)?.__copy__()), _result:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _s._error(_err);
                        };
                        return _result?.__copy__();
                        break;
                    } else {
                        _s._errorString(("expected quoted string" : stdgo.GoString));
                    };
                };
                break;
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function _convertString( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _verb:stdgo.GoInt32):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var _str = ("" : stdgo.GoString);
        if (!_s._okVerb(_verb, ("svqxX" : stdgo.GoString), ("string" : stdgo.GoString))) {
            return stdgo.Go.str()?.__copy__();
        };
        _s.skipSpace();
        _s._notEOF();
        {
            final __value__ = _verb;
            if (__value__ == ((113 : stdgo.GoInt32))) {
                _str = _s._quotedString()?.__copy__();
            } else if (__value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                _str = _s._hexString()?.__copy__();
            } else {
                _str = (_s._token(true, stdgo._internal.fmt.Fmt__notSpace._notSpace) : stdgo.GoString)?.__copy__();
            };
        };
        return _str;
    }
    @:keep
    static public function _scanComplex( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _verb:stdgo.GoInt32, _n:stdgo.GoInt):stdgo.GoComplex128 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        if (!_s._okVerb(_verb, ("beEfFgGv" : stdgo.GoString), ("complex" : stdgo.GoString))) {
            return ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
        };
        _s.skipSpace();
        _s._notEOF();
        var __tmp__ = _s._complexTokens(), _sreal:stdgo.GoString = __tmp__._0, _simag:stdgo.GoString = __tmp__._1;
        var _real = (_s._convertFloat(_sreal?.__copy__(), (_n / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoFloat64);
        var _imag = (_s._convertFloat(_simag?.__copy__(), (_n / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoFloat64);
        return new stdgo.GoComplex128(_real, _imag);
    }
    @:keep
    static public function _convertFloat( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _str:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoFloat64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        {
            var _p = (stdgo._internal.fmt.Fmt__indexRune._indexRune(_str?.__copy__(), (112 : stdgo.GoInt32)) : stdgo.GoInt);
            if (((_p >= (0 : stdgo.GoInt) : Bool) && !stdgo._internal.fmt.Fmt__hasX._hasX(_str?.__copy__()) : Bool)) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat((_str.__slice__(0, _p) : stdgo.GoString)?.__copy__(), _n), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _e.num = _str?.__copy__();
                        };
                    };
                    _s._error(_err);
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_str.__slice__((_p + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _e.num = _str?.__copy__();
                        };
                    };
                    _s._error(_err);
                };
                return stdgo._internal.math.Math_ldexp.ldexp(_f, _m);
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_str?.__copy__(), _n), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _s._error(_err);
        };
        return _f;
    }
    @:keep
    static public function _complexTokens( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var _real = ("" : stdgo.GoString), _imag = ("" : stdgo.GoString);
        var _parens = (_s._accept(("(" : stdgo.GoString)) : Bool);
        _real = _s._floatToken()?.__copy__();
        _s._buf = (_s._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_T_buffer.T_buffer);
        if (!_s._accept(("+-" : stdgo.GoString))) {
            _s._error(stdgo._internal.fmt.Fmt__errComplex._errComplex);
        };
        var _imagSign = ((_s._buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _imag = _s._floatToken()?.__copy__();
        if (!_s._accept(("i" : stdgo.GoString))) {
            _s._error(stdgo._internal.fmt.Fmt__errComplex._errComplex);
        };
        if ((_parens && !_s._accept((")" : stdgo.GoString)) : Bool)) {
            _s._error(stdgo._internal.fmt.Fmt__errComplex._errComplex);
        };
        return { _0 : _real?.__copy__(), _1 : (_imagSign + _imag?.__copy__() : stdgo.GoString)?.__copy__() };
    }
    @:keep
    static public function _floatToken( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        _s._buf = (_s._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_T_buffer.T_buffer);
        if (((_s._accept(("nN" : stdgo.GoString)) && _s._accept(("aA" : stdgo.GoString)) : Bool) && _s._accept(("nN" : stdgo.GoString)) : Bool)) {
            return (_s._buf : stdgo.GoString)?.__copy__();
        };
        _s._accept(("+-" : stdgo.GoString));
        if (((_s._accept(("iI" : stdgo.GoString)) && _s._accept(("nN" : stdgo.GoString)) : Bool) && _s._accept(("fF" : stdgo.GoString)) : Bool)) {
            return (_s._buf : stdgo.GoString)?.__copy__();
        };
        var _digits = ("0123456789_" : stdgo.GoString);
        var _exp = ("eEpP" : stdgo.GoString);
        if ((_s._accept(("0" : stdgo.GoString)) && _s._accept(("xX" : stdgo.GoString)) : Bool)) {
            _digits = ("0123456789aAbBcCdDeEfF_" : stdgo.GoString);
            _exp = ("pP" : stdgo.GoString);
        };
        while (_s._accept(_digits?.__copy__())) {};
        if (_s._accept(("." : stdgo.GoString))) {
            while (_s._accept(_digits?.__copy__())) {};
        };
        if (_s._accept(_exp?.__copy__())) {
            _s._accept(("+-" : stdgo.GoString));
            while (_s._accept(("0123456789_" : stdgo.GoString))) {};
        };
        return (_s._buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _scanUint( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _verb:stdgo.GoInt32, _bitSize:stdgo.GoInt):stdgo.GoUInt64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        if (_verb == ((99 : stdgo.GoInt32))) {
            return (_s._scanRune(_bitSize) : stdgo.GoUInt64);
        };
        _s.skipSpace();
        _s._notEOF();
        var __tmp__ = _s._getBase(_verb), _base:stdgo.GoInt = __tmp__._0, _digits:stdgo.GoString = __tmp__._1;
        var _haveDigits = (false : Bool);
        if (_verb == ((85 : stdgo.GoInt32))) {
            if ((!_s._consume(("U" : stdgo.GoString), false) || !_s._consume(("+" : stdgo.GoString), false) : Bool)) {
                _s._errorString(("bad unicode format " : stdgo.GoString));
            };
        } else if (_verb == ((118 : stdgo.GoInt32))) {
            {
                var __tmp__ = _s._scanBasePrefix();
                _base = __tmp__._0;
                _digits = __tmp__._1?.__copy__();
                _haveDigits = __tmp__._2;
            };
        };
        var _tok = (_s._scanNumber(_digits?.__copy__(), _haveDigits)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_tok?.__copy__(), _base, (64 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _s._error(_err);
        };
        var _n = (_bitSize : stdgo.GoUInt);
        var _x = (((_i << (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoUInt64)) >> (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoUInt64);
        if (_x != (_i)) {
            _s._errorString((("unsigned integer overflow on token " : stdgo.GoString) + _tok?.__copy__() : stdgo.GoString)?.__copy__());
        };
        return _i;
    }
    @:keep
    static public function _scanInt( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _verb:stdgo.GoInt32, _bitSize:stdgo.GoInt):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        if (_verb == ((99 : stdgo.GoInt32))) {
            return _s._scanRune(_bitSize);
        };
        _s.skipSpace();
        _s._notEOF();
        var __tmp__ = _s._getBase(_verb), _base:stdgo.GoInt = __tmp__._0, _digits:stdgo.GoString = __tmp__._1;
        var _haveDigits = (false : Bool);
        if (_verb == ((85 : stdgo.GoInt32))) {
            if ((!_s._consume(("U" : stdgo.GoString), false) || !_s._consume(("+" : stdgo.GoString), false) : Bool)) {
                _s._errorString(("bad unicode format " : stdgo.GoString));
            };
        } else {
            _s._accept(("+-" : stdgo.GoString));
            if (_verb == ((118 : stdgo.GoInt32))) {
                {
                    var __tmp__ = _s._scanBasePrefix();
                    _base = __tmp__._0;
                    _digits = __tmp__._1?.__copy__();
                    _haveDigits = __tmp__._2;
                };
            };
        };
        var _tok = (_s._scanNumber(_digits?.__copy__(), _haveDigits)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_tok?.__copy__(), _base, (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _s._error(_err);
        };
        var _n = (_bitSize : stdgo.GoUInt);
        var _x = (((_i << (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoInt64)) >> (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoInt64);
        if (_x != (_i)) {
            _s._errorString((("integer overflow on token " : stdgo.GoString) + _tok?.__copy__() : stdgo.GoString)?.__copy__());
        };
        return _i;
    }
    @:keep
    static public function _scanBasePrefix( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var _base = (0 : stdgo.GoInt), _digits = ("" : stdgo.GoString), _zeroFound = false;
        if (!_s._peek(("0" : stdgo.GoString))) {
            return { _0 : (0 : stdgo.GoInt), _1 : ("0123456789_" : stdgo.GoString), _2 : false };
        };
        _s._accept(("0" : stdgo.GoString));
        if (_s._peek(("bB" : stdgo.GoString))) {
            _s._consume(("bB" : stdgo.GoString), true);
            return { _0 : (0 : stdgo.GoInt), _1 : ("01_" : stdgo.GoString), _2 : true };
        } else if (_s._peek(("oO" : stdgo.GoString))) {
            _s._consume(("oO" : stdgo.GoString), true);
            return { _0 : (0 : stdgo.GoInt), _1 : ("01234567_" : stdgo.GoString), _2 : true };
        } else if (_s._peek(("xX" : stdgo.GoString))) {
            _s._consume(("xX" : stdgo.GoString), true);
            return { _0 : (0 : stdgo.GoInt), _1 : ("0123456789aAbBcCdDeEfF_" : stdgo.GoString), _2 : true };
        } else {
            return { _0 : (0 : stdgo.GoInt), _1 : ("01234567_" : stdgo.GoString), _2 : true };
        };
    }
    @:keep
    static public function _scanRune( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _bitSize:stdgo.GoInt):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        _s._notEOF();
        var _r = (_s._getRune() : stdgo.GoInt32);
        var _n = (_bitSize : stdgo.GoUInt);
        var _x = ((((_r : stdgo.GoInt64) << (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoInt64)) >> (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoInt64);
        if (_x != ((_r : stdgo.GoInt64))) {
            _s._errorString((("overflow on character value " : stdgo.GoString) + (_r : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        return (_r : stdgo.GoInt64);
    }
    @:keep
    static public function _scanNumber( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _digits:stdgo.GoString, _haveDigits:Bool):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        if (!_haveDigits) {
            _s._notEOF();
            if (!_s._accept(_digits?.__copy__())) {
                _s._errorString(("expected integer" : stdgo.GoString));
            };
        };
        while (_s._accept(_digits?.__copy__())) {};
        return (_s._buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _getBase( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _verb:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var _base = (0 : stdgo.GoInt), _digits = ("" : stdgo.GoString);
        _s._okVerb(_verb, ("bdoUxXv" : stdgo.GoString), ("integer" : stdgo.GoString));
        _base = (10 : stdgo.GoInt);
        _digits = ("0123456789" : stdgo.GoString);
        {
            final __value__ = _verb;
            if (__value__ == ((98 : stdgo.GoInt32))) {
                _base = (2 : stdgo.GoInt);
                _digits = ("01" : stdgo.GoString);
            } else if (__value__ == ((111 : stdgo.GoInt32))) {
                _base = (8 : stdgo.GoInt);
                _digits = ("01234567" : stdgo.GoString);
            } else if (__value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32)) || __value__ == ((85 : stdgo.GoInt32))) {
                _base = (16 : stdgo.GoInt);
                _digits = ("0123456789aAbBcCdDeEfF" : stdgo.GoString);
            };
        };
        return { _0 : _base, _1 : _digits };
    }
    @:keep
    static public function _scanBool( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _verb:stdgo.GoInt32):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        _s.skipSpace();
        _s._notEOF();
        if (!_s._okVerb(_verb, ("tv" : stdgo.GoString), ("boolean" : stdgo.GoString))) {
            return false;
        };
        {
            final __value__ = _s._getRune();
            if (__value__ == ((48 : stdgo.GoInt32))) {
                return false;
            } else if (__value__ == ((49 : stdgo.GoInt32))) {
                return true;
            } else if (__value__ == ((116 : stdgo.GoInt32)) || __value__ == ((84 : stdgo.GoInt32))) {
                if ((_s._accept(("rR" : stdgo.GoString)) && ((!_s._accept(("uU" : stdgo.GoString)) || !_s._accept(("eE" : stdgo.GoString)) : Bool)) : Bool)) {
                    _s._error(stdgo._internal.fmt.Fmt__errBool._errBool);
                };
                return true;
            } else if (__value__ == ((102 : stdgo.GoInt32)) || __value__ == ((70 : stdgo.GoInt32))) {
                if ((_s._accept(("aA" : stdgo.GoString)) && (((!_s._accept(("lL" : stdgo.GoString)) || !_s._accept(("sS" : stdgo.GoString)) : Bool) || !_s._accept(("eE" : stdgo.GoString)) : Bool)) : Bool)) {
                    _s._error(stdgo._internal.fmt.Fmt__errBool._errBool);
                };
                return false;
            };
        };
        return false;
    }
    @:keep
    static public function _okVerb( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _verb:stdgo.GoInt32, _okVerbs:stdgo.GoString, _typ:stdgo.GoString):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        for (__0 => _v in _okVerbs) {
            if (_v == (_verb)) {
                return true;
            };
        };
        _s._errorString((((("bad verb \'%" : stdgo.GoString) + (_verb : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\' for " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _typ?.__copy__() : stdgo.GoString)?.__copy__());
        return false;
    }
    @:keep
    static public function _accept( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _ok:stdgo.GoString):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        return _s._consume(_ok?.__copy__(), true);
    }
    @:keep
    static public function _notEOF( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        {
            var _r = (_s._getRune() : stdgo.GoInt32);
            if (_r == ((-1 : stdgo.GoInt32))) {
                throw stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof);
            };
        };
        _s.unreadRune();
    }
    @:keep
    static public function _peek( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _ok:stdgo.GoString):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var _r = (_s._getRune() : stdgo.GoInt32);
        if (_r != ((-1 : stdgo.GoInt32))) {
            _s.unreadRune();
        };
        return (stdgo._internal.fmt.Fmt__indexRune._indexRune(_ok?.__copy__(), _r) >= (0 : stdgo.GoInt) : Bool);
    }
    @:keep
    static public function _consume( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _ok:stdgo.GoString, _accept:Bool):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var _r = (_s._getRune() : stdgo.GoInt32);
        if (_r == ((-1 : stdgo.GoInt32))) {
            return false;
        };
        if ((stdgo._internal.fmt.Fmt__indexRune._indexRune(_ok?.__copy__(), _r) >= (0 : stdgo.GoInt) : Bool)) {
            if (_accept) {
                _s._buf._writeRune(_r);
            };
            return true;
        };
        if (((_r != (-1 : stdgo.GoInt32)) && _accept : Bool)) {
            _s.unreadRune();
        };
        return false;
    }
    @:keep
    static public function _token( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        if (_skipSpace) {
            _s.skipSpace();
        };
        while (true) {
            var _r = (_s._getRune() : stdgo.GoInt32);
            if (_r == ((-1 : stdgo.GoInt32))) {
                break;
            };
            if (!_f(_r)) {
                _s.unreadRune();
                break;
            };
            _s._buf._writeRune(_r);
        };
        return _s._buf;
    }
    @:keep
    static public function skipSpace( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        while (true) {
            var _r = (_s._getRune() : stdgo.GoInt32);
            if (_r == ((-1 : stdgo.GoInt32))) {
                return;
            };
            if (((_r == (13 : stdgo.GoInt32)) && _s._peek(("\n" : stdgo.GoString)) : Bool)) {
                continue;
            };
            if (_r == ((10 : stdgo.GoInt32))) {
                if (_s._ssave._nlIsSpace) {
                    continue;
                };
                _s._errorString(("unexpected newline" : stdgo.GoString));
                return;
            };
            if (!stdgo._internal.fmt.Fmt__isSpace._isSpace(_r)) {
                _s.unreadRune();
                break;
            };
        };
    }
    @:keep
    static public function _free( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _old:stdgo._internal.fmt.Fmt_T_ssave.T_ssave):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        if (_old._validSave) {
            _s._ssave = _old?.__copy__();
            return;
        };
        if ((_s._buf.capacity > (1024 : stdgo.GoInt) : Bool)) {
            return;
        };
        _s._buf = (_s._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_T_buffer.T_buffer);
        _s._rs = (null : stdgo._internal.io.Io_RuneScanner.RuneScanner);
        stdgo._internal.fmt.Fmt__ssFree._ssFree.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
    }
    @:keep
    static public function token( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        var _tok = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _e = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_e != null) {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_e : stdgo._internal.fmt.Fmt_T_scanError.T_scanError)) : stdgo._internal.fmt.Fmt_T_scanError.T_scanError), _1 : true };
                                } catch(_) {
                                    { _0 : ({} : stdgo._internal.fmt.Fmt_T_scanError.T_scanError), _1 : false };
                                }, _se = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    _err = _se._err;
                                } else {
                                    throw stdgo.Go.toInterface(_e);
                                };
                            };
                        };
                    };
                };
                a();
            });
            if (_f == null) {
                _f = stdgo._internal.fmt.Fmt__notSpace._notSpace;
            };
            _s._buf = (_s._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_T_buffer.T_buffer);
            _tok = _s._token(_skipSpace, _f);
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _tok, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _tok, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _tok, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _errorString( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _err:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        throw stdgo.Go.toInterface((new stdgo._internal.fmt.Fmt_T_scanError.T_scanError(stdgo._internal.errors.Errors_new_.new_(_err?.__copy__())) : stdgo._internal.fmt.Fmt_T_scanError.T_scanError));
    }
    @:keep
    static public function _error( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        throw stdgo.Go.toInterface((new stdgo._internal.fmt.Fmt_T_scanError.T_scanError(_err) : stdgo._internal.fmt.Fmt_T_scanError.T_scanError));
    }
    @:keep
    static public function unreadRune( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        _s._rs.unreadRune();
        _s._atEOF = false;
        _s._count--;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _mustReadRune( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var _r = (0 : stdgo.GoInt32);
        _r = _s._getRune();
        if (_r == ((-1 : stdgo.GoInt32))) {
            _s._error(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF);
        };
        return _r;
    }
    @:keep
    static public function _getRune( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var _r = (0 : stdgo.GoInt32);
        var __tmp__ = _s.readRune(), _r:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                return (-1 : stdgo.GoInt32);
            };
            _s._error(_err);
        };
        return _r;
    }
    @:keep
    static public function width( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var _wid = (0 : stdgo.GoInt), _ok = false;
        if (_s._ssave._maxWid == ((1073741824 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : false };
        };
        return { _0 : _s._ssave._maxWid, _1 : true };
    }
    @:keep
    static public function readRune( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_s._atEOF || (_s._count >= _s._ssave._argLimit : Bool) : Bool)) {
            _err = stdgo._internal.io.Io_eof.eof;
            return { _0 : _r, _1 : _size, _2 : _err };
        };
        {
            var __tmp__ = _s._rs.readRune();
            _r = __tmp__._0;
            _size = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err == null) {
            _s._count++;
            if ((_s._ssave._nlIsEnd && (_r == (10 : stdgo.GoInt32)) : Bool)) {
                _s._atEOF = true;
            };
        } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
            _s._atEOF = true;
        };
        return { _0 : _r, _1 : _size, _2 : _err };
    }
    @:keep
    static public function read( _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = _s;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("ScanState\'s Read should not be called. Use ReadRune" : stdgo.GoString)) };
    }
}
