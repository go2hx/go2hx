package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_decodeState_asInterface) class T_decodeState_static_extension {
    @:keep
    static public function _literalInterface( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>):stdgo.AnyInterface {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        var _start = (_d._readIndex() : stdgo.GoInt);
        _d._rescanLiteral();
        var _item = (_d._data.__slice__(_start, _d._readIndex()) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _c = (_item[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            {
                final __value__ = _c;
                if (__value__ == ((110 : stdgo.GoUInt8))) {
                    return (null : stdgo.AnyInterface);
                } else if (__value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((102 : stdgo.GoUInt8))) {
                    return stdgo.Go.toInterface(_c == ((116 : stdgo.GoUInt8)));
                } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                    var __tmp__ = stdgo._internal.encoding.json.Json__unquote._unquote(_item), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
                    };
                    return stdgo.Go.toInterface(_s);
                } else {
                    if (((_c != (45 : stdgo.GoUInt8)) && (((_c < (48 : stdgo.GoUInt8) : Bool) || (_c > (57 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
                    };
                    var __tmp__ = _d._convertNumber((_item : stdgo.GoString)?.__copy__()), _n:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _d._saveError(_err);
                    };
                    return _n;
                };
            };
        };
    }
    @:keep
    static public function _objectInterface( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        while (true) {
            _d._scanWhile((9 : stdgo.GoInt));
            if (_d._opcode == ((5 : stdgo.GoInt))) {
                break;
            };
            if (_d._opcode != ((1 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            var _start = (_d._readIndex() : stdgo.GoInt);
            _d._rescanLiteral();
            var _item = (_d._data.__slice__(_start, _d._readIndex()) : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.encoding.json.Json__unquote._unquote(_item), _key:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            if (_d._opcode == ((9 : stdgo.GoInt))) {
                _d._scanWhile((9 : stdgo.GoInt));
            };
            if (_d._opcode != ((3 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            _d._scanWhile((9 : stdgo.GoInt));
            _m[_key] = _d._valueInterface();
            if (_d._opcode == ((9 : stdgo.GoInt))) {
                _d._scanWhile((9 : stdgo.GoInt));
            };
            if (_d._opcode == ((5 : stdgo.GoInt))) {
                break;
            };
            if (_d._opcode != ((4 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return _m;
    }
    @:keep
    static public function _arrayInterface( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>):stdgo.Slice<stdgo.AnyInterface> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        var _v = (new stdgo.Slice<stdgo.AnyInterface>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        while (true) {
            _d._scanWhile((9 : stdgo.GoInt));
            if (_d._opcode == ((8 : stdgo.GoInt))) {
                break;
            };
            _v = (_v.__append__(_d._valueInterface()));
            if (_d._opcode == ((9 : stdgo.GoInt))) {
                _d._scanWhile((9 : stdgo.GoInt));
            };
            if (_d._opcode == ((8 : stdgo.GoInt))) {
                break;
            };
            if (_d._opcode != ((7 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return _v;
    }
    @:keep
    static public function _valueInterface( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>):stdgo.AnyInterface {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        var _val = (null : stdgo.AnyInterface);
        {
            final __value__ = _d._opcode;
            if (__value__ == ((6 : stdgo.GoInt))) {
                _val = stdgo.Go.toInterface(_d._arrayInterface());
                _d._scanNext();
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _val = stdgo.Go.toInterface(_d._objectInterface());
                _d._scanNext();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _val = _d._literalInterface();
            } else {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return _val;
    }
    @:keep
    static public function _literalStore( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>, _item:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo._internal.reflect.Reflect_Value.Value, _fromQuoted:Bool):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        if ((_item.length) == ((0 : stdgo.GoInt))) {
            _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
            return (null : stdgo.Error);
        };
        var _isNull = (_item[(0 : stdgo.GoInt)] == ((110 : stdgo.GoUInt8)) : Bool);
        var __tmp__ = stdgo._internal.encoding.json.Json__indirect._indirect(_v?.__copy__(), _isNull), _u:stdgo._internal.encoding.json.Json_Unmarshaler.Unmarshaler = __tmp__._0, _ut:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler = __tmp__._1, _pv:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._2;
        if (_u != null) {
            return _u.unmarshalJSON(_item);
        };
        if (_ut != null) {
            if (_item[(0 : stdgo.GoInt)] != ((34 : stdgo.GoUInt8))) {
                if (_fromQuoted) {
                    _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
                    return (null : stdgo.Error);
                };
                var _val = ("number" : stdgo.GoString);
                {
                    final __value__ = _item[(0 : stdgo.GoInt)];
                    if (__value__ == ((110 : stdgo.GoUInt8))) {
                        _val = ("null" : stdgo.GoString);
                    } else if (__value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((102 : stdgo.GoUInt8))) {
                        _val = ("bool" : stdgo.GoString);
                    };
                };
                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : _val?.__copy__(), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                return (null : stdgo.Error);
            };
            var __tmp__ = stdgo._internal.encoding.json.Json__unquoteBytes._unquoteBytes(_item), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                if (_fromQuoted) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type()));
                };
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            return _ut.unmarshalText(_s);
        };
        _v = _pv?.__copy__();
        {
            var _c = (_item[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _c;
                        if (__value__ == ((110 : stdgo.GoUInt8))) {
                            if ((_fromQuoted && ((_item : stdgo.GoString) != ("null" : stdgo.GoString)) : Bool)) {
                                _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
                                break;
                            };
                            {
                                final __value__ = _v.kind();
                                if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                    _v.setZero();
                                };
                            };
                            break;
                        } else if (__value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((102 : stdgo.GoUInt8))) {
                            var _value = (_item[(0 : stdgo.GoInt)] == ((116 : stdgo.GoUInt8)) : Bool);
                            if (((_fromQuoted && (_item : stdgo.GoString) != (("true" : stdgo.GoString)) : Bool) && ((_item : stdgo.GoString) != ("false" : stdgo.GoString)) : Bool)) {
                                _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
                                break;
                            };
                            {
                                final __value__ = _v.kind();
                                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                    _v.setBool(_value);
                                } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                    if (_v.numMethod() == ((0 : stdgo.GoInt))) {
                                        _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_value))?.__copy__());
                                    } else {
                                        _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("bool" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                                    };
                                } else {
                                    if (_fromQuoted) {
                                        _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
                                    } else {
                                        _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("bool" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                                    };
                                };
                            };
                            break;
                        } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                            var __tmp__ = stdgo._internal.encoding.json.Json__unquoteBytes._unquoteBytes(_item), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                if (_fromQuoted) {
                                    return stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type()));
                                };
                                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
                            };
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _v.kind();
                                        if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            if (_v.type().elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                                                break;
                                            };
                                            var _b = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.decodedLen((_s.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                            var __tmp__ = stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.decode(_b, _s), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (_err != null) {
                                                _d._saveError(_err);
                                                break;
                                            };
                                            _v.setBytes((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                                            break;
                                        } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            if ((((_v.type().string() : String) == (stdgo._internal.encoding.json.Json__numberType._numberType.string() : String)) && !stdgo._internal.encoding.json.Json__isValidNumber._isValidNumber((_s : stdgo.GoString)?.__copy__()) : Bool)) {
                                                return stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid number literal, trying to unmarshal %q into Number" : stdgo.GoString), stdgo.Go.toInterface(_item));
                                            };
                                            _v.setString((_s : stdgo.GoString)?.__copy__());
                                            break;
                                        } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            if (_v.numMethod() == ((0 : stdgo.GoInt))) {
                                                _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((_s : stdgo.GoString)))?.__copy__());
                                            } else {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                                            };
                                            break;
                                        } else {
                                            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                                        };
                                    };
                                    break;
                                };
                            };
                            break;
                        } else {
                            if (((_c != (45 : stdgo.GoUInt8)) && (((_c < (48 : stdgo.GoUInt8) : Bool) || (_c > (57 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                                if (_fromQuoted) {
                                    return stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type()));
                                };
                                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
                            };
                            var _s = ((_item : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _v.kind();
                                        if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            var __tmp__ = _d._convertNumber(_s?.__copy__()), _n:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (_err != null) {
                                                _d._saveError(_err);
                                                break;
                                            };
                                            if (_v.numMethod() != ((0 : stdgo.GoInt))) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(_n)?.__copy__());
                                            break;
                                        } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (((_err != null) || _v.overflowInt(_n) : Bool)) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _v.setInt(_n);
                                            break;
                                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (((_err != null) || _v.overflowUint(_n) : Bool)) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _v.setUint(_n);
                                            break;
                                        } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_s?.__copy__(), _v.type().bits()), _n:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (((_err != null) || _v.overflowFloat(_n) : Bool)) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _v.setFloat(_n);
                                            break;
                                        } else {
                                            if (((_v.kind() == (24u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && ((_v.type().string() : String) == (stdgo._internal.encoding.json.Json__numberType._numberType.string() : String)) : Bool)) {
                                                _v.setString(_s?.__copy__());
                                                break;
                                            };
                                            if (_fromQuoted) {
                                                return stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type()));
                                            };
                                            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                                        };
                                    };
                                    break;
                                };
                            };
                        };
                    };
                    break;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _convertNumber( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>, _s:stdgo.GoString):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        if (_d._useNumber) {
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_s : stdgo._internal.encoding.json.Json_Number.Number))), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_s?.__copy__(), (64 : stdgo.GoInt)), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoFloat64))), offset : (_d._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)) };
        };
        return { _0 : stdgo.Go.toInterface(_f), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _object( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        var __tmp__ = stdgo._internal.encoding.json.Json__indirect._indirect(_v?.__copy__(), false), _u:stdgo._internal.encoding.json.Json_Unmarshaler.Unmarshaler = __tmp__._0, _ut:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler = __tmp__._1, _pv:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._2;
        if (_u != null) {
            var _start = (_d._readIndex() : stdgo.GoInt);
            _d._skip();
            return _u.unmarshalJSON((_d._data.__slice__(_start, _d._off) : stdgo.Slice<stdgo.GoUInt8>));
        };
        if (_ut != null) {
            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : _v.type(), offset : (_d._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
            _d._skip();
            return (null : stdgo.Error);
        };
        _v = _pv?.__copy__();
        var _t = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (((_v.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && (_v.numMethod() == (0 : stdgo.GoInt)) : Bool)) {
            var _oi = _d._objectInterface();
            _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_oi))?.__copy__());
            return (null : stdgo.Error);
        };
        var _fields:stdgo._internal.encoding.json.Json_T_structFields.T_structFields = ({} : stdgo._internal.encoding.json.Json_T_structFields.T_structFields);
        {
            final __value__ = _v.kind();
            if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                {
                    final __value__ = _t.key().kind();
                    if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {} else {
                        if (!stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_t.key()).implements_(stdgo._internal.encoding.json.Json__textUnmarshalerType._textUnmarshalerType)) {
                            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : _t, offset : (_d._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                            _d._skip();
                            return (null : stdgo.Error);
                        };
                    };
                };
                if (_v.isNil()) {
                    _v.set(stdgo._internal.reflect.Reflect_makeMap.makeMap(_t)?.__copy__());
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                _fields = stdgo._internal.encoding.json.Json__cachedTypeFields._cachedTypeFields(_t)?.__copy__();
            } else {
                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : _t, offset : (_d._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                _d._skip();
                return (null : stdgo.Error);
            };
        };
        var _mapElem:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _origErrorContext:stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext = ({} : stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext);
        if ((_d._errorContext != null && ((_d._errorContext : Dynamic).__nil__ == null || !(_d._errorContext : Dynamic).__nil__))) {
            _origErrorContext = (_d._errorContext : stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext)?.__copy__();
        };
        while (true) {
            _d._scanWhile((9 : stdgo.GoInt));
            if (_d._opcode == ((5 : stdgo.GoInt))) {
                break;
            };
            if (_d._opcode != ((1 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            var _start = (_d._readIndex() : stdgo.GoInt);
            _d._rescanLiteral();
            var _item = (_d._data.__slice__(_start, _d._readIndex()) : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.encoding.json.Json__unquoteBytes._unquoteBytes(_item), _key:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            var _subv:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
            var _destring = (false : Bool);
            if (_v.kind() == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _elemType = (_t.elem() : stdgo._internal.reflect.Reflect_Type_.Type_);
                if (!_mapElem.isValid()) {
                    _mapElem = stdgo._internal.reflect.Reflect_new_.new_(_elemType).elem()?.__copy__();
                } else {
                    _mapElem.setZero();
                };
                _subv = _mapElem?.__copy__();
            } else {
                var _f = (_fields._byExactName[(_key : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>));
                if ((_f == null || (_f : Dynamic).__nil__)) {
                    _f = (_fields._byFoldedName[(stdgo._internal.encoding.json.Json__foldName._foldName(_key) : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>));
                };
                if ((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__))) {
                    _subv = _v?.__copy__();
                    _destring = _f._quoted;
                    for (__4 => _i in _f._index) {
                        if (_subv.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            if (_subv.isNil()) {
                                if (!_subv.canSet()) {
                                    _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: cannot set embedded pointer to unexported struct: %v" : stdgo.GoString), stdgo.Go.toInterface(_subv.type().elem())));
                                    _subv = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
                                    _destring = false;
                                    break;
                                };
                                _subv.set(stdgo._internal.reflect.Reflect_new_.new_(_subv.type().elem())?.__copy__());
                            };
                            _subv = _subv.elem()?.__copy__();
                        };
                        _subv = _subv.field(_i)?.__copy__();
                    };
                    if ((_d._errorContext == null || (_d._errorContext : Dynamic).__nil__)) {
                        _d._errorContext = (stdgo.Go.setRef(({} : stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext>);
                    };
                    _d._errorContext.fieldStack = (_d._errorContext.fieldStack.__append__(_f._name?.__copy__()));
                    _d._errorContext.struct_ = _t;
                } else if (_d._disallowUnknownFields) {
                    _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: unknown field %q" : stdgo.GoString), stdgo.Go.toInterface(_key)));
                };
            };
            if (_d._opcode == ((9 : stdgo.GoInt))) {
                _d._scanWhile((9 : stdgo.GoInt));
            };
            if (_d._opcode != ((3 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            _d._scanWhile((9 : stdgo.GoInt));
            if (_destring) {
                {
                    final __type__ = _d._valueQuoted();
                    if (__type__ == null) {
                        var _qv:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
                        {
                            var _err = (_d._literalStore(stdgo._internal.encoding.json.Json__nullLiteral._nullLiteral, _subv?.__copy__(), false) : stdgo.Error);
                            if (_err != null) {
                                return _err;
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                        var _qv:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                        {
                            var _err = (_d._literalStore((_qv : stdgo.Slice<stdgo.GoUInt8>), _subv?.__copy__(), true) : stdgo.Error);
                            if (_err != null) {
                                return _err;
                            };
                        };
                    } else {
                        var _qv:stdgo.AnyInterface = __type__?.__underlying__();
                        _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal unquoted value into %v" : stdgo.GoString), stdgo.Go.toInterface(_subv.type())));
                    };
                };
            } else {
                {
                    var _err = (_d._value(_subv?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            if (_v.kind() == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                var _kt = (_t.key() : stdgo._internal.reflect.Reflect_Type_.Type_);
                var _kv:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        if (stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_kt).implements_(stdgo._internal.encoding.json.Json__textUnmarshalerType._textUnmarshalerType)) {
                            _kv = stdgo._internal.reflect.Reflect_new_.new_(_kt)?.__copy__();
                            {
                                var _err = (_d._literalStore(_item, _kv?.__copy__(), true) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                            _kv = _kv.elem()?.__copy__();
                            break;
                        } else if (_kt.kind() == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            _kv = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_key)).convert(_kt)?.__copy__();
                            break;
                        } else {
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _kt.kind();
                                        if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            var _s = ((_key : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (((_err != null) || stdgo._internal.reflect.Reflect_zero.zero(_kt).overflowInt(_n) : Bool)) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _kt, offset : ((_start + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _kv = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_n)).convert(_kt)?.__copy__();
                                            break;
                                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                            var _s = ((_key : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (((_err != null) || stdgo._internal.reflect.Reflect_zero.zero(_kt).overflowUint(_n) : Bool)) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _kt, offset : ((_start + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _kv = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_n)).convert(_kt)?.__copy__();
                                            break;
                                        } else {
                                            throw stdgo.Go.toInterface(("json: Unexpected key type" : stdgo.GoString));
                                        };
                                    };
                                    break;
                                };
                            };
                        };
                        break;
                    };
                };
                if (_kv.isValid()) {
                    _v.setMapIndex(_kv?.__copy__(), _subv?.__copy__());
                };
            };
            if (_d._opcode == ((9 : stdgo.GoInt))) {
                _d._scanWhile((9 : stdgo.GoInt));
            };
            if ((_d._errorContext != null && ((_d._errorContext : Dynamic).__nil__ == null || !(_d._errorContext : Dynamic).__nil__))) {
                _d._errorContext.fieldStack = (_d._errorContext.fieldStack.__slice__(0, (_origErrorContext.fieldStack.length)) : stdgo.Slice<stdgo.GoString>);
                _d._errorContext.struct_ = _origErrorContext.struct_;
            };
            if (_d._opcode == ((5 : stdgo.GoInt))) {
                break;
            };
            if (_d._opcode != ((4 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _array( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        var __tmp__ = stdgo._internal.encoding.json.Json__indirect._indirect(_v?.__copy__(), false), _u:stdgo._internal.encoding.json.Json_Unmarshaler.Unmarshaler = __tmp__._0, _ut:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler = __tmp__._1, _pv:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._2;
        if (_u != null) {
            var _start = (_d._readIndex() : stdgo.GoInt);
            _d._skip();
            return _u.unmarshalJSON((_d._data.__slice__(_start, _d._off) : stdgo.Slice<stdgo.GoUInt8>));
        };
        if (_ut != null) {
            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("array" : stdgo.GoString), type : _v.type(), offset : (_d._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
            _d._skip();
            return (null : stdgo.Error);
        };
        _v = _pv?.__copy__();
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _v.kind();
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)))) {
                        if (_v.numMethod() == ((0 : stdgo.GoInt))) {
                            var _ai = _d._arrayInterface();
                            _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_ai))?.__copy__());
                            return (null : stdgo.Error);
                        };
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))))) {
                        break;
                        break;
                        break;
                    } else {
                        _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("array" : stdgo.GoString), type : _v.type(), offset : (_d._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>)));
                        _d._skip();
                        return (null : stdgo.Error);
                        break;
                    };
                };
                break;
            };
        };
        var _i = (0 : stdgo.GoInt);
        while (true) {
            _d._scanWhile((9 : stdgo.GoInt));
            if (_d._opcode == ((8 : stdgo.GoInt))) {
                break;
            };
            if (_v.kind() == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                if ((_i >= _v.cap() : Bool)) {
                    _v.grow((1 : stdgo.GoInt));
                };
                if ((_i >= _v.len() : Bool)) {
                    _v.setLen((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                };
            };
            if ((_i < _v.len() : Bool)) {
                {
                    var _err = (_d._value(_v.index(_i)?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else {
                {
                    var _err = (_d._value((new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value)) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            _i++;
            if (_d._opcode == ((9 : stdgo.GoInt))) {
                _d._scanWhile((9 : stdgo.GoInt));
            };
            if (_d._opcode == ((8 : stdgo.GoInt))) {
                break;
            };
            if (_d._opcode != ((7 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        if ((_i < _v.len() : Bool)) {
            if (_v.kind() == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                while ((_i < _v.len() : Bool)) {
                    _v.index(_i).setZero();
                    _i++;
                };
            } else {
                _v.setLen(_i);
            };
        };
        if (((_i == (0 : stdgo.GoInt)) && (_v.kind() == (23u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
            _v.set(stdgo._internal.reflect.Reflect_makeSlice.makeSlice(_v.type(), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _valueQuoted( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>):stdgo.AnyInterface {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        {
            final __value__ = _d._opcode;
            if (__value__ == ((6 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt))) {
                _d._skip();
                _d._scanNext();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _v = (_d._literalInterface() : stdgo.AnyInterface);
                {
                    final __type__ = _v;
                    if (__type__ == null || stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                        return _v;
                    };
                };
            } else {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return stdgo.Go.toInterface((new stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue() : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue));
    }
    @:keep
    static public function _value( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        {
            final __value__ = _d._opcode;
            if (__value__ == ((6 : stdgo.GoInt))) {
                if (_v.isValid()) {
                    {
                        var _err = (_d._array(_v?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                } else {
                    _d._skip();
                };
                _d._scanNext();
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                if (_v.isValid()) {
                    {
                        var _err = (_d._object(_v?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                } else {
                    _d._skip();
                };
                _d._scanNext();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _start = (_d._readIndex() : stdgo.GoInt);
                _d._rescanLiteral();
                if (_v.isValid()) {
                    {
                        var _err = (_d._literalStore((_d._data.__slice__(_start, _d._readIndex()) : stdgo.Slice<stdgo.GoUInt8>), _v?.__copy__(), false) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
            } else {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _rescanLiteral( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        var _data_5316112:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var switchBreak = false;
        var _i_5316118:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        final __tmp__0 = _d._data;
                        final __tmp__1 = _d._off;
                        _data_5316112 = __tmp__0;
                        _i_5316118 = __tmp__1;
                    };
                    _gotoNext = 5316137i32;
                } else if (__value__ == (5316137i32)) {
                    switchBreak = false;
                    _gotoNext = 5316146i32;
                } else if (__value__ == (5316146i32)) {
                    if (!switchBreak) {
                        {
                            final __value__ = _data_5316112[(_i_5316118 - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            if (__value__ == ((34 : stdgo.GoUInt8))) {
                                _gotoNext = 5316166i32;
                            } else if (__value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8)) || __value__ == ((45 : stdgo.GoUInt8))) {
                                _gotoNext = 5316355i32;
                            } else if (__value__ == ((116 : stdgo.GoUInt8))) {
                                _gotoNext = 5316600i32;
                            } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                                _gotoNext = 5316637i32;
                            } else if (__value__ == ((110 : stdgo.GoUInt8))) {
                                _gotoNext = 5316676i32;
                            } else {
                                _gotoNext = 5316716i32;
                            };
                        };
                    } else {
                        _gotoNext = 5316716i32;
                    };
                } else if (__value__ == (5316166i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 5316188i32;
                } else if (__value__ == (5316188i32)) {
                    if ((_i_5316118 < (_data_5316112.length) : Bool)) {
                        _gotoNext = 5316213i32;
                    } else {
                        _gotoNext = 5316716i32;
                    };
                } else if (__value__ == (5316209i32)) {
                    _i_5316118++;
                    _gotoNext = 5316188i32;
                } else if (__value__ == (5316213i32)) {
                    _gotoNext = 5316218i32;
                } else if (__value__ == (5316218i32)) {
                    {
                        final __value__ = _data_5316112[(_i_5316118 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 5316238i32;
                        } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                            _gotoNext = 5316276i32;
                        } else {
                            _gotoNext = 5316209i32;
                        };
                    };
                } else if (__value__ == (5316238i32)) {
                    _i_5316118++;
                    _gotoNext = 5316209i32;
                } else if (__value__ == (5316276i32)) {
                    _i_5316118++;
                    switchBreak = true;
                    _gotoNext = 5316146i32;
                } else if (__value__ == (5316355i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 5316427i32;
                } else if (__value__ == (5316427i32)) {
                    if ((_i_5316118 < (_data_5316112.length) : Bool)) {
                        _gotoNext = 5316452i32;
                    } else {
                        _gotoNext = 5316716i32;
                    };
                } else if (__value__ == (5316448i32)) {
                    _i_5316118++;
                    _gotoNext = 5316427i32;
                } else if (__value__ == (5316452i32)) {
                    _gotoNext = 5316457i32;
                } else if (__value__ == (5316457i32)) {
                    {
                        final __value__ = _data_5316112[(_i_5316118 : stdgo.GoInt)];
                        if (__value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8)) || __value__ == ((46 : stdgo.GoUInt8)) || __value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((45 : stdgo.GoUInt8))) {
                            _gotoNext = 5316477i32;
                        } else {
                            _gotoNext = 5316564i32;
                        };
                    };
                } else if (__value__ == (5316477i32)) {
                    _gotoNext = 5316448i32;
                } else if (__value__ == (5316564i32)) {
                    switchBreak = true;
                    _gotoNext = 5316146i32;
                } else if (__value__ == (5316600i32)) {
                    _i_5316118 = (_i_5316118 + ((("rue" : stdgo.GoString).length)) : stdgo.GoInt);
                    _gotoNext = 5316716i32;
                } else if (__value__ == (5316637i32)) {
                    _i_5316118 = (_i_5316118 + ((("alse" : stdgo.GoString).length)) : stdgo.GoInt);
                    _gotoNext = 5316716i32;
                } else if (__value__ == (5316676i32)) {
                    _i_5316118 = (_i_5316118 + ((("ull" : stdgo.GoString).length)) : stdgo.GoInt);
                    _gotoNext = 5316716i32;
                } else if (__value__ == (5316716i32)) {
                    if ((_i_5316118 < (_data_5316112.length) : Bool)) {
                        _gotoNext = 5316733i32;
                    } else {
                        _gotoNext = 5316788i32;
                    };
                } else if (__value__ == (5316733i32)) {
                    _d._opcode = stdgo._internal.encoding.json.Json__stateEndValue._stateEndValue((stdgo.Go.setRef(_d._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>), _data_5316112[(_i_5316118 : stdgo.GoInt)]);
                    _gotoNext = 5316815i32;
                } else if (__value__ == (5316788i32)) {
                    _gotoNext = 5316788i32;
                    _d._opcode = (10 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 5316815i32;
                } else if (__value__ == (5316815i32)) {
                    _d._off = (_i_5316118 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = -1i32;
                };
            };
        };
    }
    @:keep
    static public function _scanWhile( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>, _op:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        var __0 = (stdgo.Go.setRef(_d._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>), __1 = _d._data, __2 = (_d._off : stdgo.GoInt);
var _i = __2, _data = __1, _s = __0;
        while ((_i < (_data.length) : Bool)) {
            var _newOp = (_s._step(_s, _data[(_i : stdgo.GoInt)]) : stdgo.GoInt);
            _i++;
            if (_newOp != (_op)) {
                _d._opcode = _newOp;
                _d._off = _i;
                return;
            };
        };
        _d._off = ((_data.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        _d._opcode = _d._scan._eof();
    }
    @:keep
    static public function _scanNext( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        if ((_d._off < (_d._data.length) : Bool)) {
            _d._opcode = _d._scan._step((stdgo.Go.setRef(_d._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>), _d._data[(_d._off : stdgo.GoInt)]);
            _d._off++;
        } else {
            _d._opcode = _d._scan._eof();
            _d._off = ((_d._data.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
    }
    @:keep
    static public function _skip( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        var __0 = (stdgo.Go.setRef(_d._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>), __1 = _d._data, __2 = (_d._off : stdgo.GoInt);
var _i = __2, _data = __1, _s = __0;
        var _depth = (_s._parseState.length : stdgo.GoInt);
        while (true) {
            var _op = (_s._step(_s, _data[(_i : stdgo.GoInt)]) : stdgo.GoInt);
            _i++;
            if (((_s._parseState.length) < _depth : Bool)) {
                _d._off = _i;
                _d._opcode = _op;
                return;
            };
        };
    }
    @:keep
    static public function _addErrorContext( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>, _err:stdgo.Error):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        if (((_d._errorContext != null && ((_d._errorContext : Dynamic).__nil__ == null || !(_d._errorContext : Dynamic).__nil__)) && ((!((_d._errorContext.struct_.string() : String) == (null.string() : String)) || ((_d._errorContext.fieldStack.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>))) {
                    var _err:stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError>) : __type__.__underlying__().value;
                    _err.struct_ = _d._errorContext.struct_.name()?.__copy__();
                    _err.field = stdgo._internal.strings.Strings_join.join(_d._errorContext.fieldStack, ("." : stdgo.GoString))?.__copy__();
                };
            };
        };
        return _err;
    }
    @:keep
    static public function _saveError( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>, _err:stdgo.Error):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        if (_d._savedError == null) {
            _d._savedError = _d._addErrorContext(_err);
        };
    }
    @:keep
    static public function _init( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        _d._data = _data;
        _d._off = (0 : stdgo.GoInt);
        _d._savedError = (null : stdgo.Error);
        if ((_d._errorContext != null && ((_d._errorContext : Dynamic).__nil__ == null || !(_d._errorContext : Dynamic).__nil__))) {
            _d._errorContext.struct_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
            _d._errorContext.fieldStack = (_d._errorContext.fieldStack.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        return _d;
    }
    @:keep
    static public function _readIndex( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        return (_d._off - (1 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    static public function _unmarshal( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState> = _d;
        var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (((_rv.kind() != (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || _rv.isNil() : Bool)) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_InvalidUnmarshalError.InvalidUnmarshalError(stdgo._internal.reflect.Reflect_typeOf.typeOf(_v)) : stdgo._internal.encoding.json.Json_InvalidUnmarshalError.InvalidUnmarshalError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_InvalidUnmarshalError.InvalidUnmarshalError>));
        };
        _d._scan._reset();
        _d._scanWhile((9 : stdgo.GoInt));
        var _err = (_d._value(_rv?.__copy__()) : stdgo.Error);
        if (_err != null) {
            return _d._addErrorContext(_err);
        };
        return _d._savedError;
    }
}
