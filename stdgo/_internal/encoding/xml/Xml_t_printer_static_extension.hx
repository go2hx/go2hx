package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.T_printer_asInterface) class T_printer_static_extension {
    @:keep
    @:tdfield
    static public function escapeString( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _s:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        var _esc:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _last = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _width:stdgo.GoInt = __tmp__._1;
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
                                _esc = stdgo._internal.encoding.xml.Xml__escquot._escQuot;
                                break;
                            } else if (__value__ == ((39 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escapos._escApos;
                                break;
                            } else if (__value__ == ((38 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escamp._escAmp;
                                break;
                            } else if (__value__ == ((60 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__esclt._escLT;
                                break;
                            } else if (__value__ == ((62 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escgt._escGT;
                                break;
                            } else if (__value__ == ((9 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__esctab._escTab;
                                break;
                            } else if (__value__ == ((10 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__escnl._escNL;
                                break;
                            } else if (__value__ == ((13 : stdgo.GoInt32))) {
                                _esc = stdgo._internal.encoding.xml.Xml__esccr._escCR;
                                break;
                            } else {
                                if ((!stdgo._internal.encoding.xml.Xml__isincharacterrange._isInCharacterRange(_r) || (((_r == (65533 : stdgo.GoInt32)) && (_width == (1 : stdgo.GoInt)) : Bool)) : Bool)) {
                                    _esc = stdgo._internal.encoding.xml.Xml__escfffd._escFFFD;
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
                @:check2r _p.writeString((_s.__slice__(_last, (_i - _width : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                @:check2r _p.write(_esc);
                _last = _i;
            };
        };
        @:check2r _p.writeString((_s.__slice__(_last) : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _writeIndent( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _depthDelta:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        if ((((@:checkr _p ?? throw "null pointer dereference")._prefix.length == (0 : stdgo.GoInt)) && ((@:checkr _p ?? throw "null pointer dereference")._indent.length == (0 : stdgo.GoInt)) : Bool)) {
            return;
        };
        if ((_depthDelta < (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._depth--;
            if ((@:checkr _p ?? throw "null pointer dereference")._indentedIn) {
                (@:checkr _p ?? throw "null pointer dereference")._indentedIn = false;
                return;
            };
            (@:checkr _p ?? throw "null pointer dereference")._indentedIn = false;
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._putNewline) {
            @:check2r _p.writeByte((10 : stdgo.GoUInt8));
        } else {
            (@:checkr _p ?? throw "null pointer dereference")._putNewline = true;
        };
        if ((((@:checkr _p ?? throw "null pointer dereference")._prefix.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _p.writeString((@:checkr _p ?? throw "null pointer dereference")._prefix?.__copy__());
        };
        if ((((@:checkr _p ?? throw "null pointer dereference")._indent.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _p ?? throw "null pointer dereference")._depth : Bool)) {
                    @:check2r _p.writeString((@:checkr _p ?? throw "null pointer dereference")._indent.__copy__());
                    _i++;
                };
            };
        };
        if ((_depthDelta > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._depth++;
            (@:checkr _p ?? throw "null pointer dereference")._indentedIn = true;
        };
    }
    @:keep
    @:tdfield
    static public function _cachedWriteError( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        var __tmp__ = @:check2r _p.write((null : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function close( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._closed) {
            return (null : stdgo.Error);
        };
        (@:checkr _p ?? throw "null pointer dereference")._closed = true;
        {
            var _err = (@:check2r (@:checkr _p ?? throw "null pointer dereference")._w.flush() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if ((((@:checkr _p ?? throw "null pointer dereference")._tags.length) > (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("unclosed tag <%s>" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._tags[(((@:checkr _p ?? throw "null pointer dereference")._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].local));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function writeByte( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _c:stdgo.GoUInt8):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference")._closed && ((@:checkr _p ?? throw "null pointer dereference")._err == null) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("use of closed Encoder" : stdgo.GoString));
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._err == null) {
            (@:checkr _p ?? throw "null pointer dereference")._err = @:check2r (@:checkr _p ?? throw "null pointer dereference")._w.writeByte(_c);
        };
        return (@:checkr _p ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function writeString( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((@:checkr _p ?? throw "null pointer dereference")._closed && ((@:checkr _p ?? throw "null pointer dereference")._err == null) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("use of closed Encoder" : stdgo.GoString));
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._err == null) {
            {
                var __tmp__ = @:check2r (@:checkr _p ?? throw "null pointer dereference")._w.writeString(_s?.__copy__());
                _n = @:tmpset0 __tmp__._0;
                (@:checkr _p ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _p ?? throw "null pointer dereference")._err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((@:checkr _p ?? throw "null pointer dereference")._closed && ((@:checkr _p ?? throw "null pointer dereference")._err == null) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("use of closed Encoder" : stdgo.GoString));
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._err == null) {
            {
                var __tmp__ = @:check2r (@:checkr _p ?? throw "null pointer dereference")._w.write(_b);
                _n = @:tmpset0 __tmp__._0;
                (@:checkr _p ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _p ?? throw "null pointer dereference")._err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _marshalStruct( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>, _val:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        var _s = ({ _p : _p } : stdgo._internal.encoding.xml.Xml_t_parentstack.T_parentStack);
        for (_i => _ in (@:checkr _tinfo ?? throw "null pointer dereference")._fields) {
            var _finfo = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
            if (((@:checkr _finfo ?? throw "null pointer dereference")._flags & (2 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) != ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                continue;
            };
            var _vf = (@:check2r _finfo._value(_val?.__copy__(), false)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            if (!_vf.isValid()) {
                continue;
            };
            {
                final __value__ = ((@:checkr _finfo ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                if (__value__ == ((4 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                    var _emit = stdgo._internal.encoding.xml.Xml_escapetext.escapeText;
                    if (((@:checkr _finfo ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) == ((4 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                        _emit = stdgo._internal.encoding.xml.Xml__emitcdata._emitCDATA;
                    };
                    {
                        var _err = (@:check2 _s._trim((@:checkr _finfo ?? throw "null pointer dereference")._parents) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                    if ((_vf.canInterface() && _vf.type().implements_(stdgo._internal.encoding.xml.Xml__textmarshalertype._textMarshalerType) : Bool)) {
                        var __tmp__ = (stdgo.Go.typeAssert((_vf.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler).marshalText(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
                        var _pv = (_vf.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                        if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textmarshalertype._textMarshalerType) : Bool)) {
                            var __tmp__ = (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler).marshalText(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
                    var _scratch:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
                    _vf = stdgo._internal.encoding.xml.Xml__indirect._indirect(_vf?.__copy__())?.__copy__();
                    {
                        final __value__ = _vf.kind();
                        if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), stdgo._internal.strconv.Strconv_appendint.appendInt((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _vf.int_(), (10 : stdgo.GoInt))) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), stdgo._internal.strconv.Strconv_appenduint.appendUint((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _vf.uint(), (10 : stdgo.GoInt))) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), stdgo._internal.strconv.Strconv_appendfloat.appendFloat((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _vf.float_(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), _vf.type().bits())) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), stdgo._internal.strconv.Strconv_appendbool.appendBool((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _vf.bool_())) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), ((_vf.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
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
                } else if (__value__ == ((32 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                    {
                        var _err = (@:check2 _s._trim((@:checkr _finfo ?? throw "null pointer dereference")._parents) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                    _vf = stdgo._internal.encoding.xml.Xml__indirect._indirect(_vf?.__copy__())?.__copy__();
                    var _k = (_vf.kind() : stdgo._internal.reflect.Reflect_kind.Kind);
                    if (!(((_k == (24u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || (_k == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _vf.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool) : Bool))) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: bad type for comment field of %s" : stdgo.GoString), stdgo.Go.toInterface(_val.type()));
                    };
                    if (_vf.len() == ((0 : stdgo.GoInt))) {
                        continue;
                    };
                    @:check2r _p._writeIndent((0 : stdgo.GoInt));
                    @:check2r _p.writeString(("<!--" : stdgo.GoString));
                    var _dashDash = (false : Bool);
                    var _dashLast = (false : Bool);
                    {
                        final __value__ = _k;
                        if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            var _s = ((_vf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            _dashDash = stdgo._internal.strings.Strings_contains.contains(_s?.__copy__(), ("--" : stdgo.GoString));
                            _dashLast = _s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((45 : stdgo.GoUInt8));
                            if (!_dashDash) {
                                @:check2r _p.writeString(_s?.__copy__());
                            };
                        } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            var _b = _vf.bytes();
                            _dashDash = stdgo._internal.bytes.Bytes_contains.contains(_b, stdgo._internal.encoding.xml.Xml__ddbytes._ddBytes);
                            _dashLast = _b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((45 : stdgo.GoUInt8));
                            if (!_dashDash) {
                                @:check2r _p.write(_b);
                            };
                        } else {
                            throw stdgo.Go.toInterface(("can\'t happen" : stdgo.GoString));
                        };
                    };
                    if (_dashDash) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: comments must not contain \"--\"" : stdgo.GoString));
                    };
                    if (_dashLast) {
                        @:check2r _p.writeByte((32 : stdgo.GoUInt8));
                    };
                    @:check2r _p.writeString(("-->" : stdgo.GoString));
                    continue;
                } else if (__value__ == ((16 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                    _vf = stdgo._internal.encoding.xml.Xml__indirect._indirect(_vf?.__copy__())?.__copy__();
                    var _iface = (_vf.interface_() : stdgo.AnyInterface);
                    {
                        final __type__ = _iface;
                        if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                            var _raw:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                            @:check2r _p.write(_raw);
                            continue;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                            var _raw:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                            @:check2r _p.writeString(_raw?.__copy__());
                            continue;
                        };
                    };
                } else if (__value__ == ((1 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((65 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                    {
                        var _err = (@:check2 _s._trim((@:checkr _finfo ?? throw "null pointer dereference")._parents) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                    if ((((@:checkr _finfo ?? throw "null pointer dereference")._parents.length) > (_s._stack.length) : Bool)) {
                        if (((_vf.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _vf.kind() != ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool) || !_vf.isNil() : Bool)) {
                            {
                                var _err = (@:check2 _s._push(((@:checkr _finfo ?? throw "null pointer dereference")._parents.__slice__((_s._stack.length)) : stdgo.Slice<stdgo.GoString>)) : stdgo.Error);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                        };
                    };
                };
            };
            {
                var _err = (@:check2r _p._marshalValue(_vf?.__copy__(), _finfo, null) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        @:check2 _s._trim((null : stdgo.Slice<stdgo.GoString>));
        return @:check2r _p._cachedWriteError();
    }
    @:keep
    @:tdfield
    static public function _marshalSimple( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _val:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _val.kind();
                    if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        return { _0 : stdgo._internal.strconv.Strconv_formatint.formatInt(_val.int_(), (10 : stdgo.GoInt))?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        return { _0 : stdgo._internal.strconv.Strconv_formatuint.formatUint(_val.uint(), (10 : stdgo.GoInt))?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        return { _0 : stdgo._internal.strconv.Strconv_formatfloat.formatFloat(_val.float_(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), _val.type().bits())?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        return { _0 : (_val.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        return { _0 : stdgo._internal.strconv.Strconv_formatbool.formatBool(_val.bool_())?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        if (_typ.elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            break;
                        };
                        var _bytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        if (_val.canAddr()) {
                            _bytes = _val.slice((0 : stdgo.GoInt), _val.len()).bytes();
                        } else {
                            _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_val.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                            stdgo._internal.reflect.Reflect_copy.copy(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_bytes))?.__copy__(), _val?.__copy__());
                        };
                        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _bytes, _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        if (_typ.elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            break;
                        };
                        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _val.bytes(), _2 : (null : stdgo.Error) };
                        break;
                    };
                };
                break;
            };
        };
        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError(_typ) : stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError>)) };
    }
    @:keep
    @:tdfield
    static public function _writeEnd( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _name:stdgo._internal.encoding.xml.Xml_name.Name):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        if (_name.local == ((stdgo.Go.str() : stdgo.GoString))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: end tag with no name" : stdgo.GoString));
        };
        if ((((@:checkr _p ?? throw "null pointer dereference")._tags.length == (0 : stdgo.GoInt)) || ((@:checkr _p ?? throw "null pointer dereference")._tags[(((@:checkr _p ?? throw "null pointer dereference")._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].local == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: end tag </%s> without start tag" : stdgo.GoString), stdgo.Go.toInterface(_name.local));
        };
        {
            var _top = ((@:checkr _p ?? throw "null pointer dereference")._tags[(((@:checkr _p ?? throw "null pointer dereference")._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.encoding.xml.Xml_name.Name);
            if (stdgo.Go.toInterface(_top) != stdgo.Go.toInterface(_name)) {
                if (_top.local != (_name.local)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: end tag </%s> does not match start tag <%s>" : stdgo.GoString), stdgo.Go.toInterface(_name.local), stdgo.Go.toInterface(_top.local));
                };
                return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: end tag </%s> in namespace %s does not match start tag <%s> in namespace %s" : stdgo.GoString), stdgo.Go.toInterface(_name.local), stdgo.Go.toInterface(_name.space), stdgo.Go.toInterface(_top.local), stdgo.Go.toInterface(_top.space));
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._tags = ((@:checkr _p ?? throw "null pointer dereference")._tags.__slice__(0, (((@:checkr _p ?? throw "null pointer dereference")._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_name.Name>);
        @:check2r _p._writeIndent((-1 : stdgo.GoInt));
        @:check2r _p.writeByte((60 : stdgo.GoUInt8));
        @:check2r _p.writeByte((47 : stdgo.GoUInt8));
        @:check2r _p.writeString(_name.local?.__copy__());
        @:check2r _p.writeByte((62 : stdgo.GoUInt8));
        @:check2r _p._popPrefix();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeStart( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        if ((@:checkr _start ?? throw "null pointer dereference").name.local == ((stdgo.Go.str() : stdgo.GoString))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: start tag with no name" : stdgo.GoString));
        };
        (@:checkr _p ?? throw "null pointer dereference")._tags = ((@:checkr _p ?? throw "null pointer dereference")._tags.__append__((@:checkr _start ?? throw "null pointer dereference").name?.__copy__()));
        @:check2r _p._markPrefix();
        @:check2r _p._writeIndent((1 : stdgo.GoInt));
        @:check2r _p.writeByte((60 : stdgo.GoUInt8));
        @:check2r _p.writeString((@:checkr _start ?? throw "null pointer dereference").name.local?.__copy__());
        if ((@:checkr _start ?? throw "null pointer dereference").name.space != ((stdgo.Go.str() : stdgo.GoString))) {
            @:check2r _p.writeString((" xmlns=\"" : stdgo.GoString));
            @:check2r _p.escapeString((@:checkr _start ?? throw "null pointer dereference").name.space?.__copy__());
            @:check2r _p.writeByte((34 : stdgo.GoUInt8));
        };
        for (__0 => _attr in (@:checkr _start ?? throw "null pointer dereference").attr) {
            var _name = (_attr.name?.__copy__() : stdgo._internal.encoding.xml.Xml_name.Name);
            if (_name.local == ((stdgo.Go.str() : stdgo.GoString))) {
                continue;
            };
            @:check2r _p.writeByte((32 : stdgo.GoUInt8));
            if (_name.space != ((stdgo.Go.str() : stdgo.GoString))) {
                @:check2r _p.writeString(@:check2r _p._createAttrPrefix(_name.space?.__copy__())?.__copy__());
                @:check2r _p.writeByte((58 : stdgo.GoUInt8));
            };
            @:check2r _p.writeString(_name.local?.__copy__());
            @:check2r _p.writeString(("=\"" : stdgo.GoString));
            @:check2r _p.escapeString(_attr.value?.__copy__());
            @:check2r _p.writeByte((34 : stdgo.GoUInt8));
        };
        @:check2r _p.writeByte((62 : stdgo.GoUInt8));
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _marshalTextInterface( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _val:stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler, _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        {
            var _err = (@:check2r _p._writeStart((stdgo.Go.setRef(_start) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _val.marshalText(), _text:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        stdgo._internal.encoding.xml.Xml_escapetext.escapeText(stdgo.Go.asInterface(_p), _text);
        return @:check2r _p._writeEnd(_start.name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _marshalInterface( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _val:stdgo._internal.encoding.xml.Xml_marshaler.Marshaler, _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._tags = ((@:checkr _p ?? throw "null pointer dereference")._tags.__append__((new stdgo._internal.encoding.xml.Xml_name.Name() : stdgo._internal.encoding.xml.Xml_name.Name)));
        var _n = ((@:checkr _p ?? throw "null pointer dereference")._tags.length : stdgo.GoInt);
        var _err = (_val.marshalXML((@:checkr _p ?? throw "null pointer dereference")._encoder, _start?.__copy__()) : stdgo.Error);
        if (_err != null) {
            return _err;
        };
        if ((((@:checkr _p ?? throw "null pointer dereference")._tags.length) > _n : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: %s.MarshalXML wrote invalid XML: <%s> not closed" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.xml.Xml__receivertype._receiverType(stdgo.Go.toInterface(_val))), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._tags[(((@:checkr _p ?? throw "null pointer dereference")._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].local));
        };
        (@:checkr _p ?? throw "null pointer dereference")._tags = ((@:checkr _p ?? throw "null pointer dereference")._tags.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_name.Name>);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _marshalAttr( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>, _name:stdgo._internal.encoding.xml.Xml_name.Name, _val:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__marshalerattrtype._marshalerAttrType) : Bool)) {
            var __tmp__ = (stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_marshalerattr.MarshalerAttr)) : stdgo._internal.encoding.xml.Xml_marshalerattr.MarshalerAttr).marshalXMLAttr(_name?.__copy__()), _attr:stdgo._internal.encoding.xml.Xml_attr.Attr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            if (_attr.name.local != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _start ?? throw "null pointer dereference").attr = ((@:checkr _start ?? throw "null pointer dereference").attr.__append__(_attr?.__copy__()));
            };
            return (null : stdgo.Error);
        };
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__marshalerattrtype._marshalerAttrType) : Bool)) {
                var __tmp__ = (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.xml.Xml_marshalerattr.MarshalerAttr)) : stdgo._internal.encoding.xml.Xml_marshalerattr.MarshalerAttr).marshalXMLAttr(_name?.__copy__()), _attr:stdgo._internal.encoding.xml.Xml_attr.Attr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (_attr.name.local != ((stdgo.Go.str() : stdgo.GoString))) {
                    (@:checkr _start ?? throw "null pointer dereference").attr = ((@:checkr _start ?? throw "null pointer dereference").attr.__append__(_attr?.__copy__()));
                };
                return (null : stdgo.Error);
            };
        };
        if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textmarshalertype._textMarshalerType) : Bool)) {
            var __tmp__ = (stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler).marshalText(), _text:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            (@:checkr _start ?? throw "null pointer dereference").attr = ((@:checkr _start ?? throw "null pointer dereference").attr.__append__((new stdgo._internal.encoding.xml.Xml_attr.Attr(_name?.__copy__(), (_text : stdgo.GoString)?.__copy__()) : stdgo._internal.encoding.xml.Xml_attr.Attr)));
            return (null : stdgo.Error);
        };
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textmarshalertype._textMarshalerType) : Bool)) {
                var __tmp__ = (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler).marshalText(), _text:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                (@:checkr _start ?? throw "null pointer dereference").attr = ((@:checkr _start ?? throw "null pointer dereference").attr.__append__((new stdgo._internal.encoding.xml.Xml_attr.Attr(_name?.__copy__(), (_text : stdgo.GoString)?.__copy__()) : stdgo._internal.encoding.xml.Xml_attr.Attr)));
                return (null : stdgo.Error);
            };
        };
        {
            final __value__ = _val.kind();
            if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if (_val.isNil()) {
                    return (null : stdgo.Error);
                };
                _val = _val.elem()?.__copy__();
            };
        };
        if (((_val.kind() == (23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_val.type().elem().kind() != (8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            var _n = (_val.len() : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _n : Bool)) {
                    {
                        var _err = (@:check2r _p._marshalAttr(_start, _name.__copy__(), _val.index(_i).__copy__()) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                    _i++;
                };
            };
            return (null : stdgo.Error);
        };
        if ((_val.type().string() : String) == (stdgo._internal.encoding.xml.Xml__attrtype._attrType.string() : String)) {
            (@:checkr _start ?? throw "null pointer dereference").attr = ((@:checkr _start ?? throw "null pointer dereference").attr.__append__((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_attr.Attr)) : stdgo._internal.encoding.xml.Xml_attr.Attr)?.__copy__()));
            return (null : stdgo.Error);
        };
        var __tmp__ = @:check2r _p._marshalSimple(_val.type(), _val?.__copy__()), _s:stdgo.GoString = __tmp__._0, _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        if (_b != null) {
            _s = (_b : stdgo.GoString)?.__copy__();
        };
        (@:checkr _start ?? throw "null pointer dereference").attr = ((@:checkr _start ?? throw "null pointer dereference").attr.__append__((new stdgo._internal.encoding.xml.Xml_attr.Attr(_name?.__copy__(), _s?.__copy__()) : stdgo._internal.encoding.xml.Xml_attr.Attr)));
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _marshalValue( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _val:stdgo._internal.reflect.Reflect_value.Value, _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>, _startTemplate:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        if (((_startTemplate != null && ((_startTemplate : Dynamic).__nil__ == null || !(_startTemplate : Dynamic).__nil__)) && ((@:checkr _startTemplate ?? throw "null pointer dereference").name.local == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeElement of StartElement with missing name" : stdgo.GoString));
        };
        if (!_val.isValid()) {
            return (null : stdgo.Error);
        };
        if ((((_finfo != null && ((_finfo : Dynamic).__nil__ == null || !(_finfo : Dynamic).__nil__)) && ((@:checkr _finfo ?? throw "null pointer dereference")._flags & (128 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) != ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) : Bool) && stdgo._internal.encoding.xml.Xml__isemptyvalue._isEmptyValue(_val?.__copy__()) : Bool)) {
            return (null : stdgo.Error);
        };
        while (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || (_val.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            if (_val.isNil()) {
                return (null : stdgo.Error);
            };
            _val = _val.elem()?.__copy__();
        };
        var _kind = (_val.kind() : stdgo._internal.reflect.Reflect_kind.Kind);
        var _typ = (_val.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        if ((_val.canInterface() && _typ.implements_(stdgo._internal.encoding.xml.Xml__marshalertype._marshalerType) : Bool)) {
            return @:check2r _p._marshalInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_marshaler.Marshaler)) : stdgo._internal.encoding.xml.Xml_marshaler.Marshaler), stdgo._internal.encoding.xml.Xml__defaultstart._defaultStart(_typ, _finfo, _startTemplate)?.__copy__());
        };
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__marshalertype._marshalerType) : Bool)) {
                return @:check2r _p._marshalInterface((stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.xml.Xml_marshaler.Marshaler)) : stdgo._internal.encoding.xml.Xml_marshaler.Marshaler), stdgo._internal.encoding.xml.Xml__defaultstart._defaultStart(_pv.type(), _finfo, _startTemplate)?.__copy__());
            };
        };
        if ((_val.canInterface() && _typ.implements_(stdgo._internal.encoding.xml.Xml__textmarshalertype._textMarshalerType) : Bool)) {
            return @:check2r _p._marshalTextInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), stdgo._internal.encoding.xml.Xml__defaultstart._defaultStart(_typ, _finfo, _startTemplate)?.__copy__());
        };
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textmarshalertype._textMarshalerType) : Bool)) {
                return @:check2r _p._marshalTextInterface((stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), stdgo._internal.encoding.xml.Xml__defaultstart._defaultStart(_pv.type(), _finfo, _startTemplate)?.__copy__());
            };
        };
        if (((((_kind == (23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || (_kind == (17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) && (_typ.elem().kind() != (8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            {
                var __0 = (0 : stdgo.GoInt), __1 = (_val.len() : stdgo.GoInt);
var _n = __1, _i = __0;
                while ((_i < _n : Bool)) {
                    {
                        var _err = (@:check2r _p._marshalValue(_val.index(_i).__copy__(), _finfo, _startTemplate) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                    _i++;
                };
            };
            return (null : stdgo.Error);
        };
        var __tmp__ = stdgo._internal.encoding.xml.Xml__gettypeinfo._getTypeInfo(_typ), _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        if ((_startTemplate != null && ((_startTemplate : Dynamic).__nil__ == null || !(_startTemplate : Dynamic).__nil__))) {
            _start.name = (@:checkr _startTemplate ?? throw "null pointer dereference").name?.__copy__();
            _start.attr = (_start.attr.__append__(...((@:checkr _startTemplate ?? throw "null pointer dereference").attr : Array<stdgo._internal.encoding.xml.Xml_attr.Attr>)));
        } else if (((@:checkr _tinfo ?? throw "null pointer dereference")._xmlname != null && (((@:checkr _tinfo ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__ == null || !((@:checkr _tinfo ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__))) {
            var _xmlname = (@:checkr _tinfo ?? throw "null pointer dereference")._xmlname;
            if ((@:checkr _xmlname ?? throw "null pointer dereference")._name != ((stdgo.Go.str() : stdgo.GoString))) {
                {
                    final __tmp__0 = (@:checkr _xmlname ?? throw "null pointer dereference")._xmlns?.__copy__();
                    final __tmp__1 = (@:checkr _xmlname ?? throw "null pointer dereference")._name?.__copy__();
                    _start.name.space = __tmp__0;
                    _start.name.local = __tmp__1;
                };
            } else {
                var _fv = (@:check2r _xmlname._value(_val?.__copy__(), false)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_fv.interface_() : stdgo._internal.encoding.xml.Xml_name.Name)) : stdgo._internal.encoding.xml.Xml_name.Name), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.encoding.xml.Xml_name.Name), _1 : false };
                    }, _v = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && (_v.local != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _start.name = _v?.__copy__();
                    };
                };
            };
        };
        if (((_start.name.local == (stdgo.Go.str() : stdgo.GoString)) && (_finfo != null && ((_finfo : Dynamic).__nil__ == null || !(_finfo : Dynamic).__nil__)) : Bool)) {
            {
                final __tmp__0 = (@:checkr _finfo ?? throw "null pointer dereference")._xmlns?.__copy__();
                final __tmp__1 = (@:checkr _finfo ?? throw "null pointer dereference")._name?.__copy__();
                _start.name.space = __tmp__0;
                _start.name.local = __tmp__1;
            };
        };
        if (_start.name.local == ((stdgo.Go.str() : stdgo.GoString))) {
            var _name = (_typ.name()?.__copy__() : stdgo.GoString);
            {
                var _i = (stdgo._internal.strings.Strings_indexbyte.indexByte(_name?.__copy__(), (91 : stdgo.GoUInt8)) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    _name = (_name.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                };
            };
            if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError(_typ) : stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError>));
            };
            _start.name.local = _name?.__copy__();
        };
        for (_i => _ in (@:checkr _tinfo ?? throw "null pointer dereference")._fields) {
            var _finfo = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
            if (((@:checkr _finfo ?? throw "null pointer dereference")._flags & (2 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                continue;
            };
            var _fv = (@:check2r _finfo._value(_val?.__copy__(), false)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            if (((((@:checkr _finfo ?? throw "null pointer dereference")._flags & (128 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) != (0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) && ((!_fv.isValid() || stdgo._internal.encoding.xml.Xml__isemptyvalue._isEmptyValue(_fv?.__copy__()) : Bool)) : Bool)) {
                continue;
            };
            if (((_fv.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _fv.isNil() : Bool)) {
                continue;
            };
            var _name = ({ space : (@:checkr _finfo ?? throw "null pointer dereference")._xmlns?.__copy__(), local : (@:checkr _finfo ?? throw "null pointer dereference")._name?.__copy__() } : stdgo._internal.encoding.xml.Xml_name.Name);
            {
                var _err = (@:check2r _p._marshalAttr((stdgo.Go.setRef(_start) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), _name?.__copy__(), _fv?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        if ((((((((@:checkr _tinfo ?? throw "null pointer dereference")._xmlname != null && (((@:checkr _tinfo ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__ == null || !((@:checkr _tinfo ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__)) && _start.name.space == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && (@:checkr (@:checkr _tinfo ?? throw "null pointer dereference")._xmlname ?? throw "null pointer dereference")._xmlns == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && (@:checkr (@:checkr _tinfo ?? throw "null pointer dereference")._xmlname ?? throw "null pointer dereference")._name == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._tags.length) != ((0 : stdgo.GoInt)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._tags[(((@:checkr _p ?? throw "null pointer dereference")._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].space != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _start.attr = (_start.attr.__append__((new stdgo._internal.encoding.xml.Xml_attr.Attr((new stdgo._internal.encoding.xml.Xml_name.Name((stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("xmlns" : stdgo.GoString)) : stdgo._internal.encoding.xml.Xml_name.Name), (stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.encoding.xml.Xml_attr.Attr)));
        };
        {
            var _err = (@:check2r _p._writeStart((stdgo.Go.setRef(_start) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (_val.kind() == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            _err = @:check2r _p._marshalStruct(_tinfo, _val?.__copy__());
        } else {
            var __tmp__ = @:check2r _p._marshalSimple(_typ, _val?.__copy__()), _s:stdgo.GoString = __tmp__._0, _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err1:stdgo.Error = __tmp__._2;
            if (_err1 != null) {
                _err = _err1;
            } else if (_b != null) {
                stdgo._internal.encoding.xml.Xml_escapetext.escapeText(stdgo.Go.asInterface(_p), _b);
            } else {
                @:check2r _p.escapeString(_s?.__copy__());
            };
        };
        if (_err != null) {
            return _err;
        };
        {
            var _err = (@:check2r _p._writeEnd(_start.name?.__copy__()) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return @:check2r _p._cachedWriteError();
    }
    @:keep
    @:tdfield
    static public function _popPrefix( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        while ((((@:checkr _p ?? throw "null pointer dereference")._prefixes.length) > (0 : stdgo.GoInt) : Bool)) {
            var _prefix = ((@:checkr _p ?? throw "null pointer dereference")._prefixes[(((@:checkr _p ?? throw "null pointer dereference")._prefixes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            (@:checkr _p ?? throw "null pointer dereference")._prefixes = ((@:checkr _p ?? throw "null pointer dereference")._prefixes.__slice__(0, (((@:checkr _p ?? throw "null pointer dereference")._prefixes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            if (_prefix == ((stdgo.Go.str() : stdgo.GoString))) {
                break;
            };
            @:check2r _p._deleteAttrPrefix(_prefix?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _markPrefix( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._prefixes = ((@:checkr _p ?? throw "null pointer dereference")._prefixes.__append__((stdgo.Go.str() : stdgo.GoString)?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function _deleteAttrPrefix( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _prefix:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._attrPrefix != null) (@:checkr _p ?? throw "null pointer dereference")._attrPrefix.__remove__(((@:checkr _p ?? throw "null pointer dereference")._attrNS[_prefix] ?? ("" : stdgo.GoString)));
        if ((@:checkr _p ?? throw "null pointer dereference")._attrNS != null) (@:checkr _p ?? throw "null pointer dereference")._attrNS.__remove__(_prefix);
    }
    @:keep
    @:tdfield
    static public function _createAttrPrefix( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _url:stdgo.GoString):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        {
            var _prefix = (((@:checkr _p ?? throw "null pointer dereference")._attrPrefix[_url] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_prefix != ((stdgo.Go.str() : stdgo.GoString))) {
                return _prefix?.__copy__();
            };
        };
        if (_url == (("http://www.w3.org/XML/1998/namespace" : stdgo.GoString))) {
            return ("xml" : stdgo.GoString);
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._attrPrefix == null) {
            (@:checkr _p ?? throw "null pointer dereference")._attrPrefix = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
            (@:checkr _p ?? throw "null pointer dereference")._attrNS = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        };
        var _prefix = (stdgo._internal.strings.Strings_trimright.trimRight(_url?.__copy__(), ("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_prefix?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _prefix = (_prefix.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        if (((_prefix == ((stdgo.Go.str() : stdgo.GoString)) || !stdgo._internal.encoding.xml.Xml__isname._isName((_prefix : stdgo.Slice<stdgo.GoUInt8>)) : Bool) || stdgo._internal.strings.Strings_contains.contains(_prefix?.__copy__(), (":" : stdgo.GoString)) : Bool)) {
            _prefix = ("_" : stdgo.GoString);
        };
        if ((((_prefix.length) >= (3 : stdgo.GoInt) : Bool) && stdgo._internal.strings.Strings_equalfold.equalFold((_prefix.__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("xml" : stdgo.GoString)) : Bool)) {
            _prefix = (("_" : stdgo.GoString) + _prefix?.__copy__() : stdgo.GoString)?.__copy__();
        };
        if (((@:checkr _p ?? throw "null pointer dereference")._attrNS[_prefix] ?? ("" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString))) {
            {
                (@:checkr _p ?? throw "null pointer dereference")._seq++;
                while (true) {
                    {
                        var _id = (((_prefix + ("_" : stdgo.GoString).__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _p ?? throw "null pointer dereference")._seq).__copy__() : stdgo.GoString).__copy__() : stdgo.GoString);
                        if (((@:checkr _p ?? throw "null pointer dereference")._attrNS[_id] ?? ("" : stdgo.GoString)) == ((stdgo.Go.str() : stdgo.GoString))) {
                            _prefix = _id.__copy__();
                            break;
                        };
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._seq++;
                };
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._attrPrefix[_url] = _prefix?.__copy__();
        (@:checkr _p ?? throw "null pointer dereference")._attrNS[_prefix] = _url?.__copy__();
        @:check2r _p.writeString(("xmlns:" : stdgo.GoString));
        @:check2r _p.writeString(_prefix?.__copy__());
        @:check2r _p.writeString(("=\"" : stdgo.GoString));
        stdgo._internal.encoding.xml.Xml_escapetext.escapeText(stdgo.Go.asInterface(_p), (_url : stdgo.Slice<stdgo.GoUInt8>));
        @:check2r _p.writeString(("\" " : stdgo.GoString));
        (@:checkr _p ?? throw "null pointer dereference")._prefixes = ((@:checkr _p ?? throw "null pointer dereference")._prefixes.__append__(_prefix?.__copy__()));
        return _prefix?.__copy__();
    }
}
