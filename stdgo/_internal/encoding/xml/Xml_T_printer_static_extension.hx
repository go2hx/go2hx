package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.T_printer_asInterface) class T_printer_static_extension {
    @:keep
    static public function escapeString( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _s:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        var _esc:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _last = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _width:stdgo.GoInt = __tmp__._1;
                _i = (_i + (_width) : stdgo.GoInt);
                {
                    var __continue__ = false;
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _r;
                            if (__value__ == ((34 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escQuot._escQuot;
                                break;
                            } else if (__value__ == ((39 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escApos._escApos;
                                break;
                            } else if (__value__ == ((38 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escAmp._escAmp;
                                break;
                            } else if (__value__ == ((60 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escLT._escLT;
                                break;
                            } else if (__value__ == ((62 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escGT._escGT;
                                break;
                            } else if (__value__ == ((9 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escTab._escTab;
                                break;
                            } else if (__value__ == ((10 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escNL._escNL;
                                break;
                            } else if (__value__ == ((13 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escCR._escCR;
                                break;
                            } else {
                                if ((!stdgo._internal.encoding.xml.Xml__isInCharacterRange._isInCharacterRange(_r) || (((_r == (65533 : stdgo.GoInt32)) && (_width == (1 : stdgo.GoInt)) : Bool)) : Bool)) {
                                    _esc = stdgo._internal.encoding.xml.Xml__escFFFD._escFFFD;
                                    break;
                                };
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                        };
                        break;
                    };
                    if (__continue__) continue;
                };
                _p.writeString((_s.__slice__(_last, (_i - _width : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _p.write(_esc);
                _last = _i;
            };
        };
        _p.writeString((_s.__slice__(_last) : stdgo.GoString)?.__copy__());
    }
    @:keep
    static public function _writeIndent( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _depthDelta:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        if (((_p._prefix.length == (0 : stdgo.GoInt)) && (_p._indent.length == (0 : stdgo.GoInt)) : Bool)) {
            return;
        };
        if ((_depthDelta < (0 : stdgo.GoInt) : Bool)) {
            _p._depth--;
            if (_p._indentedIn) {
                _p._indentedIn = false;
                return;
            };
            _p._indentedIn = false;
        };
        if (_p._putNewline) {
            _p.writeByte((10 : stdgo.GoUInt8));
        } else {
            _p._putNewline = true;
        };
        if (((_p._prefix.length) > (0 : stdgo.GoInt) : Bool)) {
            _p.writeString(_p._prefix?.__copy__());
        };
        if (((_p._indent.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _p._depth : Bool)) {
                    _p.writeString(_p._indent.__copy__());
                    _i++;
                };
            };
        };
        if ((_depthDelta > (0 : stdgo.GoInt) : Bool)) {
            _p._depth++;
            _p._indentedIn = true;
        };
    }
    @:keep
    static public function _cachedWriteError( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        var __tmp__ = _p.write((null : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function close( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        if (_p._closed) {
            return (null : stdgo.Error);
        };
        _p._closed = true;
        {
            var _err = (_p._w.flush() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (((_p._tags.length) > (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("unclosed tag <%s>" : stdgo.GoString), stdgo.Go.toInterface(_p._tags[((_p._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].local));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function writeByte( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _c:stdgo.GoUInt8):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        if ((_p._closed && (_p._err == null) : Bool)) {
            _p._err = stdgo._internal.errors.Errors_new_.new_(("use of closed Encoder" : stdgo.GoString));
        };
        if (_p._err == null) {
            _p._err = _p._w.writeByte(_c);
        };
        return _p._err;
    }
    @:keep
    static public function writeString( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_p._closed && (_p._err == null) : Bool)) {
            _p._err = stdgo._internal.errors.Errors_new_.new_(("use of closed Encoder" : stdgo.GoString));
        };
        if (_p._err == null) {
            {
                var __tmp__ = _p._w.writeString(_s?.__copy__());
                _n = __tmp__._0;
                _p._err = __tmp__._1;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _p._err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function write( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_p._closed && (_p._err == null) : Bool)) {
            _p._err = stdgo._internal.errors.Errors_new_.new_(("use of closed Encoder" : stdgo.GoString));
        };
        if (_p._err == null) {
            {
                var __tmp__ = _p._w.write(_b);
                _n = __tmp__._0;
                _p._err = __tmp__._1;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _p._err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function _marshalStruct( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>, _val:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        var _s = ({ _p : _p } : stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack);
        for (_i => _ in _tinfo._fields) {
            var _finfo = (stdgo.Go.setRef(_tinfo._fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
            if ((_finfo._flags & (2 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) != ((0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                continue;
            };
            var _vf = (_finfo._value(_val?.__copy__(), false)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (!_vf.isValid()) {
                continue;
            };
            {
                final __value__ = (_finfo._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                if (__value__ == ((4 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                    var _emit = stdgo._internal.encoding.xml.Xml_escapeText.escapeText;
                    if ((_finfo._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) == ((4 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                        _emit = stdgo._internal.encoding.xml.Xml__emitCDATA._emitCDATA;
                    };
                    {
                        var _err = (_s._trim(_finfo._parents) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                    if ((_vf.canInterface() && _vf.type().implements_(stdgo._internal.encoding.xml.Xml__textMarshalerType._textMarshalerType) : Bool)) {
                        var __tmp__ = (stdgo.Go.typeAssert((_vf.interface_() : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler).marshalText(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return _err;
                        };
                        {
                            var _err = (_emit(stdgo.Go.asInterface(_p), _data) : stdgo.Error);
                            if (_err != null) {
                                return _err;
                            };
                        };
                        continue;
                    };
                    if (_vf.canAddr()) {
                        var _pv = (_vf.addr()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                        if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textMarshalerType._textMarshalerType) : Bool)) {
                            var __tmp__ = (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler).marshalText(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                return _err;
                            };
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), _data) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                            continue;
                        };
                    };
                    var _scratch:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUInt8)]);
                    _vf = stdgo._internal.encoding.xml.Xml__indirect._indirect(_vf?.__copy__())?.__copy__();
                    {
                        final __value__ = _vf.kind();
                        if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), stdgo._internal.strconv.Strconv_appendInt.appendInt((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _vf.int_(), (10 : stdgo.GoInt))) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), stdgo._internal.strconv.Strconv_appendUint.appendUint((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _vf.uint(), (10 : stdgo.GoInt))) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), stdgo._internal.strconv.Strconv_appendFloat.appendFloat((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _vf.float_(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), _vf.type().bits())) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), stdgo._internal.strconv.Strconv_appendBool.appendBool((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _vf.bool_())) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), ((_vf.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_vf.interface_() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false };
                                }, _elem = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    {
                                        var _err = (_emit(stdgo.Go.asInterface(_p), _elem) : stdgo.Error);
                                        if (_err != null) {
                                            return _err;
                                        };
                                    };
                                };
                            };
                        };
                    };
                    continue;
                } else if (__value__ == ((32 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                    {
                        var _err = (_s._trim(_finfo._parents) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                    _vf = stdgo._internal.encoding.xml.Xml__indirect._indirect(_vf?.__copy__())?.__copy__();
                    var _k = (_vf.kind() : stdgo._internal.reflect.Reflect_Kind.Kind);
                    if (!(((_k == (24u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || (_k == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _vf.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool) : Bool))) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: bad type for comment field of %s" : stdgo.GoString), stdgo.Go.toInterface(_val.type()));
                    };
                    if (_vf.len() == ((0 : stdgo.GoInt))) {
                        continue;
                    };
                    _p._writeIndent((0 : stdgo.GoInt));
                    _p.writeString(("<!--" : stdgo.GoString));
                    var _dashDash = (false : Bool);
                    var _dashLast = (false : Bool);
                    {
                        final __value__ = _k;
                        if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            var _s = ((_vf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            _dashDash = stdgo._internal.strings.Strings_contains.contains(_s?.__copy__(), ("--" : stdgo.GoString));
                            _dashLast = _s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((45 : stdgo.GoUInt8));
                            if (!_dashDash) {
                                _p.writeString(_s?.__copy__());
                            };
                        } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            var _b = _vf.bytes();
                            _dashDash = stdgo._internal.bytes.Bytes_contains.contains(_b, stdgo._internal.encoding.xml.Xml__ddBytes._ddBytes);
                            _dashLast = _b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((45 : stdgo.GoUInt8));
                            if (!_dashDash) {
                                _p.write(_b);
                            };
                        } else {
                            throw stdgo.Go.toInterface(("can\'t happen" : stdgo.GoString));
                        };
                    };
                    if (_dashDash) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: comments must not contain \"--\"" : stdgo.GoString));
                    };
                    if (_dashLast) {
                        _p.writeByte((32 : stdgo.GoUInt8));
                    };
                    _p.writeString(("-->" : stdgo.GoString));
                    continue;
                } else if (__value__ == ((16 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                    _vf = stdgo._internal.encoding.xml.Xml__indirect._indirect(_vf?.__copy__())?.__copy__();
                    var _iface = (_vf.interface_() : stdgo.AnyInterface);
                    {
                        final __type__ = _iface;
                        if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                            var _raw:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                            _p.write(_raw);
                            continue;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                            var _raw:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                            _p.writeString(_raw?.__copy__());
                            continue;
                        };
                    };
                } else if (__value__ == ((1 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((65 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                    {
                        var _err = (_s._trim(_finfo._parents) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                    if (((_finfo._parents.length) > (_s._stack.length) : Bool)) {
                        if (((_vf.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _vf.kind() != ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool) || !_vf.isNil() : Bool)) {
                            {
                                var _err = (_s._push((_finfo._parents.__slice__((_s._stack.length)) : stdgo.Slice<stdgo.GoString>)) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        };
                    };
                };
            };
            {
                var _err = (_p._marshalValue(_vf?.__copy__(), _finfo, null) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        _s._trim((null : stdgo.Slice<stdgo.GoString>));
        return _p._cachedWriteError();
    }
    @:keep
    static public function _marshalSimple( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _typ:stdgo._internal.reflect.Reflect_Type_.Type_, _val:stdgo._internal.reflect.Reflect_Value.Value):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _val.kind();
                    if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        return { _0 : stdgo._internal.strconv.Strconv_formatInt.formatInt(_val.int_(), (10 : stdgo.GoInt))?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        return { _0 : stdgo._internal.strconv.Strconv_formatUint.formatUint(_val.uint(), (10 : stdgo.GoInt))?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        return { _0 : stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_val.float_(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), _val.type().bits())?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        return { _0 : (_val.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        return { _0 : stdgo._internal.strconv.Strconv_formatBool.formatBool(_val.bool_())?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        if (_typ.elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            break;
                        };
                        var _bytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        if (_val.canAddr()) {
                            _bytes = _val.slice((0 : stdgo.GoInt), _val.len()).bytes();
                        } else {
                            _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_val.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                            stdgo._internal.reflect.Reflect_copy.copy(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_bytes))?.__copy__(), _val?.__copy__());
                        };
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _bytes, _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        if (_typ.elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            break;
                        };
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _val.bytes(), _2 : (null : stdgo.Error) };
                        break;
                    };
                };
                break;
            };
        };
        return { _0 : stdgo.Go.str()?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError(_typ) : stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError>)) };
    }
    @:keep
    static public function _writeEnd( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _name:stdgo._internal.encoding.xml.Xml_Name.Name):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        if (_name.local == (stdgo.Go.str())) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: end tag with no name" : stdgo.GoString));
        };
        if (((_p._tags.length == (0 : stdgo.GoInt)) || (_p._tags[((_p._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].local == stdgo.Go.str()) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: end tag </%s> without start tag" : stdgo.GoString), stdgo.Go.toInterface(_name.local));
        };
        {
            var _top = (_p._tags[((_p._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.encoding.xml.Xml_Name.Name);
            if (stdgo.Go.toInterface(_top) != stdgo.Go.toInterface(_name)) {
                if (_top.local != (_name.local)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: end tag </%s> does not match start tag <%s>" : stdgo.GoString), stdgo.Go.toInterface(_name.local), stdgo.Go.toInterface(_top.local));
                };
                return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: end tag </%s> in namespace %s does not match start tag <%s> in namespace %s" : stdgo.GoString), stdgo.Go.toInterface(_name.local), stdgo.Go.toInterface(_name.space), stdgo.Go.toInterface(_top.local), stdgo.Go.toInterface(_top.space));
            };
        };
        _p._tags = (_p._tags.__slice__(0, ((_p._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Name.Name>);
        _p._writeIndent((-1 : stdgo.GoInt));
        _p.writeByte((60 : stdgo.GoUInt8));
        _p.writeByte((47 : stdgo.GoUInt8));
        _p.writeString(_name.local?.__copy__());
        _p.writeByte((62 : stdgo.GoUInt8));
        _p._popPrefix();
        return (null : stdgo.Error);
    }
    @:keep
    static public function _writeStart( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        if (_start.name.local == (stdgo.Go.str())) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: start tag with no name" : stdgo.GoString));
        };
        _p._tags = (_p._tags.__append__(_start.name?.__copy__()));
        _p._markPrefix();
        _p._writeIndent((1 : stdgo.GoInt));
        _p.writeByte((60 : stdgo.GoUInt8));
        _p.writeString(_start.name.local?.__copy__());
        if (_start.name.space != (stdgo.Go.str())) {
            _p.writeString((" xmlns=\"" : stdgo.GoString));
            _p.escapeString(_start.name.space?.__copy__());
            _p.writeByte((34 : stdgo.GoUInt8));
        };
        for (__0 => _attr in _start.attr) {
            var _name = (_attr.name?.__copy__() : stdgo._internal.encoding.xml.Xml_Name.Name);
            if (_name.local == (stdgo.Go.str())) {
                continue;
            };
            _p.writeByte((32 : stdgo.GoUInt8));
            if (_name.space != (stdgo.Go.str())) {
                _p.writeString(_p._createAttrPrefix(_name.space?.__copy__())?.__copy__());
                _p.writeByte((58 : stdgo.GoUInt8));
            };
            _p.writeString(_name.local?.__copy__());
            _p.writeString(("=\"" : stdgo.GoString));
            _p.escapeString(_attr.value?.__copy__());
            _p.writeByte((34 : stdgo.GoUInt8));
        };
        _p.writeByte((62 : stdgo.GoUInt8));
        return (null : stdgo.Error);
    }
    @:keep
    static public function _marshalTextInterface( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _val:stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler, _start:stdgo._internal.encoding.xml.Xml_StartElement.StartElement):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        {
            var _err = (_p._writeStart((stdgo.Go.setRef(_start) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _val.marshalText(), _text:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        stdgo._internal.encoding.xml.Xml_escapeText.escapeText(stdgo.Go.asInterface(_p), _text);
        return _p._writeEnd(_start.name?.__copy__());
    }
    @:keep
    static public function _marshalInterface( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _val:stdgo._internal.encoding.xml.Xml_Marshaler.Marshaler, _start:stdgo._internal.encoding.xml.Xml_StartElement.StartElement):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        _p._tags = (_p._tags.__append__((new stdgo._internal.encoding.xml.Xml_Name.Name() : stdgo._internal.encoding.xml.Xml_Name.Name)));
        var _n = (_p._tags.length : stdgo.GoInt);
        var _err = (_val.marshalXML(_p._encoder, _start?.__copy__()) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        if (((_p._tags.length) > _n : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: %s.MarshalXML wrote invalid XML: <%s> not closed" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.xml.Xml__receiverType._receiverType(stdgo.Go.toInterface(_val))), stdgo.Go.toInterface(_p._tags[((_p._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].local));
        };
        _p._tags = (_p._tags.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Name.Name>);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _marshalAttr( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>, _name:stdgo._internal.encoding.xml.Xml_Name.Name, _val:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__marshalerAttrType._marshalerAttrType) : Bool)) {
            var __tmp__ = (stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_MarshalerAttr.MarshalerAttr)) : stdgo._internal.encoding.xml.Xml_MarshalerAttr.MarshalerAttr).marshalXMLAttr(_name?.__copy__()), _attr:stdgo._internal.encoding.xml.Xml_Attr.Attr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            if (_attr.name.local != (stdgo.Go.str())) {
                _start.attr = (_start.attr.__append__(_attr?.__copy__()));
            };
            return (null : stdgo.Error);
        };
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__marshalerAttrType._marshalerAttrType) : Bool)) {
                var __tmp__ = (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.xml.Xml_MarshalerAttr.MarshalerAttr)) : stdgo._internal.encoding.xml.Xml_MarshalerAttr.MarshalerAttr).marshalXMLAttr(_name?.__copy__()), _attr:stdgo._internal.encoding.xml.Xml_Attr.Attr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (_attr.name.local != (stdgo.Go.str())) {
                    _start.attr = (_start.attr.__append__(_attr?.__copy__()));
                };
                return (null : stdgo.Error);
            };
        };
        if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textMarshalerType._textMarshalerType) : Bool)) {
            var __tmp__ = (stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler).marshalText(), _text:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            _start.attr = (_start.attr.__append__((new stdgo._internal.encoding.xml.Xml_Attr.Attr(_name?.__copy__(), (_text : stdgo.GoString)?.__copy__()) : stdgo._internal.encoding.xml.Xml_Attr.Attr)));
            return (null : stdgo.Error);
        };
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textMarshalerType._textMarshalerType) : Bool)) {
                var __tmp__ = (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler).marshalText(), _text:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                _start.attr = (_start.attr.__append__((new stdgo._internal.encoding.xml.Xml_Attr.Attr(_name?.__copy__(), (_text : stdgo.GoString)?.__copy__()) : stdgo._internal.encoding.xml.Xml_Attr.Attr)));
                return (null : stdgo.Error);
            };
        };
        {
            final __value__ = _val.kind();
            if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                if (_val.isNil()) {
                    return (null : stdgo.Error);
                };
                _val = _val.elem()?.__copy__();
            };
        };
        if (((_val.kind() == (23u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && (_val.type().elem().kind() != (8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
            var _n = (_val.len() : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _n : Bool)) {
                    {
                        var _err = (_p._marshalAttr(_start, _name.__copy__(), _val.index(_i).__copy__()) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                    _i++;
                };
            };
            return (null : stdgo.Error);
        };
        if ((_val.type().string() : String) == (stdgo._internal.encoding.xml.Xml__attrType._attrType.string() : String)) {
            _start.attr = (_start.attr.__append__((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_Attr.Attr)) : stdgo._internal.encoding.xml.Xml_Attr.Attr)?.__copy__()));
            return (null : stdgo.Error);
        };
        var __tmp__ = _p._marshalSimple(_val.type(), _val?.__copy__()), _s:stdgo.GoString = __tmp__._0, _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        if (_b != null) {
            _s = (_b : stdgo.GoString)?.__copy__();
        };
        _start.attr = (_start.attr.__append__((new stdgo._internal.encoding.xml.Xml_Attr.Attr(_name?.__copy__(), _s?.__copy__()) : stdgo._internal.encoding.xml.Xml_Attr.Attr)));
        return (null : stdgo.Error);
    }
    @:keep
    static public function _marshalValue( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _val:stdgo._internal.reflect.Reflect_Value.Value, _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>, _startTemplate:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        if (((_startTemplate != null && ((_startTemplate : Dynamic).__nil__ == null || !(_startTemplate : Dynamic).__nil__)) && (_startTemplate.name.local == stdgo.Go.str()) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeElement of StartElement with missing name" : stdgo.GoString));
        };
        if (!_val.isValid()) {
            return (null : stdgo.Error);
        };
        if ((((_finfo != null && ((_finfo : Dynamic).__nil__ == null || !(_finfo : Dynamic).__nil__)) && (_finfo._flags & (128 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) != ((0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) : Bool) && stdgo._internal.encoding.xml.Xml__isEmptyValue._isEmptyValue(_val?.__copy__()) : Bool)) {
            return (null : stdgo.Error);
        };
        while (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || (_val.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
            if (_val.isNil()) {
                return (null : stdgo.Error);
            };
            _val = _val.elem()?.__copy__();
        };
        var _kind = (_val.kind() : stdgo._internal.reflect.Reflect_Kind.Kind);
        var _typ = (_val.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        if ((_val.canInterface() && _typ.implements_(stdgo._internal.encoding.xml.Xml__marshalerType._marshalerType) : Bool)) {
            return _p._marshalInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_Marshaler.Marshaler)) : stdgo._internal.encoding.xml.Xml_Marshaler.Marshaler), stdgo._internal.encoding.xml.Xml__defaultStart._defaultStart(_typ, _finfo, _startTemplate)?.__copy__());
        };
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__marshalerType._marshalerType) : Bool)) {
                return _p._marshalInterface((stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.xml.Xml_Marshaler.Marshaler)) : stdgo._internal.encoding.xml.Xml_Marshaler.Marshaler), stdgo._internal.encoding.xml.Xml__defaultStart._defaultStart(_pv.type(), _finfo, _startTemplate)?.__copy__());
            };
        };
        if ((_val.canInterface() && _typ.implements_(stdgo._internal.encoding.xml.Xml__textMarshalerType._textMarshalerType) : Bool)) {
            return _p._marshalTextInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler), stdgo._internal.encoding.xml.Xml__defaultStart._defaultStart(_typ, _finfo, _startTemplate)?.__copy__());
        };
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textMarshalerType._textMarshalerType) : Bool)) {
                return _p._marshalTextInterface((stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler), stdgo._internal.encoding.xml.Xml__defaultStart._defaultStart(_pv.type(), _finfo, _startTemplate)?.__copy__());
            };
        };
        if (((((_kind == (23u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || (_kind == (17u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) && (_typ.elem().kind() != (8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
            {
                var __0 = (0 : stdgo.GoInt), __1 = (_val.len() : stdgo.GoInt);
var _n = __1, _i = __0;
                while ((_i < _n : Bool)) {
                    {
                        var _err = (_p._marshalValue(_val.index(_i).__copy__(), _finfo, _startTemplate) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                    _i++;
                };
            };
            return (null : stdgo.Error);
        };
        var __tmp__ = stdgo._internal.encoding.xml.Xml__getTypeInfo._getTypeInfo(_typ), _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var _start:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        if ((_startTemplate != null && ((_startTemplate : Dynamic).__nil__ == null || !(_startTemplate : Dynamic).__nil__))) {
            _start.name = _startTemplate.name?.__copy__();
            _start.attr = (_start.attr.__append__(...(_startTemplate.attr : Array<stdgo._internal.encoding.xml.Xml_Attr.Attr>)));
        } else if ((_tinfo._xmlname != null && ((_tinfo._xmlname : Dynamic).__nil__ == null || !(_tinfo._xmlname : Dynamic).__nil__))) {
            var _xmlname = _tinfo._xmlname;
            if (_xmlname._name != (stdgo.Go.str())) {
                {
                    final __tmp__0 = _xmlname._xmlns?.__copy__();
                    final __tmp__1 = _xmlname._name?.__copy__();
                    _start.name.space = __tmp__0;
                    _start.name.local = __tmp__1;
                };
            } else {
                var _fv = (_xmlname._value(_val?.__copy__(), false)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_fv.interface_() : stdgo._internal.encoding.xml.Xml_Name.Name)) : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : false };
                    }, _v = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && (_v.local != stdgo.Go.str()) : Bool)) {
                        _start.name = _v?.__copy__();
                    };
                };
            };
        };
        if (((_start.name.local == stdgo.Go.str()) && (_finfo != null && ((_finfo : Dynamic).__nil__ == null || !(_finfo : Dynamic).__nil__)) : Bool)) {
            {
                final __tmp__0 = _finfo._xmlns?.__copy__();
                final __tmp__1 = _finfo._name?.__copy__();
                _start.name.space = __tmp__0;
                _start.name.local = __tmp__1;
            };
        };
        if (_start.name.local == (stdgo.Go.str())) {
            var _name = (_typ.name()?.__copy__() : stdgo.GoString);
            {
                var _i = (stdgo._internal.strings.Strings_indexByte.indexByte(_name?.__copy__(), (91 : stdgo.GoUInt8)) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    _name = (_name.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                };
            };
            if (_name == (stdgo.Go.str())) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError(_typ) : stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError>));
            };
            _start.name.local = _name?.__copy__();
        };
        for (_i => _ in _tinfo._fields) {
            var _finfo = (stdgo.Go.setRef(_tinfo._fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
            if ((_finfo._flags & (2 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                continue;
            };
            var _fv = (_finfo._value(_val?.__copy__(), false)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if ((((_finfo._flags & (128 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) != (0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) && ((!_fv.isValid() || stdgo._internal.encoding.xml.Xml__isEmptyValue._isEmptyValue(_fv?.__copy__()) : Bool)) : Bool)) {
                continue;
            };
            if (((_fv.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _fv.isNil() : Bool)) {
                continue;
            };
            var _name = ({ space : _finfo._xmlns?.__copy__(), local : _finfo._name?.__copy__() } : stdgo._internal.encoding.xml.Xml_Name.Name);
            {
                var _err = (_p._marshalAttr((stdgo.Go.setRef(_start) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), _name?.__copy__(), _fv?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (((((((_tinfo._xmlname != null && ((_tinfo._xmlname : Dynamic).__nil__ == null || !(_tinfo._xmlname : Dynamic).__nil__)) && _start.name.space == (stdgo.Go.str()) : Bool) && _tinfo._xmlname._xmlns == (stdgo.Go.str()) : Bool) && _tinfo._xmlname._name == (stdgo.Go.str()) : Bool) && (_p._tags.length) != ((0 : stdgo.GoInt)) : Bool) && (_p._tags[((_p._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].space != stdgo.Go.str()) : Bool)) {
            _start.attr = (_start.attr.__append__((new stdgo._internal.encoding.xml.Xml_Attr.Attr((new stdgo._internal.encoding.xml.Xml_Name.Name(stdgo.Go.str()?.__copy__(), ("xmlns" : stdgo.GoString)) : stdgo._internal.encoding.xml.Xml_Name.Name), stdgo.Go.str()?.__copy__()) : stdgo._internal.encoding.xml.Xml_Attr.Attr)));
        };
        {
            var _err = (_p._writeStart((stdgo.Go.setRef(_start) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (_val.kind() == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            _err = _p._marshalStruct(_tinfo, _val?.__copy__());
        } else {
            var __tmp__ = _p._marshalSimple(_typ, _val?.__copy__()), _s:stdgo.GoString = __tmp__._0, _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err1:stdgo.Error = __tmp__._2;
            if (_err1 != null) {
                _err = _err1;
            } else if (_b != null) {
                stdgo._internal.encoding.xml.Xml_escapeText.escapeText(stdgo.Go.asInterface(_p), _b);
            } else {
                _p.escapeString(_s?.__copy__());
            };
        };
        if (_err != null) {
            return _err;
        };
        {
            var _err = (_p._writeEnd(_start.name?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return _p._cachedWriteError();
    }
    @:keep
    static public function _popPrefix( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        while (((_p._prefixes.length) > (0 : stdgo.GoInt) : Bool)) {
            var _prefix = (_p._prefixes[((_p._prefixes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            _p._prefixes = (_p._prefixes.__slice__(0, ((_p._prefixes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            if (_prefix == (stdgo.Go.str())) {
                break;
            };
            _p._deleteAttrPrefix(_prefix?.__copy__());
        };
    }
    @:keep
    static public function _markPrefix( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        _p._prefixes = (_p._prefixes.__append__(stdgo.Go.str()?.__copy__()));
    }
    @:keep
    static public function _deleteAttrPrefix( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _prefix:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        if (_p._attrPrefix != null) _p._attrPrefix.remove((_p._attrNS[_prefix] ?? ("" : stdgo.GoString)));
        if (_p._attrNS != null) _p._attrNS.remove(_prefix);
    }
    @:keep
    static public function _createAttrPrefix( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer>, _url:stdgo.GoString):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_printer.T_printer> = _p;
        {
            var _prefix = ((_p._attrPrefix[_url] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_prefix != (stdgo.Go.str())) {
                return _prefix?.__copy__();
            };
        };
        if (_url == (("http://www.w3.org/XML/1998/namespace" : stdgo.GoString))) {
            return ("xml" : stdgo.GoString);
        };
        if (_p._attrPrefix == null) {
            _p._attrPrefix = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
            _p._attrNS = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        };
        var _prefix = (stdgo._internal.strings.Strings_trimRight.trimRight(_url?.__copy__(), ("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _i = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_prefix?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _prefix = (_prefix.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        if (((_prefix == (stdgo.Go.str()) || !stdgo._internal.encoding.xml.Xml__isName._isName((_prefix : stdgo.Slice<stdgo.GoUInt8>)) : Bool) || stdgo._internal.strings.Strings_contains.contains(_prefix?.__copy__(), (":" : stdgo.GoString)) : Bool)) {
            _prefix = ("_" : stdgo.GoString);
        };
        if ((((_prefix.length) >= (3 : stdgo.GoInt) : Bool) && stdgo._internal.strings.Strings_equalFold.equalFold((_prefix.__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("xml" : stdgo.GoString)) : Bool)) {
            _prefix = (("_" : stdgo.GoString) + _prefix?.__copy__() : stdgo.GoString)?.__copy__();
        };
        if ((_p._attrNS[_prefix] ?? ("" : stdgo.GoString)) != (stdgo.Go.str())) {
            {
                _p._seq++;
                while (true) {
                    {
                        var _id = (((_prefix + ("_" : stdgo.GoString).__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_p._seq).__copy__() : stdgo.GoString).__copy__() : stdgo.GoString);
                        if ((_p._attrNS[_id] ?? ("" : stdgo.GoString)) == (stdgo.Go.str())) {
                            _prefix = _id.__copy__();
                            break;
                        };
                    };
                    _p._seq++;
                };
            };
        };
        _p._attrPrefix[_url] = _prefix?.__copy__();
        _p._attrNS[_prefix] = _url?.__copy__();
        _p.writeString(("xmlns:" : stdgo.GoString));
        _p.writeString(_prefix?.__copy__());
        _p.writeString(("=\"" : stdgo.GoString));
        stdgo._internal.encoding.xml.Xml_escapeText.escapeText(stdgo.Go.asInterface(_p), (_url : stdgo.Slice<stdgo.GoUInt8>));
        _p.writeString(("\" " : stdgo.GoString));
        _p._prefixes = (_p._prefixes.__append__(_prefix?.__copy__()));
        return _prefix?.__copy__();
    }
}
