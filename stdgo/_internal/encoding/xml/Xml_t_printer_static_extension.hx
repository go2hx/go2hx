package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.T_printer_asInterface) class T_printer_static_extension {
    @:keep
    @:tdfield
    static public function escapeString( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _s:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        var _esc:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _last = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1962"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _width:stdgo.GoInt = __tmp__._1;
                _i = (_i + (_width) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1965"
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
                                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1983"
                                if ((!stdgo._internal.encoding.xml.Xml__isincharacterrange._isInCharacterRange(_r) || (((_r == (65533 : stdgo.GoInt32)) && (_width == (1 : stdgo.GoInt)) : Bool)) : Bool)) {
                                    _esc = stdgo._internal.encoding.xml.Xml__escfffd._escFFFD;
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1985"
                                    break;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1987"
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
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1989"
                _p.writeString((_s.__slice__(_last, (_i - _width : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1990"
                _p.write(_esc);
                _last = _i;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1993"
        _p.writeString((_s.__slice__(_last) : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _writeIndent( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _depthDelta:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1044"
        if ((((@:checkr _p ?? throw "null pointer dereference")._prefix.length == (0 : stdgo.GoInt)) && ((@:checkr _p ?? throw "null pointer dereference")._indent.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1045"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1047"
        if ((_depthDelta < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1048"
            (@:checkr _p ?? throw "null pointer dereference")._depth--;
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1049"
            if ((@:checkr _p ?? throw "null pointer dereference")._indentedIn) {
                (@:checkr _p ?? throw "null pointer dereference")._indentedIn = false;
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1051"
                return;
            };
            (@:checkr _p ?? throw "null pointer dereference")._indentedIn = false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1055"
        if ((@:checkr _p ?? throw "null pointer dereference")._putNewline) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1056"
            _p.writeByte((10 : stdgo.GoUInt8));
        } else {
            (@:checkr _p ?? throw "null pointer dereference")._putNewline = true;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1060"
        if ((((@:checkr _p ?? throw "null pointer dereference")._prefix.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1061"
            _p.writeString((@:checkr _p ?? throw "null pointer dereference")._prefix?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1063"
        if ((((@:checkr _p ?? throw "null pointer dereference")._indent.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1064"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _p ?? throw "null pointer dereference")._depth : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1065"
                    _p.writeString((@:checkr _p ?? throw "null pointer dereference")._indent.__copy__());
                    _i++;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1068"
        if ((_depthDelta > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1069"
            (@:checkr _p ?? throw "null pointer dereference")._depth++;
            (@:checkr _p ?? throw "null pointer dereference")._indentedIn = true;
        };
    }
    @:keep
    @:tdfield
    static public function _cachedWriteError( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        var __tmp__ = _p.write((null : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1040"
        return _err;
    }
    @:keep
    @:tdfield
    static public function close( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1024"
        if ((@:checkr _p ?? throw "null pointer dereference")._closed) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1025"
            return (null : stdgo.Error);
        };
        (@:checkr _p ?? throw "null pointer dereference")._closed = true;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1028"
        {
            var _err = ((@:checkr _p ?? throw "null pointer dereference")._w.flush() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1029"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1031"
        if ((((@:checkr _p ?? throw "null pointer dereference")._tags.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1032"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("unclosed tag <%s>" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._tags[(((@:checkr _p ?? throw "null pointer dereference")._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].local));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1034"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function writeByte( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _c:stdgo.GoUInt8):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1011"
        if (((@:checkr _p ?? throw "null pointer dereference")._closed && ((@:checkr _p ?? throw "null pointer dereference")._err == null) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("use of closed Encoder" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1014"
        if ((@:checkr _p ?? throw "null pointer dereference")._err == null) {
            (@:checkr _p ?? throw "null pointer dereference")._err = (@:checkr _p ?? throw "null pointer dereference")._w.writeByte(_c);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1017"
        return (@:checkr _p ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function writeString( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1000"
        if (((@:checkr _p ?? throw "null pointer dereference")._closed && ((@:checkr _p ?? throw "null pointer dereference")._err == null) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("use of closed Encoder" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1003"
        if ((@:checkr _p ?? throw "null pointer dereference")._err == null) {
            {
                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._w.writeString(_s?.__copy__());
                _n = @:tmpset0 __tmp__._0;
                (@:checkr _p ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1006"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _p ?? throw "null pointer dereference")._err };
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
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L989"
        if (((@:checkr _p ?? throw "null pointer dereference")._closed && ((@:checkr _p ?? throw "null pointer dereference")._err == null) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("use of closed Encoder" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L992"
        if ((@:checkr _p ?? throw "null pointer dereference")._err == null) {
            {
                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._w.write(_b);
                _n = @:tmpset0 __tmp__._0;
                (@:checkr _p ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L995"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _p ?? throw "null pointer dereference")._err };
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
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L834"
        for (_i => _ in (@:checkr _tinfo ?? throw "null pointer dereference")._fields) {
            var _finfo = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L836"
            if (((@:checkr _finfo ?? throw "null pointer dereference")._flags & (2 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) != ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L837"
                continue;
            };
            var _vf = (_finfo._value(_val?.__copy__(), false)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L840"
            if (!_vf.isValid()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L843"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L846"
            {
                final __value__ = ((@:checkr _finfo ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                if (__value__ == ((4 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                    var _emit = stdgo._internal.encoding.xml.Xml_escapetext.escapeText;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L849"
                    if (((@:checkr _finfo ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) == ((4 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                        _emit = stdgo._internal.encoding.xml.Xml__emitcdata._emitCDATA;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L852"
                    {
                        var _err = (_s._trim((@:checkr _finfo ?? throw "null pointer dereference")._parents) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L853"
                            return _err;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L855"
                    if ((_vf.canInterface() && _vf.type().implements_(stdgo._internal.encoding.xml.Xml__textmarshalertype._textMarshalerType) : Bool)) {
                        var __tmp__ = (stdgo.Go.typeAssert((_vf.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler).marshalText(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L857"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L858"
                            return _err;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L860"
                        {
                            var _err = (_emit(stdgo.Go.asInterface(_p), _data) : stdgo.Error);
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L861"
                                return _err;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L863"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L865"
                    if (_vf.canAddr()) {
                        var _pv = (_vf.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L867"
                        if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textmarshalertype._textMarshalerType) : Bool)) {
                            var __tmp__ = (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler).marshalText(), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L869"
                            if (_err != null) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L870"
                                return _err;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L872"
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), _data) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L873"
                                    return _err;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L875"
                            continue;
                        };
                    };
                    var _scratch:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
                    _vf = stdgo._internal.encoding.xml.Xml__indirect._indirect(_vf?.__copy__())?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L881"
                    {
                        final __value__ = _vf.kind();
                        if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L883"
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), stdgo._internal.strconv.Strconv_appendint.appendInt((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _vf.int_(), (10 : stdgo.GoInt))) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L884"
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L887"
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), stdgo._internal.strconv.Strconv_appenduint.appendUint((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _vf.uint(), (10 : stdgo.GoInt))) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L888"
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L891"
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), stdgo._internal.strconv.Strconv_appendfloat.appendFloat((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _vf.float_(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), _vf.type().bits())) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L892"
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L895"
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), stdgo._internal.strconv.Strconv_appendbool.appendBool((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _vf.bool_())) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L896"
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L899"
                            {
                                var _err = (_emit(stdgo.Go.asInterface(_p), ((_vf.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L900"
                                    return _err;
                                };
                            };
                        } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L903"
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_vf.interface_() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false };
                                }, _elem = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L904"
                                    {
                                        var _err = (_emit(stdgo.Go.asInterface(_p), _elem) : stdgo.Error);
                                        if (_err != null) {
                                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L905"
                                            return _err;
                                        };
                                    };
                                };
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L909"
                    continue;
                } else if (__value__ == ((32 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L912"
                    {
                        var _err = (_s._trim((@:checkr _finfo ?? throw "null pointer dereference")._parents) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L913"
                            return _err;
                        };
                    };
                    _vf = stdgo._internal.encoding.xml.Xml__indirect._indirect(_vf?.__copy__())?.__copy__();
                    var _k = (_vf.kind() : stdgo._internal.reflect.Reflect_kind.Kind);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L917"
                    if (!(((_k == (24u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || (_k == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _vf.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool) : Bool))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L918"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: bad type for comment field of %s" : stdgo.GoString), stdgo.Go.toInterface(_val.type()));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L920"
                    if (_vf.len() == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L921"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L923"
                    _p._writeIndent((0 : stdgo.GoInt));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L924"
                    _p.writeString(("<!--" : stdgo.GoString));
                    var _dashDash = (false : Bool);
                    var _dashLast = (false : Bool);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L927"
                    {
                        final __value__ = _k;
                        if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            var _s = ((_vf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            _dashDash = stdgo._internal.strings.Strings_contains.contains(_s?.__copy__(), ("--" : stdgo.GoString));
                            _dashLast = _s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((45 : stdgo.GoUInt8));
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L932"
                            if (!_dashDash) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L933"
                                _p.writeString(_s?.__copy__());
                            };
                        } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            var _b = _vf.bytes();
                            _dashDash = stdgo._internal.bytes.Bytes_contains.contains(_b, stdgo._internal.encoding.xml.Xml__ddbytes._ddBytes);
                            _dashLast = _b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((45 : stdgo.GoUInt8));
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L939"
                            if (!_dashDash) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L940"
                                _p.write(_b);
                            };
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L943"
                            throw stdgo.Go.toInterface(("can\'t happen" : stdgo.GoString));
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L945"
                    if (_dashDash) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L946"
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: comments must not contain \"--\"" : stdgo.GoString));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L948"
                    if (_dashLast) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L950"
                        _p.writeByte((32 : stdgo.GoUInt8));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L952"
                    _p.writeString(("-->" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L953"
                    continue;
                } else if (__value__ == ((16 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                    _vf = stdgo._internal.encoding.xml.Xml__indirect._indirect(_vf?.__copy__())?.__copy__();
                    var _iface = (_vf.interface_() : stdgo.AnyInterface);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L958"
                    {
                        final __type__ = _iface;
                        if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                            var _raw:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L960"
                            _p.write(_raw);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L961"
                            continue;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                            var _raw:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L963"
                            _p.writeString(_raw?.__copy__());
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L964"
                            continue;
                        };
                    };
                } else if (__value__ == ((1 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((65 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L968"
                    {
                        var _err = (_s._trim((@:checkr _finfo ?? throw "null pointer dereference")._parents) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L969"
                            return _err;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L971"
                    if ((((@:checkr _finfo ?? throw "null pointer dereference")._parents.length) > (_s._stack.length) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L972"
                        if (((_vf.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _vf.kind() != ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool) || !_vf.isNil() : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L973"
                            {
                                var _err = (_s._push(((@:checkr _finfo ?? throw "null pointer dereference")._parents.__slice__((_s._stack.length)) : stdgo.Slice<stdgo.GoString>)) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L974"
                                    return _err;
                                };
                            };
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L979"
            {
                var _err = (_p._marshalValue(_vf?.__copy__(), _finfo, null) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L980"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L983"
        _s._trim((null : stdgo.Slice<stdgo.GoString>));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L984"
        return _p._cachedWriteError();
    }
    @:keep
    @:tdfield
    static public function _marshalSimple( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _typ:stdgo._internal.reflect.Reflect_type_.Type_, _val:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L782"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _val.kind();
                    if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L784"
                        return { _0 : stdgo._internal.strconv.Strconv_formatint.formatInt(_val.int_(), (10 : stdgo.GoInt))?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L786"
                        return { _0 : stdgo._internal.strconv.Strconv_formatuint.formatUint(_val.uint(), (10 : stdgo.GoInt))?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L788"
                        return { _0 : stdgo._internal.strconv.Strconv_formatfloat.formatFloat(_val.float_(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), _val.type().bits())?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L790"
                        return { _0 : (_val.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L792"
                        return { _0 : stdgo._internal.strconv.Strconv_formatbool.formatBool(_val.bool_())?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L794"
                        if (_typ.elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L795"
                            break;
                        };
                        var _bytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L799"
                        if (_val.canAddr()) {
                            _bytes = _val.slice((0 : stdgo.GoInt), _val.len()).bytes();
                        } else {
                            _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_val.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L803"
                            stdgo._internal.reflect.Reflect_copy.copy(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_bytes))?.__copy__(), _val?.__copy__());
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L805"
                        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _bytes, _2 : (null : stdgo.Error) };
                        break;
                    } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L807"
                        if (_typ.elem().kind() != ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L808"
                            break;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L811"
                        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _val.bytes(), _2 : (null : stdgo.Error) };
                        break;
                    };
                };
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L813"
        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError(_typ) : stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError>)) };
    }
    @:keep
    @:tdfield
    static public function _writeEnd( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _name:stdgo._internal.encoding.xml.Xml_name.Name):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L758"
        if (_name.local == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L759"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: end tag with no name" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L761"
        if ((((@:checkr _p ?? throw "null pointer dereference")._tags.length == (0 : stdgo.GoInt)) || ((@:checkr _p ?? throw "null pointer dereference")._tags[(((@:checkr _p ?? throw "null pointer dereference")._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].local == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L762"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: end tag </%s> without start tag" : stdgo.GoString), stdgo.Go.toInterface(_name.local));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L764"
        {
            var _top = ((@:checkr _p ?? throw "null pointer dereference")._tags[(((@:checkr _p ?? throw "null pointer dereference")._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.encoding.xml.Xml_name.Name);
            if (stdgo.Go.toInterface(_top) != stdgo.Go.toInterface(_name)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L765"
                if (_top.local != (_name.local)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L766"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: end tag </%s> does not match start tag <%s>" : stdgo.GoString), stdgo.Go.toInterface(_name.local), stdgo.Go.toInterface(_top.local));
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L768"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: end tag </%s> in namespace %s does not match start tag <%s> in namespace %s" : stdgo.GoString), stdgo.Go.toInterface(_name.local), stdgo.Go.toInterface(_name.space), stdgo.Go.toInterface(_top.local), stdgo.Go.toInterface(_top.space));
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._tags = ((@:checkr _p ?? throw "null pointer dereference")._tags.__slice__(0, (((@:checkr _p ?? throw "null pointer dereference")._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_name.Name>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L772"
        _p._writeIndent((-1 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L773"
        _p.writeByte((60 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L774"
        _p.writeByte((47 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L775"
        _p.writeString(_name.local?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L776"
        _p.writeByte((62 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L777"
        _p._popPrefix();
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L778"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeStart( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L720"
        if ((@:checkr _start ?? throw "null pointer dereference").name.local == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L721"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: start tag with no name" : stdgo.GoString));
        };
        (@:checkr _p ?? throw "null pointer dereference")._tags = ((@:checkr _p ?? throw "null pointer dereference")._tags.__append__((@:checkr _start ?? throw "null pointer dereference").name?.__copy__()) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_name.Name>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L725"
        _p._markPrefix();
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L727"
        _p._writeIndent((1 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L728"
        _p.writeByte((60 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L729"
        _p.writeString((@:checkr _start ?? throw "null pointer dereference").name.local?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L731"
        if ((@:checkr _start ?? throw "null pointer dereference").name.space != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L732"
            _p.writeString((" xmlns=\"" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L733"
            _p.escapeString((@:checkr _start ?? throw "null pointer dereference").name.space?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L734"
            _p.writeByte((34 : stdgo.GoUInt8));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L738"
        for (__0 => _attr in (@:checkr _start ?? throw "null pointer dereference").attr) {
            var _name = (_attr.name?.__copy__() : stdgo._internal.encoding.xml.Xml_name.Name);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L740"
            if (_name.local == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L741"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L743"
            _p.writeByte((32 : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L744"
            if (_name.space != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L745"
                _p.writeString(_p._createAttrPrefix(_name.space?.__copy__())?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L746"
                _p.writeByte((58 : stdgo.GoUInt8));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L748"
            _p.writeString(_name.local?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L749"
            _p.writeString(("=\"" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L750"
            _p.escapeString(_attr.value?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L751"
            _p.writeByte((34 : stdgo.GoUInt8));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L753"
        _p.writeByte((62 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L754"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _marshalTextInterface( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _val:stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler, _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L707"
        {
            var _err = (_p._writeStart((stdgo.Go.setRef(_start) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L708"
                return _err;
            };
        };
        var __tmp__ = _val.marshalText(), _text:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L711"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L712"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L714"
        stdgo._internal.encoding.xml.Xml_escapetext.escapeText(stdgo.Go.asInterface(_p), _text);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L715"
        return _p._writeEnd(_start.name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _marshalInterface( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _val:stdgo._internal.encoding.xml.Xml_marshaler.Marshaler, _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._tags = ((@:checkr _p ?? throw "null pointer dereference")._tags.__append__((new stdgo._internal.encoding.xml.Xml_name.Name() : stdgo._internal.encoding.xml.Xml_name.Name)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_name.Name>);
        var _n = ((@:checkr _p ?? throw "null pointer dereference")._tags.length : stdgo.GoInt);
        var _err = (_val.marshalXML((@:checkr _p ?? throw "null pointer dereference")._encoder, _start?.__copy__()) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L693"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L694"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L698"
        if ((((@:checkr _p ?? throw "null pointer dereference")._tags.length) > _n : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L699"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: %s.MarshalXML wrote invalid XML: <%s> not closed" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.xml.Xml__receivertype._receiverType(stdgo.Go.toInterface(_val))), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._tags[(((@:checkr _p ?? throw "null pointer dereference")._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].local));
        };
        (@:checkr _p ?? throw "null pointer dereference")._tags = ((@:checkr _p ?? throw "null pointer dereference")._tags.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_name.Name>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L702"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _marshalAttr( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>, _name:stdgo._internal.encoding.xml.Xml_name.Name, _val:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L581"
        if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__marshalerattrtype._marshalerAttrType) : Bool)) {
            var __tmp__ = (stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_marshalerattr.MarshalerAttr)) : stdgo._internal.encoding.xml.Xml_marshalerattr.MarshalerAttr).marshalXMLAttr(_name?.__copy__()), _attr:stdgo._internal.encoding.xml.Xml_attr.Attr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L583"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L584"
                return _err;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L586"
            if (_attr.name.local != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _start ?? throw "null pointer dereference").attr = ((@:checkr _start ?? throw "null pointer dereference").attr.__append__(_attr?.__copy__()) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L589"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L592"
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L594"
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__marshalerattrtype._marshalerAttrType) : Bool)) {
                var __tmp__ = (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.xml.Xml_marshalerattr.MarshalerAttr)) : stdgo._internal.encoding.xml.Xml_marshalerattr.MarshalerAttr).marshalXMLAttr(_name?.__copy__()), _attr:stdgo._internal.encoding.xml.Xml_attr.Attr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L596"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L597"
                    return _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L599"
                if (_attr.name.local != ((stdgo.Go.str() : stdgo.GoString))) {
                    (@:checkr _start ?? throw "null pointer dereference").attr = ((@:checkr _start ?? throw "null pointer dereference").attr.__append__(_attr?.__copy__()) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L602"
                return (null : stdgo.Error);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L606"
        if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textmarshalertype._textMarshalerType) : Bool)) {
            var __tmp__ = (stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler).marshalText(), _text:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L608"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L609"
                return _err;
            };
            (@:checkr _start ?? throw "null pointer dereference").attr = ((@:checkr _start ?? throw "null pointer dereference").attr.__append__((new stdgo._internal.encoding.xml.Xml_attr.Attr(_name?.__copy__(), (_text : stdgo.GoString)?.__copy__()) : stdgo._internal.encoding.xml.Xml_attr.Attr)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L612"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L615"
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L617"
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textmarshalertype._textMarshalerType) : Bool)) {
                var __tmp__ = (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler).marshalText(), _text:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L619"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L620"
                    return _err;
                };
                (@:checkr _start ?? throw "null pointer dereference").attr = ((@:checkr _start ?? throw "null pointer dereference").attr.__append__((new stdgo._internal.encoding.xml.Xml_attr.Attr(_name?.__copy__(), (_text : stdgo.GoString)?.__copy__()) : stdgo._internal.encoding.xml.Xml_attr.Attr)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L623"
                return (null : stdgo.Error);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L628"
        {
            final __value__ = _val.kind();
            if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L630"
                if (_val.isNil()) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L631"
                    return (null : stdgo.Error);
                };
                _val = _val.elem()?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L637"
        if (((_val.kind() == (23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_val.type().elem().kind() != (8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            var _n = (_val.len() : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L639"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L640"
                    {
                        var _err = (_p._marshalAttr(_start, _name.__copy__(), _val.index(_i).__copy__()) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L641"
                            return _err;
                        };
                    };
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L644"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L647"
        if ((_val.type().string() : String) == (stdgo._internal.encoding.xml.Xml__attrtype._attrType.string() : String)) {
            (@:checkr _start ?? throw "null pointer dereference").attr = ((@:checkr _start ?? throw "null pointer dereference").attr.__append__((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_attr.Attr)) : stdgo._internal.encoding.xml.Xml_attr.Attr)?.__copy__()) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L649"
            return (null : stdgo.Error);
        };
        var __tmp__ = _p._marshalSimple(_val.type(), _val?.__copy__()), _s:stdgo.GoString = __tmp__._0, _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L653"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L654"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L656"
        if (_b != null) {
            _s = (_b : stdgo.GoString)?.__copy__();
        };
        (@:checkr _start ?? throw "null pointer dereference").attr = ((@:checkr _start ?? throw "null pointer dereference").attr.__append__((new stdgo._internal.encoding.xml.Xml_attr.Attr(_name?.__copy__(), _s?.__copy__()) : stdgo._internal.encoding.xml.Xml_attr.Attr)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L660"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _marshalValue( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _val:stdgo._internal.reflect.Reflect_value.Value, _finfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>, _startTemplate:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L426"
        if ((({
            final value = _startTemplate;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr _startTemplate ?? throw "null pointer dereference").name.local == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L427"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: EncodeElement of StartElement with missing name" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L430"
        if (!_val.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L431"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L433"
        if (((({
            final value = _finfo;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr _finfo ?? throw "null pointer dereference")._flags & (128 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) != ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) : Bool) && stdgo._internal.encoding.xml.Xml__isemptyvalue._isEmptyValue(_val?.__copy__()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L434"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L440"
        while (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || (_val.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L441"
            if (_val.isNil()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L442"
                return (null : stdgo.Error);
            };
            _val = _val.elem()?.__copy__();
        };
        var _kind = (_val.kind() : stdgo._internal.reflect.Reflect_kind.Kind);
        var _typ = (_val.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L451"
        if ((_val.canInterface() && _typ.implements_(stdgo._internal.encoding.xml.Xml__marshalertype._marshalerType) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L452"
            return _p._marshalInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_marshaler.Marshaler)) : stdgo._internal.encoding.xml.Xml_marshaler.Marshaler), stdgo._internal.encoding.xml.Xml__defaultstart._defaultStart(_typ, _finfo, _startTemplate)?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L454"
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L456"
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__marshalertype._marshalerType) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L457"
                return _p._marshalInterface((stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.xml.Xml_marshaler.Marshaler)) : stdgo._internal.encoding.xml.Xml_marshaler.Marshaler), stdgo._internal.encoding.xml.Xml__defaultstart._defaultStart(_pv.type(), _finfo, _startTemplate)?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L462"
        if ((_val.canInterface() && _typ.implements_(stdgo._internal.encoding.xml.Xml__textmarshalertype._textMarshalerType) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L463"
            return _p._marshalTextInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), stdgo._internal.encoding.xml.Xml__defaultstart._defaultStart(_typ, _finfo, _startTemplate)?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L465"
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L467"
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textmarshalertype._textMarshalerType) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L468"
                return _p._marshalTextInterface((stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler), stdgo._internal.encoding.xml.Xml__defaultstart._defaultStart(_pv.type(), _finfo, _startTemplate)?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L473"
        if (((((_kind == (23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || (_kind == (17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) && (_typ.elem().kind() != (8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L474"
            {
                var __0 = (0 : stdgo.GoInt), __1 = (_val.len() : stdgo.GoInt);
var _n = __1, _i = __0;
                while ((_i < _n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L475"
                    {
                        var _err = (_p._marshalValue(_val.index(_i).__copy__(), _finfo, _startTemplate) : stdgo.Error);
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L476"
                            return _err;
                        };
                    };
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L479"
            return (null : stdgo.Error);
        };
        var __tmp__ = stdgo._internal.encoding.xml.Xml__gettypeinfo._getTypeInfo(_typ), _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L483"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L484"
            return _err;
        };
        var _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L495"
        if (({
            final value = _startTemplate;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            _start.name = (@:checkr _startTemplate ?? throw "null pointer dereference").name?.__copy__();
            _start.attr = (_start.attr.__append__(...((@:checkr _startTemplate ?? throw "null pointer dereference").attr : Array<stdgo._internal.encoding.xml.Xml_attr.Attr>)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
        } else if (({
            final value = (@:checkr _tinfo ?? throw "null pointer dereference")._xmlname;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            var _xmlname = (@:checkr _tinfo ?? throw "null pointer dereference")._xmlname;
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L500"
            if ((@:checkr _xmlname ?? throw "null pointer dereference")._name != ((stdgo.Go.str() : stdgo.GoString))) {
                {
                    final __tmp__0 = (@:checkr _xmlname ?? throw "null pointer dereference")._xmlns?.__copy__();
                    final __tmp__1 = (@:checkr _xmlname ?? throw "null pointer dereference")._name?.__copy__();
                    _start.name.space = @:binopAssign __tmp__0;
                    _start.name.local = @:binopAssign __tmp__1;
                };
            } else {
                var _fv = (_xmlname._value(_val?.__copy__(), false)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L504"
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
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L509"
        if (((_start.name.local == (stdgo.Go.str() : stdgo.GoString)) && ({
            final value = _finfo;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool)) {
            {
                final __tmp__0 = (@:checkr _finfo ?? throw "null pointer dereference")._xmlns?.__copy__();
                final __tmp__1 = (@:checkr _finfo ?? throw "null pointer dereference")._name?.__copy__();
                _start.name.space = @:binopAssign __tmp__0;
                _start.name.local = @:binopAssign __tmp__1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L512"
        if (_start.name.local == ((stdgo.Go.str() : stdgo.GoString))) {
            var _name = (_typ.name()?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L514"
            {
                var _i = (stdgo._internal.strings.Strings_indexbyte.indexByte(_name?.__copy__(), (91 : stdgo.GoUInt8)) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    _name = (_name.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L518"
            if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L519"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError(_typ) : stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_unsupportedtypeerror.UnsupportedTypeError>));
            };
            _start.name.local = _name?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L525"
        for (_i => _ in (@:checkr _tinfo ?? throw "null pointer dereference")._fields) {
            var _finfo = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L527"
            if (((@:checkr _finfo ?? throw "null pointer dereference")._flags & (2 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L528"
                continue;
            };
            var _fv = (_finfo._value(_val?.__copy__(), false)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L532"
            if (((((@:checkr _finfo ?? throw "null pointer dereference")._flags & (128 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) != (0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) && ((!_fv.isValid() || stdgo._internal.encoding.xml.Xml__isemptyvalue._isEmptyValue(_fv?.__copy__()) : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L533"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L536"
            if (((_fv.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _fv.isNil() : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L537"
                continue;
            };
            var _name = ({ space : (@:checkr _finfo ?? throw "null pointer dereference")._xmlns?.__copy__(), local : (@:checkr _finfo ?? throw "null pointer dereference")._name?.__copy__() } : stdgo._internal.encoding.xml.Xml_name.Name);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L541"
            {
                var _err = (_p._marshalAttr((stdgo.Go.setRef(_start) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), _name?.__copy__(), _fv?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L542"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L547"
        if ((((((({
            final value = (@:checkr _tinfo ?? throw "null pointer dereference")._xmlname;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && _start.name.space == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && (@:checkr (@:checkr _tinfo ?? throw "null pointer dereference")._xmlname ?? throw "null pointer dereference")._xmlns == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && (@:checkr (@:checkr _tinfo ?? throw "null pointer dereference")._xmlname ?? throw "null pointer dereference")._name == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._tags.length) != ((0 : stdgo.GoInt)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._tags[(((@:checkr _p ?? throw "null pointer dereference")._tags.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].space != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _start.attr = (_start.attr.__append__((new stdgo._internal.encoding.xml.Xml_attr.Attr((new stdgo._internal.encoding.xml.Xml_name.Name((stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("xmlns" : stdgo.GoString)) : stdgo._internal.encoding.xml.Xml_name.Name), (stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.encoding.xml.Xml_attr.Attr)) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L552"
        {
            var _err = (_p._writeStart((stdgo.Go.setRef(_start) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L553"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L556"
        if (_val.kind() == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            _err = _p._marshalStruct(_tinfo, _val?.__copy__());
        } else {
            var __tmp__ = _p._marshalSimple(_typ, _val?.__copy__()), _s:stdgo.GoString = __tmp__._0, _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err1:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L560"
            if (_err1 != null) {
                _err = _err1;
            } else if (_b != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L563"
                stdgo._internal.encoding.xml.Xml_escapetext.escapeText(stdgo.Go.asInterface(_p), _b);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L565"
                _p.escapeString(_s?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L568"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L569"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L572"
        {
            var _err = (_p._writeEnd(_start.name?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L573"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L576"
        return _p._cachedWriteError();
    }
    @:keep
    @:tdfield
    static public function _popPrefix( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L407"
        while ((((@:checkr _p ?? throw "null pointer dereference")._prefixes.length) > (0 : stdgo.GoInt) : Bool)) {
            var _prefix = ((@:checkr _p ?? throw "null pointer dereference")._prefixes[(((@:checkr _p ?? throw "null pointer dereference")._prefixes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            (@:checkr _p ?? throw "null pointer dereference")._prefixes = ((@:checkr _p ?? throw "null pointer dereference")._prefixes.__slice__(0, (((@:checkr _p ?? throw "null pointer dereference")._prefixes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L410"
            if (_prefix == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L411"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L413"
            _p._deleteAttrPrefix(_prefix?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _markPrefix( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._prefixes = ((@:checkr _p ?? throw "null pointer dereference")._prefixes.__append__((stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
    }
    @:keep
    @:tdfield
    static public function _deleteAttrPrefix( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _prefix:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L398"
        if ((@:checkr _p ?? throw "null pointer dereference")._attrPrefix != null) (@:checkr _p ?? throw "null pointer dereference")._attrPrefix.__remove__(((@:checkr _p ?? throw "null pointer dereference")._attrNS[_prefix] ?? ("" : stdgo.GoString)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L399"
        if ((@:checkr _p ?? throw "null pointer dereference")._attrNS != null) (@:checkr _p ?? throw "null pointer dereference")._attrNS.__remove__(_prefix);
    }
    @:keep
    @:tdfield
    static public function _createAttrPrefix( _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer>, _url:stdgo.GoString):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_printer.T_printer> = _p;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L338"
        {
            var _prefix = (((@:checkr _p ?? throw "null pointer dereference")._attrPrefix[_url] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_prefix != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L339"
                return _prefix?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L346"
        if (_url == (("http://www.w3.org/XML/1998/namespace" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L347"
            return ("xml" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L351"
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
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L359"
        {
            var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_prefix?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _prefix = (_prefix.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L362"
        if (((_prefix == ((stdgo.Go.str() : stdgo.GoString)) || !stdgo._internal.encoding.xml.Xml__isname._isName((_prefix : stdgo.Slice<stdgo.GoUInt8>)) : Bool) || stdgo._internal.strings.Strings_contains.contains(_prefix?.__copy__(), (":" : stdgo.GoString)) : Bool)) {
            _prefix = ("_" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L369"
        if ((((_prefix.length) >= (3 : stdgo.GoInt) : Bool) && stdgo._internal.strings.Strings_equalfold.equalFold((_prefix.__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("xml" : stdgo.GoString)) : Bool)) {
            _prefix = (("_" : stdgo.GoString) + _prefix?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L372"
        if (((@:checkr _p ?? throw "null pointer dereference")._attrNS[_prefix] ?? ("" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L374"
            {
                (@:checkr _p ?? throw "null pointer dereference")._seq++;
                while (true) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L375"
                    {
                        var _id = (((_prefix + ("_" : stdgo.GoString).__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _p ?? throw "null pointer dereference")._seq).__copy__() : stdgo.GoString).__copy__() : stdgo.GoString);
                        if (((@:checkr _p ?? throw "null pointer dereference")._attrNS[_id] ?? ("" : stdgo.GoString)) == ((stdgo.Go.str() : stdgo.GoString))) {
                            _prefix = _id.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L377"
                            break;
                        };
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._seq++;
                };
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._attrPrefix[_url] = _prefix?.__copy__();
        (@:checkr _p ?? throw "null pointer dereference")._attrNS[_prefix] = _url?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L385"
        _p.writeString(("xmlns:" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L386"
        _p.writeString(_prefix?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L387"
        _p.writeString(("=\"" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L388"
        stdgo._internal.encoding.xml.Xml_escapetext.escapeText(stdgo.Go.asInterface(_p), (_url : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L389"
        _p.writeString(("\" " : stdgo.GoString));
        (@:checkr _p ?? throw "null pointer dereference")._prefixes = ((@:checkr _p ?? throw "null pointer dereference")._prefixes.__append__(_prefix?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L393"
        return _prefix?.__copy__();
    }
}
