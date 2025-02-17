package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_decodeState_asInterface) class T_decodeState_static_extension {
    @:keep
    @:tdfield
    static public function _literalInterface( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):stdgo.AnyInterface {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var _start = (@:check2r _d._readIndex() : stdgo.GoInt);
        @:check2r _d._rescanLiteral();
        var _item = ((@:checkr _d ?? throw "null pointer dereference")._data.__slice__(_start, @:check2r _d._readIndex()) : stdgo.Slice<stdgo.GoUInt8>);
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
                    var __tmp__ = @:check2r _d._convertNumber((_item : stdgo.GoString)?.__copy__()), _n:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        @:check2r _d._saveError(_err);
                    };
                    return _n;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _objectInterface( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        while (true) {
            @:check2r _d._scanWhile((9 : stdgo.GoInt));
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((5 : stdgo.GoInt))) {
                break;
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode != ((1 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            var _start = (@:check2r _d._readIndex() : stdgo.GoInt);
            @:check2r _d._rescanLiteral();
            var _item = ((@:checkr _d ?? throw "null pointer dereference")._data.__slice__(_start, @:check2r _d._readIndex()) : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.encoding.json.Json__unquote._unquote(_item), _key:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((9 : stdgo.GoInt))) {
                @:check2r _d._scanWhile((9 : stdgo.GoInt));
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode != ((3 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            @:check2r _d._scanWhile((9 : stdgo.GoInt));
            _m[_key] = @:check2r _d._valueInterface();
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((9 : stdgo.GoInt))) {
                @:check2r _d._scanWhile((9 : stdgo.GoInt));
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((5 : stdgo.GoInt))) {
                break;
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode != ((4 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return _m;
    }
    @:keep
    @:tdfield
    static public function _arrayInterface( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):stdgo.Slice<stdgo.AnyInterface> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var _v = (new stdgo.Slice<stdgo.AnyInterface>((0 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        while (true) {
            @:check2r _d._scanWhile((9 : stdgo.GoInt));
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((8 : stdgo.GoInt))) {
                break;
            };
            _v = (_v.__append__(@:check2r _d._valueInterface()));
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((9 : stdgo.GoInt))) {
                @:check2r _d._scanWhile((9 : stdgo.GoInt));
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((8 : stdgo.GoInt))) {
                break;
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode != ((7 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return _v;
    }
    @:keep
    @:tdfield
    static public function _valueInterface( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):stdgo.AnyInterface {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var _val = (null : stdgo.AnyInterface);
        {
            final __value__ = (@:checkr _d ?? throw "null pointer dereference")._opcode;
            if (__value__ == ((6 : stdgo.GoInt))) {
                _val = stdgo.Go.toInterface(@:check2r _d._arrayInterface());
                @:check2r _d._scanNext();
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _val = stdgo.Go.toInterface(@:check2r _d._objectInterface());
                @:check2r _d._scanNext();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _val = @:check2r _d._literalInterface();
            } else {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return _val;
    }
    @:keep
    @:tdfield
    static public function _literalStore( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _item:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo._internal.reflect.Reflect_value.Value, _fromQuoted:Bool):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        if ((_item.length) == ((0 : stdgo.GoInt))) {
            @:check2r _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
            return (null : stdgo.Error);
        };
        var _isNull = (_item[(0 : stdgo.GoInt)] == ((110 : stdgo.GoUInt8)) : Bool);
        var __tmp__ = stdgo._internal.encoding.json.Json__indirect._indirect(_v?.__copy__(), _isNull), _u:stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler = __tmp__._0, _ut:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler = __tmp__._1, _pv:stdgo._internal.reflect.Reflect_value.Value = __tmp__._2;
        if (_u != null) {
            return _u.unmarshalJSON(_item);
        };
        if (_ut != null) {
            if (_item[(0 : stdgo.GoInt)] != ((34 : stdgo.GoUInt8))) {
                if (_fromQuoted) {
                    @:check2r _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
                    return (null : stdgo.Error);
                };
                var _val = (("number" : stdgo.GoString) : stdgo.GoString);
                {
                    final __value__ = _item[(0 : stdgo.GoInt)];
                    if (__value__ == ((110 : stdgo.GoUInt8))) {
                        _val = ("null" : stdgo.GoString);
                    } else if (__value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((102 : stdgo.GoUInt8))) {
                        _val = ("bool" : stdgo.GoString);
                    };
                };
                @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : _val?.__copy__(), type : _v.type(), offset : (@:check2r _d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                return (null : stdgo.Error);
            };
            var __tmp__ = stdgo._internal.encoding.json.Json__unquotebytes._unquoteBytes(_item), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
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
                                @:check2r _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
                                break;
                            };
                            {
                                final __value__ = _v.kind();
                                if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                    _v.setZero();
                                };
                            };
                            break;
                        } else if (__value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((102 : stdgo.GoUInt8))) {
                            var _value = (_item[(0 : stdgo.GoInt)] == ((116 : stdgo.GoUInt8)) : Bool);
                            if (((_fromQuoted && (_item : stdgo.GoString) != (("true" : stdgo.GoString)) : Bool) && ((_item : stdgo.GoString) != ("false" : stdgo.GoString)) : Bool)) {
                                @:check2r _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
                                break;
                            };
                            {
                                final __value__ = _v.kind();
                                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                    _v.setBool(_value);
                                } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                    if (_v.numMethod() == ((0 : stdgo.GoInt))) {
                                        _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_value))?.__copy__());
                                    } else {
                                        @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("bool" : stdgo.GoString), type : _v.type(), offset : (@:check2r _d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                                    };
                                } else {
                                    if (_fromQuoted) {
                                        @:check2r _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
                                    } else {
                                        @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("bool" : stdgo.GoString), type : _v.type(), offset : (@:check2r _d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                                    };
                                };
                            };
                            break;
                        } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                            var __tmp__ = stdgo._internal.encoding.json.Json__unquotebytes._unquoteBytes(_item), _s:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
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
                                        if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            if (_v.type().elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                                @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : _v.type(), offset : (@:check2r _d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                                                break;
                                            };
                                            var _b = (new stdgo.Slice<stdgo.GoUInt8>((@:check2r stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.decodedLen((_s.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                            var __tmp__ = @:check2r stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.decode(_b, _s), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (_err != null) {
                                                @:check2r _d._saveError(_err);
                                                break;
                                            };
                                            _v.setBytes((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                                            break;
                                        } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            if ((((_v.type().string() : String) == (stdgo._internal.encoding.json.Json__numbertype._numberType.string() : String)) && !stdgo._internal.encoding.json.Json__isvalidnumber._isValidNumber((_s : stdgo.GoString)?.__copy__()) : Bool)) {
                                                return stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid number literal, trying to unmarshal %q into Number" : stdgo.GoString), stdgo.Go.toInterface(_item));
                                            };
                                            _v.setString((_s : stdgo.GoString)?.__copy__());
                                            break;
                                        } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            if (_v.numMethod() == ((0 : stdgo.GoInt))) {
                                                _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((_s : stdgo.GoString)))?.__copy__());
                                            } else {
                                                @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : _v.type(), offset : (@:check2r _d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                                            };
                                            break;
                                        } else {
                                            @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : _v.type(), offset : (@:check2r _d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
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
                                        if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            var __tmp__ = @:check2r _d._convertNumber(_s?.__copy__()), _n:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (_err != null) {
                                                @:check2r _d._saveError(_err);
                                                break;
                                            };
                                            if (_v.numMethod() != ((0 : stdgo.GoInt))) {
                                                @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number" : stdgo.GoString), type : _v.type(), offset : (@:check2r _d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(_n)?.__copy__());
                                            break;
                                        } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (((_err != null) || _v.overflowInt(_n) : Bool)) {
                                                @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _v.type(), offset : (@:check2r _d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _v.setInt(_n);
                                            break;
                                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (((_err != null) || _v.overflowUint(_n) : Bool)) {
                                                @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _v.type(), offset : (@:check2r _d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _v.setUint(_n);
                                            break;
                                        } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_s?.__copy__(), _v.type().bits()), _n:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (((_err != null) || _v.overflowFloat(_n) : Bool)) {
                                                @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _v.type(), offset : (@:check2r _d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _v.setFloat(_n);
                                            break;
                                        } else {
                                            if (((_v.kind() == (24u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && ((_v.type().string() : String) == (stdgo._internal.encoding.json.Json__numbertype._numberType.string() : String)) : Bool)) {
                                                _v.setString(_s?.__copy__());
                                                break;
                                            };
                                            if (_fromQuoted) {
                                                return stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type()));
                                            };
                                            @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number" : stdgo.GoString), type : _v.type(), offset : (@:check2r _d._readIndex() : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
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
    @:tdfield
    static public function _convertNumber( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _s:stdgo.GoString):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        if ((@:checkr _d ?? throw "null pointer dereference")._useNumber) {
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_s : stdgo._internal.encoding.json.Json_number.Number))), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_s?.__copy__(), (64 : stdgo.GoInt)), _f:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.AnyInterface), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface((0 : stdgo.GoFloat64))), offset : ((@:checkr _d ?? throw "null pointer dereference")._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)) };
        };
        return { _0 : stdgo.Go.toInterface(_f), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _object( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var __tmp__ = stdgo._internal.encoding.json.Json__indirect._indirect(_v?.__copy__(), false), _u:stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler = __tmp__._0, _ut:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler = __tmp__._1, _pv:stdgo._internal.reflect.Reflect_value.Value = __tmp__._2;
        if (_u != null) {
            var _start = (@:check2r _d._readIndex() : stdgo.GoInt);
            @:check2r _d._skip();
            return _u.unmarshalJSON(((@:checkr _d ?? throw "null pointer dereference")._data.__slice__(_start, (@:checkr _d ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>));
        };
        if (_ut != null) {
            @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : _v.type(), offset : ((@:checkr _d ?? throw "null pointer dereference")._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
            @:check2r _d._skip();
            return (null : stdgo.Error);
        };
        _v = _pv?.__copy__();
        var _t = (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        if (((_v.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_v.numMethod() == (0 : stdgo.GoInt)) : Bool)) {
            var _oi = @:check2r _d._objectInterface();
            _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_oi))?.__copy__());
            return (null : stdgo.Error);
        };
        var _fields:stdgo._internal.encoding.json.Json_t_structfields.T_structFields = ({} : stdgo._internal.encoding.json.Json_t_structfields.T_structFields);
        {
            final __value__ = _v.kind();
            if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                {
                    final __value__ = _t.key().kind();
                    if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {} else {
                        if (!stdgo._internal.reflect.Reflect_pointerto.pointerTo(_t.key()).implements_(stdgo._internal.encoding.json.Json__textunmarshalertype._textUnmarshalerType)) {
                            @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : _t, offset : ((@:checkr _d ?? throw "null pointer dereference")._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                            @:check2r _d._skip();
                            return (null : stdgo.Error);
                        };
                    };
                };
                if (_v.isNil()) {
                    _v.set(stdgo._internal.reflect.Reflect_makemap.makeMap(_t)?.__copy__());
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _fields = stdgo._internal.encoding.json.Json__cachedtypefields._cachedTypeFields(_t)?.__copy__();
            } else {
                @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : _t, offset : ((@:checkr _d ?? throw "null pointer dereference")._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                @:check2r _d._skip();
                return (null : stdgo.Error);
            };
        };
        var _mapElem:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _origErrorContext:stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext = ({} : stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext);
        if (((@:checkr _d ?? throw "null pointer dereference")._errorContext != null && (((@:checkr _d ?? throw "null pointer dereference")._errorContext : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference")._errorContext : Dynamic).__nil__))) {
            _origErrorContext = ((@:checkr _d ?? throw "null pointer dereference")._errorContext : stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext)?.__copy__();
        };
        while (true) {
            @:check2r _d._scanWhile((9 : stdgo.GoInt));
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((5 : stdgo.GoInt))) {
                break;
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode != ((1 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            var _start = (@:check2r _d._readIndex() : stdgo.GoInt);
            @:check2r _d._rescanLiteral();
            var _item = ((@:checkr _d ?? throw "null pointer dereference")._data.__slice__(_start, @:check2r _d._readIndex()) : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.encoding.json.Json__unquotebytes._unquoteBytes(_item), _key:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            var _subv:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
            var _destring = (false : Bool);
            if (_v.kind() == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _elemType = (_t.elem() : stdgo._internal.reflect.Reflect_type_.Type_);
                if (!_mapElem.isValid()) {
                    _mapElem = stdgo._internal.reflect.Reflect_new_.new_(_elemType).elem()?.__copy__();
                } else {
                    _mapElem.setZero();
                };
                _subv = _mapElem?.__copy__();
            } else {
                var _f = (_fields._byExactName[(_key : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>));
                if ((_f == null || (_f : Dynamic).__nil__)) {
                    _f = (_fields._byFoldedName[(stdgo._internal.encoding.json.Json__foldname._foldName(_key) : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>));
                };
                if ((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__))) {
                    _subv = _v?.__copy__();
                    _destring = (@:checkr _f ?? throw "null pointer dereference")._quoted;
                    for (__4 => _i in (@:checkr _f ?? throw "null pointer dereference")._index) {
                        if (_subv.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            if (_subv.isNil()) {
                                if (!_subv.canSet()) {
                                    @:check2r _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: cannot set embedded pointer to unexported struct: %v" : stdgo.GoString), stdgo.Go.toInterface(_subv.type().elem())));
                                    _subv = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
                                    _destring = false;
                                    break;
                                };
                                _subv.set(stdgo._internal.reflect.Reflect_new_.new_(_subv.type().elem())?.__copy__());
                            };
                            _subv = _subv.elem()?.__copy__();
                        };
                        _subv = _subv.field(_i)?.__copy__();
                    };
                    if (((@:checkr _d ?? throw "null pointer dereference")._errorContext == null || ((@:checkr _d ?? throw "null pointer dereference")._errorContext : Dynamic).__nil__)) {
                        (@:checkr _d ?? throw "null pointer dereference")._errorContext = (stdgo.Go.setRef(({} : stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext>);
                    };
                    (@:checkr (@:checkr _d ?? throw "null pointer dereference")._errorContext ?? throw "null pointer dereference").fieldStack = ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._errorContext ?? throw "null pointer dereference").fieldStack.__append__((@:checkr _f ?? throw "null pointer dereference")._name?.__copy__()));
                    (@:checkr (@:checkr _d ?? throw "null pointer dereference")._errorContext ?? throw "null pointer dereference").struct_ = _t;
                } else if ((@:checkr _d ?? throw "null pointer dereference")._disallowUnknownFields) {
                    @:check2r _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: unknown field %q" : stdgo.GoString), stdgo.Go.toInterface(_key)));
                };
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((9 : stdgo.GoInt))) {
                @:check2r _d._scanWhile((9 : stdgo.GoInt));
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode != ((3 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            @:check2r _d._scanWhile((9 : stdgo.GoInt));
            if (_destring) {
                {
                    final __type__ = @:check2r _d._valueQuoted();
                    if (__type__ == null) {
                        var _qv:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
                        {
                            var _err = (@:check2r _d._literalStore(stdgo._internal.encoding.json.Json__nullliteral._nullLiteral, _subv?.__copy__(), false) : stdgo.Error);
                            if (_err != null) {
                                return _err;
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                        var _qv:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                        {
                            var _err = (@:check2r _d._literalStore((_qv : stdgo.Slice<stdgo.GoUInt8>), _subv?.__copy__(), true) : stdgo.Error);
                            if (_err != null) {
                                return _err;
                            };
                        };
                    } else {
                        var _qv:stdgo.AnyInterface = __type__?.__underlying__();
                        @:check2r _d._saveError(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid use of ,string struct tag, trying to unmarshal unquoted value into %v" : stdgo.GoString), stdgo.Go.toInterface(_subv.type())));
                    };
                };
            } else {
                {
                    var _err = (@:check2r _d._value(_subv?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            if (_v.kind() == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _kt = (_t.key() : stdgo._internal.reflect.Reflect_type_.Type_);
                var _kv:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        if (stdgo._internal.reflect.Reflect_pointerto.pointerTo(_kt).implements_(stdgo._internal.encoding.json.Json__textunmarshalertype._textUnmarshalerType)) {
                            _kv = stdgo._internal.reflect.Reflect_new_.new_(_kt)?.__copy__();
                            {
                                var _err = (@:check2r _d._literalStore(_item, _kv?.__copy__(), true) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                            _kv = _kv.elem()?.__copy__();
                            break;
                        } else if (_kt.kind() == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            _kv = stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_key)).convert(_kt)?.__copy__();
                            break;
                        } else {
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _kt.kind();
                                        if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            var _s = ((_key : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (((_err != null) || stdgo._internal.reflect.Reflect_zero.zero(_kt).overflowInt(_n) : Bool)) {
                                                @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _kt, offset : ((_start + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _kv = stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_n)).convert(_kt)?.__copy__();
                                            break;
                                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            var _s = ((_key : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                            var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (((_err != null) || stdgo._internal.reflect.Reflect_zero.zero(_kt).overflowUint(_n) : Bool)) {
                                                @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : (("number " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__(), type : _kt, offset : ((_start + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _kv = stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_n)).convert(_kt)?.__copy__();
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
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((9 : stdgo.GoInt))) {
                @:check2r _d._scanWhile((9 : stdgo.GoInt));
            };
            if (((@:checkr _d ?? throw "null pointer dereference")._errorContext != null && (((@:checkr _d ?? throw "null pointer dereference")._errorContext : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference")._errorContext : Dynamic).__nil__))) {
                (@:checkr (@:checkr _d ?? throw "null pointer dereference")._errorContext ?? throw "null pointer dereference").fieldStack = ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._errorContext ?? throw "null pointer dereference").fieldStack.__slice__(0, (_origErrorContext.fieldStack.length)) : stdgo.Slice<stdgo.GoString>);
                (@:checkr (@:checkr _d ?? throw "null pointer dereference")._errorContext ?? throw "null pointer dereference").struct_ = _origErrorContext.struct_;
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((5 : stdgo.GoInt))) {
                break;
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode != ((4 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _array( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var __tmp__ = stdgo._internal.encoding.json.Json__indirect._indirect(_v?.__copy__(), false), _u:stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler = __tmp__._0, _ut:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler = __tmp__._1, _pv:stdgo._internal.reflect.Reflect_value.Value = __tmp__._2;
        if (_u != null) {
            var _start = (@:check2r _d._readIndex() : stdgo.GoInt);
            @:check2r _d._skip();
            return _u.unmarshalJSON(((@:checkr _d ?? throw "null pointer dereference")._data.__slice__(_start, (@:checkr _d ?? throw "null pointer dereference")._off) : stdgo.Slice<stdgo.GoUInt8>));
        };
        if (_ut != null) {
            @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("array" : stdgo.GoString), type : _v.type(), offset : ((@:checkr _d ?? throw "null pointer dereference")._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
            @:check2r _d._skip();
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
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                        if (_v.numMethod() == ((0 : stdgo.GoInt))) {
                            var _ai = @:check2r _d._arrayInterface();
                            _v.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_ai))?.__copy__());
                            return (null : stdgo.Error);
                        };
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                        break;
                        break;
                        break;
                    } else {
                        @:check2r _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("array" : stdgo.GoString), type : _v.type(), offset : ((@:checkr _d ?? throw "null pointer dereference")._off : stdgo.GoInt64) } : stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>)));
                        @:check2r _d._skip();
                        return (null : stdgo.Error);
                        break;
                    };
                };
                break;
            };
        };
        var _i = (0 : stdgo.GoInt);
        while (true) {
            @:check2r _d._scanWhile((9 : stdgo.GoInt));
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((8 : stdgo.GoInt))) {
                break;
            };
            if (_v.kind() == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if ((_i >= _v.cap() : Bool)) {
                    _v.grow((1 : stdgo.GoInt));
                };
                if ((_i >= _v.len() : Bool)) {
                    _v.setLen((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                };
            };
            if ((_i < _v.len() : Bool)) {
                {
                    var _err = (@:check2r _d._value(_v.index(_i)?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else {
                {
                    var _err = (@:check2r _d._value((new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value)) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            _i++;
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((9 : stdgo.GoInt))) {
                @:check2r _d._scanWhile((9 : stdgo.GoInt));
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode == ((8 : stdgo.GoInt))) {
                break;
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._opcode != ((7 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        if ((_i < _v.len() : Bool)) {
            if (_v.kind() == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                while ((_i < _v.len() : Bool)) {
                    _v.index(_i).setZero();
                    _i++;
                };
            } else {
                _v.setLen(_i);
            };
        };
        if (((_i == (0 : stdgo.GoInt)) && (_v.kind() == (23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            _v.set(stdgo._internal.reflect.Reflect_makeslice.makeSlice(_v.type(), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__());
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _valueQuoted( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):stdgo.AnyInterface {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        {
            final __value__ = (@:checkr _d ?? throw "null pointer dereference")._opcode;
            if (__value__ == ((6 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt))) {
                @:check2r _d._skip();
                @:check2r _d._scanNext();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _v = (@:check2r _d._literalInterface() : stdgo.AnyInterface);
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
        return stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue() : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue)));
    }
    @:keep
    @:tdfield
    static public function _value( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        {
            final __value__ = (@:checkr _d ?? throw "null pointer dereference")._opcode;
            if (__value__ == ((6 : stdgo.GoInt))) {
                if (_v.isValid()) {
                    {
                        var _err = (@:check2r _d._array(_v?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                } else {
                    @:check2r _d._skip();
                };
                @:check2r _d._scanNext();
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                if (_v.isValid()) {
                    {
                        var _err = (@:check2r _d._object(_v?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                } else {
                    @:check2r _d._skip();
                };
                @:check2r _d._scanNext();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _start = (@:check2r _d._readIndex() : stdgo.GoInt);
                @:check2r _d._rescanLiteral();
                if (_v.isValid()) {
                    {
                        var _err = (@:check2r _d._literalStore(((@:checkr _d ?? throw "null pointer dereference")._data.__slice__(_start, @:check2r _d._readIndex()) : stdgo.Slice<stdgo.GoUInt8>), _v?.__copy__(), false) : stdgo.Error);
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
    @:tdfield
    static public function _rescanLiteral( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var switchBreak = false;
        var _i_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_0:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        final __tmp__0 = (@:checkr _d ?? throw "null pointer dereference")._data;
                        final __tmp__1 = (@:checkr _d ?? throw "null pointer dereference")._off;
                        _data_0 = __tmp__0;
                        _i_1 = __tmp__1;
                    };
                    _gotoNext = 5324995i32;
                } else if (__value__ == (5324995i32)) {
                    switchBreak = false;
                    _gotoNext = 5325004i32;
                } else if (__value__ == (5325004i32)) {
                    if (!switchBreak) {
                        {
                            final __value__ = _data_0[(_i_1 - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            if (__value__ == ((34 : stdgo.GoUInt8))) {
                                _gotoNext = 5325024i32;
                            } else if (__value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8)) || __value__ == ((45 : stdgo.GoUInt8))) {
                                _gotoNext = 5325213i32;
                            } else if (__value__ == ((116 : stdgo.GoUInt8))) {
                                _gotoNext = 5325458i32;
                            } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                                _gotoNext = 5325495i32;
                            } else if (__value__ == ((110 : stdgo.GoUInt8))) {
                                _gotoNext = 5325534i32;
                            } else {
                                _gotoNext = 5325574i32;
                            };
                        };
                    } else {
                        _gotoNext = 5325574i32;
                    };
                } else if (__value__ == (5325024i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 5325046i32;
                } else if (__value__ == (5325046i32)) {
                    if ((_i_1 < (_data_0.length) : Bool)) {
                        _gotoNext = 5325071i32;
                    } else {
                        _gotoNext = 5325574i32;
                    };
                } else if (__value__ == (5325067i32)) {
                    _i_1++;
                    _gotoNext = 5325046i32;
                } else if (__value__ == (5325071i32)) {
                    _gotoNext = 5325076i32;
                } else if (__value__ == (5325076i32)) {
                    {
                        final __value__ = _data_0[(_i_1 : stdgo.GoInt)];
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            _gotoNext = 5325096i32;
                        } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                            _gotoNext = 5325134i32;
                        } else {
                            _gotoNext = 5325067i32;
                        };
                    };
                } else if (__value__ == (5325096i32)) {
                    _i_1++;
                    _gotoNext = 5325067i32;
                } else if (__value__ == (5325134i32)) {
                    _i_1++;
                    switchBreak = true;
                    _gotoNext = 5325004i32;
                } else if (__value__ == (5325213i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 5325285i32;
                } else if (__value__ == (5325285i32)) {
                    if ((_i_1 < (_data_0.length) : Bool)) {
                        _gotoNext = 5325310i32;
                    } else {
                        _gotoNext = 5325574i32;
                    };
                } else if (__value__ == (5325306i32)) {
                    _i_1++;
                    _gotoNext = 5325285i32;
                } else if (__value__ == (5325310i32)) {
                    _gotoNext = 5325315i32;
                } else if (__value__ == (5325315i32)) {
                    {
                        final __value__ = _data_0[(_i_1 : stdgo.GoInt)];
                        if (__value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8)) || __value__ == ((46 : stdgo.GoUInt8)) || __value__ == ((101 : stdgo.GoUInt8)) || __value__ == ((69 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((45 : stdgo.GoUInt8))) {
                            _gotoNext = 5325335i32;
                        } else {
                            _gotoNext = 5325422i32;
                        };
                    };
                } else if (__value__ == (5325335i32)) {
                    _gotoNext = 5325306i32;
                } else if (__value__ == (5325422i32)) {
                    switchBreak = true;
                    _gotoNext = 5325004i32;
                } else if (__value__ == (5325458i32)) {
                    _i_1 = (_i_1 + (((("rue" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoInt);
                    _gotoNext = 5325574i32;
                } else if (__value__ == (5325495i32)) {
                    _i_1 = (_i_1 + (((("alse" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoInt);
                    _gotoNext = 5325574i32;
                } else if (__value__ == (5325534i32)) {
                    _i_1 = (_i_1 + (((("ull" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoInt);
                    _gotoNext = 5325574i32;
                } else if (__value__ == (5325574i32)) {
                    if ((_i_1 < (_data_0.length) : Bool)) {
                        _gotoNext = 5325591i32;
                    } else {
                        _gotoNext = 5325646i32;
                    };
                } else if (__value__ == (5325591i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._opcode = stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue((stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), _data_0[(_i_1 : stdgo.GoInt)]);
                    _gotoNext = 5325673i32;
                } else if (__value__ == (5325646i32)) {
                    _gotoNext = 5325646i32;
                    (@:checkr _d ?? throw "null pointer dereference")._opcode = (10 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 5325673i32;
                } else if (__value__ == (5325673i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._off = (_i_1 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = -1i32;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _scanWhile( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _op:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var __0 = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), __1 = (@:checkr _d ?? throw "null pointer dereference")._data, __2 = ((@:checkr _d ?? throw "null pointer dereference")._off : stdgo.GoInt);
var _i = __2, _data = __1, _s = __0;
        while ((_i < (_data.length) : Bool)) {
            var _newOp = ((@:checkr _s ?? throw "null pointer dereference")._step(_s, _data[(_i : stdgo.GoInt)]) : stdgo.GoInt);
            _i++;
            if (_newOp != (_op)) {
                (@:checkr _d ?? throw "null pointer dereference")._opcode = _newOp;
                (@:checkr _d ?? throw "null pointer dereference")._off = _i;
                return;
            };
        };
        (@:checkr _d ?? throw "null pointer dereference")._off = ((_data.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._opcode = @:check2 (@:checkr _d ?? throw "null pointer dereference")._scan._eof();
    }
    @:keep
    @:tdfield
    static public function _scanNext( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        if (((@:checkr _d ?? throw "null pointer dereference")._off < ((@:checkr _d ?? throw "null pointer dereference")._data.length) : Bool)) {
            (@:checkr _d ?? throw "null pointer dereference")._opcode = (@:checkr _d ?? throw "null pointer dereference")._scan._step((stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), (@:checkr _d ?? throw "null pointer dereference")._data[((@:checkr _d ?? throw "null pointer dereference")._off : stdgo.GoInt)]);
            (@:checkr _d ?? throw "null pointer dereference")._off++;
        } else {
            (@:checkr _d ?? throw "null pointer dereference")._opcode = @:check2 (@:checkr _d ?? throw "null pointer dereference")._scan._eof();
            (@:checkr _d ?? throw "null pointer dereference")._off = (((@:checkr _d ?? throw "null pointer dereference")._data.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
    }
    @:keep
    @:tdfield
    static public function _skip( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var __0 = (stdgo.Go.setRef((@:checkr _d ?? throw "null pointer dereference")._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), __1 = (@:checkr _d ?? throw "null pointer dereference")._data, __2 = ((@:checkr _d ?? throw "null pointer dereference")._off : stdgo.GoInt);
var _i = __2, _data = __1, _s = __0;
        var _depth = ((@:checkr _s ?? throw "null pointer dereference")._parseState.length : stdgo.GoInt);
        while (true) {
            var _op = ((@:checkr _s ?? throw "null pointer dereference")._step(_s, _data[(_i : stdgo.GoInt)]) : stdgo.GoInt);
            _i++;
            if ((((@:checkr _s ?? throw "null pointer dereference")._parseState.length) < _depth : Bool)) {
                (@:checkr _d ?? throw "null pointer dereference")._off = _i;
                (@:checkr _d ?? throw "null pointer dereference")._opcode = _op;
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _addErrorContext( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _err:stdgo.Error):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        if ((((@:checkr _d ?? throw "null pointer dereference")._errorContext != null && (((@:checkr _d ?? throw "null pointer dereference")._errorContext : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference")._errorContext : Dynamic).__nil__)) && ((!(((@:checkr (@:checkr _d ?? throw "null pointer dereference")._errorContext ?? throw "null pointer dereference").struct_.string() : String) == (null.string() : String)) || (((@:checkr (@:checkr _d ?? throw "null pointer dereference")._errorContext ?? throw "null pointer dereference").fieldStack.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>))) {
                    var _err:stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>) : __type__.__underlying__().value;
                    (@:checkr _err ?? throw "null pointer dereference").struct_ = (@:checkr (@:checkr _d ?? throw "null pointer dereference")._errorContext ?? throw "null pointer dereference").struct_.name()?.__copy__();
                    (@:checkr _err ?? throw "null pointer dereference").field = stdgo._internal.strings.Strings_join.join((@:checkr (@:checkr _d ?? throw "null pointer dereference")._errorContext ?? throw "null pointer dereference").fieldStack, ("." : stdgo.GoString))?.__copy__();
                };
            };
        };
        return _err;
    }
    @:keep
    @:tdfield
    static public function _saveError( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _err:stdgo.Error):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        if ((@:checkr _d ?? throw "null pointer dereference")._savedError == null) {
            (@:checkr _d ?? throw "null pointer dereference")._savedError = @:check2r _d._addErrorContext(_err);
        };
    }
    @:keep
    @:tdfield
    static public function _init( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        (@:checkr _d ?? throw "null pointer dereference")._data = _data;
        (@:checkr _d ?? throw "null pointer dereference")._off = (0 : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._savedError = (null : stdgo.Error);
        if (((@:checkr _d ?? throw "null pointer dereference")._errorContext != null && (((@:checkr _d ?? throw "null pointer dereference")._errorContext : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference")._errorContext : Dynamic).__nil__))) {
            (@:checkr (@:checkr _d ?? throw "null pointer dereference")._errorContext ?? throw "null pointer dereference").struct_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
            (@:checkr (@:checkr _d ?? throw "null pointer dereference")._errorContext ?? throw "null pointer dereference").fieldStack = ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._errorContext ?? throw "null pointer dereference").fieldStack.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        return _d;
    }
    @:keep
    @:tdfield
    static public function _readIndex( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        return ((@:checkr _d ?? throw "null pointer dereference")._off - (1 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _unmarshal( _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState> = _d;
        var _rv = (stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        if (((_rv.kind() != (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || _rv.isNil() : Bool)) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError(stdgo._internal.reflect.Reflect_typeof.typeOf(_v)) : stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError>));
        };
        @:check2 (@:checkr _d ?? throw "null pointer dereference")._scan._reset();
        @:check2r _d._scanWhile((9 : stdgo.GoInt));
        var _err = (@:check2r _d._value(_rv?.__copy__()) : stdgo.Error);
        if (_err != null) {
            return @:check2r _d._addErrorContext(_err);
        };
        return (@:checkr _d ?? throw "null pointer dereference")._savedError;
    }
}
