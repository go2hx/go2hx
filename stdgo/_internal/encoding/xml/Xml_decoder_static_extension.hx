package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    @:tdfield
    static public function _readName( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _ok = false;
        var _b:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1202"
        {
            {
                var __tmp__ = _d._mustgetc();
                _b = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1203"
                return _ok;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1205"
        if (((_b < (128 : stdgo.GoUInt8) : Bool) && !stdgo._internal.encoding.xml.Xml__isnamebyte._isNameByte(_b) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1206"
            _d._ungetc(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1207"
            return _ok = false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1209"
        (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1211"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1212"
            {
                {
                    var __tmp__ = _d._mustgetc();
                    _b = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1213"
                    return _ok;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1215"
            if (((_b < (128 : stdgo.GoUInt8) : Bool) && !stdgo._internal.encoding.xml.Xml__isnamebyte._isNameByte(_b) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1216"
                _d._ungetc(_b);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1217"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1219"
            (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1221"
        return _ok = true;
    }
    @:keep
    @:tdfield
    static public function _name( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _s = ("" : stdgo.GoString), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1183"
        (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1184"
        if (!_d._readName()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1185"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                _s = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _b = (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1190"
        if (!stdgo._internal.encoding.xml.Xml__isname._isName(_b)) {
            (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError((("invalid XML name: " : stdgo.GoString) + (_b : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1192"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                _s = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1194"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_b : stdgo.GoString)?.__copy__(), _1 : true };
            _s = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _nsname( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_name.Name; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _name = ({} : stdgo._internal.encoding.xml.Xml_name.Name), _ok = false;
        var __tmp__ = _d._name(), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1165"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1166"
            return { _0 : _name, _1 : _ok };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1168"
        if ((stdgo._internal.strings.Strings_count.count(_s?.__copy__(), (":" : stdgo.GoString)) > (1 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1169"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.xml.Xml_name.Name; var _1 : Bool; } = { _0 : _name?.__copy__(), _1 : false };
                _name = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        } else {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_s?.__copy__(), (":" : stdgo.GoString)), _space:stdgo.GoString = __tmp__._0, _local:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (((!_ok || _space == ((stdgo.Go.str() : stdgo.GoString)) : Bool) || (_local == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                _name.local = _s?.__copy__();
            } else {
                _name.space = _space?.__copy__();
                _name.local = _local?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1176"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.xml.Xml_name.Name; var _1 : Bool; } = { _0 : _name?.__copy__(), _1 : true };
            _name = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _text( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _quote:stdgo.GoInt, _cdata:Bool):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var inputBreak = false;
        var _trunc_111:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_115:Bool = false;
        var _ok_113:Bool = false;
        var _b_112:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _buf_129:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_126:Bool = false;
        var _size_131:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_130:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _b1_110:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b0_109:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_125:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _s_124:stdgo.GoString = ("" : stdgo.GoString);
        var _s_120:stdgo.GoString = ("" : stdgo.GoString);
        var _start_119:stdgo.GoInt = (0 : stdgo.GoInt);
        var _haveText_117:Bool = false;
        var _before_114:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _text_116:stdgo.GoString = ("" : stdgo.GoString);
        var _data_128:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _name_123:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err_122:stdgo.Error = (null : stdgo.Error);
        var _base_118:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ent_127:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L988"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    _gotoNext = 3668861i64;
                } else if (__value__ == (3668861i64)) {
                    0i64;
                    inputBreak = false;
                    _gotoNext = 3668869i64;
                } else if (__value__ == (3668869i64)) {
                    //"file://#L0"
                    if (!inputBreak) {
                        _gotoNext = 3668873i64;
                    } else {
                        _gotoNext = 3671876i64;
                    };
                } else if (__value__ == (3668873i64)) {
                    {
                        var __tmp__ = _d._getc();
                        _b_112 = @:tmpset0 __tmp__._0;
                        _ok_113 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L992"
                    if (!_ok_113) {
                        _gotoNext = 3668904i64;
                    } else {
                        _gotoNext = 3669149i64;
                    };
                } else if (__value__ == (3668904i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L993"
                    if (_cdata) {
                        _gotoNext = 3668918i64;
                    } else {
                        _gotoNext = 3669036i64;
                    };
                } else if (__value__ == (3668918i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L994"
                    if (stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 3668943i64;
                    } else {
                        _gotoNext = 3669017i64;
                    };
                } else if (__value__ == (3668943i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("unexpected EOF in CDATA section" : stdgo.GoString));
                    _gotoNext = 3669017i64;
                } else if (__value__ == (3669017i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L997"
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3669036i64;
                } else if (__value__ == (3669036i64)) {
                    inputBreak = true;
                    _gotoNext = 3668869i64;
                } else if (__value__ == (3669149i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1004"
                    if (((_b0_109 == ((93 : stdgo.GoUInt8)) && _b1_110 == ((93 : stdgo.GoUInt8)) : Bool) && (_b_112 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3669187i64;
                    } else {
                        _gotoNext = 3669360i64;
                    };
                } else if (__value__ == (3669187i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1005"
                    if (_cdata) {
                        _gotoNext = 3669201i64;
                    } else {
                        _gotoNext = 3669241i64;
                    };
                } else if (__value__ == (3669201i64)) {
                    _trunc_111 = (2 : stdgo.GoInt);
                    inputBreak = true;
                    _gotoNext = 3668869i64;
                } else if (__value__ == (3669241i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("unescaped ]]> not in CDATA section" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1010"
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3669360i64;
                } else if (__value__ == (3669360i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1014"
                    if (((_b_112 == (60 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                        _gotoNext = 3669382i64;
                    } else {
                        _gotoNext = 3669523i64;
                    };
                } else if (__value__ == (3669382i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1015"
                    if ((_quote >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3669401i64;
                    } else {
                        _gotoNext = 3669488i64;
                    };
                } else if (__value__ == (3669401i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("unescaped < inside quoted string" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1017"
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3669488i64;
                } else if (__value__ == (3669488i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1019"
                    _d._ungetc((60 : stdgo.GoUInt8));
                    inputBreak = true;
                    _gotoNext = 3668869i64;
                } else if (__value__ == (3669523i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1022"
                    if (((_quote >= (0 : stdgo.GoInt) : Bool) && (_b_112 == (_quote : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3669557i64;
                    } else {
                        _gotoNext = 3669580i64;
                    };
                } else if (__value__ == (3669557i64)) {
                    inputBreak = true;
                    _gotoNext = 3668869i64;
                } else if (__value__ == (3669580i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1025"
                    if (((_b_112 == (38 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                        _gotoNext = 3669602i64;
                    } else {
                        _gotoNext = 3671701i64;
                    };
                } else if (__value__ == (3669602i64)) {
                    _before_114 = (@:checkr _d ?? throw "null pointer dereference")._buf.len();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1032"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((38 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1036"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_112 = @:tmpset0 __tmp__._0;
                            _ok_115 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_115) {
                            _gotoNext = 3670032i64;
                        } else {
                            _gotoNext = 3670057i64;
                        };
                    };
                } else if (__value__ == (3670032i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1037"
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3670057i64;
                } else if (__value__ == (3670057i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1039"
                    if (_b_112 == ((35 : stdgo.GoUInt8))) {
                        _gotoNext = 3670069i64;
                    } else {
                        _gotoNext = 3670800i64;
                    };
                } else if (__value__ == (3670069i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1040"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_112);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1041"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_112 = @:tmpset0 __tmp__._0;
                            _ok_115 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_115) {
                            _gotoNext = 3670127i64;
                        } else {
                            _gotoNext = 3670155i64;
                        };
                    };
                } else if (__value__ == (3670127i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1042"
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3670155i64;
                } else if (__value__ == (3670155i64)) {
                    _base_118 = (10 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1045"
                    if (_b_112 == ((120 : stdgo.GoUInt8))) {
                        _gotoNext = 3670182i64;
                    } else {
                        _gotoNext = 3670293i64;
                    };
                } else if (__value__ == (3670182i64)) {
                    _base_118 = (16 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1047"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_112);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1048"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_112 = @:tmpset0 __tmp__._0;
                            _ok_115 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_115) {
                            _gotoNext = 3670257i64;
                        } else {
                            _gotoNext = 3670293i64;
                        };
                    };
                } else if (__value__ == (3670257i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1049"
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3670293i64;
                } else if (__value__ == (3670293i64)) {
                    _start_119 = (@:checkr _d ?? throw "null pointer dereference")._buf.len();
                    0i64;
                    _gotoNext = 3670318i64;
                } else if (__value__ == (3670318i64)) {
                    //"file://#L0"
                    if ((((((48 : stdgo.GoUInt8) <= _b_112 : Bool) && (_b_112 <= (57 : stdgo.GoUInt8) : Bool) : Bool) || ((_base_118 == ((16 : stdgo.GoInt)) && ((97 : stdgo.GoUInt8) <= _b_112 : Bool) : Bool) && (_b_112 <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || ((_base_118 == ((16 : stdgo.GoInt)) && ((65 : stdgo.GoUInt8) <= _b_112 : Bool) : Bool) && (_b_112 <= (70 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3670429i64;
                    } else {
                        _gotoNext = 3670525i64;
                    };
                } else if (__value__ == (3670429i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1056"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_112);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1057"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_112 = @:tmpset0 __tmp__._0;
                            _ok_115 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_115) {
                            _gotoNext = 3670489i64;
                        } else {
                            _gotoNext = 3670318i64;
                        };
                    };
                } else if (__value__ == (3670489i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1058"
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3670318i64;
                } else if (__value__ == (3670525i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1061"
                    if (_b_112 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3670537i64;
                    } else {
                        _gotoNext = 3670567i64;
                    };
                } else if (__value__ == (3670537i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1062"
                    _d._ungetc(_b_112);
                    _gotoNext = 3671291i64;
                } else if (__value__ == (3670567i64)) {
                    _gotoNext = 3670567i64;
                    _s_120 = (((@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__(_start_119) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1065"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((59 : stdgo.GoUInt8));
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s_120?.__copy__(), _base_118, (64 : stdgo.GoInt));
                        _n_121 = @:tmpset0 __tmp__._0;
                        _err_122 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1067"
                    if (((_err_122 == null) && (_n_121 <= (1114111i64 : stdgo.GoUInt64) : Bool) : Bool)) {
                        _gotoNext = 3670724i64;
                    } else {
                        _gotoNext = 3671291i64;
                    };
                } else if (__value__ == (3670724i64)) {
                    _text_116 = ((_n_121 : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
                    _haveText_117 = true;
                    _gotoNext = 3671291i64;
                } else if (__value__ == (3670800i64)) {
                    _gotoNext = 3670800i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1073"
                    _d._ungetc(_b_112);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1074"
                    if (!_d._readName()) {
                        _gotoNext = 3670839i64;
                    } else {
                        _gotoNext = 3670898i64;
                    };
                } else if (__value__ == (3670839i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1075"
                    if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 3670862i64;
                    } else {
                        _gotoNext = 3670898i64;
                    };
                } else if (__value__ == (3670862i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1076"
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3670898i64;
                } else if (__value__ == (3670898i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1079"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_112 = @:tmpset0 __tmp__._0;
                            _ok_115 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_115) {
                            _gotoNext = 3670927i64;
                        } else {
                            _gotoNext = 3670955i64;
                        };
                    };
                } else if (__value__ == (3670927i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1080"
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3670955i64;
                } else if (__value__ == (3670955i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1082"
                    if (_b_112 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3670967i64;
                    } else {
                        _gotoNext = 3670997i64;
                    };
                } else if (__value__ == (3670967i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1083"
                    _d._ungetc(_b_112);
                    _gotoNext = 3671291i64;
                } else if (__value__ == (3670997i64)) {
                    _gotoNext = 3670997i64;
                    _name_123 = ((@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__((_before_114 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1086"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((59 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1087"
                    if (stdgo._internal.encoding.xml.Xml__isname._isName(_name_123)) {
                        _gotoNext = 3671084i64;
                    } else {
                        _gotoNext = 3671291i64;
                    };
                } else if (__value__ == (3671084i64)) {
                    _s_124 = (_name_123 : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1089"
                    {
                        {
                            var __tmp__ = (stdgo._internal.encoding.xml.Xml__entity._entity != null && stdgo._internal.encoding.xml.Xml__entity._entity.__exists__(_s_124?.__copy__()) ? { _0 : stdgo._internal.encoding.xml.Xml__entity._entity[_s_124?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt32), _1 : false });
                            _r_125 = @:tmpset0 __tmp__._0;
                            _ok_126 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_126) {
                            _gotoNext = 3671142i64;
                        } else if ((@:checkr _d ?? throw "null pointer dereference").entity != null) {
                            _gotoNext = 3671223i64;
                        } else {
                            _gotoNext = 3671291i64;
                        };
                    };
                } else if (__value__ == (3671142i64)) {
                    _text_116 = (_r_125 : stdgo.GoString)?.__copy__();
                    _haveText_117 = true;
                    _gotoNext = 3671291i64;
                } else if (__value__ == (3671223i64)) {
                    {
                        var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference").entity != null && (@:checkr _d ?? throw "null pointer dereference").entity.__exists__(_s_124?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference").entity[_s_124?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false });
                        _text_116 = @:tmpset0 __tmp__._0?.__copy__();
                        _haveText_117 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3671291i64;
                } else if (__value__ == (3671291i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1099"
                    if (_haveText_117) {
                        _gotoNext = 3671303i64;
                    } else {
                        _gotoNext = 3671405i64;
                    };
                } else if (__value__ == (3671303i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1100"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.truncate(_before_114);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1101"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeString(_text_116?.__copy__());
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_109 = @:binopAssign __tmp__0;
                        _b1_110 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3668869i64;
                } else if (__value__ == (3671405i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1105"
                    if (!(@:checkr _d ?? throw "null pointer dereference").strict) {
                        _gotoNext = 3671418i64;
                    } else {
                        _gotoNext = 3671465i64;
                    };
                } else if (__value__ == (3671418i64)) {
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_109 = @:binopAssign __tmp__0;
                        _b1_110 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3668869i64;
                } else if (__value__ == (3671465i64)) {
                    _ent_127 = (((@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__(_before_114) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1110"
                    if (_ent_127[((_ent_127.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3671532i64;
                    } else {
                        _gotoNext = 3671571i64;
                    };
                } else if (__value__ == (3671532i64)) {
                    _ent_127 = (_ent_127 + ((" (no semicolon)" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3671571i64;
                } else if (__value__ == (3671571i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError((("invalid character entity " : stdgo.GoString) + _ent_127?.__copy__() : stdgo.GoString)?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1114"
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3671701i64;
                } else if (__value__ == (3671701i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1118"
                    if (_b_112 == ((13 : stdgo.GoUInt8))) {
                        _gotoNext = 3671714i64;
                    } else if (((_b1_110 == (13 : stdgo.GoUInt8)) && (_b_112 == (10 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3671777i64;
                    } else {
                        _gotoNext = 3671826i64;
                    };
                } else if (__value__ == (3671714i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1119"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((10 : stdgo.GoUInt8));
                    _gotoNext = 3671857i64;
                } else if (__value__ == (3671777i64)) {
                    _gotoNext = 3671857i64;
                } else if (__value__ == (3671826i64)) {
                    _gotoNext = 3671826i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1123"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_112);
                    0i64;
                    _gotoNext = 3671857i64;
                } else if (__value__ == (3671857i64)) {
                    {
                        final __tmp__0 = _b1_110;
                        final __tmp__1 = _b_112;
                        _b0_109 = @:binopAssign __tmp__0;
                        _b1_110 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3668869i64;
                } else if (__value__ == (3671876i64)) {
                    _data_128 = (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_128 = (_data_128.__slice__((0 : stdgo.GoInt), ((_data_128.length) - _trunc_111 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _buf_129 = _data_128;
                    0i64;
                    _gotoNext = 3672003i64;
                } else if (__value__ == (3672003i64)) {
                    //"file://#L0"
                    if (((_buf_129.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3672020i64;
                    } else {
                        _gotoNext = 3672298i64;
                    };
                } else if (__value__ == (3672020i64)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_buf_129);
                        _r_130 = @:tmpset0 __tmp__._0;
                        _size_131 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1135"
                    if (((_r_130 == (65533 : stdgo.GoInt32)) && (_size_131 == (1 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3672094i64;
                    } else {
                        _gotoNext = 3672158i64;
                    };
                } else if (__value__ == (3672094i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("invalid UTF-8" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1137"
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3672158i64;
                } else if (__value__ == (3672158i64)) {
                    _buf_129 = (_buf_129.__slice__(_size_131) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1140"
                    if (!stdgo._internal.encoding.xml.Xml__isincharacterrange._isInCharacterRange(_r_130)) {
                        _gotoNext = 3672203i64;
                    } else {
                        _gotoNext = 3672003i64;
                    };
                } else if (__value__ == (3672203i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("illegal character code %U" : stdgo.GoString), stdgo.Go.toInterface(_r_130))?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1142"
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3672003i64;
                } else if (__value__ == (3672298i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L1146"
                    return _data_128;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _ungetc( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _b:stdgo.GoUInt8):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L966"
        if (_b == ((10 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L967"
            (@:checkr _d ?? throw "null pointer dereference")._line--;
        };
        (@:checkr _d ?? throw "null pointer dereference")._nextByte = (_b : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L970"
        (@:checkr _d ?? throw "null pointer dereference")._offset--;
    }
    @:keep
    @:tdfield
    static public function _mustgetc( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _b = (0 : stdgo.GoUInt8), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L956"
        {
            {
                var __tmp__ = _d._getc();
                _b = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L957"
                if (stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("unexpected EOF" : stdgo.GoString));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L961"
        return { _0 : _b, _1 : _ok };
    }
    @:keep
    @:tdfield
    static public function _savedOffset( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _n = ((@:checkr _d ?? throw "null pointer dereference")._saved.len() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L945"
        if (((@:checkr _d ?? throw "null pointer dereference")._nextByte >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L946"
            _n--;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L948"
        return _n;
    }
    @:keep
    @:tdfield
    static public function inputPos( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _line = (0 : stdgo.GoInt), _column = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L938"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (@:checkr _d ?? throw "null pointer dereference")._line, _1 : ((((@:checkr _d ?? throw "null pointer dereference")._offset - (@:checkr _d ?? throw "null pointer dereference")._linestart : stdgo.GoInt64) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
            _line = __tmp__._0;
            _column = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function inputOffset( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L931"
        return (@:checkr _d ?? throw "null pointer dereference")._offset;
    }
    @:keep
    @:tdfield
    static public function _getc( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _b = (0 : stdgo.GoUInt8), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L904"
        if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L905"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : (0 : stdgo.GoUInt8), _1 : false };
                _b = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L907"
        if (((@:checkr _d ?? throw "null pointer dereference")._nextByte >= (0 : stdgo.GoInt) : Bool)) {
            _b = ((@:checkr _d ?? throw "null pointer dereference")._nextByte : stdgo.GoUInt8);
            (@:checkr _d ?? throw "null pointer dereference")._nextByte = (-1 : stdgo.GoInt);
        } else {
            {
                var __tmp__ = (@:checkr _d ?? throw "null pointer dereference")._r.readByte();
                _b = @:tmpset0 __tmp__._0;
                (@:checkr _d ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L912"
            if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L913"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : (0 : stdgo.GoUInt8), _1 : false };
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L915"
            if (({
                final value = (@:checkr _d ?? throw "null pointer dereference")._saved;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L916"
                (@:checkr _d ?? throw "null pointer dereference")._saved.writeByte(_b);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L919"
        if (_b == ((10 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L920"
            (@:checkr _d ?? throw "null pointer dereference")._line++;
            (@:checkr _d ?? throw "null pointer dereference")._linestart = ((@:checkr _d ?? throw "null pointer dereference")._offset + (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L923"
        (@:checkr _d ?? throw "null pointer dereference")._offset++;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L924"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : _b, _1 : true };
            _b = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _space( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L885"
        while (true) {
            var __tmp__ = _d._getc(), _b:stdgo.GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L887"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L888"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L890"
            {
                final __value__ = _b;
                if (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8))) {} else {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L893"
                    _d._ungetc(_b);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L894"
                    return;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _attrval( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var __tmp__ = _d._mustgetc(), _b:stdgo.GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L851"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L852"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L855"
        if (((_b == (34 : stdgo.GoUInt8)) || (_b == (39 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L856"
            return _d._text((_b : stdgo.GoInt), false);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L859"
        if ((@:checkr _d ?? throw "null pointer dereference").strict) {
            (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("unquoted or missing attribute value in element" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L861"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L864"
        _d._ungetc(_b);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L865"
        (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L866"
        while (true) {
            {
                var __tmp__ = _d._mustgetc();
                _b = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L868"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L869"
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L872"
            if (((((((((97 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || _b == ((95 : stdgo.GoUInt8)) : Bool) || _b == ((58 : stdgo.GoUInt8)) : Bool) || (_b == (45 : stdgo.GoUInt8)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L874"
                (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L876"
                _d._ungetc(_b);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L877"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L880"
        return (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
    }
    @:keep
    @:tdfield
    static public function _rawToken( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_token.Token; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _b1_103:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b1_93:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _name_83:stdgo._internal.encoding.xml.Xml_name.Name = ({} : stdgo._internal.encoding.xml.Xml_name.Name);
        var _a_107:stdgo._internal.encoding.xml.Xml_attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_attr.Attr);
        var _empty_105:Bool = false;
        var _name_104:stdgo._internal.encoding.xml.Xml_name.Name = ({} : stdgo._internal.encoding.xml.Xml_name.Name);
        var _depth_98:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b0_92:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _newr_90:stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
        var _target_84:stdgo.GoString = ("" : stdgo.GoString);
        var _attr_106:stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
        var _j_101:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inquote_97:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _data_96:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _data_86:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_81:Bool = false;
        var _data_108:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _i_100:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_94:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err_91:stdgo.Error = (null : stdgo.Error);
        var _enc_89:stdgo.GoString = ("" : stdgo.GoString);
        var _b_80:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _s_99:stdgo.GoString = ("" : stdgo.GoString);
        var _i_95:stdgo.GoInt = (0 : stdgo.GoInt);
        var _content_87:stdgo.GoString = ("" : stdgo.GoString);
        var _data_82:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b0_102:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ver_88:stdgo.GoString = ("" : stdgo.GoString);
        var _b0_85:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L548"
                    if ((@:checkr _d ?? throw "null pointer dereference")._t != null) {
                        _gotoNext = 3659479i64;
                    } else {
                        _gotoNext = 3659506i64;
                    };
                } else if (__value__ == (3659479i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L549"
                    return (@:checkr _d ?? throw "null pointer dereference")._t.token();
                    _gotoNext = 3659506i64;
                } else if (__value__ == (3659506i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L551"
                    if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 3659522i64;
                    } else {
                        _gotoNext = 3659548i64;
                    };
                } else if (__value__ == (3659522i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L552"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3659548i64;
                } else if (__value__ == (3659548i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L554"
                    if ((@:checkr _d ?? throw "null pointer dereference")._needClose) {
                        _gotoNext = 3659563i64;
                    } else {
                        _gotoNext = 3659761i64;
                    };
                } else if (__value__ == (3659563i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._needClose = false;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L559"
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_endelement.EndElement((@:checkr _d ?? throw "null pointer dereference")._toClose?.__copy__()) : stdgo._internal.encoding.xml.Xml_endelement.EndElement))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3659761i64;
                } else if (__value__ == (3659761i64)) {
                    {
                        var __tmp__ = _d._getc();
                        _b_80 = @:tmpset0 __tmp__._0;
                        _ok_81 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L563"
                    if (!_ok_81) {
                        _gotoNext = 3659787i64;
                    } else {
                        _gotoNext = 3659814i64;
                    };
                } else if (__value__ == (3659787i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L564"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3659814i64;
                } else if (__value__ == (3659814i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L567"
                    if (_b_80 != ((60 : stdgo.GoUInt8))) {
                        _gotoNext = 3659826i64;
                    } else {
                        _gotoNext = 3659967i64;
                    };
                } else if (__value__ == (3659826i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L569"
                    _d._ungetc(_b_80);
                    _data_82 = _d._text((-1 : stdgo.GoInt), false);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L571"
                    if (_data_82 == null) {
                        _gotoNext = 3659906i64;
                    } else {
                        _gotoNext = 3659935i64;
                    };
                } else if (__value__ == (3659906i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L572"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3659935i64;
                } else if (__value__ == (3659935i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L574"
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_82 : stdgo._internal.encoding.xml.Xml_chardata.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3659967i64;
                } else if (__value__ == (3659967i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L577"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3659996i64;
                        } else {
                            _gotoNext = 3660022i64;
                        };
                    };
                } else if (__value__ == (3659996i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L578"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3660022i64;
                } else if (__value__ == (3660022i64)) {
                    _gotoNext = 3660022i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L580"
                    {
                        final __value__ = _b_80;
                        if (__value__ == ((47 : stdgo.GoUInt8))) {
                            _gotoNext = 3660034i64;
                        } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                            _gotoNext = 3660452i64;
                        } else if (__value__ == ((33 : stdgo.GoUInt8))) {
                            _gotoNext = 3661780i64;
                        } else {
                            _gotoNext = 3664589i64;
                        };
                    };
                } else if (__value__ == (3660034i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L584"
                    {
                        {
                            var __tmp__ = _d._nsname();
                            _name_83 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3660113i64;
                        } else {
                            _gotoNext = 3660228i64;
                        };
                    };
                } else if (__value__ == (3660113i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L585"
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3660134i64;
                    } else {
                        _gotoNext = 3660204i64;
                    };
                } else if (__value__ == (3660134i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("expected element name after </" : stdgo.GoString));
                    _gotoNext = 3660204i64;
                } else if (__value__ == (3660204i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L588"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3660228i64;
                } else if (__value__ == (3660228i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L590"
                    _d._space();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L591"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3660269i64;
                        } else {
                            _gotoNext = 3660298i64;
                        };
                    };
                } else if (__value__ == (3660269i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L592"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3660298i64;
                } else if (__value__ == (3660298i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L594"
                    if (_b_80 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3660310i64;
                    } else {
                        _gotoNext = 3660421i64;
                    };
                } else if (__value__ == (3660310i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(((("invalid characters between </" : stdgo.GoString) + _name_83.local?.__copy__() : stdgo.GoString) + (" and >" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L596"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3660421i64;
                } else if (__value__ == (3660421i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L598"
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_endelement.EndElement(_name_83?.__copy__()) : stdgo._internal.encoding.xml.Xml_endelement.EndElement))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3664589i64;
                } else if (__value__ == (3660452i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L603"
                    {
                        {
                            var __tmp__ = _d._name();
                            _target_84 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3660547i64;
                        } else {
                            _gotoNext = 3660661i64;
                        };
                    };
                } else if (__value__ == (3660547i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L604"
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3660568i64;
                    } else {
                        _gotoNext = 3660637i64;
                    };
                } else if (__value__ == (3660568i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("expected target name after <?" : stdgo.GoString));
                    _gotoNext = 3660637i64;
                } else if (__value__ == (3660637i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L607"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3660661i64;
                } else if (__value__ == (3660661i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L609"
                    _d._space();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L610"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    0i64;
                    _gotoNext = 3660703i64;
                } else if (__value__ == (3660703i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3660707i64;
                    } else {
                        _gotoNext = 3660853i64;
                    };
                } else if (__value__ == (3660707i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L613"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3660741i64;
                        } else {
                            _gotoNext = 3660773i64;
                        };
                    };
                } else if (__value__ == (3660741i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L614"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3660773i64;
                } else if (__value__ == (3660773i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L616"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_80);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L617"
                    if (((_b0_85 == (63 : stdgo.GoUInt8)) && (_b_80 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3660820i64;
                    } else {
                        _gotoNext = 3660840i64;
                    };
                } else if (__value__ == (3660820i64)) {
                    _gotoNext = 3660853i64;
                } else if (__value__ == (3660840i64)) {
                    _b0_85 = _b_80;
                    _gotoNext = 3660703i64;
                } else if (__value__ == (3660853i64)) {
                    _data_86 = (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_86 = (_data_86.__slice__((0 : stdgo.GoInt), ((_data_86.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L625"
                    if (_target_84 == (("xml" : stdgo.GoString))) {
                        _gotoNext = 3660939i64;
                    } else {
                        _gotoNext = 3661743i64;
                    };
                } else if (__value__ == (3660939i64)) {
                    _content_87 = (_data_86 : stdgo.GoString)?.__copy__();
                    _ver_88 = stdgo._internal.encoding.xml.Xml__procinst._procInst(("version" : stdgo.GoString), _content_87?.__copy__())?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L628"
                    if (((_ver_88 != (stdgo.Go.str() : stdgo.GoString)) && (_ver_88 != ("1.0" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3661039i64;
                    } else {
                        _gotoNext = 3661161i64;
                    };
                } else if (__value__ == (3661039i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: unsupported version %q; only version 1.0 is supported" : stdgo.GoString), stdgo.Go.toInterface(_ver_88));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L630"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3661161i64;
                } else if (__value__ == (3661161i64)) {
                    _enc_89 = stdgo._internal.encoding.xml.Xml__procinst._procInst(("encoding" : stdgo.GoString), _content_87?.__copy__())?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L633"
                    if ((((_enc_89 != ((stdgo.Go.str() : stdgo.GoString)) && _enc_89 != (("utf-8" : stdgo.GoString)) : Bool) && _enc_89 != (("UTF-8" : stdgo.GoString)) : Bool) && !stdgo._internal.strings.Strings_equalfold.equalFold(_enc_89?.__copy__(), ("utf-8" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3661286i64;
                    } else {
                        _gotoNext = 3661743i64;
                    };
                } else if (__value__ == (3661286i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L634"
                    if ((@:checkr _d ?? throw "null pointer dereference").charsetReader == null) {
                        _gotoNext = 3661318i64;
                    } else {
                        _gotoNext = 3661444i64;
                    };
                } else if (__value__ == (3661318i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: encoding %q declared but Decoder.CharsetReader is nil" : stdgo.GoString), stdgo.Go.toInterface(_enc_89));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L636"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3661444i64;
                } else if (__value__ == (3661444i64)) {
                    {
                        var __tmp__ = (@:checkr _d ?? throw "null pointer dereference").charsetReader(_enc_89?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._r) : stdgo._internal.io.Io_reader.Reader)) : stdgo._internal.io.Io_reader.Reader));
                        _newr_90 = @:tmpset0 __tmp__._0;
                        _err_91 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L639"
                    if (_err_91 != null) {
                        _gotoNext = 3661513i64;
                    } else {
                        _gotoNext = 3661613i64;
                    };
                } else if (__value__ == (3661513i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: opening charset %q: %w" : stdgo.GoString), stdgo.Go.toInterface(_enc_89), stdgo.Go.toInterface(_err_91));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L641"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3661613i64;
                } else if (__value__ == (3661613i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L643"
                    if (_newr_90 == null) {
                        _gotoNext = 3661628i64;
                    } else {
                        _gotoNext = 3661709i64;
                    };
                } else if (__value__ == (3661628i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L644"
                    throw stdgo.Go.toInterface((("CharsetReader returned a nil Reader for charset " : stdgo.GoString) + _enc_89?.__copy__() : stdgo.GoString));
                    _gotoNext = 3661709i64;
                } else if (__value__ == (3661709i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L646"
                    _d._switchToReader(_newr_90);
                    _gotoNext = 3661743i64;
                } else if (__value__ == (3661743i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L649"
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_procinst.ProcInst(_target_84?.__copy__(), _data_86) : stdgo._internal.encoding.xml.Xml_procinst.ProcInst))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3664589i64;
                } else if (__value__ == (3661780i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L653"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3661858i64;
                        } else {
                            _gotoNext = 3661887i64;
                        };
                    };
                } else if (__value__ == (3661858i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L654"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3661887i64;
                } else if (__value__ == (3661887i64)) {
                    _gotoNext = 3661887i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L656"
                    {
                        final __value__ = _b_80;
                        if (__value__ == ((45 : stdgo.GoUInt8))) {
                            _gotoNext = 3661900i64;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3662592i64;
                        } else {
                            _gotoNext = 3663157i64;
                        };
                    };
                } else if (__value__ == (3661900i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L659"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3661984i64;
                        } else {
                            _gotoNext = 3662016i64;
                        };
                    };
                } else if (__value__ == (3661984i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L660"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662016i64;
                } else if (__value__ == (3662016i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L662"
                    if (_b_80 != ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 3662028i64;
                    } else {
                        _gotoNext = 3662154i64;
                    };
                } else if (__value__ == (3662028i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("invalid sequence <!- not part of <!--" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L664"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662154i64;
                } else if (__value__ == (3662154i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L667"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    0i64;
                    _gotoNext = 3662190i64;
                } else if (__value__ == (3662190i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3662194i64;
                    } else {
                        _gotoNext = 3662494i64;
                    };
                } else if (__value__ == (3662194i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L670"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3662229i64;
                        } else {
                            _gotoNext = 3662264i64;
                        };
                    };
                } else if (__value__ == (3662229i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L671"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662264i64;
                } else if (__value__ == (3662264i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L673"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_80);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L674"
                    if (((_b0_92 == (45 : stdgo.GoUInt8)) && (_b1_93 == (45 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3662313i64;
                    } else {
                        _gotoNext = 3662471i64;
                    };
                } else if (__value__ == (3662313i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L675"
                    if (_b_80 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3662332i64;
                    } else {
                        _gotoNext = 3662455i64;
                    };
                } else if (__value__ == (3662332i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("invalid sequence \"--\" not allowed in comments" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L678"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662455i64;
                } else if (__value__ == (3662455i64)) {
                    _gotoNext = 3662494i64;
                } else if (__value__ == (3662471i64)) {
                    {
                        final __tmp__0 = _b1_93;
                        final __tmp__1 = _b_80;
                        _b0_92 = @:binopAssign __tmp__0;
                        _b1_93 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3662190i64;
                } else if (__value__ == (3662494i64)) {
                    _data_94 = (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_94 = (_data_94.__slice__((0 : stdgo.GoInt), ((_data_94.length) - (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L686"
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_94 : stdgo._internal.encoding.xml.Xml_comment.Comment))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3663157i64;
                } else if (__value__ == (3662592i64)) {
                    _i_95 = (0 : stdgo.GoInt);
                    _gotoNext = 3662638i64;
                } else if (__value__ == (3662638i64)) {
                    //"file://#L0"
                    if ((_i_95 < (6 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3662661i64;
                    } else {
                        _gotoNext = 3662885i64;
                    };
                } else if (__value__ == (3662657i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L690"
                    _i_95++;
                    _gotoNext = 3662638i64;
                } else if (__value__ == (3662661i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L691"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3662696i64;
                        } else {
                            _gotoNext = 3662731i64;
                        };
                    };
                } else if (__value__ == (3662696i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L692"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662731i64;
                } else if (__value__ == (3662731i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L694"
                    if (_b_80 != ((("CDATA[" : stdgo.GoString) : stdgo.GoString)[(_i_95 : stdgo.GoInt)])) {
                        _gotoNext = 3662751i64;
                    } else {
                        _gotoNext = 3662657i64;
                    };
                } else if (__value__ == (3662751i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("invalid <![ sequence" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L696"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662657i64;
                } else if (__value__ == (3662885i64)) {
                    _data_96 = _d._text((-1 : stdgo.GoInt), true);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L701"
                    if (_data_96 == null) {
                        _gotoNext = 3662928i64;
                    } else {
                        _gotoNext = 3662960i64;
                    };
                } else if (__value__ == (3662928i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L702"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662960i64;
                } else if (__value__ == (3662960i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L704"
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_96 : stdgo._internal.encoding.xml.Xml_chardata.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3663157i64;
                } else if (__value__ == (3663157i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L710"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L711"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_80);
                    _inquote_97 = (0 : stdgo.GoUInt8);
                    _depth_98 = (0 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 3663229i64;
                } else if (__value__ == (3663229i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3663233i64;
                    } else {
                        _gotoNext = 3664499i64;
                    };
                } else if (__value__ == (3663233i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L715"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3663267i64;
                        } else {
                            _gotoNext = 3663299i64;
                        };
                    };
                } else if (__value__ == (3663267i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L716"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3663299i64;
                } else if (__value__ == (3663299i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L718"
                    if (((_inquote_97 == ((0 : stdgo.GoUInt8)) && _b_80 == ((62 : stdgo.GoUInt8)) : Bool) && (_depth_98 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3663341i64;
                    } else {
                        _gotoNext = 3663360i64;
                    };
                } else if (__value__ == (3663341i64)) {
                    _gotoNext = 3664499i64;
                } else if (__value__ == (3663360i64)) {
                    _gotoNext = 3663360i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L722"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_80);
                    _gotoNext = 3663394i64;
                } else if (__value__ == (3663394i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L723"
                    if (_b_80 == (_inquote_97)) {
                        _gotoNext = 3663406i64;
                    } else if (_inquote_97 != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3663445i64;
                    } else if (((_b_80 == (39 : stdgo.GoUInt8)) || (_b_80 == (34 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3663504i64;
                    } else if (((_b_80 == (62 : stdgo.GoUInt8)) && (_inquote_97 == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3663552i64;
                    } else if (((_b_80 == (60 : stdgo.GoUInt8)) && (_inquote_97 == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3663599i64;
                    } else {
                        _gotoNext = 3663229i64;
                    };
                } else if (__value__ == (3663406i64)) {
                    _inquote_97 = (0 : stdgo.GoUInt8);
                    _gotoNext = 3663229i64;
                } else if (__value__ == (3663445i64)) {
                    _gotoNext = 3663229i64;
                } else if (__value__ == (3663504i64)) {
                    _inquote_97 = _b_80;
                    _gotoNext = 3663229i64;
                } else if (__value__ == (3663552i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L734"
                    _depth_98--;
                    _gotoNext = 3663229i64;
                } else if (__value__ == (3663599i64)) {
                    _s_99 = ("!--" : stdgo.GoString);
                    _i_100 = (0 : stdgo.GoInt);
                    _gotoNext = 3663688i64;
                } else if (__value__ == (3663688i64)) {
                    //"file://#L0"
                    if ((_i_100 < (_s_99.length) : Bool)) {
                        _gotoNext = 3663716i64;
                    } else {
                        _gotoNext = 3663964i64;
                    };
                } else if (__value__ == (3663712i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L739"
                    _i_100++;
                    _gotoNext = 3663688i64;
                } else if (__value__ == (3663716i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L740"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3663752i64;
                        } else {
                            _gotoNext = 3663790i64;
                        };
                    };
                } else if (__value__ == (3663752i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L741"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3663790i64;
                } else if (__value__ == (3663790i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L743"
                    if (_b_80 != (_s_99[(_i_100 : stdgo.GoInt)])) {
                        _gotoNext = 3663803i64;
                    } else {
                        _gotoNext = 3663712i64;
                    };
                } else if (__value__ == (3663803i64)) {
                    _j_101 = (0 : stdgo.GoInt);
                    _gotoNext = 3663811i64;
                } else if (__value__ == (3663811i64)) {
                    //"file://#L0"
                    if ((_j_101 < _i_100 : Bool)) {
                        _gotoNext = 3663834i64;
                    } else {
                        _gotoNext = 3663879i64;
                    };
                } else if (__value__ == (3663834i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L745"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_s_99[(_j_101 : stdgo.GoInt)]);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L744"
                    _j_101++;
                    _gotoNext = 3663811i64;
                } else if (__value__ == (3663879i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L747"
                    _depth_98++;
                    _gotoNext = 3663360i64;
                } else if (__value__ == (3663964i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L753"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.truncate(((@:checkr _d ?? throw "null pointer dereference")._buf.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
                    0i64;
                    _gotoNext = 3664049i64;
                } else if (__value__ == (3664049i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3664053i64;
                    } else {
                        _gotoNext = 3664467i64;
                    };
                } else if (__value__ == (3664053i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L758"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3664089i64;
                        } else {
                            _gotoNext = 3664127i64;
                        };
                    };
                } else if (__value__ == (3664089i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L759"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3664127i64;
                } else if (__value__ == (3664127i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L761"
                    if (((_b0_102 == ((45 : stdgo.GoUInt8)) && _b1_103 == ((45 : stdgo.GoUInt8)) : Bool) && (_b_80 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3664165i64;
                    } else {
                        _gotoNext = 3664191i64;
                    };
                } else if (__value__ == (3664165i64)) {
                    _gotoNext = 3664467i64;
                } else if (__value__ == (3664191i64)) {
                    {
                        final __tmp__0 = _b1_103;
                        final __tmp__1 = _b_80;
                        _b0_102 = @:binopAssign __tmp__0;
                        _b1_103 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3664049i64;
                } else if (__value__ == (3664467i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L771"
                    (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((32 : stdgo.GoUInt8));
                    _gotoNext = 3663229i64;
                } else if (__value__ == (3664499i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L774"
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(((@:checkr _d ?? throw "null pointer dereference")._buf.bytes() : stdgo._internal.encoding.xml.Xml_directive.Directive))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3664589i64;
                } else if (__value__ == (3664589i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L778"
                    _d._ungetc(_b_80);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L785"
                    {
                        {
                            var __tmp__ = _d._nsname();
                            _name_104 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3664684i64;
                        } else {
                            _gotoNext = 3664793i64;
                        };
                    };
                } else if (__value__ == (3664684i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L786"
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3664704i64;
                    } else {
                        _gotoNext = 3664770i64;
                    };
                } else if (__value__ == (3664704i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("expected element name after <" : stdgo.GoString));
                    _gotoNext = 3664770i64;
                } else if (__value__ == (3664770i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L789"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3664793i64;
                } else if (__value__ == (3664793i64)) {
                    _attr_106 = (new stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.xml.Xml_attr.Attr)])) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
                    0i64;
                    _gotoNext = 3664810i64;
                } else if (__value__ == (3664810i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3664814i64;
                    } else {
                        _gotoNext = 3665686i64;
                    };
                } else if (__value__ == (3664814i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L794"
                    _d._space();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L795"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3664859i64;
                        } else {
                            _gotoNext = 3664888i64;
                        };
                    };
                } else if (__value__ == (3664859i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L796"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3664888i64;
                } else if (__value__ == (3664888i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L798"
                    if (_b_80 == ((47 : stdgo.GoUInt8))) {
                        _gotoNext = 3664900i64;
                    } else {
                        _gotoNext = 3665090i64;
                    };
                } else if (__value__ == (3664900i64)) {
                    _empty_105 = true;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L800"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3664950i64;
                        } else {
                            _gotoNext = 3664982i64;
                        };
                    };
                } else if (__value__ == (3664950i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L801"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3664982i64;
                } else if (__value__ == (3664982i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L803"
                    if (_b_80 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3664994i64;
                    } else {
                        _gotoNext = 3665078i64;
                    };
                } else if (__value__ == (3664994i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("expected /> in element" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L805"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3665078i64;
                } else if (__value__ == (3665078i64)) {
                    _gotoNext = 3665686i64;
                } else if (__value__ == (3665090i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L809"
                    if (_b_80 == ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3665102i64;
                    } else {
                        _gotoNext = 3665119i64;
                    };
                } else if (__value__ == (3665102i64)) {
                    _gotoNext = 3665686i64;
                } else if (__value__ == (3665119i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L812"
                    _d._ungetc(_b_80);
                    _a_107 = (new stdgo._internal.encoding.xml.Xml_attr.Attr() : stdgo._internal.encoding.xml.Xml_attr.Attr);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L815"
                    {
                        {
                            var __tmp__ = _d._nsname();
                            _a_107.name = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3665180i64;
                        } else {
                            _gotoNext = 3665299i64;
                        };
                    };
                } else if (__value__ == (3665180i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L816"
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3665201i64;
                    } else {
                        _gotoNext = 3665275i64;
                    };
                } else if (__value__ == (3665201i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("expected attribute name in element" : stdgo.GoString));
                    _gotoNext = 3665275i64;
                } else if (__value__ == (3665275i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L819"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3665299i64;
                } else if (__value__ == (3665299i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L821"
                    _d._space();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L822"
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3665340i64;
                        } else {
                            _gotoNext = 3665369i64;
                        };
                    };
                } else if (__value__ == (3665340i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L823"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3665369i64;
                } else if (__value__ == (3665369i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L825"
                    if (_b_80 != ((61 : stdgo.GoUInt8))) {
                        _gotoNext = 3665381i64;
                    } else {
                        _gotoNext = 3665542i64;
                    };
                } else if (__value__ == (3665381i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L826"
                    if ((@:checkr _d ?? throw "null pointer dereference").strict) {
                        _gotoNext = 3665398i64;
                    } else {
                        _gotoNext = 3665495i64;
                    };
                } else if (__value__ == (3665398i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(("attribute name without = in element" : stdgo.GoString));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L828"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3665495i64;
                } else if (__value__ == (3665495i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L830"
                    _d._ungetc(_b_80);
                    _a_107.value = _a_107.name.local?.__copy__();
                    _gotoNext = 3665659i64;
                } else if (__value__ == (3665542i64)) {
                    _gotoNext = 3665542i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L833"
                    _d._space();
                    _data_108 = _d._attrval();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L835"
                    if (_data_108 == null) {
                        _gotoNext = 3665598i64;
                    } else {
                        _gotoNext = 3665630i64;
                    };
                } else if (__value__ == (3665598i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L836"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3665630i64;
                } else if (__value__ == (3665630i64)) {
                    _a_107.value = (_data_108 : stdgo.GoString)?.__copy__();
                    0i64;
                    _gotoNext = 3665659i64;
                } else if (__value__ == (3665659i64)) {
                    _attr_106 = (_attr_106.__append__(_a_107?.__copy__()) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
                    _gotoNext = 3664810i64;
                } else if (__value__ == (3665686i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L842"
                    if (_empty_105) {
                        _gotoNext = 3665695i64;
                    } else {
                        _gotoNext = 3665741i64;
                    };
                } else if (__value__ == (3665695i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._needClose = true;
                    (@:checkr _d ?? throw "null pointer dereference")._toClose = _name_104?.__copy__();
                    _gotoNext = 3665741i64;
                } else if (__value__ == (3665741i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L846"
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_startelement.StartElement(_name_104?.__copy__(), _attr_106) : stdgo._internal.encoding.xml.Xml_startelement.StartElement))), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function rawToken( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_token.Token; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L541"
        if (((@:checkr _d ?? throw "null pointer dereference")._unmarshalDepth > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L542"
            return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : stdgo._internal.encoding.xml.Xml__errrawtoken._errRawToken };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L544"
        return _d._rawToken();
    }
    @:keep
    @:tdfield
    static public function _autoClose( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _t:stdgo._internal.encoding.xml.Xml_token.Token):{ var _0 : stdgo._internal.encoding.xml.Xml_token.Token; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L519"
        if ((({
            final value = (@:checkr _d ?? throw "null pointer dereference")._stk;
            (value == null || (value : Dynamic).__nil__);
        }) || ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L520"
            return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : false };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L522"
        for (__0 => _s in (@:checkr _d ?? throw "null pointer dereference").autoClose) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L523"
            if (stdgo._internal.strings.Strings_equalfold.equalFold(_s?.__copy__(), (@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._name.local?.__copy__())) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_t : stdgo._internal.encoding.xml.Xml_endelement.EndElement)) : stdgo._internal.encoding.xml.Xml_endelement.EndElement), _1 : true };
                } catch(_) {
                    { _0 : ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement), _1 : false };
                }, _et = __tmp__._0, _ok = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L526"
                if ((!_ok || !stdgo._internal.strings.Strings_equalfold.equalFold(_et.name.local?.__copy__(), (@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._name.local?.__copy__()) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L527"
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_endelement.EndElement((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._name?.__copy__()) : stdgo._internal.encoding.xml.Xml_endelement.EndElement))), _1 : true };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L529"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L532"
        return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : false };
    }
    @:keep
    @:tdfield
    static public function _popElement( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _t:stdgo.Ref<stdgo._internal.encoding.xml.Xml_endelement.EndElement>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _s = _d._pop();
        var _name = ((@:checkr _t ?? throw "null pointer dereference").name?.__copy__() : stdgo._internal.encoding.xml.Xml_name.Name);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L481"
        if ((({
            final value = _s;
            (value == null || (value : Dynamic).__nil__);
        }) || ((@:checkr _s ?? throw "null pointer dereference")._kind != (0 : stdgo.GoInt)) : Bool)) {
            (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(((("unexpected end element </" : stdgo.GoString) + _name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L484"
            return false;
        } else if ((@:checkr _s ?? throw "null pointer dereference")._name.local != (_name.local)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L486"
            if (!(@:checkr _d ?? throw "null pointer dereference").strict) {
                (@:checkr _d ?? throw "null pointer dereference")._needClose = true;
                (@:checkr _d ?? throw "null pointer dereference")._toClose = (@:checkr _t ?? throw "null pointer dereference").name?.__copy__();
                (@:checkr _t ?? throw "null pointer dereference").name = (@:checkr _s ?? throw "null pointer dereference")._name?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L490"
                return true;
            };
            (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError(((((("element <" : stdgo.GoString) + (@:checkr _s ?? throw "null pointer dereference")._name.local?.__copy__() : stdgo.GoString) + ("> closed by </" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L493"
            return false;
        } else if ((@:checkr _s ?? throw "null pointer dereference")._name.space != (_name.space)) {
            (@:checkr _d ?? throw "null pointer dereference")._err = _d._syntaxError((((((((("element <" : stdgo.GoString) + (@:checkr _s ?? throw "null pointer dereference")._name.local?.__copy__() : stdgo.GoString) + ("> in space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _s ?? throw "null pointer dereference")._name.space?.__copy__() : stdgo.GoString) + (" closed by </" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name.local?.__copy__() : stdgo.GoString) + ("> in space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name.space?.__copy__() : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L497"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L500"
        _d._translate((stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference").name) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_name.Name>), true);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L504"
        while (((({
            final value = (@:checkr _d ?? throw "null pointer dereference")._stk;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != ((0 : stdgo.GoInt)) : Bool) && ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != (2 : stdgo.GoInt)) : Bool)) {
            var _s = _d._pop();
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L506"
            if ((@:checkr _s ?? throw "null pointer dereference")._ok) {
                (@:checkr _d ?? throw "null pointer dereference")._ns[(@:checkr _s ?? throw "null pointer dereference")._name.local] = (@:checkr _s ?? throw "null pointer dereference")._name.space?.__copy__();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L509"
                if ((@:checkr _d ?? throw "null pointer dereference")._ns != null) (@:checkr _d ?? throw "null pointer dereference")._ns.__remove__((@:checkr _s ?? throw "null pointer dereference")._name.local);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L513"
        return true;
    }
    @:keep
    @:tdfield
    static public function _syntaxError( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _msg:stdgo.GoString):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L469"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ msg : _msg?.__copy__(), line : (@:checkr _d ?? throw "null pointer dereference")._line } : stdgo._internal.encoding.xml.Xml_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_syntaxerror.SyntaxError>));
    }
    @:keep
    @:tdfield
    static public function _pushNs( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _local:stdgo.GoString, _url:stdgo.GoString, _ok:Bool):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _s = _d._push((1 : stdgo.GoInt));
        (@:checkr _s ?? throw "null pointer dereference")._name.local = _local?.__copy__();
        (@:checkr _s ?? throw "null pointer dereference")._name.space = _url?.__copy__();
        (@:checkr _s ?? throw "null pointer dereference")._ok = _ok;
    }
    @:keep
    @:tdfield
    static public function _pushElement( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _name:stdgo._internal.encoding.xml.Xml_name.Name):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _s = _d._push((0 : stdgo.GoInt));
        (@:checkr _s ?? throw "null pointer dereference")._name = _name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _popEOF( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L445"
        if ((({
            final value = (@:checkr _d ?? throw "null pointer dereference")._stk;
            (value == null || (value : Dynamic).__nil__);
        }) || ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != (2 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L446"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L448"
        _d._pop();
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L449"
        return true;
    }
    @:keep
    @:tdfield
    static public function _pushEOF( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _start = (@:checkr _d ?? throw "null pointer dereference")._stk;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L423"
        while ((@:checkr _start ?? throw "null pointer dereference")._kind != ((0 : stdgo.GoInt))) {
            _start = (@:checkr _start ?? throw "null pointer dereference")._next;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L428"
        while ((({
            final value = (@:checkr _start ?? throw "null pointer dereference")._next;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr (@:checkr _start ?? throw "null pointer dereference")._next ?? throw "null pointer dereference")._kind == (1 : stdgo.GoInt)) : Bool)) {
            _start = (@:checkr _start ?? throw "null pointer dereference")._next;
        };
        var _s = (@:checkr _d ?? throw "null pointer dereference")._free;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L432"
        if (({
            final value = _s;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _d ?? throw "null pointer dereference")._free = (@:checkr _s ?? throw "null pointer dereference")._next;
        } else {
            _s = (stdgo.Go.setRef(({} : stdgo._internal.encoding.xml.Xml_t_stack.T_stack)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack>);
        };
        (@:checkr _s ?? throw "null pointer dereference")._kind = (2 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._next = (@:checkr _start ?? throw "null pointer dereference")._next;
        (@:checkr _start ?? throw "null pointer dereference")._next = _s;
    }
    @:keep
    @:tdfield
    static public function _pop( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _s = (@:checkr _d ?? throw "null pointer dereference")._stk;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L407"
        if (({
            final value = _s;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _d ?? throw "null pointer dereference")._stk = (@:checkr _s ?? throw "null pointer dereference")._next;
            (@:checkr _s ?? throw "null pointer dereference")._next = (@:checkr _d ?? throw "null pointer dereference")._free;
            (@:checkr _d ?? throw "null pointer dereference")._free = _s;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L412"
        return _s;
    }
    @:keep
    @:tdfield
    static public function _push( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _kind:stdgo.GoInt):stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _s = (@:checkr _d ?? throw "null pointer dereference")._free;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L394"
        if (({
            final value = _s;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _d ?? throw "null pointer dereference")._free = (@:checkr _s ?? throw "null pointer dereference")._next;
        } else {
            _s = (stdgo.Go.setRef(({} : stdgo._internal.encoding.xml.Xml_t_stack.T_stack)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack>);
        };
        (@:checkr _s ?? throw "null pointer dereference")._next = (@:checkr _d ?? throw "null pointer dereference")._stk;
        (@:checkr _s ?? throw "null pointer dereference")._kind = _kind;
        (@:checkr _d ?? throw "null pointer dereference")._stk = _s;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L402"
        return _s;
    }
    @:keep
    @:tdfield
    static public function _switchToReader( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _r:stdgo._internal.io.Io_reader.Reader):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L368"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_bytereader.ByteReader)) : stdgo._internal.io.Io_bytereader.ByteReader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_bytereader.ByteReader), _1 : false };
            }, _rb = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _d ?? throw "null pointer dereference")._r = _rb;
            } else {
                (@:checkr _d ?? throw "null pointer dereference")._r = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newreader.newReader(_r));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _translate( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _n:stdgo.Ref<stdgo._internal.encoding.xml.Xml_name.Name>, _isElementName:Bool):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L346"
        if ((@:checkr _n ?? throw "null pointer dereference").space == (("xmlns" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L348"
            return;
        } else if ((((@:checkr _n ?? throw "null pointer dereference").space == (stdgo.Go.str() : stdgo.GoString)) && !_isElementName : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L350"
            return;
        } else if ((@:checkr _n ?? throw "null pointer dereference").space == (("xml" : stdgo.GoString))) {
            (@:checkr _n ?? throw "null pointer dereference").space = ("http://www.w3.org/XML/1998/namespace" : stdgo.GoString);
        } else if ((((@:checkr _n ?? throw "null pointer dereference").space == (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _n ?? throw "null pointer dereference").local == ("xmlns" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L354"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L356"
        {
            var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._ns != null && (@:checkr _d ?? throw "null pointer dereference")._ns.__exists__((@:checkr _n ?? throw "null pointer dereference").space?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._ns[(@:checkr _n ?? throw "null pointer dereference").space?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                (@:checkr _n ?? throw "null pointer dereference").space = _v?.__copy__();
            } else if ((@:checkr _n ?? throw "null pointer dereference").space == ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _n ?? throw "null pointer dereference").space = (@:checkr _d ?? throw "null pointer dereference").defaultSpace?.__copy__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function token( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_token.Token; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _t:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L277"
        if ((({
            final value = (@:checkr _d ?? throw "null pointer dereference")._stk;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind == (2 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L278"
            return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : stdgo._internal.io.Io_eof.eOF };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L280"
        if ((@:checkr _d ?? throw "null pointer dereference")._nextToken != null) {
            _t = (@:checkr _d ?? throw "null pointer dereference")._nextToken;
            (@:checkr _d ?? throw "null pointer dereference")._nextToken = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        } else {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L284"
            {
                {
                    var __tmp__ = _d._rawToken();
                    _t = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (((_t == null) && (_err != null) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L285"
                    if (((stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) && ({
                        final value = (@:checkr _d ?? throw "null pointer dereference")._stk;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) : Bool) && ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != (2 : stdgo.GoInt)) : Bool)) {
                        _err = _d._syntaxError(("unexpected EOF" : stdgo.GoString));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L288"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : _err };
                };
            };
            _err = (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L294"
        if (!(@:checkr _d ?? throw "null pointer dereference").strict) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L295"
            {
                var __tmp__ = _d._autoClose(_t), _t1:stdgo._internal.encoding.xml.Xml_token.Token = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    (@:checkr _d ?? throw "null pointer dereference")._nextToken = _t;
                    _t = _t1;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L300"
        {
            final __type__ = _t;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                var _t1:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L306"
                for (__0 => _a in _t1.attr) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L307"
                    if (_a.name.space == (("xmlns" : stdgo.GoString))) {
                        var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._ns != null && (@:checkr _d ?? throw "null pointer dereference")._ns.__exists__(_a.name.local?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._ns[_a.name.local?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L309"
                        _d._pushNs(_a.name.local?.__copy__(), _v?.__copy__(), _ok);
                        (@:checkr _d ?? throw "null pointer dereference")._ns[_a.name.local] = _a.value?.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L312"
                    if (((_a.name.space == (stdgo.Go.str() : stdgo.GoString)) && (_a.name.local == ("xmlns" : stdgo.GoString)) : Bool)) {
                        var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._ns != null && (@:checkr _d ?? throw "null pointer dereference")._ns.__exists__((stdgo.Go.str() : stdgo.GoString)?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._ns[(stdgo.Go.str() : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L315"
                        _d._pushNs((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _v?.__copy__(), _ok);
                        (@:checkr _d ?? throw "null pointer dereference")._ns[(stdgo.Go.str() : stdgo.GoString)] = _a.value?.__copy__();
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L320"
                _d._pushElement(_t1.name?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L321"
                _d._translate((stdgo.Go.setRef(_t1.name) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_name.Name>), true);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L322"
                for (_i => _ in _t1.attr) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L323"
                    _d._translate((stdgo.Go.setRef(_t1.attr[(_i : stdgo.GoInt)].name) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_name.Name>), false);
                };
                _t = stdgo.Go.toInterface(stdgo.Go.asInterface(_t1));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                var _t1:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L328"
                if (!_d._popElement((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_endelement.EndElement>))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L329"
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                };
                _t = stdgo.Go.toInterface(stdgo.Go.asInterface(_t1));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/xml.go#L333"
        return { _0 : _t, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function skip( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _depth:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L762"
        while (true) {
            var __tmp__ = _d.token(), _tok:stdgo._internal.encoding.xml.Xml_token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L764"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L765"
                return _err;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L767"
            {
                final __type__ = _tok;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L769"
                    _depth++;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L771"
                    if (_depth == ((0i64 : stdgo.GoInt64))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L772"
                        return (null : stdgo.Error);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L774"
                    _depth--;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _unmarshalPath( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>, _sv:stdgo._internal.reflect.Reflect_value.Value, _parents:stdgo.Slice<stdgo.GoString>, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>, _depth:stdgo.GoInt):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _consumed = false, _err = (null : stdgo.Error);
        var _err_65:stdgo.Error = (null : stdgo.Error);
        var _consumed2_63:Bool = false;
        var _t_62:stdgo._internal.encoding.xml.Xml_endelement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement);
        var _finfo_58:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _err_64:stdgo.Error = (null : stdgo.Error);
        var _t_61:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _tok_60:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _j_59:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_57:stdgo.GoInt = (0 : stdgo.GoInt);
        var _recurse_56:Bool = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _t_61;
                    _gotoNext = 3746780i64;
                    _recurse_56 = false;
                    _gotoNext = 3745617i64;
                } else if (__value__ == (3745617i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L697"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3746523i64;
                    } else {
                        _gotoNext = 3746527i64;
                    };
                } else if (__value__ == (3745628i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L697"
                    _i_57++;
                    _gotoNext = 3746524i64;
                } else if (__value__ == (3745652i64)) {
                    _finfo_58 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_57 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L699"
                    if (((((@:checkr _finfo_58 ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || (((@:checkr _finfo_58 ?? throw "null pointer dereference")._parents.length) < (_parents.length) : Bool) : Bool) || ((@:checkr _finfo_58 ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) && (@:checkr _finfo_58 ?? throw "null pointer dereference")._xmlns != ((@:checkr _start ?? throw "null pointer dereference").name.space) : Bool) : Bool)) {
                        _gotoNext = 3745806i64;
                    } else {
                        _gotoNext = 3745826i64;
                    };
                } else if (__value__ == (3745806i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L697"
                    _i_57++;
                    _gotoNext = 3746524i64;
                } else if (__value__ == (3745826i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L702"
                    if ((0i64 : stdgo.GoInt) < (_parents.length)) {
                        _gotoNext = 3745914i64;
                    } else {
                        _gotoNext = 3745919i64;
                    };
                } else if (__value__ == (3745830i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L702"
                    _j_59++;
                    _gotoNext = 3745915i64;
                } else if (__value__ == (3745849i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L703"
                    if (_parents[(_j_59 : stdgo.GoInt)] != ((@:checkr _finfo_58 ?? throw "null pointer dereference")._parents[(_j_59 : stdgo.GoInt)])) {
                        _gotoNext = 3745888i64;
                    } else {
                        _gotoNext = 3745830i64;
                    };
                } else if (__value__ == (3745888i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L697"
                    _i_57++;
                    _gotoNext = 3746524i64;
                } else if (__value__ == (3745914i64)) {
                    _j_59 = 0i64;
                    _gotoNext = 3745915i64;
                } else if (__value__ == (3745915i64)) {
                    //"file://#L0"
                    if (_j_59 < (_parents.length)) {
                        _gotoNext = 3745849i64;
                    } else {
                        _gotoNext = 3745919i64;
                    };
                } else if (__value__ == (3745919i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L707"
                    if ((((@:checkr _finfo_58 ?? throw "null pointer dereference")._parents.length == (_parents.length)) && ((@:checkr _finfo_58 ?? throw "null pointer dereference")._name == (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3745991i64;
                    } else {
                        _gotoNext = 3746126i64;
                    };
                } else if (__value__ == (3745991i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L709"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _d._unmarshal(_finfo_58._value(_sv?.__copy__(), true)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3746126i64;
                } else if (__value__ == (3746126i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L711"
                    if (((((@:checkr _finfo_58 ?? throw "null pointer dereference")._parents.length) > (_parents.length) : Bool) && ((@:checkr _finfo_58 ?? throw "null pointer dereference")._parents[(_parents.length : stdgo.GoInt)] == (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3746214i64;
                    } else {
                        _gotoNext = 3745628i64;
                    };
                } else if (__value__ == (3746214i64)) {
                    _recurse_56 = true;
                    _parents = ((@:checkr _finfo_58 ?? throw "null pointer dereference")._parents.__slice__(0, ((_parents.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 3746527i64;
                } else if (__value__ == (3746523i64)) {
                    _i_57 = 0i64;
                    _gotoNext = 3746524i64;
                } else if (__value__ == (3746524i64)) {
                    //"file://#L0"
                    if (_i_57 < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3745652i64;
                    } else {
                        _gotoNext = 3746527i64;
                    };
                } else if (__value__ == (3746527i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L723"
                    if (!_recurse_56) {
                        _gotoNext = 3746539i64;
                    } else {
                        _gotoNext = 3746780i64;
                    };
                } else if (__value__ == (3746539i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L725"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3746780i64;
                } else if (__value__ == (3746780i64)) {
                    0i64;
                    _gotoNext = 3746780i64;
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3746784i64;
                    } else {
                        _gotoNext = 3747315i64;
                    };
                } else if (__value__ == (3746784i64)) {
                    {
                        var __tmp__ = _d.token();
                        _tok_60 = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L733"
                    if (_err != null) {
                        _gotoNext = 3746841i64;
                    } else {
                        _gotoNext = 3746869i64;
                    };
                } else if (__value__ == (3746841i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L734"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3746869i64;
                } else if (__value__ == (3746869i64)) {
                    0i64;
                    _gotoNext = 3746869i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L736"
                    {
                        final __type__ = _tok_60;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value);
                            _t_61 = _t;
                            _gotoNext = 3746896i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value);
                            _t_62 = _t;
                            _gotoNext = 3747271i64;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_token.Token = __type__?.__underlying__();
                            _gotoNext = 3746780i64;
                        };
                    };
                    _gotoNext = 3746780i64;
                } else if (__value__ == (3746896i64)) {
                    {
                        var __tmp__ = _d._unmarshalPath(_tinfo, _sv?.__copy__(), _parents, (stdgo.Go.setRef(_t_61) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), _depth);
                        _consumed2_63 = @:tmpset0 __tmp__._0;
                        _err_64 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L741"
                    if (_err_64 != null) {
                        _gotoNext = 3747152i64;
                    } else {
                        _gotoNext = 3747183i64;
                    };
                } else if (__value__ == (3747152i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L742"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_64 };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3747183i64;
                } else if (__value__ == (3747183i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L744"
                    if (!_consumed2_63) {
                        _gotoNext = 3747197i64;
                    } else {
                        _gotoNext = 0i64;
                    };
                } else if (__value__ == (3747197i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L745"
                    {
                        _err_65 = _d.skip();
                        if (_err_65 != null) {
                            _gotoNext = 3747234i64;
                        } else {
                            _gotoNext = 0i64;
                        };
                    };
                } else if (__value__ == (3747234i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L746"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_65 };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 0i64;
                } else if (__value__ == (3747271i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L750"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : (null : stdgo.Error) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _t_62;
                    _gotoNext = 3746780i64;
                } else if (__value__ == (3747315i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _unmarshal( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _val:stdgo._internal.reflect.Reflect_value.Value, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>, _depth:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _err_37:stdgo.Error = (null : stdgo.Error);
        var _e_24:stdgo.GoString = ("" : stdgo.GoString);
        var _data_7:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _pv_51:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _finfo_32:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _saveXML_11:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _t_2:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _t_54:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _strv_33:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _any_30:stdgo.GoInt = (0 : stdgo.GoInt);
        var _finfo_23:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _tok_0:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _t_43:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _finfo_39:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _saveAny_14:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _comment_9:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err_1:stdgo.Error = (null : stdgo.Error);
        var _t_46:stdgo._internal.encoding.xml.Xml_comment.Comment = (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment);
        var _finfo_35:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _err_17:stdgo.Error = (null : stdgo.Error);
        var _strv_36:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _e_4:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _ok_3:Bool = false;
        var _err_50:stdgo.Error = (null : stdgo.Error);
        var _consumed_47:Bool = false;
        var _fv_25:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _saveXMLData_13:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _t_55:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var loopBreak = false;
        var _saveData_8:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _pv_5:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _err_53:stdgo.Error = (null : stdgo.Error);
        var _t_44:stdgo._internal.encoding.xml.Xml_endelement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement);
        var _savedOffset_40:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tok_41:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _typ_19:stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
        var _saveComment_10:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _err_52:stdgo.Error = (null : stdgo.Error);
        var _i_31:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_20:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pv_6:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _t_45:stdgo._internal.encoding.xml.Xml_chardata.CharData = (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData);
        var _err_21:stdgo.Error = (null : stdgo.Error);
        var _tinfo_16:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>);
        var _sv_15:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _err_49:stdgo.Error = (null : stdgo.Error);
        var _iterator_3740012_27:stdgo.GoInt = (0 : stdgo.GoInt);
        var _a_28:stdgo._internal.encoding.xml.Xml_attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_attr.Attr);
        var _err_48:stdgo.Error = (null : stdgo.Error);
        var _handled_29:Bool = false;
        var _v_18:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _ok_26:Bool = false;
        var _typ_22:stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
        var _saveXMLIndex_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_42:stdgo.Error = (null : stdgo.Error);
        var _i_38:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_34:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _t_43;
                    _gotoNext = 3741507i64;
                    _t_45;
                    _gotoNext = 3741507i64;
                    _t_46;
                    _gotoNext = 3741507i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L322"
                    if (((_depth >= (10000 : stdgo.GoInt) : Bool) || (true && (_depth >= (5000 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3736509i64;
                    } else {
                        _gotoNext = 3736580i64;
                    };
                } else if (__value__ == (3736509i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L323"
                    return stdgo._internal.encoding.xml.Xml__errunmarshaldepth._errUnmarshalDepth;
                    _gotoNext = 3736580i64;
                } else if (__value__ == (3736580i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L326"
                    if (({
                        final value = _start;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        _gotoNext = 3736596i64;
                    } else {
                        _gotoNext = 3736837i64;
                    };
                } else if (__value__ == (3736596i64)) {
                    0i64;
                    _gotoNext = 3736600i64;
                } else if (__value__ == (3736600i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3736604i64;
                    } else {
                        _gotoNext = 3736837i64;
                    };
                } else if (__value__ == (3736604i64)) {
                    {
                        var __tmp__ = _d.token();
                        _tok_0 = @:tmpset0 __tmp__._0;
                        _err_1 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L329"
                    if (_err_1 != null) {
                        _gotoNext = 3736648i64;
                    } else {
                        _gotoNext = 3736673i64;
                    };
                } else if (__value__ == (3736648i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L330"
                    return _err_1;
                    _gotoNext = 3736673i64;
                } else if (__value__ == (3736673i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L332"
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_tok_0 : stdgo._internal.encoding.xml.Xml_startelement.StartElement)) : stdgo._internal.encoding.xml.Xml_startelement.StartElement), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement), _1 : false };
                            };
                            _t_2 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3) {
                            _gotoNext = 3736708i64;
                        } else {
                            _gotoNext = 3736600i64;
                        };
                    };
                } else if (__value__ == (3736708i64)) {
                    _start = (stdgo.Go.setRef(_t_2) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>);
                    _gotoNext = 3736837i64;
                } else if (__value__ == (3736837i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L341"
                    if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_val.isNil() : Bool)) {
                        _gotoNext = 3736888i64;
                    } else {
                        _gotoNext = 3736977i64;
                    };
                } else if (__value__ == (3736888i64)) {
                    _e_4 = _val.elem()?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L343"
                    if (((_e_4.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_e_4.isNil() : Bool)) {
                        _gotoNext = 3736955i64;
                    } else {
                        _gotoNext = 3736977i64;
                    };
                } else if (__value__ == (3736955i64)) {
                    _val = _e_4?.__copy__();
                    _gotoNext = 3736977i64;
                } else if (__value__ == (3736977i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L348"
                    if (_val.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 3737010i64;
                    } else {
                        _gotoNext = 3737102i64;
                    };
                } else if (__value__ == (3737010i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L349"
                    if (_val.isNil()) {
                        _gotoNext = 3737029i64;
                    } else {
                        _gotoNext = 3737080i64;
                    };
                } else if (__value__ == (3737029i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L350"
                    _val.set(stdgo._internal.reflect.Reflect_new_.new_(_val.type().elem())?.__copy__());
                    _gotoNext = 3737080i64;
                } else if (__value__ == (3737080i64)) {
                    _val = _val.elem()?.__copy__();
                    _gotoNext = 3737102i64;
                } else if (__value__ == (3737102i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L355"
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalertype._unmarshalerType) : Bool)) {
                        _gotoNext = 3737166i64;
                    } else {
                        _gotoNext = 3737362i64;
                    };
                } else if (__value__ == (3737166i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L358"
                    return _d._unmarshalInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3737362i64;
                } else if (__value__ == (3737362i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L361"
                    if (_val.canAddr()) {
                        _gotoNext = 3737379i64;
                    } else {
                        _gotoNext = 3737543i64;
                    };
                } else if (__value__ == (3737379i64)) {
                    _pv_5 = _val.addr()?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L363"
                    if ((_pv_5.canInterface() && _pv_5.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalertype._unmarshalerType) : Bool)) {
                        _gotoNext = 3737464i64;
                    } else {
                        _gotoNext = 3737543i64;
                    };
                } else if (__value__ == (3737464i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L364"
                    return _d._unmarshalInterface((stdgo.Go.typeAssert((_pv_5.interface_() : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3737543i64;
                } else if (__value__ == (3737543i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L368"
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3737611i64;
                    } else {
                        _gotoNext = 3737696i64;
                    };
                } else if (__value__ == (3737611i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L369"
                    return _d._unmarshalTextInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler));
                    _gotoNext = 3737696i64;
                } else if (__value__ == (3737696i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L372"
                    if (_val.canAddr()) {
                        _gotoNext = 3737713i64;
                    } else {
                        _gotoNext = 3737891i64;
                    };
                } else if (__value__ == (3737713i64)) {
                    _pv_6 = _val.addr()?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L374"
                    if ((_pv_6.canInterface() && _pv_6.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3737802i64;
                    } else {
                        _gotoNext = 3737891i64;
                    };
                } else if (__value__ == (3737802i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L375"
                    return _d._unmarshalTextInterface((stdgo.Go.typeAssert((_pv_6.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler));
                    _gotoNext = 3737891i64;
                } else if (__value__ == (3737891i64)) {
                    _gotoNext = 3738178i64;
                } else if (__value__ == (3738178i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L393"
                    {
                        _v_18 = _val?.__copy__();
                        {
                            final __value__ = _v_18.kind();
                            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3738275i64;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3738469i64;
                            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3738838i64;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3739090i64;
                            } else {
                                _gotoNext = 3738207i64;
                            };
                        };
                    };
                } else if (__value__ == (3738207i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L395"
                    return stdgo._internal.errors.Errors_new_.new_((("unknown type " : stdgo.GoString) + (_v_18.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 3741500i64;
                } else if (__value__ == (3738275i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L401"
                    return _d.skip();
                    _gotoNext = 3741500i64;
                } else if (__value__ == (3738469i64)) {
                    _typ_19 = _v_18.type();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L405"
                    if (_typ_19.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 3738547i64;
                    } else {
                        _gotoNext = 3738641i64;
                    };
                } else if (__value__ == (3738547i64)) {
                    _saveData_8 = _v_18?.__copy__();
                    _gotoNext = 3741500i64;
                } else if (__value__ == (3738641i64)) {
                    _n_20 = _v_18.len();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L414"
                    _v_18.grow((1 : stdgo.GoInt));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L415"
                    _v_18.setLen((_n_20 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L418"
                    {
                        _err_21 = _d._unmarshal(_v_18.index(_n_20)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_21 != null) {
                            _gotoNext = 3738788i64;
                        } else {
                            _gotoNext = 3738825i64;
                        };
                    };
                } else if (__value__ == (3738788i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L419"
                    _v_18.setLen(_n_20);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L420"
                    return _err_21;
                    _gotoNext = 3738825i64;
                } else if (__value__ == (3738825i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L422"
                    return (null : stdgo.Error);
                    _gotoNext = 3741500i64;
                } else if (__value__ == (3738838i64)) {
                    _saveData_8 = _v_18?.__copy__();
                    _gotoNext = 3741500i64;
                } else if (__value__ == (3739090i64)) {
                    _typ_22 = _v_18.type();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L429"
                    if ((_typ_22.string() : String) == (stdgo._internal.encoding.xml.Xml__nametype._nameType.string() : String)) {
                        _gotoNext = 3739150i64;
                    } else {
                        _gotoNext = 3739206i64;
                    };
                } else if (__value__ == (3739150i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L430"
                    _v_18.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _start ?? throw "null pointer dereference").name)))?.__copy__());
                    _gotoNext = 3741500i64;
                } else if (__value__ == (3739206i64)) {
                    _sv_15 = _v_18?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.encoding.xml.Xml__gettypeinfo._getTypeInfo(_typ_22);
                        _tinfo_16 = @:tmpset0 __tmp__._0;
                        _err_17 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L436"
                    if (_err_17 != null) {
                        _gotoNext = 3739261i64;
                    } else {
                        _gotoNext = 3739323i64;
                    };
                } else if (__value__ == (3739261i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L437"
                    return _err_17;
                    _gotoNext = 3739323i64;
                } else if (__value__ == (3739323i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L441"
                    if (({
                        final value = (@:checkr _tinfo_16 ?? throw "null pointer dereference")._xmlname;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _gotoNext = 3739347i64;
                    } else {
                        _gotoNext = 3740000i64;
                    };
                } else if (__value__ == (3739347i64)) {
                    _finfo_23 = (@:checkr _tinfo_16 ?? throw "null pointer dereference")._xmlname;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L443"
                    if ((((@:checkr _finfo_23 ?? throw "null pointer dereference")._name != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _finfo_23 ?? throw "null pointer dereference")._name != (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3739432i64;
                    } else {
                        _gotoNext = 3739550i64;
                    };
                } else if (__value__ == (3739432i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L444"
                    return stdgo.Go.asInterface((((((("expected element type <" : stdgo.GoString) + (@:checkr _finfo_23 ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString) + ("> but have <" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _start ?? throw "null pointer dereference").name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.encoding.xml.Xml_unmarshalerror.UnmarshalError));
                    _gotoNext = 3739550i64;
                } else if (__value__ == (3739550i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L446"
                    if ((((@:checkr _finfo_23 ?? throw "null pointer dereference")._xmlns != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _finfo_23 ?? throw "null pointer dereference")._xmlns != (@:checkr _start ?? throw "null pointer dereference").name.space) : Bool)) {
                        _gotoNext = 3739606i64;
                    } else {
                        _gotoNext = 3739842i64;
                    };
                } else if (__value__ == (3739606i64)) {
                    _e_24 = ((((("expected element <" : stdgo.GoString) + (@:checkr _finfo_23 ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString) + ("> in name space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _finfo_23 ?? throw "null pointer dereference")._xmlns?.__copy__() : stdgo.GoString) + (" but have " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L448"
                    if ((@:checkr _start ?? throw "null pointer dereference").name.space == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3739731i64;
                    } else {
                        _gotoNext = 3739770i64;
                    };
                } else if (__value__ == (3739731i64)) {
                    _e_24 = (_e_24 + (("no name space" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3739809i64;
                } else if (__value__ == (3739770i64)) {
                    _gotoNext = 3739770i64;
                    _e_24 = (_e_24 + ((@:checkr _start ?? throw "null pointer dereference").name.space)?.__copy__() : stdgo.GoString);
                    0i64;
                    _gotoNext = 3739809i64;
                } else if (__value__ == (3739809i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L453"
                    return stdgo.Go.asInterface((_e_24 : stdgo._internal.encoding.xml.Xml_unmarshalerror.UnmarshalError));
                    _gotoNext = 3739842i64;
                } else if (__value__ == (3739842i64)) {
                    _fv_25 = _finfo_23._value(_sv_15?.__copy__(), true)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L456"
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_fv_25.interface_() : stdgo._internal.encoding.xml.Xml_name.Name)) : stdgo._internal.encoding.xml.Xml_name.Name), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_name.Name), _1 : false };
                            };
                            _ok_26 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_26) {
                            _gotoNext = 3739922i64;
                        } else {
                            _gotoNext = 3740000i64;
                        };
                    };
                } else if (__value__ == (3739922i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L457"
                    _fv_25.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _start ?? throw "null pointer dereference").name)))?.__copy__());
                    _gotoNext = 3740000i64;
                } else if (__value__ == (3740000i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L462"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _start ?? throw "null pointer dereference").attr.length)) {
                        _gotoNext = 3740685i64;
                    } else {
                        _gotoNext = 3740758i64;
                    };
                } else if (__value__ == (3740004i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L462"
                    _iterator_3740012_27++;
                    _gotoNext = 3740686i64;
                } else if (__value__ == (3740029i64)) {
                    _a_28 = (@:checkr _start ?? throw "null pointer dereference").attr[(_iterator_3740012_27 : stdgo.GoInt)];
                    _handled_29 = false;
                    _any_30 = (-1 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L465"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3740495i64;
                    } else {
                        _gotoNext = 3740501i64;
                    };
                } else if (__value__ == (3740071i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L465"
                    _i_31++;
                    _gotoNext = 3740496i64;
                } else if (__value__ == (3740095i64)) {
                    _finfo_32 = (stdgo.Go.setRef((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields[(_i_31 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _gotoNext = 3740131i64;
                } else if (__value__ == (3740131i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L467"
                    {
                        final __value__ = ((@:checkr _finfo_32 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                        if (__value__ == ((2 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3740164i64;
                        } else if (__value__ == ((66 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3740427i64;
                        } else {
                            _gotoNext = 3740071i64;
                        };
                    };
                } else if (__value__ == (3740164i64)) {
                    _strv_33 = _finfo_32._value(_sv_15?.__copy__(), true)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L470"
                    if (((_a_28.name.local == (@:checkr _finfo_32 ?? throw "null pointer dereference")._name) && ((((@:checkr _finfo_32 ?? throw "null pointer dereference")._xmlns == (stdgo.Go.str() : stdgo.GoString)) || ((@:checkr _finfo_32 ?? throw "null pointer dereference")._xmlns == _a_28.name.space) : Bool)) : Bool)) {
                        _gotoNext = 3740311i64;
                    } else {
                        _gotoNext = 3740071i64;
                    };
                } else if (__value__ == (3740311i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L471"
                    {
                        _err_34 = _d._unmarshalAttr(_strv_33?.__copy__(), _a_28?.__copy__());
                        if (_err_34 != null) {
                            _gotoNext = 3740366i64;
                        } else {
                            _gotoNext = 3740400i64;
                        };
                    };
                } else if (__value__ == (3740366i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L472"
                    return _err_34;
                    _gotoNext = 3740400i64;
                } else if (__value__ == (3740400i64)) {
                    _handled_29 = true;
                    _gotoNext = 3740071i64;
                } else if (__value__ == (3740427i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L478"
                    if (_any_30 == ((-1 : stdgo.GoInt))) {
                        _gotoNext = 3740464i64;
                    } else {
                        _gotoNext = 3740071i64;
                    };
                } else if (__value__ == (3740464i64)) {
                    _any_30 = _i_31;
                    _gotoNext = 3740071i64;
                } else if (__value__ == (3740495i64)) {
                    _i_31 = 0i64;
                    _gotoNext = 3740496i64;
                } else if (__value__ == (3740496i64)) {
                    //"file://#L0"
                    if (_i_31 < ((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3740095i64;
                    } else {
                        _gotoNext = 3740501i64;
                    };
                } else if (__value__ == (3740501i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L483"
                    if ((!_handled_29 && (_any_30 >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3740525i64;
                    } else {
                        _gotoNext = 3740004i64;
                    };
                } else if (__value__ == (3740525i64)) {
                    _finfo_35 = (stdgo.Go.setRef((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields[(_any_30 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _strv_36 = _finfo_35._value(_sv_15?.__copy__(), true)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L486"
                    {
                        _err_37 = _d._unmarshalAttr(_strv_36?.__copy__(), _a_28?.__copy__());
                        if (_err_37 != null) {
                            _gotoNext = 3740655i64;
                        } else {
                            _gotoNext = 3740004i64;
                        };
                    };
                } else if (__value__ == (3740655i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L487"
                    return _err_37;
                    _gotoNext = 3740004i64;
                } else if (__value__ == (3740685i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _start ?? throw "null pointer dereference").attr[(0i64 : stdgo.GoInt)];
                        _iterator_3740012_27 = @:binopAssign __tmp__0;
                        _a_28 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3740686i64;
                } else if (__value__ == (3740686i64)) {
                    //"file://#L0"
                    if (_iterator_3740012_27 < ((@:checkr _start ?? throw "null pointer dereference").attr.length)) {
                        _gotoNext = 3740029i64;
                    } else {
                        _gotoNext = 3740758i64;
                    };
                } else if (__value__ == (3740758i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L493"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3741431i64;
                    } else {
                        _gotoNext = 3741500i64;
                    };
                } else if (__value__ == (3740762i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L493"
                    _i_38++;
                    _gotoNext = 3741432i64;
                } else if (__value__ == (3740786i64)) {
                    _finfo_39 = (stdgo.Go.setRef((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields[(_i_38 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _gotoNext = 3740820i64;
                } else if (__value__ == (3740820i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L495"
                    {
                        final __value__ = ((@:checkr _finfo_39 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                        if (__value__ == ((4 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3740852i64;
                        } else if (__value__ == ((32 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3740964i64;
                        } else if (__value__ == ((64 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((65 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3741073i64;
                        } else if (__value__ == ((16 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3741187i64;
                        } else {
                            _gotoNext = 3740762i64;
                        };
                    };
                } else if (__value__ == (3740852i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L497"
                    if (!_saveData_8.isValid()) {
                        _gotoNext = 3740903i64;
                    } else {
                        _gotoNext = 3740762i64;
                    };
                } else if (__value__ == (3740903i64)) {
                    _saveData_8 = _finfo_39._value(_sv_15?.__copy__(), true)?.__copy__();
                    _gotoNext = 3740762i64;
                } else if (__value__ == (3740964i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L502"
                    if (!_saveComment_10.isValid()) {
                        _gotoNext = 3741009i64;
                    } else {
                        _gotoNext = 3740762i64;
                    };
                } else if (__value__ == (3741009i64)) {
                    _saveComment_10 = _finfo_39._value(_sv_15?.__copy__(), true)?.__copy__();
                    _gotoNext = 3740762i64;
                } else if (__value__ == (3741073i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L507"
                    if (!_saveAny_14.isValid()) {
                        _gotoNext = 3741127i64;
                    } else {
                        _gotoNext = 3740762i64;
                    };
                } else if (__value__ == (3741127i64)) {
                    _saveAny_14 = _finfo_39._value(_sv_15?.__copy__(), true)?.__copy__();
                    _gotoNext = 3740762i64;
                } else if (__value__ == (3741187i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L512"
                    if (!_saveXML_11.isValid()) {
                        _gotoNext = 3741229i64;
                    } else {
                        _gotoNext = 3740762i64;
                    };
                } else if (__value__ == (3741229i64)) {
                    _saveXML_11 = _finfo_39._value(_sv_15?.__copy__(), true)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L514"
                    if (({
                        final value = (@:checkr _d ?? throw "null pointer dereference")._saved;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        _gotoNext = 3741302i64;
                    } else {
                        _gotoNext = 3741373i64;
                    };
                } else if (__value__ == (3741302i64)) {
                    _saveXMLIndex_12 = (0 : stdgo.GoInt);
                    (@:checkr _d ?? throw "null pointer dereference")._saved = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
                    _gotoNext = 3740762i64;
                } else if (__value__ == (3741373i64)) {
                    _gotoNext = 3741373i64;
                    _saveXMLIndex_12 = _d._savedOffset();
                    0i64;
                    _gotoNext = 3740762i64;
                } else if (__value__ == (3741431i64)) {
                    _i_38 = 0i64;
                    _gotoNext = 3741432i64;
                } else if (__value__ == (3741432i64)) {
                    //"file://#L0"
                    if (_i_38 < ((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3740786i64;
                    } else {
                        _gotoNext = 3741500i64;
                    };
                } else if (__value__ == (3741500i64)) {
                    _gotoNext = 3741500i64;
                    0i64;
                    loopBreak = false;
                    _gotoNext = 3741507i64;
                } else if (__value__ == (3741507i64)) {
                    //"file://#L0"
                    if (!loopBreak) {
                        _gotoNext = 3741511i64;
                    } else {
                        _gotoNext = 3742596i64;
                    };
                } else if (__value__ == (3741511i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L530"
                    if (_saveXML_11.isValid()) {
                        _gotoNext = 3741558i64;
                    } else {
                        _gotoNext = 3741599i64;
                    };
                } else if (__value__ == (3741558i64)) {
                    _savedOffset_40 = _d._savedOffset();
                    _gotoNext = 3741599i64;
                } else if (__value__ == (3741599i64)) {
                    {
                        var __tmp__ = _d.token();
                        _tok_41 = @:tmpset0 __tmp__._0;
                        _err_42 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L534"
                    if (_err_42 != null) {
                        _gotoNext = 3741637i64;
                    } else {
                        _gotoNext = 3741659i64;
                    };
                } else if (__value__ == (3741637i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L535"
                    return _err_42;
                    _gotoNext = 3741659i64;
                } else if (__value__ == (3741659i64)) {
                    0i64;
                    _gotoNext = 3741659i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L537"
                    {
                        final __type__ = _tok_41;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value);
                            _t_43 = _t;
                            _gotoNext = 3741686i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value);
                            _t_44 = _t;
                            _gotoNext = 3742245i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_chardata.CharData))) {
                            var _t:stdgo._internal.encoding.xml.Xml_chardata.CharData = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__().value);
                            _t_45 = _t;
                            _gotoNext = 3742422i64;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_comment.Comment))) {
                            var _t:stdgo._internal.encoding.xml.Xml_comment.Comment = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : __type__.__underlying__().value);
                            _t_46 = _t;
                            _gotoNext = 3742502i64;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_token.Token = __type__?.__underlying__();
                            _gotoNext = 3741507i64;
                        };
                    };
                    _gotoNext = 3741507i64;
                } else if (__value__ == (3741686i64)) {
                    _consumed_47 = false;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L540"
                    if (_sv_15.isValid()) {
                        _gotoNext = 3741745i64;
                    } else {
                        _gotoNext = 3742163i64;
                    };
                } else if (__value__ == (3741745i64)) {
                    {
                        var __tmp__ = _d._unmarshalPath(_tinfo_16, _sv_15?.__copy__(), (null : stdgo.Slice<stdgo.GoString>), (stdgo.Go.setRef(_t_43) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), _depth);
                        _consumed_47 = @:tmpset0 __tmp__._0;
                        _err_42 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L544"
                    if (_err_42 != null) {
                        _gotoNext = 3741977i64;
                    } else {
                        _gotoNext = 3742005i64;
                    };
                } else if (__value__ == (3741977i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L545"
                    return _err_42;
                    _gotoNext = 3742005i64;
                } else if (__value__ == (3742005i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L547"
                    if ((!_consumed_47 && _saveAny_14.isValid() : Bool)) {
                        _gotoNext = 3742039i64;
                    } else {
                        _gotoNext = 3742163i64;
                    };
                } else if (__value__ == (3742039i64)) {
                    _consumed_47 = true;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L549"
                    {
                        _err_48 = _d._unmarshal(_saveAny_14?.__copy__(), (stdgo.Go.setRef(_t_43) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_48 != null) {
                            _gotoNext = 3742123i64;
                        } else {
                            _gotoNext = 3742163i64;
                        };
                    };
                } else if (__value__ == (3742123i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L550"
                    return _err_48;
                    _gotoNext = 3742163i64;
                } else if (__value__ == (3742163i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L554"
                    if (!_consumed_47) {
                        _gotoNext = 3742176i64;
                    } else {
                        _gotoNext = 0i64;
                    };
                } else if (__value__ == (3742176i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L555"
                    {
                        _err_49 = _d.skip();
                        if (_err_49 != null) {
                            _gotoNext = 3742213i64;
                        } else {
                            _gotoNext = 0i64;
                        };
                    };
                } else if (__value__ == (3742213i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L556"
                    return _err_49;
                    _gotoNext = 0i64;
                } else if (__value__ == (3742245i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L561"
                    if (_saveXML_11.isValid()) {
                        _gotoNext = 3742286i64;
                    } else {
                        _gotoNext = 3742408i64;
                    };
                } else if (__value__ == (3742286i64)) {
                    _saveXMLData_13 = ((@:checkr _d ?? throw "null pointer dereference")._saved.bytes().__slice__(_saveXMLIndex_12, _savedOffset_40) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L563"
                    if (_saveXMLIndex_12 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3742373i64;
                    } else {
                        _gotoNext = 3742408i64;
                    };
                } else if (__value__ == (3742373i64)) {
                    (@:checkr _d ?? throw "null pointer dereference")._saved = null;
                    _gotoNext = 3742408i64;
                } else if (__value__ == (3742408i64)) {
                    loopBreak = true;
                    _gotoNext = 3741507i64;
                } else if (__value__ == (3742422i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L570"
                    if (_saveData_8.isValid()) {
                        _gotoNext = 3742462i64;
                    } else {
                        _gotoNext = 0i64;
                    };
                } else if (__value__ == (3742462i64)) {
                    _data_7 = (_data_7.__append__(...(_t_45 : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 0i64;
                } else if (__value__ == (3742502i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L575"
                    if (_saveComment_10.isValid()) {
                        _gotoNext = 3742544i64;
                    } else {
                        _gotoNext = 0i64;
                    };
                } else if (__value__ == (3742544i64)) {
                    _comment_9 = (_comment_9.__append__(...(_t_46 : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 0i64;
                } else if (__value__ == (3742596i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L581"
                    if (((_saveData_8.isValid() && _saveData_8.canInterface() : Bool) && _saveData_8.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3742696i64;
                    } else {
                        _gotoNext = 3742844i64;
                    };
                } else if (__value__ == (3742696i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L582"
                    {
                        _err_50 = (stdgo.Go.typeAssert((_saveData_8.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText(_data_7);
                        if (_err_50 != null) {
                            _gotoNext = 3742790i64;
                        } else {
                            _gotoNext = 3742812i64;
                        };
                    };
                } else if (__value__ == (3742790i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L583"
                    return _err_50;
                    _gotoNext = 3742812i64;
                } else if (__value__ == (3742812i64)) {
                    _saveData_8 = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
                    _gotoNext = 3742844i64;
                } else if (__value__ == (3742844i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L588"
                    if ((_saveData_8.isValid() && _saveData_8.canAddr() : Bool)) {
                        _gotoNext = 3742888i64;
                    } else {
                        _gotoNext = 3743132i64;
                    };
                } else if (__value__ == (3742888i64)) {
                    _pv_51 = _saveData_8.addr()?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L590"
                    if ((_pv_51.canInterface() && _pv_51.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3742982i64;
                    } else {
                        _gotoNext = 3743132i64;
                    };
                } else if (__value__ == (3742982i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L591"
                    {
                        _err_52 = (stdgo.Go.typeAssert((_pv_51.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText(_data_7);
                        if (_err_52 != null) {
                            _gotoNext = 3743071i64;
                        } else {
                            _gotoNext = 3743096i64;
                        };
                    };
                } else if (__value__ == (3743071i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L592"
                    return _err_52;
                    _gotoNext = 3743096i64;
                } else if (__value__ == (3743096i64)) {
                    _saveData_8 = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
                    _gotoNext = 3743132i64;
                } else if (__value__ == (3743132i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L598"
                    {
                        _err_53 = stdgo._internal.encoding.xml.Xml__copyvalue._copyValue(_saveData_8?.__copy__(), _data_7);
                        if (_err_53 != null) {
                            _gotoNext = 3743180i64;
                        } else {
                            _gotoNext = 3743200i64;
                        };
                    };
                } else if (__value__ == (3743180i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L599"
                    return _err_53;
                    _gotoNext = 3743200i64;
                } else if (__value__ == (3743200i64)) {
                    _gotoNext = 3743200i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L602"
                    {
                        _t_54 = _saveComment_10?.__copy__();
                        {
                            final __value__ = _t_54.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3743237i64;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3743290i64;
                            } else {
                                _gotoNext = 3743349i64;
                            };
                        };
                    };
                } else if (__value__ == (3743237i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L604"
                    _t_54.setString((_comment_9 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3743349i64;
                } else if (__value__ == (3743290i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L606"
                    _t_54.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_comment_9))?.__copy__());
                    _gotoNext = 3743349i64;
                } else if (__value__ == (3743349i64)) {
                    _gotoNext = 3743349i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L609"
                    {
                        _t_55 = _saveXML_11?.__copy__();
                        {
                            final __value__ = _t_55.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3743382i64;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3743439i64;
                            } else {
                                _gotoNext = 3743554i64;
                            };
                        };
                    };
                } else if (__value__ == (3743382i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L611"
                    _t_55.setString((_saveXMLData_13 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3743554i64;
                } else if (__value__ == (3743439i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L613"
                    if (_t_55.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 3743504i64;
                    } else {
                        _gotoNext = 3743554i64;
                    };
                } else if (__value__ == (3743504i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L614"
                    _t_55.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_saveXMLData_13))?.__copy__());
                    _gotoNext = 3743554i64;
                } else if (__value__ == (3743554i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L618"
                    return (null : stdgo.Error);
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _unmarshalAttr( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _val:stdgo._internal.reflect.Reflect_value.Value, _attr:stdgo._internal.encoding.xml.Xml_attr.Attr):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L252"
        if (_val.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L253"
            if (_val.isNil()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L254"
                _val.set(stdgo._internal.reflect.Reflect_new_.new_(_val.type().elem())?.__copy__());
            };
            _val = _val.elem()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L258"
        if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerattrtype._unmarshalerAttrType) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L261"
            return (stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_unmarshalerattr.UnmarshalerAttr)) : stdgo._internal.encoding.xml.Xml_unmarshalerattr.UnmarshalerAttr).unmarshalXMLAttr(_attr?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L263"
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L265"
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerattrtype._unmarshalerAttrType) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L266"
                return (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.xml.Xml_unmarshalerattr.UnmarshalerAttr)) : stdgo._internal.encoding.xml.Xml_unmarshalerattr.UnmarshalerAttr).unmarshalXMLAttr(_attr?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L271"
        if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L274"
            return (stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText((_attr.value : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L276"
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L278"
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L279"
                return (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText((_attr.value : stdgo.Slice<stdgo.GoUInt8>));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L283"
        if (((_val.type().kind() == (23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_val.type().elem().kind() != (8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            var _n = (_val.len() : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L287"
            _val.grow((1 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L288"
            _val.setLen((_n + (1 : stdgo.GoInt) : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L291"
            {
                var _err = (_d._unmarshalAttr(_val.index(_n)?.__copy__(), _attr?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L292"
                    _val.setLen(_n);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L293"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L295"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L298"
        if ((_val.type().string() : String) == (stdgo._internal.encoding.xml.Xml__attrtype._attrType.string() : String)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L299"
            _val.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_attr)))?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L300"
            return (null : stdgo.Error);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L303"
        return stdgo._internal.encoding.xml.Xml__copyvalue._copyValue(_val?.__copy__(), (_attr.value : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _unmarshalTextInterface( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _val:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _depth = (1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L231"
        while ((_depth > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = _d.token(), _t:stdgo._internal.encoding.xml.Xml_token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L233"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L234"
                return _err;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L236"
            {
                final __type__ = _t;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_chardata.CharData))) {
                    var _t:stdgo._internal.encoding.xml.Xml_chardata.CharData = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L238"
                    if (_depth == ((1 : stdgo.GoInt))) {
                        _buf = (_buf.__append__(...(_t : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                    var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L242"
                    _depth++;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                    var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L244"
                    _depth--;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L247"
        return _val.unmarshalText(_buf);
    }
    @:keep
    @:tdfield
    static public function _unmarshalInterface( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _val:stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L208"
        _d._pushEOF();
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L210"
        (@:checkr _d ?? throw "null pointer dereference")._unmarshalDepth++;
        var _err = (_val.unmarshalXML(_d, (_start : stdgo._internal.encoding.xml.Xml_startelement.StartElement)?.__copy__()) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L212"
        (@:checkr _d ?? throw "null pointer dereference")._unmarshalDepth--;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L213"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L214"
            _d._popEOF();
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L215"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L218"
        if (!_d._popEOF()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L219"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: %s.UnmarshalXML did not consume entire <%s> element" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.xml.Xml__receivertype._receiverType(stdgo.Go.toInterface(_val))), stdgo.Go.toInterface((@:checkr _start ?? throw "null pointer dereference").name.local));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L222"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function decodeElement( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _v:stdgo.AnyInterface, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _val = (stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L149"
        if (_val.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L150"
            return stdgo._internal.errors.Errors_new_.new_(("non-pointer passed to Unmarshal" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L153"
        if (_val.isNil()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L154"
            return stdgo._internal.errors.Errors_new_.new_(("nil pointer passed to Unmarshal" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L156"
        return _d._unmarshal(_val.elem()?.__copy__(), _start, (0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function decode( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L140"
        return _d.decodeElement(_v, null);
    }
}
