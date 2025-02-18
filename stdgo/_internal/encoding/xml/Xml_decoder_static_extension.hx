package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    @:tdfield
    static public function _readName( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _ok = false;
        var _b:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            {
                var __tmp__ = @:check2r _d._mustgetc();
                _b = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if (!_ok) {
                return _ok;
            };
        };
        if (((_b < (128 : stdgo.GoUInt8) : Bool) && !stdgo._internal.encoding.xml.Xml__isnamebyte._isNameByte(_b) : Bool)) {
            @:check2r _d._ungetc(_b);
            return _ok = false;
        };
        @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b);
        while (true) {
            {
                {
                    var __tmp__ = @:check2r _d._mustgetc();
                    _b = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                if (!_ok) {
                    return _ok;
                };
            };
            if (((_b < (128 : stdgo.GoUInt8) : Bool) && !stdgo._internal.encoding.xml.Xml__isnamebyte._isNameByte(_b) : Bool)) {
                @:check2r _d._ungetc(_b);
                break;
            };
            @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b);
        };
        return _ok = true;
    }
    @:keep
    @:tdfield
    static public function _name( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _s = ("" : stdgo.GoString), _ok = false;
        @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
        if (!@:check2r _d._readName()) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                _s = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _b = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
        if (!stdgo._internal.encoding.xml.Xml__isname._isName(_b)) {
            (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError((("invalid XML name: " : stdgo.GoString) + (_b : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                _s = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_b : stdgo.GoString)?.__copy__(), _1 : true };
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
        var __tmp__ = @:check2r _d._name(), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : _name, _1 : _ok };
        };
        if ((stdgo._internal.strings.Strings_count.count(_s?.__copy__(), (":" : stdgo.GoString)) > (1 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.encoding.xml.Xml_name.Name; var _1 : Bool; } = { _0 : _name?.__copy__(), _1 : false };
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
        return {
            final __tmp__:{ var _0 : stdgo._internal.encoding.xml.Xml_name.Name; var _1 : Bool; } = { _0 : _name?.__copy__(), _1 : true };
            _name = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _text( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _quote:stdgo.GoInt, _cdata:Bool):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _b_112:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var inputBreak = false;
        var _s_124:stdgo.GoString = ("" : stdgo.GoString);
        var _s_120:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_115:Bool = false;
        var _text_116:stdgo.GoString = ("" : stdgo.GoString);
        var _trunc_111:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_128:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ent_127:stdgo.GoString = ("" : stdgo.GoString);
        var _err_122:stdgo.Error = (null : stdgo.Error);
        var _n_121:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _base_118:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_113:Bool = false;
        var _b1_110:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _buf_129:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _r_125:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _name_123:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _haveText_117:Bool = false;
        var _before_114:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b0_109:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_131:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_130:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _ok_126:Bool = false;
        var _start_119:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    _gotoNext = 3710774i32;
                } else if (__value__ == (3710774i32)) {
                    var __blank__ = 0i32;
                    inputBreak = false;
                    _gotoNext = 3710782i32;
                } else if (__value__ == (3710782i32)) {
                    if (!inputBreak) {
                        _gotoNext = 3710786i32;
                    } else {
                        _gotoNext = 3713789i32;
                    };
                } else if (__value__ == (3710786i32)) {
                    {
                        var __tmp__ = @:check2r _d._getc();
                        _b_112 = @:tmpset0 __tmp__._0;
                        _ok_113 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_113) {
                        _gotoNext = 3710817i32;
                    } else {
                        _gotoNext = 3711062i32;
                    };
                } else if (__value__ == (3710817i32)) {
                    if (_cdata) {
                        _gotoNext = 3710831i32;
                    } else {
                        _gotoNext = 3710949i32;
                    };
                } else if (__value__ == (3710831i32)) {
                    if (stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 3710856i32;
                    } else {
                        _gotoNext = 3710930i32;
                    };
                } else if (__value__ == (3710856i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unexpected EOF in CDATA section" : stdgo.GoString));
                    _gotoNext = 3710930i32;
                } else if (__value__ == (3710930i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3710949i32;
                } else if (__value__ == (3710949i32)) {
                    inputBreak = true;
                    _gotoNext = 3710782i32;
                } else if (__value__ == (3711062i32)) {
                    if (((_b0_109 == ((93 : stdgo.GoUInt8)) && _b1_110 == ((93 : stdgo.GoUInt8)) : Bool) && (_b_112 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3711100i32;
                    } else {
                        _gotoNext = 3711273i32;
                    };
                } else if (__value__ == (3711100i32)) {
                    if (_cdata) {
                        _gotoNext = 3711114i32;
                    } else {
                        _gotoNext = 3711154i32;
                    };
                } else if (__value__ == (3711114i32)) {
                    _trunc_111 = (2 : stdgo.GoInt);
                    inputBreak = true;
                    _gotoNext = 3710782i32;
                } else if (__value__ == (3711154i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unescaped ]]> not in CDATA section" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3711273i32;
                } else if (__value__ == (3711273i32)) {
                    if (((_b_112 == (60 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                        _gotoNext = 3711295i32;
                    } else {
                        _gotoNext = 3711436i32;
                    };
                } else if (__value__ == (3711295i32)) {
                    if ((_quote >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3711314i32;
                    } else {
                        _gotoNext = 3711401i32;
                    };
                } else if (__value__ == (3711314i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unescaped < inside quoted string" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3711401i32;
                } else if (__value__ == (3711401i32)) {
                    @:check2r _d._ungetc((60 : stdgo.GoUInt8));
                    inputBreak = true;
                    _gotoNext = 3710782i32;
                } else if (__value__ == (3711436i32)) {
                    if (((_quote >= (0 : stdgo.GoInt) : Bool) && (_b_112 == (_quote : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3711470i32;
                    } else {
                        _gotoNext = 3711493i32;
                    };
                } else if (__value__ == (3711470i32)) {
                    inputBreak = true;
                    _gotoNext = 3710782i32;
                } else if (__value__ == (3711493i32)) {
                    if (((_b_112 == (38 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                        _gotoNext = 3711515i32;
                    } else {
                        _gotoNext = 3713614i32;
                    };
                } else if (__value__ == (3711515i32)) {
                    _before_114 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.len();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((38 : stdgo.GoUInt8));
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_112 = @:tmpset0 __tmp__._0;
                            _ok_115 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_115) {
                            _gotoNext = 3711945i32;
                        } else {
                            _gotoNext = 3711970i32;
                        };
                    };
                } else if (__value__ == (3711945i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3711970i32;
                } else if (__value__ == (3711970i32)) {
                    if (_b_112 == ((35 : stdgo.GoUInt8))) {
                        _gotoNext = 3711982i32;
                    } else {
                        _gotoNext = 3712713i32;
                    };
                } else if (__value__ == (3711982i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_112);
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_112 = @:tmpset0 __tmp__._0;
                            _ok_115 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_115) {
                            _gotoNext = 3712040i32;
                        } else {
                            _gotoNext = 3712068i32;
                        };
                    };
                } else if (__value__ == (3712040i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3712068i32;
                } else if (__value__ == (3712068i32)) {
                    _base_118 = (10 : stdgo.GoInt);
                    if (_b_112 == ((120 : stdgo.GoUInt8))) {
                        _gotoNext = 3712095i32;
                    } else {
                        _gotoNext = 3712206i32;
                    };
                } else if (__value__ == (3712095i32)) {
                    _base_118 = (16 : stdgo.GoInt);
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_112);
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_112 = @:tmpset0 __tmp__._0;
                            _ok_115 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_115) {
                            _gotoNext = 3712170i32;
                        } else {
                            _gotoNext = 3712206i32;
                        };
                    };
                } else if (__value__ == (3712170i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3712206i32;
                } else if (__value__ == (3712206i32)) {
                    _start_119 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.len();
                    var __blank__ = 0i32;
                    _gotoNext = 3712231i32;
                } else if (__value__ == (3712231i32)) {
                    if ((((((48 : stdgo.GoUInt8) <= _b_112 : Bool) && (_b_112 <= (57 : stdgo.GoUInt8) : Bool) : Bool) || ((_base_118 == ((16 : stdgo.GoInt)) && ((97 : stdgo.GoUInt8) <= _b_112 : Bool) : Bool) && (_b_112 <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || ((_base_118 == ((16 : stdgo.GoInt)) && ((65 : stdgo.GoUInt8) <= _b_112 : Bool) : Bool) && (_b_112 <= (70 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3712342i32;
                    } else {
                        _gotoNext = 3712438i32;
                    };
                } else if (__value__ == (3712342i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_112);
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_112 = @:tmpset0 __tmp__._0;
                            _ok_115 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_115) {
                            _gotoNext = 3712402i32;
                        } else {
                            _gotoNext = 3712231i32;
                        };
                    };
                } else if (__value__ == (3712402i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3712231i32;
                } else if (__value__ == (3712438i32)) {
                    if (_b_112 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3712450i32;
                    } else {
                        _gotoNext = 3712480i32;
                    };
                } else if (__value__ == (3712450i32)) {
                    @:check2r _d._ungetc(_b_112);
                    _gotoNext = 3713204i32;
                } else if (__value__ == (3712480i32)) {
                    _gotoNext = 3712480i32;
                    _s_120 = ((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__(_start_119) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((59 : stdgo.GoUInt8));
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s_120?.__copy__(), _base_118, (64 : stdgo.GoInt));
                        _n_121 = @:tmpset0 __tmp__._0;
                        _err_122 = @:tmpset0 __tmp__._1;
                    };
                    if (((_err_122 == null) && (_n_121 <= (1114111i64 : stdgo.GoUInt64) : Bool) : Bool)) {
                        _gotoNext = 3712637i32;
                    } else {
                        _gotoNext = 3713204i32;
                    };
                } else if (__value__ == (3712637i32)) {
                    _text_116 = ((_n_121 : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
                    _haveText_117 = true;
                    _gotoNext = 3713204i32;
                } else if (__value__ == (3712713i32)) {
                    _gotoNext = 3712713i32;
                    @:check2r _d._ungetc(_b_112);
                    if (!@:check2r _d._readName()) {
                        _gotoNext = 3712752i32;
                    } else {
                        _gotoNext = 3712811i32;
                    };
                } else if (__value__ == (3712752i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 3712775i32;
                    } else {
                        _gotoNext = 3712811i32;
                    };
                } else if (__value__ == (3712775i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3712811i32;
                } else if (__value__ == (3712811i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_112 = @:tmpset0 __tmp__._0;
                            _ok_115 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_115) {
                            _gotoNext = 3712840i32;
                        } else {
                            _gotoNext = 3712868i32;
                        };
                    };
                } else if (__value__ == (3712840i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3712868i32;
                } else if (__value__ == (3712868i32)) {
                    if (_b_112 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3712880i32;
                    } else {
                        _gotoNext = 3712910i32;
                    };
                } else if (__value__ == (3712880i32)) {
                    @:check2r _d._ungetc(_b_112);
                    _gotoNext = 3713204i32;
                } else if (__value__ == (3712910i32)) {
                    _gotoNext = 3712910i32;
                    _name_123 = (@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__((_before_114 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((59 : stdgo.GoUInt8));
                    if (stdgo._internal.encoding.xml.Xml__isname._isName(_name_123)) {
                        _gotoNext = 3712997i32;
                    } else {
                        _gotoNext = 3713204i32;
                    };
                } else if (__value__ == (3712997i32)) {
                    _s_124 = (_name_123 : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = (stdgo._internal.encoding.xml.Xml__entity._entity != null && stdgo._internal.encoding.xml.Xml__entity._entity.__exists__(_s_124?.__copy__()) ? { _0 : stdgo._internal.encoding.xml.Xml__entity._entity[_s_124?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt32), _1 : false });
                            _r_125 = @:tmpset0 __tmp__._0;
                            _ok_126 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_126) {
                            _gotoNext = 3713055i32;
                        } else if ((@:checkr _d ?? throw "null pointer dereference").entity != null) {
                            _gotoNext = 3713136i32;
                        } else {
                            _gotoNext = 3713204i32;
                        };
                    };
                } else if (__value__ == (3713055i32)) {
                    _text_116 = (_r_125 : stdgo.GoString)?.__copy__();
                    _haveText_117 = true;
                    _gotoNext = 3713204i32;
                } else if (__value__ == (3713136i32)) {
                    {
                        var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference").entity != null && (@:checkr _d ?? throw "null pointer dereference").entity.__exists__(_s_124?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference").entity[_s_124?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false });
                        _text_116 = @:tmpset0 __tmp__._0?.__copy__();
                        _haveText_117 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3713204i32;
                } else if (__value__ == (3713204i32)) {
                    if (_haveText_117) {
                        _gotoNext = 3713216i32;
                    } else {
                        _gotoNext = 3713318i32;
                    };
                } else if (__value__ == (3713216i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.truncate(_before_114);
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeString(_text_116?.__copy__());
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_109 = __tmp__0;
                        _b1_110 = __tmp__1;
                    };
                    _gotoNext = 3710782i32;
                } else if (__value__ == (3713318i32)) {
                    if (!(@:checkr _d ?? throw "null pointer dereference").strict) {
                        _gotoNext = 3713331i32;
                    } else {
                        _gotoNext = 3713378i32;
                    };
                } else if (__value__ == (3713331i32)) {
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_109 = __tmp__0;
                        _b1_110 = __tmp__1;
                    };
                    _gotoNext = 3710782i32;
                } else if (__value__ == (3713378i32)) {
                    _ent_127 = ((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__(_before_114) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    if (_ent_127[((_ent_127.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3713445i32;
                    } else {
                        _gotoNext = 3713484i32;
                    };
                } else if (__value__ == (3713445i32)) {
                    _ent_127 = (_ent_127 + ((" (no semicolon)" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3713484i32;
                } else if (__value__ == (3713484i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError((("invalid character entity " : stdgo.GoString) + _ent_127?.__copy__() : stdgo.GoString)?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3713614i32;
                } else if (__value__ == (3713614i32)) {
                    if (_b_112 == ((13 : stdgo.GoUInt8))) {
                        _gotoNext = 3713627i32;
                    } else if (((_b1_110 == (13 : stdgo.GoUInt8)) && (_b_112 == (10 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3713690i32;
                    } else {
                        _gotoNext = 3713739i32;
                    };
                } else if (__value__ == (3713627i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((10 : stdgo.GoUInt8));
                    _gotoNext = 3713770i32;
                } else if (__value__ == (3713690i32)) {
                    _gotoNext = 3713770i32;
                } else if (__value__ == (3713739i32)) {
                    _gotoNext = 3713739i32;
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_112);
                    var __blank__ = 0i32;
                    _gotoNext = 3713770i32;
                } else if (__value__ == (3713770i32)) {
                    {
                        final __tmp__0 = _b1_110;
                        final __tmp__1 = _b_112;
                        _b0_109 = __tmp__0;
                        _b1_110 = __tmp__1;
                    };
                    _gotoNext = 3710782i32;
                } else if (__value__ == (3713789i32)) {
                    _data_128 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_128 = (_data_128.__slice__((0 : stdgo.GoInt), ((_data_128.length) - _trunc_111 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _buf_129 = _data_128;
                    var __blank__ = 0i32;
                    _gotoNext = 3713916i32;
                } else if (__value__ == (3713916i32)) {
                    if (((_buf_129.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3713933i32;
                    } else {
                        _gotoNext = 3714211i32;
                    };
                } else if (__value__ == (3713933i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_buf_129);
                        _r_130 = @:tmpset0 __tmp__._0;
                        _size_131 = @:tmpset0 __tmp__._1;
                    };
                    if (((_r_130 == (65533 : stdgo.GoInt32)) && (_size_131 == (1 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3714007i32;
                    } else {
                        _gotoNext = 3714071i32;
                    };
                } else if (__value__ == (3714007i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid UTF-8" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3714071i32;
                } else if (__value__ == (3714071i32)) {
                    _buf_129 = (_buf_129.__slice__(_size_131) : stdgo.Slice<stdgo.GoUInt8>);
                    if (!stdgo._internal.encoding.xml.Xml__isincharacterrange._isInCharacterRange(_r_130)) {
                        _gotoNext = 3714116i32;
                    } else {
                        _gotoNext = 3713916i32;
                    };
                } else if (__value__ == (3714116i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("illegal character code %U" : stdgo.GoString), stdgo.Go.toInterface(_r_130))?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3713916i32;
                } else if (__value__ == (3714211i32)) {
                    return _data_128;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _ungetc( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _b:stdgo.GoUInt8):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        if (_b == ((10 : stdgo.GoUInt8))) {
            (@:checkr _d ?? throw "null pointer dereference")._line--;
        };
        (@:checkr _d ?? throw "null pointer dereference")._nextByte = (_b : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._offset--;
    }
    @:keep
    @:tdfield
    static public function _mustgetc( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _b = (0 : stdgo.GoUInt8), _ok = false;
        {
            {
                var __tmp__ = @:check2r _d._getc();
                _b = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if (!_ok) {
                if (stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unexpected EOF" : stdgo.GoString));
                };
            };
        };
        return { _0 : _b, _1 : _ok };
    }
    @:keep
    @:tdfield
    static public function _savedOffset( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _n = (@:check2r (@:checkr _d ?? throw "null pointer dereference")._saved.len() : stdgo.GoInt);
        if (((@:checkr _d ?? throw "null pointer dereference")._nextByte >= (0 : stdgo.GoInt) : Bool)) {
            _n--;
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function inputPos( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _line = (0 : stdgo.GoInt), _column = (0 : stdgo.GoInt);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (@:checkr _d ?? throw "null pointer dereference")._line, _1 : ((((@:checkr _d ?? throw "null pointer dereference")._offset - (@:checkr _d ?? throw "null pointer dereference")._linestart : stdgo.GoInt64) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
            _line = __tmp__._0;
            _column = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function inputOffset( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        return (@:checkr _d ?? throw "null pointer dereference")._offset;
    }
    @:keep
    @:tdfield
    static public function _getc( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _b = (0 : stdgo.GoUInt8), _ok = false;
        if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : (0 : stdgo.GoUInt8), _1 : false };
                _b = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        if (((@:checkr _d ?? throw "null pointer dereference")._nextByte >= (0 : stdgo.GoInt) : Bool)) {
            _b = ((@:checkr _d ?? throw "null pointer dereference")._nextByte : stdgo.GoUInt8);
            (@:checkr _d ?? throw "null pointer dereference")._nextByte = (-1 : stdgo.GoInt);
        } else {
            {
                var __tmp__ = (@:checkr _d ?? throw "null pointer dereference")._r.readByte();
                _b = @:tmpset0 __tmp__._0;
                (@:checkr _d ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
            if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : (0 : stdgo.GoUInt8), _1 : false };
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            if (((@:checkr _d ?? throw "null pointer dereference")._saved != null && (((@:checkr _d ?? throw "null pointer dereference")._saved : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference")._saved : Dynamic).__nil__))) {
                @:check2r (@:checkr _d ?? throw "null pointer dereference")._saved.writeByte(_b);
            };
        };
        if (_b == ((10 : stdgo.GoUInt8))) {
            (@:checkr _d ?? throw "null pointer dereference")._line++;
            (@:checkr _d ?? throw "null pointer dereference")._linestart = ((@:checkr _d ?? throw "null pointer dereference")._offset + (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
        };
        (@:checkr _d ?? throw "null pointer dereference")._offset++;
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : _b, _1 : true };
            _b = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _space( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        while (true) {
            var __tmp__ = @:check2r _d._getc(), _b:stdgo.GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return;
            };
            {
                final __value__ = _b;
                if (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8))) {} else {
                    @:check2r _d._ungetc(_b);
                    return;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _attrval( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var __tmp__ = @:check2r _d._mustgetc(), _b:stdgo.GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_b == (34 : stdgo.GoUInt8)) || (_b == (39 : stdgo.GoUInt8)) : Bool)) {
            return @:check2r _d._text((_b : stdgo.GoInt), false);
        };
        if ((@:checkr _d ?? throw "null pointer dereference").strict) {
            (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unquoted or missing attribute value in element" : stdgo.GoString));
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        @:check2r _d._ungetc(_b);
        @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
        while (true) {
            {
                var __tmp__ = @:check2r _d._mustgetc();
                _b = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if (!_ok) {
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            if (((((((((97 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || _b == ((95 : stdgo.GoUInt8)) : Bool) || _b == ((58 : stdgo.GoUInt8)) : Bool) || (_b == (45 : stdgo.GoUInt8)) : Bool)) {
                @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b);
            } else {
                @:check2r _d._ungetc(_b);
                break;
            };
        };
        return @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
    }
    @:keep
    @:tdfield
    static public function _rawToken( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_token.Token; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _data_94:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ver_88:stdgo.GoString = ("" : stdgo.GoString);
        var _target_84:stdgo.GoString = ("" : stdgo.GoString);
        var _data_82:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _empty_105:Bool = false;
        var _name_104:stdgo._internal.encoding.xml.Xml_name.Name = ({} : stdgo._internal.encoding.xml.Xml_name.Name);
        var _err_91:stdgo.Error = (null : stdgo.Error);
        var _enc_89:stdgo.GoString = ("" : stdgo.GoString);
        var _b1_103:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _content_87:stdgo.GoString = ("" : stdgo.GoString);
        var _b_80:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _a_107:stdgo._internal.encoding.xml.Xml_attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_attr.Attr);
        var _s_99:stdgo.GoString = ("" : stdgo.GoString);
        var _b0_92:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b1_93:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _data_86:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _data_108:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b0_102:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _inquote_97:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _newr_90:stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
        var _b0_85:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_95:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_81:Bool = false;
        var _j_101:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_100:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_96:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _depth_98:stdgo.GoInt = (0 : stdgo.GoInt);
        var _name_83:stdgo._internal.encoding.xml.Xml_name.Name = ({} : stdgo._internal.encoding.xml.Xml_name.Name);
        var _attr_106:stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._t != null) {
                        _gotoNext = 3701392i32;
                    } else {
                        _gotoNext = 3701419i32;
                    };
                } else if (__value__ == (3701392i32)) {
                    return (@:checkr _d ?? throw "null pointer dereference")._t.token();
                    _gotoNext = 3701419i32;
                } else if (__value__ == (3701419i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 3701435i32;
                    } else {
                        _gotoNext = 3701461i32;
                    };
                } else if (__value__ == (3701435i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3701461i32;
                } else if (__value__ == (3701461i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._needClose) {
                        _gotoNext = 3701476i32;
                    } else {
                        _gotoNext = 3701674i32;
                    };
                } else if (__value__ == (3701476i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._needClose = false;
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_endelement.EndElement((@:checkr _d ?? throw "null pointer dereference")._toClose?.__copy__()) : stdgo._internal.encoding.xml.Xml_endelement.EndElement))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3701674i32;
                } else if (__value__ == (3701674i32)) {
                    {
                        var __tmp__ = @:check2r _d._getc();
                        _b_80 = @:tmpset0 __tmp__._0;
                        _ok_81 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_81) {
                        _gotoNext = 3701700i32;
                    } else {
                        _gotoNext = 3701727i32;
                    };
                } else if (__value__ == (3701700i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3701727i32;
                } else if (__value__ == (3701727i32)) {
                    if (_b_80 != ((60 : stdgo.GoUInt8))) {
                        _gotoNext = 3701739i32;
                    } else {
                        _gotoNext = 3701880i32;
                    };
                } else if (__value__ == (3701739i32)) {
                    @:check2r _d._ungetc(_b_80);
                    _data_82 = @:check2r _d._text((-1 : stdgo.GoInt), false);
                    if (_data_82 == null) {
                        _gotoNext = 3701819i32;
                    } else {
                        _gotoNext = 3701848i32;
                    };
                } else if (__value__ == (3701819i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3701848i32;
                } else if (__value__ == (3701848i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_82 : stdgo._internal.encoding.xml.Xml_chardata.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3701880i32;
                } else if (__value__ == (3701880i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3701909i32;
                        } else {
                            _gotoNext = 3701935i32;
                        };
                    };
                } else if (__value__ == (3701909i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3701935i32;
                } else if (__value__ == (3701935i32)) {
                    _gotoNext = 3701935i32;
                    {
                        final __value__ = _b_80;
                        if (__value__ == ((47 : stdgo.GoUInt8))) {
                            _gotoNext = 3701947i32;
                        } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                            _gotoNext = 3702365i32;
                        } else if (__value__ == ((33 : stdgo.GoUInt8))) {
                            _gotoNext = 3703693i32;
                        } else {
                            _gotoNext = 3706502i32;
                        };
                    };
                } else if (__value__ == (3701947i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._nsname();
                            _name_83 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3702026i32;
                        } else {
                            _gotoNext = 3702141i32;
                        };
                    };
                } else if (__value__ == (3702026i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3702047i32;
                    } else {
                        _gotoNext = 3702117i32;
                    };
                } else if (__value__ == (3702047i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected element name after </" : stdgo.GoString));
                    _gotoNext = 3702117i32;
                } else if (__value__ == (3702117i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3702141i32;
                } else if (__value__ == (3702141i32)) {
                    @:check2r _d._space();
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3702182i32;
                        } else {
                            _gotoNext = 3702211i32;
                        };
                    };
                } else if (__value__ == (3702182i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3702211i32;
                } else if (__value__ == (3702211i32)) {
                    if (_b_80 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3702223i32;
                    } else {
                        _gotoNext = 3702334i32;
                    };
                } else if (__value__ == (3702223i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(((("invalid characters between </" : stdgo.GoString) + _name_83.local?.__copy__() : stdgo.GoString) + (" and >" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3702334i32;
                } else if (__value__ == (3702334i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_endelement.EndElement(_name_83?.__copy__()) : stdgo._internal.encoding.xml.Xml_endelement.EndElement))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3706502i32;
                } else if (__value__ == (3702365i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._name();
                            _target_84 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3702460i32;
                        } else {
                            _gotoNext = 3702574i32;
                        };
                    };
                } else if (__value__ == (3702460i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3702481i32;
                    } else {
                        _gotoNext = 3702550i32;
                    };
                } else if (__value__ == (3702481i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected target name after <?" : stdgo.GoString));
                    _gotoNext = 3702550i32;
                } else if (__value__ == (3702550i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3702574i32;
                } else if (__value__ == (3702574i32)) {
                    @:check2r _d._space();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    var __blank__ = 0i32;
                    _gotoNext = 3702616i32;
                } else if (__value__ == (3702616i32)) {
                    if (true) {
                        _gotoNext = 3702620i32;
                    } else {
                        _gotoNext = 3702766i32;
                    };
                } else if (__value__ == (3702620i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3702654i32;
                        } else {
                            _gotoNext = 3702686i32;
                        };
                    };
                } else if (__value__ == (3702654i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3702686i32;
                } else if (__value__ == (3702686i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_80);
                    if (((_b0_85 == (63 : stdgo.GoUInt8)) && (_b_80 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3702733i32;
                    } else {
                        _gotoNext = 3702753i32;
                    };
                } else if (__value__ == (3702733i32)) {
                    _gotoNext = 3702766i32;
                } else if (__value__ == (3702753i32)) {
                    _b0_85 = _b_80;
                    _gotoNext = 3702616i32;
                } else if (__value__ == (3702766i32)) {
                    _data_86 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_86 = (_data_86.__slice__((0 : stdgo.GoInt), ((_data_86.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_target_84 == (("xml" : stdgo.GoString))) {
                        _gotoNext = 3702852i32;
                    } else {
                        _gotoNext = 3703656i32;
                    };
                } else if (__value__ == (3702852i32)) {
                    _content_87 = (_data_86 : stdgo.GoString)?.__copy__();
                    _ver_88 = stdgo._internal.encoding.xml.Xml__procinst._procInst(("version" : stdgo.GoString), _content_87?.__copy__())?.__copy__();
                    if (((_ver_88 != (stdgo.Go.str() : stdgo.GoString)) && (_ver_88 != ("1.0" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3702952i32;
                    } else {
                        _gotoNext = 3703074i32;
                    };
                } else if (__value__ == (3702952i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: unsupported version %q; only version 1.0 is supported" : stdgo.GoString), stdgo.Go.toInterface(_ver_88));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3703074i32;
                } else if (__value__ == (3703074i32)) {
                    _enc_89 = stdgo._internal.encoding.xml.Xml__procinst._procInst(("encoding" : stdgo.GoString), _content_87?.__copy__())?.__copy__();
                    if ((((_enc_89 != ((stdgo.Go.str() : stdgo.GoString)) && _enc_89 != (("utf-8" : stdgo.GoString)) : Bool) && _enc_89 != (("UTF-8" : stdgo.GoString)) : Bool) && !stdgo._internal.strings.Strings_equalfold.equalFold(_enc_89?.__copy__(), ("utf-8" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3703199i32;
                    } else {
                        _gotoNext = 3703656i32;
                    };
                } else if (__value__ == (3703199i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference").charsetReader == null) {
                        _gotoNext = 3703231i32;
                    } else {
                        _gotoNext = 3703357i32;
                    };
                } else if (__value__ == (3703231i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: encoding %q declared but Decoder.CharsetReader is nil" : stdgo.GoString), stdgo.Go.toInterface(_enc_89));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3703357i32;
                } else if (__value__ == (3703357i32)) {
                    {
                        var __tmp__ = (@:checkr _d ?? throw "null pointer dereference").charsetReader(_enc_89?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._r) : stdgo._internal.io.Io_reader.Reader)) : stdgo._internal.io.Io_reader.Reader));
                        _newr_90 = @:tmpset0 __tmp__._0;
                        _err_91 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_91 != null) {
                        _gotoNext = 3703426i32;
                    } else {
                        _gotoNext = 3703526i32;
                    };
                } else if (__value__ == (3703426i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: opening charset %q: %w" : stdgo.GoString), stdgo.Go.toInterface(_enc_89), stdgo.Go.toInterface(_err_91));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3703526i32;
                } else if (__value__ == (3703526i32)) {
                    if (_newr_90 == null) {
                        _gotoNext = 3703541i32;
                    } else {
                        _gotoNext = 3703622i32;
                    };
                } else if (__value__ == (3703541i32)) {
                    throw stdgo.Go.toInterface((("CharsetReader returned a nil Reader for charset " : stdgo.GoString) + _enc_89?.__copy__() : stdgo.GoString));
                    _gotoNext = 3703622i32;
                } else if (__value__ == (3703622i32)) {
                    @:check2r _d._switchToReader(_newr_90);
                    _gotoNext = 3703656i32;
                } else if (__value__ == (3703656i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_procinst.ProcInst(_target_84?.__copy__(), _data_86) : stdgo._internal.encoding.xml.Xml_procinst.ProcInst))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3706502i32;
                } else if (__value__ == (3703693i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3703771i32;
                        } else {
                            _gotoNext = 3703800i32;
                        };
                    };
                } else if (__value__ == (3703771i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3703800i32;
                } else if (__value__ == (3703800i32)) {
                    _gotoNext = 3703800i32;
                    {
                        final __value__ = _b_80;
                        if (__value__ == ((45 : stdgo.GoUInt8))) {
                            _gotoNext = 3703813i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3704505i32;
                        } else {
                            _gotoNext = 3705070i32;
                        };
                    };
                } else if (__value__ == (3703813i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3703897i32;
                        } else {
                            _gotoNext = 3703929i32;
                        };
                    };
                } else if (__value__ == (3703897i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3703929i32;
                } else if (__value__ == (3703929i32)) {
                    if (_b_80 != ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 3703941i32;
                    } else {
                        _gotoNext = 3704067i32;
                    };
                } else if (__value__ == (3703941i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid sequence <!- not part of <!--" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3704067i32;
                } else if (__value__ == (3704067i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    var __blank__ = 0i32;
                    _gotoNext = 3704103i32;
                } else if (__value__ == (3704103i32)) {
                    if (true) {
                        _gotoNext = 3704107i32;
                    } else {
                        _gotoNext = 3704407i32;
                    };
                } else if (__value__ == (3704107i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3704142i32;
                        } else {
                            _gotoNext = 3704177i32;
                        };
                    };
                } else if (__value__ == (3704142i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3704177i32;
                } else if (__value__ == (3704177i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_80);
                    if (((_b0_92 == (45 : stdgo.GoUInt8)) && (_b1_93 == (45 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3704226i32;
                    } else {
                        _gotoNext = 3704384i32;
                    };
                } else if (__value__ == (3704226i32)) {
                    if (_b_80 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3704245i32;
                    } else {
                        _gotoNext = 3704368i32;
                    };
                } else if (__value__ == (3704245i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid sequence \"--\" not allowed in comments" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3704368i32;
                } else if (__value__ == (3704368i32)) {
                    _gotoNext = 3704407i32;
                } else if (__value__ == (3704384i32)) {
                    {
                        final __tmp__0 = _b1_93;
                        final __tmp__1 = _b_80;
                        _b0_92 = __tmp__0;
                        _b1_93 = __tmp__1;
                    };
                    _gotoNext = 3704103i32;
                } else if (__value__ == (3704407i32)) {
                    _data_94 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_94 = (_data_94.__slice__((0 : stdgo.GoInt), ((_data_94.length) - (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_94 : stdgo._internal.encoding.xml.Xml_comment.Comment))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3705070i32;
                } else if (__value__ == (3704505i32)) {
                    _i_95 = (0 : stdgo.GoInt);
                    _gotoNext = 3704551i32;
                } else if (__value__ == (3704551i32)) {
                    if ((_i_95 < (6 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3704574i32;
                    } else {
                        _gotoNext = 3704798i32;
                    };
                } else if (__value__ == (3704570i32)) {
                    _i_95++;
                    _gotoNext = 3704551i32;
                } else if (__value__ == (3704574i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3704609i32;
                        } else {
                            _gotoNext = 3704644i32;
                        };
                    };
                } else if (__value__ == (3704609i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3704644i32;
                } else if (__value__ == (3704644i32)) {
                    if (_b_80 != ((("CDATA[" : stdgo.GoString) : stdgo.GoString)[(_i_95 : stdgo.GoInt)])) {
                        _gotoNext = 3704664i32;
                    } else {
                        _gotoNext = 3704570i32;
                    };
                } else if (__value__ == (3704664i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid <![ sequence" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3704570i32;
                } else if (__value__ == (3704798i32)) {
                    _data_96 = @:check2r _d._text((-1 : stdgo.GoInt), true);
                    if (_data_96 == null) {
                        _gotoNext = 3704841i32;
                    } else {
                        _gotoNext = 3704873i32;
                    };
                } else if (__value__ == (3704841i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3704873i32;
                } else if (__value__ == (3704873i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_96 : stdgo._internal.encoding.xml.Xml_chardata.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3705070i32;
                } else if (__value__ == (3705070i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_80);
                    _inquote_97 = (0 : stdgo.GoUInt8);
                    _depth_98 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3705142i32;
                } else if (__value__ == (3705142i32)) {
                    if (true) {
                        _gotoNext = 3705146i32;
                    } else {
                        _gotoNext = 3706412i32;
                    };
                } else if (__value__ == (3705146i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3705180i32;
                        } else {
                            _gotoNext = 3705212i32;
                        };
                    };
                } else if (__value__ == (3705180i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3705212i32;
                } else if (__value__ == (3705212i32)) {
                    if (((_inquote_97 == ((0 : stdgo.GoUInt8)) && _b_80 == ((62 : stdgo.GoUInt8)) : Bool) && (_depth_98 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3705254i32;
                    } else {
                        _gotoNext = 3705273i32;
                    };
                } else if (__value__ == (3705254i32)) {
                    _gotoNext = 3706412i32;
                } else if (__value__ == (3705273i32)) {
                    _gotoNext = 3705273i32;
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_80);
                    _gotoNext = 3705307i32;
                } else if (__value__ == (3705307i32)) {
                    if (_b_80 == (_inquote_97)) {
                        _gotoNext = 3705319i32;
                    } else if (_inquote_97 != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3705358i32;
                    } else if (((_b_80 == (39 : stdgo.GoUInt8)) || (_b_80 == (34 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3705417i32;
                    } else if (((_b_80 == (62 : stdgo.GoUInt8)) && (_inquote_97 == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3705465i32;
                    } else if (((_b_80 == (60 : stdgo.GoUInt8)) && (_inquote_97 == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3705512i32;
                    } else {
                        _gotoNext = 3705142i32;
                    };
                } else if (__value__ == (3705319i32)) {
                    _inquote_97 = (0 : stdgo.GoUInt8);
                    _gotoNext = 3705142i32;
                } else if (__value__ == (3705358i32)) {
                    _gotoNext = 3705142i32;
                } else if (__value__ == (3705417i32)) {
                    _inquote_97 = _b_80;
                    _gotoNext = 3705142i32;
                } else if (__value__ == (3705465i32)) {
                    _depth_98--;
                    _gotoNext = 3705142i32;
                } else if (__value__ == (3705512i32)) {
                    _s_99 = ("!--" : stdgo.GoString);
                    _i_100 = (0 : stdgo.GoInt);
                    _gotoNext = 3705601i32;
                } else if (__value__ == (3705601i32)) {
                    if ((_i_100 < (_s_99.length) : Bool)) {
                        _gotoNext = 3705629i32;
                    } else {
                        _gotoNext = 3705877i32;
                    };
                } else if (__value__ == (3705625i32)) {
                    _i_100++;
                    _gotoNext = 3705601i32;
                } else if (__value__ == (3705629i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3705665i32;
                        } else {
                            _gotoNext = 3705703i32;
                        };
                    };
                } else if (__value__ == (3705665i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3705703i32;
                } else if (__value__ == (3705703i32)) {
                    if (_b_80 != (_s_99[(_i_100 : stdgo.GoInt)])) {
                        _gotoNext = 3705716i32;
                    } else {
                        _gotoNext = 3705625i32;
                    };
                } else if (__value__ == (3705716i32)) {
                    _j_101 = (0 : stdgo.GoInt);
                    _gotoNext = 3705724i32;
                } else if (__value__ == (3705724i32)) {
                    if ((_j_101 < _i_100 : Bool)) {
                        _gotoNext = 3705747i32;
                    } else {
                        _gotoNext = 3705792i32;
                    };
                } else if (__value__ == (3705747i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_s_99[(_j_101 : stdgo.GoInt)]);
                    _j_101++;
                    _gotoNext = 3705724i32;
                } else if (__value__ == (3705792i32)) {
                    _depth_98++;
                    _gotoNext = 3705273i32;
                } else if (__value__ == (3705877i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.truncate((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3705962i32;
                } else if (__value__ == (3705962i32)) {
                    if (true) {
                        _gotoNext = 3705966i32;
                    } else {
                        _gotoNext = 3706380i32;
                    };
                } else if (__value__ == (3705966i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3706002i32;
                        } else {
                            _gotoNext = 3706040i32;
                        };
                    };
                } else if (__value__ == (3706002i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3706040i32;
                } else if (__value__ == (3706040i32)) {
                    if (((_b0_102 == ((45 : stdgo.GoUInt8)) && _b1_103 == ((45 : stdgo.GoUInt8)) : Bool) && (_b_80 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3706078i32;
                    } else {
                        _gotoNext = 3706104i32;
                    };
                } else if (__value__ == (3706078i32)) {
                    _gotoNext = 3706380i32;
                } else if (__value__ == (3706104i32)) {
                    {
                        final __tmp__0 = _b1_103;
                        final __tmp__1 = _b_80;
                        _b0_102 = __tmp__0;
                        _b1_103 = __tmp__1;
                    };
                    _gotoNext = 3705962i32;
                } else if (__value__ == (3706380i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((32 : stdgo.GoUInt8));
                    _gotoNext = 3705142i32;
                } else if (__value__ == (3706412i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes() : stdgo._internal.encoding.xml.Xml_directive.Directive))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3706502i32;
                } else if (__value__ == (3706502i32)) {
                    @:check2r _d._ungetc(_b_80);
                    {
                        {
                            var __tmp__ = @:check2r _d._nsname();
                            _name_104 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3706597i32;
                        } else {
                            _gotoNext = 3706706i32;
                        };
                    };
                } else if (__value__ == (3706597i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3706617i32;
                    } else {
                        _gotoNext = 3706683i32;
                    };
                } else if (__value__ == (3706617i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected element name after <" : stdgo.GoString));
                    _gotoNext = 3706683i32;
                } else if (__value__ == (3706683i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3706706i32;
                } else if (__value__ == (3706706i32)) {
                    _attr_106 = (new stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.xml.Xml_attr.Attr)])) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
                    var __blank__ = 0i32;
                    _gotoNext = 3706723i32;
                } else if (__value__ == (3706723i32)) {
                    if (true) {
                        _gotoNext = 3706727i32;
                    } else {
                        _gotoNext = 3707599i32;
                    };
                } else if (__value__ == (3706727i32)) {
                    @:check2r _d._space();
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3706772i32;
                        } else {
                            _gotoNext = 3706801i32;
                        };
                    };
                } else if (__value__ == (3706772i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3706801i32;
                } else if (__value__ == (3706801i32)) {
                    if (_b_80 == ((47 : stdgo.GoUInt8))) {
                        _gotoNext = 3706813i32;
                    } else {
                        _gotoNext = 3707003i32;
                    };
                } else if (__value__ == (3706813i32)) {
                    _empty_105 = true;
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3706863i32;
                        } else {
                            _gotoNext = 3706895i32;
                        };
                    };
                } else if (__value__ == (3706863i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3706895i32;
                } else if (__value__ == (3706895i32)) {
                    if (_b_80 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3706907i32;
                    } else {
                        _gotoNext = 3706991i32;
                    };
                } else if (__value__ == (3706907i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected /> in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3706991i32;
                } else if (__value__ == (3706991i32)) {
                    _gotoNext = 3707599i32;
                } else if (__value__ == (3707003i32)) {
                    if (_b_80 == ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3707015i32;
                    } else {
                        _gotoNext = 3707032i32;
                    };
                } else if (__value__ == (3707015i32)) {
                    _gotoNext = 3707599i32;
                } else if (__value__ == (3707032i32)) {
                    @:check2r _d._ungetc(_b_80);
                    _a_107 = (new stdgo._internal.encoding.xml.Xml_attr.Attr() : stdgo._internal.encoding.xml.Xml_attr.Attr);
                    {
                        {
                            var __tmp__ = @:check2r _d._nsname();
                            _a_107.name = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3707093i32;
                        } else {
                            _gotoNext = 3707212i32;
                        };
                    };
                } else if (__value__ == (3707093i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3707114i32;
                    } else {
                        _gotoNext = 3707188i32;
                    };
                } else if (__value__ == (3707114i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected attribute name in element" : stdgo.GoString));
                    _gotoNext = 3707188i32;
                } else if (__value__ == (3707188i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3707212i32;
                } else if (__value__ == (3707212i32)) {
                    @:check2r _d._space();
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_80 = @:tmpset0 __tmp__._0;
                            _ok_81 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_81) {
                            _gotoNext = 3707253i32;
                        } else {
                            _gotoNext = 3707282i32;
                        };
                    };
                } else if (__value__ == (3707253i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3707282i32;
                } else if (__value__ == (3707282i32)) {
                    if (_b_80 != ((61 : stdgo.GoUInt8))) {
                        _gotoNext = 3707294i32;
                    } else {
                        _gotoNext = 3707455i32;
                    };
                } else if (__value__ == (3707294i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference").strict) {
                        _gotoNext = 3707311i32;
                    } else {
                        _gotoNext = 3707408i32;
                    };
                } else if (__value__ == (3707311i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("attribute name without = in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3707408i32;
                } else if (__value__ == (3707408i32)) {
                    @:check2r _d._ungetc(_b_80);
                    _a_107.value = _a_107.name.local?.__copy__();
                    _gotoNext = 3707572i32;
                } else if (__value__ == (3707455i32)) {
                    _gotoNext = 3707455i32;
                    @:check2r _d._space();
                    _data_108 = @:check2r _d._attrval();
                    if (_data_108 == null) {
                        _gotoNext = 3707511i32;
                    } else {
                        _gotoNext = 3707543i32;
                    };
                } else if (__value__ == (3707511i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3707543i32;
                } else if (__value__ == (3707543i32)) {
                    _a_107.value = (_data_108 : stdgo.GoString)?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3707572i32;
                } else if (__value__ == (3707572i32)) {
                    _attr_106 = (_attr_106.__append__(_a_107?.__copy__()));
                    _gotoNext = 3706723i32;
                } else if (__value__ == (3707599i32)) {
                    if (_empty_105) {
                        _gotoNext = 3707608i32;
                    } else {
                        _gotoNext = 3707654i32;
                    };
                } else if (__value__ == (3707608i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._needClose = true;
                    (@:checkr _d ?? throw "null pointer dereference")._toClose = _name_104?.__copy__();
                    _gotoNext = 3707654i32;
                } else if (__value__ == (3707654i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_startelement.StartElement(_name_104?.__copy__(), _attr_106) : stdgo._internal.encoding.xml.Xml_startelement.StartElement))), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function rawToken( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_token.Token; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        if (((@:checkr _d ?? throw "null pointer dereference")._unmarshalDepth > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : stdgo._internal.encoding.xml.Xml__errrawtoken._errRawToken };
        };
        return @:check2r _d._rawToken();
    }
    @:keep
    @:tdfield
    static public function _autoClose( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _t:stdgo._internal.encoding.xml.Xml_token.Token):{ var _0 : stdgo._internal.encoding.xml.Xml_token.Token; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        if ((((@:checkr _d ?? throw "null pointer dereference")._stk == null || ((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__) || ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : false };
        };
        for (__0 => _s in (@:checkr _d ?? throw "null pointer dereference").autoClose) {
            if (stdgo._internal.strings.Strings_equalfold.equalFold(_s?.__copy__(), (@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._name.local?.__copy__())) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_t : stdgo._internal.encoding.xml.Xml_endelement.EndElement)) : stdgo._internal.encoding.xml.Xml_endelement.EndElement), _1 : true };
                } catch(_) {
                    { _0 : ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement), _1 : false };
                }, _et = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || !stdgo._internal.strings.Strings_equalfold.equalFold(_et.name.local?.__copy__(), (@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._name.local?.__copy__()) : Bool)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_endelement.EndElement((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._name?.__copy__()) : stdgo._internal.encoding.xml.Xml_endelement.EndElement))), _1 : true };
                };
                break;
            };
        };
        return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : false };
    }
    @:keep
    @:tdfield
    static public function _popElement( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _t:stdgo.Ref<stdgo._internal.encoding.xml.Xml_endelement.EndElement>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _s = @:check2r _d._pop();
        var _name = ((@:checkr _t ?? throw "null pointer dereference").name?.__copy__() : stdgo._internal.encoding.xml.Xml_name.Name);
        if (((_s == null || (_s : Dynamic).__nil__) || ((@:checkr _s ?? throw "null pointer dereference")._kind != (0 : stdgo.GoInt)) : Bool)) {
            (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(((("unexpected end element </" : stdgo.GoString) + _name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            return false;
        } else if ((@:checkr _s ?? throw "null pointer dereference")._name.local != (_name.local)) {
            if (!(@:checkr _d ?? throw "null pointer dereference").strict) {
                (@:checkr _d ?? throw "null pointer dereference")._needClose = true;
                (@:checkr _d ?? throw "null pointer dereference")._toClose = (@:checkr _t ?? throw "null pointer dereference").name?.__copy__();
                (@:checkr _t ?? throw "null pointer dereference").name = (@:checkr _s ?? throw "null pointer dereference")._name?.__copy__();
                return true;
            };
            (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(((((("element <" : stdgo.GoString) + (@:checkr _s ?? throw "null pointer dereference")._name.local?.__copy__() : stdgo.GoString) + ("> closed by </" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            return false;
        } else if ((@:checkr _s ?? throw "null pointer dereference")._name.space != (_name.space)) {
            (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError((((((((("element <" : stdgo.GoString) + (@:checkr _s ?? throw "null pointer dereference")._name.local?.__copy__() : stdgo.GoString) + ("> in space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _s ?? throw "null pointer dereference")._name.space?.__copy__() : stdgo.GoString) + (" closed by </" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name.local?.__copy__() : stdgo.GoString) + ("> in space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name.space?.__copy__() : stdgo.GoString)?.__copy__());
            return false;
        };
        @:check2r _d._translate((stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference").name) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_name.Name>), true);
        while (((((@:checkr _d ?? throw "null pointer dereference")._stk != null && (((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__)) && (@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != ((0 : stdgo.GoInt)) : Bool) && ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != (2 : stdgo.GoInt)) : Bool)) {
            var _s = @:check2r _d._pop();
            if ((@:checkr _s ?? throw "null pointer dereference")._ok) {
                (@:checkr _d ?? throw "null pointer dereference")._ns[(@:checkr _s ?? throw "null pointer dereference")._name.local] = (@:checkr _s ?? throw "null pointer dereference")._name.space?.__copy__();
            } else {
                if ((@:checkr _d ?? throw "null pointer dereference")._ns != null) (@:checkr _d ?? throw "null pointer dereference")._ns.__remove__((@:checkr _s ?? throw "null pointer dereference")._name.local);
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _syntaxError( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _msg:stdgo.GoString):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ msg : _msg?.__copy__(), line : (@:checkr _d ?? throw "null pointer dereference")._line } : stdgo._internal.encoding.xml.Xml_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_syntaxerror.SyntaxError>));
    }
    @:keep
    @:tdfield
    static public function _pushNs( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _local:stdgo.GoString, _url:stdgo.GoString, _ok:Bool):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _s = @:check2r _d._push((1 : stdgo.GoInt));
        (@:checkr _s ?? throw "null pointer dereference")._name.local = _local?.__copy__();
        (@:checkr _s ?? throw "null pointer dereference")._name.space = _url?.__copy__();
        (@:checkr _s ?? throw "null pointer dereference")._ok = _ok;
    }
    @:keep
    @:tdfield
    static public function _pushElement( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _name:stdgo._internal.encoding.xml.Xml_name.Name):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _s = @:check2r _d._push((0 : stdgo.GoInt));
        (@:checkr _s ?? throw "null pointer dereference")._name = _name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _popEOF( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        if ((((@:checkr _d ?? throw "null pointer dereference")._stk == null || ((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__) || ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != (2 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        @:check2r _d._pop();
        return true;
    }
    @:keep
    @:tdfield
    static public function _pushEOF( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _start = (@:checkr _d ?? throw "null pointer dereference")._stk;
        while ((@:checkr _start ?? throw "null pointer dereference")._kind != ((0 : stdgo.GoInt))) {
            _start = (@:checkr _start ?? throw "null pointer dereference")._next;
        };
        while ((((@:checkr _start ?? throw "null pointer dereference")._next != null && (((@:checkr _start ?? throw "null pointer dereference")._next : Dynamic).__nil__ == null || !((@:checkr _start ?? throw "null pointer dereference")._next : Dynamic).__nil__)) && ((@:checkr (@:checkr _start ?? throw "null pointer dereference")._next ?? throw "null pointer dereference")._kind == (1 : stdgo.GoInt)) : Bool)) {
            _start = (@:checkr _start ?? throw "null pointer dereference")._next;
        };
        var _s = (@:checkr _d ?? throw "null pointer dereference")._free;
        if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
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
        if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
            (@:checkr _d ?? throw "null pointer dereference")._stk = (@:checkr _s ?? throw "null pointer dereference")._next;
            (@:checkr _s ?? throw "null pointer dereference")._next = (@:checkr _d ?? throw "null pointer dereference")._free;
            (@:checkr _d ?? throw "null pointer dereference")._free = _s;
        };
        return _s;
    }
    @:keep
    @:tdfield
    static public function _push( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _kind:stdgo.GoInt):stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _s = (@:checkr _d ?? throw "null pointer dereference")._free;
        if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
            (@:checkr _d ?? throw "null pointer dereference")._free = (@:checkr _s ?? throw "null pointer dereference")._next;
        } else {
            _s = (stdgo.Go.setRef(({} : stdgo._internal.encoding.xml.Xml_t_stack.T_stack)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_stack.T_stack>);
        };
        (@:checkr _s ?? throw "null pointer dereference")._next = (@:checkr _d ?? throw "null pointer dereference")._stk;
        (@:checkr _s ?? throw "null pointer dereference")._kind = _kind;
        (@:checkr _d ?? throw "null pointer dereference")._stk = _s;
        return _s;
    }
    @:keep
    @:tdfield
    static public function _switchToReader( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _r:stdgo._internal.io.Io_reader.Reader):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
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
        if ((@:checkr _n ?? throw "null pointer dereference").space == (("xmlns" : stdgo.GoString))) {
            return;
        } else if ((((@:checkr _n ?? throw "null pointer dereference").space == (stdgo.Go.str() : stdgo.GoString)) && !_isElementName : Bool)) {
            return;
        } else if ((@:checkr _n ?? throw "null pointer dereference").space == (("xml" : stdgo.GoString))) {
            (@:checkr _n ?? throw "null pointer dereference").space = ("http://www.w3.org/XML/1998/namespace" : stdgo.GoString);
        } else if ((((@:checkr _n ?? throw "null pointer dereference").space == (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _n ?? throw "null pointer dereference").local == ("xmlns" : stdgo.GoString)) : Bool)) {
            return;
        };
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
        if ((((@:checkr _d ?? throw "null pointer dereference")._stk != null && (((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__)) && ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind == (2 : stdgo.GoInt)) : Bool)) {
            return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : stdgo._internal.io.Io_eof.eOF };
        };
        if ((@:checkr _d ?? throw "null pointer dereference")._nextToken != null) {
            _t = (@:checkr _d ?? throw "null pointer dereference")._nextToken;
            (@:checkr _d ?? throw "null pointer dereference")._nextToken = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        } else {
            {
                {
                    var __tmp__ = @:check2r _d._rawToken();
                    _t = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (((_t == null) && (_err != null) : Bool)) {
                    if (((stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) && ((@:checkr _d ?? throw "null pointer dereference")._stk != null && (((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__)) : Bool) && ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != (2 : stdgo.GoInt)) : Bool)) {
                        _err = @:check2r _d._syntaxError(("unexpected EOF" : stdgo.GoString));
                    };
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : _err };
                };
            };
            _err = (null : stdgo.Error);
        };
        if (!(@:checkr _d ?? throw "null pointer dereference").strict) {
            {
                var __tmp__ = @:check2r _d._autoClose(_t), _t1:stdgo._internal.encoding.xml.Xml_token.Token = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    (@:checkr _d ?? throw "null pointer dereference")._nextToken = _t;
                    _t = _t1;
                };
            };
        };
        {
            final __type__ = _t;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                var _t1:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value;
                for (__0 => _a in _t1.attr) {
                    if (_a.name.space == (("xmlns" : stdgo.GoString))) {
                        var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._ns != null && (@:checkr _d ?? throw "null pointer dereference")._ns.__exists__(_a.name.local?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._ns[_a.name.local?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        @:check2r _d._pushNs(_a.name.local?.__copy__(), _v?.__copy__(), _ok);
                        (@:checkr _d ?? throw "null pointer dereference")._ns[_a.name.local] = _a.value?.__copy__();
                    };
                    if (((_a.name.space == (stdgo.Go.str() : stdgo.GoString)) && (_a.name.local == ("xmlns" : stdgo.GoString)) : Bool)) {
                        var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._ns != null && (@:checkr _d ?? throw "null pointer dereference")._ns.__exists__((stdgo.Go.str() : stdgo.GoString)?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._ns[(stdgo.Go.str() : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        @:check2r _d._pushNs((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _v?.__copy__(), _ok);
                        (@:checkr _d ?? throw "null pointer dereference")._ns[(stdgo.Go.str() : stdgo.GoString)] = _a.value?.__copy__();
                    };
                };
                @:check2r _d._pushElement(_t1.name?.__copy__());
                @:check2r _d._translate((stdgo.Go.setRef(_t1.name) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_name.Name>), true);
                for (_i => _ in _t1.attr) {
                    @:check2r _d._translate((stdgo.Go.setRef(_t1.attr[(_i : stdgo.GoInt)].name) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_name.Name>), false);
                };
                _t = stdgo.Go.toInterface(stdgo.Go.asInterface(_t1));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                var _t1:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value;
                if (!@:check2r _d._popElement((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_endelement.EndElement>))) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                };
                _t = stdgo.Go.toInterface(stdgo.Go.asInterface(_t1));
            };
        };
        return { _0 : _t, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function skip( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _depth:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        while (true) {
            var __tmp__ = @:check2r _d.token(), _tok:stdgo._internal.encoding.xml.Xml_token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            {
                final __type__ = _tok;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                    _depth++;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                    if (_depth == ((0i64 : stdgo.GoInt64))) {
                        return (null : stdgo.Error);
                    };
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
        var _consumed2_63:Bool = false;
        var _t_61:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _finfo_58:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _i_57:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_65:stdgo.Error = (null : stdgo.Error);
        var _err_64:stdgo.Error = (null : stdgo.Error);
        var _t_62:stdgo._internal.encoding.xml.Xml_endelement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement);
        var _tok_60:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _j_59:stdgo.GoInt = (0 : stdgo.GoInt);
        var _recurse_56:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_61;
                    _gotoNext = 3756642i32;
                    _recurse_56 = false;
                    _gotoNext = 3755479i32;
                } else if (__value__ == (3755479i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3756385i32;
                    } else {
                        _gotoNext = 3756389i32;
                    };
                } else if (__value__ == (3755490i32)) {
                    _i_57++;
                    _gotoNext = 3756386i32;
                } else if (__value__ == (3755514i32)) {
                    _finfo_58 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_57 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    if (((((@:checkr _finfo_58 ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || (((@:checkr _finfo_58 ?? throw "null pointer dereference")._parents.length) < (_parents.length) : Bool) : Bool) || ((@:checkr _finfo_58 ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) && (@:checkr _finfo_58 ?? throw "null pointer dereference")._xmlns != ((@:checkr _start ?? throw "null pointer dereference").name.space) : Bool) : Bool)) {
                        _gotoNext = 3755668i32;
                    } else {
                        _gotoNext = 3755688i32;
                    };
                } else if (__value__ == (3755668i32)) {
                    _i_57++;
                    _gotoNext = 3756386i32;
                } else if (__value__ == (3755688i32)) {
                    if ((0i32 : stdgo.GoInt) < (_parents.length)) {
                        _gotoNext = 3755776i32;
                    } else {
                        _gotoNext = 3755781i32;
                    };
                } else if (__value__ == (3755692i32)) {
                    _j_59++;
                    _gotoNext = 3755777i32;
                } else if (__value__ == (3755711i32)) {
                    if (_parents[(_j_59 : stdgo.GoInt)] != ((@:checkr _finfo_58 ?? throw "null pointer dereference")._parents[(_j_59 : stdgo.GoInt)])) {
                        _gotoNext = 3755750i32;
                    } else {
                        _gotoNext = 3755692i32;
                    };
                } else if (__value__ == (3755750i32)) {
                    _i_57++;
                    _gotoNext = 3756386i32;
                } else if (__value__ == (3755776i32)) {
                    _j_59 = 0i32;
                    _gotoNext = 3755777i32;
                } else if (__value__ == (3755777i32)) {
                    if (_j_59 < (_parents.length)) {
                        _gotoNext = 3755711i32;
                    } else {
                        _gotoNext = 3755781i32;
                    };
                } else if (__value__ == (3755781i32)) {
                    if ((((@:checkr _finfo_58 ?? throw "null pointer dereference")._parents.length == (_parents.length)) && ((@:checkr _finfo_58 ?? throw "null pointer dereference")._name == (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3755853i32;
                    } else {
                        _gotoNext = 3755988i32;
                    };
                } else if (__value__ == (3755853i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : @:check2r _d._unmarshal(@:check2r _finfo_58._value(_sv?.__copy__(), true)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3755988i32;
                } else if (__value__ == (3755988i32)) {
                    if (((((@:checkr _finfo_58 ?? throw "null pointer dereference")._parents.length) > (_parents.length) : Bool) && ((@:checkr _finfo_58 ?? throw "null pointer dereference")._parents[(_parents.length : stdgo.GoInt)] == (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3756076i32;
                    } else {
                        _gotoNext = 3755490i32;
                    };
                } else if (__value__ == (3756076i32)) {
                    _recurse_56 = true;
                    _parents = ((@:checkr _finfo_58 ?? throw "null pointer dereference")._parents.__slice__(0, ((_parents.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 3756389i32;
                } else if (__value__ == (3756385i32)) {
                    _i_57 = 0i32;
                    _gotoNext = 3756386i32;
                } else if (__value__ == (3756386i32)) {
                    if (_i_57 < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3755514i32;
                    } else {
                        _gotoNext = 3756389i32;
                    };
                } else if (__value__ == (3756389i32)) {
                    if (!_recurse_56) {
                        _gotoNext = 3756401i32;
                    } else {
                        _gotoNext = 3756642i32;
                    };
                } else if (__value__ == (3756401i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3756642i32;
                } else if (__value__ == (3756642i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3756642i32;
                    if (true) {
                        _gotoNext = 3756646i32;
                    } else {
                        _gotoNext = 3757177i32;
                    };
                } else if (__value__ == (3756646i32)) {
                    {
                        var __tmp__ = @:check2r _d.token();
                        _tok_60 = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        _gotoNext = 3756703i32;
                    } else {
                        _gotoNext = 3756731i32;
                    };
                } else if (__value__ == (3756703i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3756731i32;
                } else if (__value__ == (3756731i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3756731i32;
                    {
                        final __type__ = _tok_60;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value;
                            _t_61 = _t;
                            _gotoNext = 3756758i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value;
                            _t_62 = _t;
                            _gotoNext = 3757133i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_token.Token = __type__?.__underlying__();
                            _gotoNext = 3756642i32;
                        };
                    };
                    _gotoNext = 3756642i32;
                } else if (__value__ == (3756758i32)) {
                    {
                        var __tmp__ = @:check2r _d._unmarshalPath(_tinfo, _sv?.__copy__(), _parents, (stdgo.Go.setRef(_t_61) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), _depth);
                        _consumed2_63 = @:tmpset0 __tmp__._0;
                        _err_64 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_64 != null) {
                        _gotoNext = 3757014i32;
                    } else {
                        _gotoNext = 3757045i32;
                    };
                } else if (__value__ == (3757014i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_64 };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3757045i32;
                } else if (__value__ == (3757045i32)) {
                    if (!_consumed2_63) {
                        _gotoNext = 3757059i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3757059i32)) {
                    {
                        _err_65 = @:check2r _d.skip();
                        if (_err_65 != null) {
                            _gotoNext = 3757096i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (3757096i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_65 };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 0i32;
                } else if (__value__ == (3757133i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : (null : stdgo.Error) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = _t_62;
                    _gotoNext = 3756642i32;
                } else if (__value__ == (3757177i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _unmarshal( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _val:stdgo._internal.reflect.Reflect_value.Value, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>, _depth:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _data_7:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err_1:stdgo.Error = (null : stdgo.Error);
        var _err_52:stdgo.Error = (null : stdgo.Error);
        var _t_44:stdgo._internal.encoding.xml.Xml_endelement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement);
        var _a_28:stdgo._internal.encoding.xml.Xml_attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_attr.Attr);
        var _sv_15:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _err_34:stdgo.Error = (null : stdgo.Error);
        var _handled_29:Bool = false;
        var _comment_9:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _t_55:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _t_43:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _finfo_39:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _finfo_35:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _i_31:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3749874_27:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tok_0:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _err_53:stdgo.Error = (null : stdgo.Error);
        var _ok_26:Bool = false;
        var _fv_25:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _t_46:stdgo._internal.encoding.xml.Xml_comment.Comment = (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment);
        var _savedOffset_40:stdgo.GoInt = (0 : stdgo.GoInt);
        var _finfo_32:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _pv_5:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _tinfo_16:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>);
        var _t_54:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _consumed_47:Bool = false;
        var _saveXML_11:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _t_2:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _strv_36:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _finfo_23:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _typ_22:stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
        var _typ_19:stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
        var _saveAny_14:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _saveXMLIndex_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_48:stdgo.Error = (null : stdgo.Error);
        var _tok_41:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _e_24:stdgo.GoString = ("" : stdgo.GoString);
        var _err_42:stdgo.Error = (null : stdgo.Error);
        var _err_17:stdgo.Error = (null : stdgo.Error);
        var _err_37:stdgo.Error = (null : stdgo.Error);
        var _saveComment_10:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _saveData_8:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _e_4:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _ok_3:Bool = false;
        var _err_49:stdgo.Error = (null : stdgo.Error);
        var _i_38:stdgo.GoInt = (0 : stdgo.GoInt);
        var _any_30:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pv_6:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _t_45:stdgo._internal.encoding.xml.Xml_chardata.CharData = (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData);
        var _strv_33:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _err_21:stdgo.Error = (null : stdgo.Error);
        var _pv_51:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _err_50:stdgo.Error = (null : stdgo.Error);
        var loopBreak = false;
        var _n_20:stdgo.GoInt = (0 : stdgo.GoInt);
        var _v_18:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _saveXMLData_13:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_43;
                    _gotoNext = 3751369i32;
                    var __blank__ = _t_45;
                    _gotoNext = 3751369i32;
                    var __blank__ = _t_46;
                    _gotoNext = 3751369i32;
                    if (((_depth >= (10000 : stdgo.GoInt) : Bool) || (true && (_depth >= (5000 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3746371i32;
                    } else {
                        _gotoNext = 3746442i32;
                    };
                } else if (__value__ == (3746371i32)) {
                    return stdgo._internal.encoding.xml.Xml__errunmarshaldepth._errUnmarshalDepth;
                    _gotoNext = 3746442i32;
                } else if (__value__ == (3746442i32)) {
                    if ((_start == null || (_start : Dynamic).__nil__)) {
                        _gotoNext = 3746458i32;
                    } else {
                        _gotoNext = 3746699i32;
                    };
                } else if (__value__ == (3746458i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3746462i32;
                } else if (__value__ == (3746462i32)) {
                    if (true) {
                        _gotoNext = 3746466i32;
                    } else {
                        _gotoNext = 3746699i32;
                    };
                } else if (__value__ == (3746466i32)) {
                    {
                        var __tmp__ = @:check2r _d.token();
                        _tok_0 = @:tmpset0 __tmp__._0;
                        _err_1 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_1 != null) {
                        _gotoNext = 3746510i32;
                    } else {
                        _gotoNext = 3746535i32;
                    };
                } else if (__value__ == (3746510i32)) {
                    return _err_1;
                    _gotoNext = 3746535i32;
                } else if (__value__ == (3746535i32)) {
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
                            _gotoNext = 3746570i32;
                        } else {
                            _gotoNext = 3746462i32;
                        };
                    };
                } else if (__value__ == (3746570i32)) {
                    _start = (stdgo.Go.setRef(_t_2) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>);
                    _gotoNext = 3746699i32;
                } else if (__value__ == (3746699i32)) {
                    if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_val.isNil() : Bool)) {
                        _gotoNext = 3746750i32;
                    } else {
                        _gotoNext = 3746839i32;
                    };
                } else if (__value__ == (3746750i32)) {
                    _e_4 = _val.elem()?.__copy__();
                    if (((_e_4.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_e_4.isNil() : Bool)) {
                        _gotoNext = 3746817i32;
                    } else {
                        _gotoNext = 3746839i32;
                    };
                } else if (__value__ == (3746817i32)) {
                    _val = _e_4?.__copy__();
                    _gotoNext = 3746839i32;
                } else if (__value__ == (3746839i32)) {
                    if (_val.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 3746872i32;
                    } else {
                        _gotoNext = 3746964i32;
                    };
                } else if (__value__ == (3746872i32)) {
                    if (_val.isNil()) {
                        _gotoNext = 3746891i32;
                    } else {
                        _gotoNext = 3746942i32;
                    };
                } else if (__value__ == (3746891i32)) {
                    _val.set(stdgo._internal.reflect.Reflect_new_.new_(_val.type().elem())?.__copy__());
                    _gotoNext = 3746942i32;
                } else if (__value__ == (3746942i32)) {
                    _val = _val.elem()?.__copy__();
                    _gotoNext = 3746964i32;
                } else if (__value__ == (3746964i32)) {
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalertype._unmarshalerType) : Bool)) {
                        _gotoNext = 3747028i32;
                    } else {
                        _gotoNext = 3747224i32;
                    };
                } else if (__value__ == (3747028i32)) {
                    return @:check2r _d._unmarshalInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3747224i32;
                } else if (__value__ == (3747224i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3747241i32;
                    } else {
                        _gotoNext = 3747405i32;
                    };
                } else if (__value__ == (3747241i32)) {
                    _pv_5 = _val.addr()?.__copy__();
                    if ((_pv_5.canInterface() && _pv_5.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalertype._unmarshalerType) : Bool)) {
                        _gotoNext = 3747326i32;
                    } else {
                        _gotoNext = 3747405i32;
                    };
                } else if (__value__ == (3747326i32)) {
                    return @:check2r _d._unmarshalInterface((stdgo.Go.typeAssert((_pv_5.interface_() : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3747405i32;
                } else if (__value__ == (3747405i32)) {
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3747473i32;
                    } else {
                        _gotoNext = 3747558i32;
                    };
                } else if (__value__ == (3747473i32)) {
                    return @:check2r _d._unmarshalTextInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler));
                    _gotoNext = 3747558i32;
                } else if (__value__ == (3747558i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3747575i32;
                    } else {
                        _gotoNext = 3747753i32;
                    };
                } else if (__value__ == (3747575i32)) {
                    _pv_6 = _val.addr()?.__copy__();
                    if ((_pv_6.canInterface() && _pv_6.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3747664i32;
                    } else {
                        _gotoNext = 3747753i32;
                    };
                } else if (__value__ == (3747664i32)) {
                    return @:check2r _d._unmarshalTextInterface((stdgo.Go.typeAssert((_pv_6.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler));
                    _gotoNext = 3747753i32;
                } else if (__value__ == (3747753i32)) {
                    _gotoNext = 3748040i32;
                } else if (__value__ == (3748040i32)) {
                    {
                        _v_18 = _val?.__copy__();
                        {
                            final __value__ = _v_18.kind();
                            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3748137i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3748331i32;
                            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3748700i32;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3748952i32;
                            } else {
                                _gotoNext = 3748069i32;
                            };
                        };
                    };
                } else if (__value__ == (3748069i32)) {
                    return stdgo._internal.errors.Errors_new_.new_((("unknown type " : stdgo.GoString) + (_v_18.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3748137i32)) {
                    return @:check2r _d.skip();
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3748331i32)) {
                    _typ_19 = _v_18.type();
                    if (_typ_19.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 3748409i32;
                    } else {
                        _gotoNext = 3748503i32;
                    };
                } else if (__value__ == (3748409i32)) {
                    _saveData_8 = _v_18?.__copy__();
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3748503i32)) {
                    _n_20 = _v_18.len();
                    _v_18.grow((1 : stdgo.GoInt));
                    _v_18.setLen((_n_20 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    {
                        _err_21 = @:check2r _d._unmarshal(_v_18.index(_n_20)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_21 != null) {
                            _gotoNext = 3748650i32;
                        } else {
                            _gotoNext = 3748687i32;
                        };
                    };
                } else if (__value__ == (3748650i32)) {
                    _v_18.setLen(_n_20);
                    return _err_21;
                    _gotoNext = 3748687i32;
                } else if (__value__ == (3748687i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3748700i32)) {
                    _saveData_8 = _v_18?.__copy__();
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3748952i32)) {
                    _typ_22 = _v_18.type();
                    if ((_typ_22.string() : String) == (stdgo._internal.encoding.xml.Xml__nametype._nameType.string() : String)) {
                        _gotoNext = 3749012i32;
                    } else {
                        _gotoNext = 3749068i32;
                    };
                } else if (__value__ == (3749012i32)) {
                    _v_18.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _start ?? throw "null pointer dereference").name)))?.__copy__());
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3749068i32)) {
                    _sv_15 = _v_18?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.encoding.xml.Xml__gettypeinfo._getTypeInfo(_typ_22);
                        _tinfo_16 = @:tmpset0 __tmp__._0;
                        _err_17 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_17 != null) {
                        _gotoNext = 3749123i32;
                    } else {
                        _gotoNext = 3749185i32;
                    };
                } else if (__value__ == (3749123i32)) {
                    return _err_17;
                    _gotoNext = 3749185i32;
                } else if (__value__ == (3749185i32)) {
                    if (((@:checkr _tinfo_16 ?? throw "null pointer dereference")._xmlname != null && (((@:checkr _tinfo_16 ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__ == null || !((@:checkr _tinfo_16 ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__))) {
                        _gotoNext = 3749209i32;
                    } else {
                        _gotoNext = 3749862i32;
                    };
                } else if (__value__ == (3749209i32)) {
                    _finfo_23 = (@:checkr _tinfo_16 ?? throw "null pointer dereference")._xmlname;
                    if ((((@:checkr _finfo_23 ?? throw "null pointer dereference")._name != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _finfo_23 ?? throw "null pointer dereference")._name != (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3749294i32;
                    } else {
                        _gotoNext = 3749412i32;
                    };
                } else if (__value__ == (3749294i32)) {
                    return stdgo.Go.asInterface((((((("expected element type <" : stdgo.GoString) + (@:checkr _finfo_23 ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString) + ("> but have <" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _start ?? throw "null pointer dereference").name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.encoding.xml.Xml_unmarshalerror.UnmarshalError));
                    _gotoNext = 3749412i32;
                } else if (__value__ == (3749412i32)) {
                    if ((((@:checkr _finfo_23 ?? throw "null pointer dereference")._xmlns != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _finfo_23 ?? throw "null pointer dereference")._xmlns != (@:checkr _start ?? throw "null pointer dereference").name.space) : Bool)) {
                        _gotoNext = 3749468i32;
                    } else {
                        _gotoNext = 3749704i32;
                    };
                } else if (__value__ == (3749468i32)) {
                    _e_24 = ((((("expected element <" : stdgo.GoString) + (@:checkr _finfo_23 ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString) + ("> in name space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _finfo_23 ?? throw "null pointer dereference")._xmlns?.__copy__() : stdgo.GoString) + (" but have " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    if ((@:checkr _start ?? throw "null pointer dereference").name.space == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3749593i32;
                    } else {
                        _gotoNext = 3749632i32;
                    };
                } else if (__value__ == (3749593i32)) {
                    _e_24 = (_e_24 + (("no name space" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3749671i32;
                } else if (__value__ == (3749632i32)) {
                    _gotoNext = 3749632i32;
                    _e_24 = (_e_24 + ((@:checkr _start ?? throw "null pointer dereference").name.space)?.__copy__() : stdgo.GoString);
                    var __blank__ = 0i32;
                    _gotoNext = 3749671i32;
                } else if (__value__ == (3749671i32)) {
                    return stdgo.Go.asInterface((_e_24 : stdgo._internal.encoding.xml.Xml_unmarshalerror.UnmarshalError));
                    _gotoNext = 3749704i32;
                } else if (__value__ == (3749704i32)) {
                    _fv_25 = @:check2r _finfo_23._value(_sv_15?.__copy__(), true)?.__copy__();
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
                            _gotoNext = 3749784i32;
                        } else {
                            _gotoNext = 3749862i32;
                        };
                    };
                } else if (__value__ == (3749784i32)) {
                    _fv_25.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _start ?? throw "null pointer dereference").name)))?.__copy__());
                    _gotoNext = 3749862i32;
                } else if (__value__ == (3749862i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _start ?? throw "null pointer dereference").attr.length)) {
                        _gotoNext = 3750547i32;
                    } else {
                        _gotoNext = 3750620i32;
                    };
                } else if (__value__ == (3749866i32)) {
                    _i_3749874_27++;
                    _gotoNext = 3750548i32;
                } else if (__value__ == (3749891i32)) {
                    _a_28 = (@:checkr _start ?? throw "null pointer dereference").attr[(_i_3749874_27 : stdgo.GoInt)];
                    _handled_29 = false;
                    _any_30 = (-1 : stdgo.GoInt);
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3750357i32;
                    } else {
                        _gotoNext = 3750363i32;
                    };
                } else if (__value__ == (3749933i32)) {
                    _i_31++;
                    _gotoNext = 3750358i32;
                } else if (__value__ == (3749957i32)) {
                    _finfo_32 = (stdgo.Go.setRef((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields[(_i_31 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _gotoNext = 3749993i32;
                } else if (__value__ == (3749993i32)) {
                    {
                        final __value__ = ((@:checkr _finfo_32 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                        if (__value__ == ((2 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3750026i32;
                        } else if (__value__ == ((66 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3750289i32;
                        } else {
                            _gotoNext = 3749933i32;
                        };
                    };
                } else if (__value__ == (3750026i32)) {
                    _strv_33 = @:check2r _finfo_32._value(_sv_15?.__copy__(), true)?.__copy__();
                    if (((_a_28.name.local == (@:checkr _finfo_32 ?? throw "null pointer dereference")._name) && ((((@:checkr _finfo_32 ?? throw "null pointer dereference")._xmlns == (stdgo.Go.str() : stdgo.GoString)) || ((@:checkr _finfo_32 ?? throw "null pointer dereference")._xmlns == _a_28.name.space) : Bool)) : Bool)) {
                        _gotoNext = 3750173i32;
                    } else {
                        _gotoNext = 3749933i32;
                    };
                } else if (__value__ == (3750173i32)) {
                    {
                        _err_34 = @:check2r _d._unmarshalAttr(_strv_33?.__copy__(), _a_28?.__copy__());
                        if (_err_34 != null) {
                            _gotoNext = 3750228i32;
                        } else {
                            _gotoNext = 3750262i32;
                        };
                    };
                } else if (__value__ == (3750228i32)) {
                    return _err_34;
                    _gotoNext = 3750262i32;
                } else if (__value__ == (3750262i32)) {
                    _handled_29 = true;
                    _gotoNext = 3749933i32;
                } else if (__value__ == (3750289i32)) {
                    if (_any_30 == ((-1 : stdgo.GoInt))) {
                        _gotoNext = 3750326i32;
                    } else {
                        _gotoNext = 3749933i32;
                    };
                } else if (__value__ == (3750326i32)) {
                    _any_30 = _i_31;
                    _gotoNext = 3749933i32;
                } else if (__value__ == (3750357i32)) {
                    _i_31 = 0i32;
                    _gotoNext = 3750358i32;
                } else if (__value__ == (3750358i32)) {
                    if (_i_31 < ((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3749957i32;
                    } else {
                        _gotoNext = 3750363i32;
                    };
                } else if (__value__ == (3750363i32)) {
                    if ((!_handled_29 && (_any_30 >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3750387i32;
                    } else {
                        _gotoNext = 3749866i32;
                    };
                } else if (__value__ == (3750387i32)) {
                    _finfo_35 = (stdgo.Go.setRef((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields[(_any_30 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _strv_36 = @:check2r _finfo_35._value(_sv_15?.__copy__(), true)?.__copy__();
                    {
                        _err_37 = @:check2r _d._unmarshalAttr(_strv_36?.__copy__(), _a_28?.__copy__());
                        if (_err_37 != null) {
                            _gotoNext = 3750517i32;
                        } else {
                            _gotoNext = 3749866i32;
                        };
                    };
                } else if (__value__ == (3750517i32)) {
                    return _err_37;
                    _gotoNext = 3749866i32;
                } else if (__value__ == (3750547i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _start ?? throw "null pointer dereference").attr[(0i32 : stdgo.GoInt)];
                        _i_3749874_27 = __tmp__0;
                        _a_28 = __tmp__1;
                    };
                    _gotoNext = 3750548i32;
                } else if (__value__ == (3750548i32)) {
                    if (_i_3749874_27 < ((@:checkr _start ?? throw "null pointer dereference").attr.length)) {
                        _gotoNext = 3749891i32;
                    } else {
                        _gotoNext = 3750620i32;
                    };
                } else if (__value__ == (3750620i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3751293i32;
                    } else {
                        _gotoNext = 3751362i32;
                    };
                } else if (__value__ == (3750624i32)) {
                    _i_38++;
                    _gotoNext = 3751294i32;
                } else if (__value__ == (3750648i32)) {
                    _finfo_39 = (stdgo.Go.setRef((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields[(_i_38 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _gotoNext = 3750682i32;
                } else if (__value__ == (3750682i32)) {
                    {
                        final __value__ = ((@:checkr _finfo_39 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                        if (__value__ == ((4 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3750714i32;
                        } else if (__value__ == ((32 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3750826i32;
                        } else if (__value__ == ((64 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((65 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3750935i32;
                        } else if (__value__ == ((16 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3751049i32;
                        } else {
                            _gotoNext = 3750624i32;
                        };
                    };
                } else if (__value__ == (3750714i32)) {
                    if (!_saveData_8.isValid()) {
                        _gotoNext = 3750765i32;
                    } else {
                        _gotoNext = 3750624i32;
                    };
                } else if (__value__ == (3750765i32)) {
                    _saveData_8 = @:check2r _finfo_39._value(_sv_15?.__copy__(), true)?.__copy__();
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3750826i32)) {
                    if (!_saveComment_10.isValid()) {
                        _gotoNext = 3750871i32;
                    } else {
                        _gotoNext = 3750624i32;
                    };
                } else if (__value__ == (3750871i32)) {
                    _saveComment_10 = @:check2r _finfo_39._value(_sv_15?.__copy__(), true)?.__copy__();
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3750935i32)) {
                    if (!_saveAny_14.isValid()) {
                        _gotoNext = 3750989i32;
                    } else {
                        _gotoNext = 3750624i32;
                    };
                } else if (__value__ == (3750989i32)) {
                    _saveAny_14 = @:check2r _finfo_39._value(_sv_15?.__copy__(), true)?.__copy__();
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3751049i32)) {
                    if (!_saveXML_11.isValid()) {
                        _gotoNext = 3751091i32;
                    } else {
                        _gotoNext = 3750624i32;
                    };
                } else if (__value__ == (3751091i32)) {
                    _saveXML_11 = @:check2r _finfo_39._value(_sv_15?.__copy__(), true)?.__copy__();
                    if (((@:checkr _d ?? throw "null pointer dereference")._saved == null || ((@:checkr _d ?? throw "null pointer dereference")._saved : Dynamic).__nil__)) {
                        _gotoNext = 3751164i32;
                    } else {
                        _gotoNext = 3751235i32;
                    };
                } else if (__value__ == (3751164i32)) {
                    _saveXMLIndex_12 = (0 : stdgo.GoInt);
                    (@:checkr _d ?? throw "null pointer dereference")._saved = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3751235i32)) {
                    _gotoNext = 3751235i32;
                    _saveXMLIndex_12 = @:check2r _d._savedOffset();
                    var __blank__ = 0i32;
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3751293i32)) {
                    _i_38 = 0i32;
                    _gotoNext = 3751294i32;
                } else if (__value__ == (3751294i32)) {
                    if (_i_38 < ((@:checkr _tinfo_16 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3750648i32;
                    } else {
                        _gotoNext = 3751362i32;
                    };
                } else if (__value__ == (3751362i32)) {
                    _gotoNext = 3751362i32;
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3751369i32;
                } else if (__value__ == (3751369i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3751373i32;
                    } else {
                        _gotoNext = 3752458i32;
                    };
                } else if (__value__ == (3751373i32)) {
                    if (_saveXML_11.isValid()) {
                        _gotoNext = 3751420i32;
                    } else {
                        _gotoNext = 3751461i32;
                    };
                } else if (__value__ == (3751420i32)) {
                    _savedOffset_40 = @:check2r _d._savedOffset();
                    _gotoNext = 3751461i32;
                } else if (__value__ == (3751461i32)) {
                    {
                        var __tmp__ = @:check2r _d.token();
                        _tok_41 = @:tmpset0 __tmp__._0;
                        _err_42 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_42 != null) {
                        _gotoNext = 3751499i32;
                    } else {
                        _gotoNext = 3751521i32;
                    };
                } else if (__value__ == (3751499i32)) {
                    return _err_42;
                    _gotoNext = 3751521i32;
                } else if (__value__ == (3751521i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3751521i32;
                    {
                        final __type__ = _tok_41;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value;
                            _t_43 = _t;
                            _gotoNext = 3751548i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value;
                            _t_44 = _t;
                            _gotoNext = 3752107i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_chardata.CharData))) {
                            var _t:stdgo._internal.encoding.xml.Xml_chardata.CharData = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__().value;
                            _t_45 = _t;
                            _gotoNext = 3752284i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_comment.Comment))) {
                            var _t:stdgo._internal.encoding.xml.Xml_comment.Comment = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : __type__ == null ? (new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : stdgo._internal.encoding.xml.Xml_comment.Comment) : __type__.__underlying__().value;
                            _t_46 = _t;
                            _gotoNext = 3752364i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_token.Token = __type__?.__underlying__();
                            _gotoNext = 3751369i32;
                        };
                    };
                    _gotoNext = 3751369i32;
                } else if (__value__ == (3751548i32)) {
                    _consumed_47 = false;
                    if (_sv_15.isValid()) {
                        _gotoNext = 3751607i32;
                    } else {
                        _gotoNext = 3752025i32;
                    };
                } else if (__value__ == (3751607i32)) {
                    {
                        var __tmp__ = @:check2r _d._unmarshalPath(_tinfo_16, _sv_15?.__copy__(), (null : stdgo.Slice<stdgo.GoString>), (stdgo.Go.setRef(_t_43) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), _depth);
                        _consumed_47 = @:tmpset0 __tmp__._0;
                        _err_42 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_42 != null) {
                        _gotoNext = 3751839i32;
                    } else {
                        _gotoNext = 3751867i32;
                    };
                } else if (__value__ == (3751839i32)) {
                    return _err_42;
                    _gotoNext = 3751867i32;
                } else if (__value__ == (3751867i32)) {
                    if ((!_consumed_47 && _saveAny_14.isValid() : Bool)) {
                        _gotoNext = 3751901i32;
                    } else {
                        _gotoNext = 3752025i32;
                    };
                } else if (__value__ == (3751901i32)) {
                    _consumed_47 = true;
                    {
                        _err_48 = @:check2r _d._unmarshal(_saveAny_14?.__copy__(), (stdgo.Go.setRef(_t_43) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_48 != null) {
                            _gotoNext = 3751985i32;
                        } else {
                            _gotoNext = 3752025i32;
                        };
                    };
                } else if (__value__ == (3751985i32)) {
                    return _err_48;
                    _gotoNext = 3752025i32;
                } else if (__value__ == (3752025i32)) {
                    if (!_consumed_47) {
                        _gotoNext = 3752038i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3752038i32)) {
                    {
                        _err_49 = @:check2r _d.skip();
                        if (_err_49 != null) {
                            _gotoNext = 3752075i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (3752075i32)) {
                    return _err_49;
                    _gotoNext = 0i32;
                } else if (__value__ == (3752107i32)) {
                    if (_saveXML_11.isValid()) {
                        _gotoNext = 3752148i32;
                    } else {
                        _gotoNext = 3752270i32;
                    };
                } else if (__value__ == (3752148i32)) {
                    _saveXMLData_13 = (@:check2r (@:checkr _d ?? throw "null pointer dereference")._saved.bytes().__slice__(_saveXMLIndex_12, _savedOffset_40) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_saveXMLIndex_12 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3752235i32;
                    } else {
                        _gotoNext = 3752270i32;
                    };
                } else if (__value__ == (3752235i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._saved = null;
                    _gotoNext = 3752270i32;
                } else if (__value__ == (3752270i32)) {
                    loopBreak = true;
                    _gotoNext = 3751369i32;
                } else if (__value__ == (3752284i32)) {
                    if (_saveData_8.isValid()) {
                        _gotoNext = 3752324i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3752324i32)) {
                    _data_7 = (_data_7.__append__(...(_t_45 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 0i32;
                } else if (__value__ == (3752364i32)) {
                    if (_saveComment_10.isValid()) {
                        _gotoNext = 3752406i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3752406i32)) {
                    _comment_9 = (_comment_9.__append__(...(_t_46 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 0i32;
                } else if (__value__ == (3752458i32)) {
                    if (((_saveData_8.isValid() && _saveData_8.canInterface() : Bool) && _saveData_8.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3752558i32;
                    } else {
                        _gotoNext = 3752706i32;
                    };
                } else if (__value__ == (3752558i32)) {
                    {
                        _err_50 = (stdgo.Go.typeAssert((_saveData_8.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText(_data_7);
                        if (_err_50 != null) {
                            _gotoNext = 3752652i32;
                        } else {
                            _gotoNext = 3752674i32;
                        };
                    };
                } else if (__value__ == (3752652i32)) {
                    return _err_50;
                    _gotoNext = 3752674i32;
                } else if (__value__ == (3752674i32)) {
                    _saveData_8 = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
                    _gotoNext = 3752706i32;
                } else if (__value__ == (3752706i32)) {
                    if ((_saveData_8.isValid() && _saveData_8.canAddr() : Bool)) {
                        _gotoNext = 3752750i32;
                    } else {
                        _gotoNext = 3752994i32;
                    };
                } else if (__value__ == (3752750i32)) {
                    _pv_51 = _saveData_8.addr()?.__copy__();
                    if ((_pv_51.canInterface() && _pv_51.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3752844i32;
                    } else {
                        _gotoNext = 3752994i32;
                    };
                } else if (__value__ == (3752844i32)) {
                    {
                        _err_52 = (stdgo.Go.typeAssert((_pv_51.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText(_data_7);
                        if (_err_52 != null) {
                            _gotoNext = 3752933i32;
                        } else {
                            _gotoNext = 3752958i32;
                        };
                    };
                } else if (__value__ == (3752933i32)) {
                    return _err_52;
                    _gotoNext = 3752958i32;
                } else if (__value__ == (3752958i32)) {
                    _saveData_8 = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
                    _gotoNext = 3752994i32;
                } else if (__value__ == (3752994i32)) {
                    {
                        _err_53 = stdgo._internal.encoding.xml.Xml__copyvalue._copyValue(_saveData_8?.__copy__(), _data_7);
                        if (_err_53 != null) {
                            _gotoNext = 3753042i32;
                        } else {
                            _gotoNext = 3753062i32;
                        };
                    };
                } else if (__value__ == (3753042i32)) {
                    return _err_53;
                    _gotoNext = 3753062i32;
                } else if (__value__ == (3753062i32)) {
                    _gotoNext = 3753062i32;
                    {
                        _t_54 = _saveComment_10?.__copy__();
                        {
                            final __value__ = _t_54.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3753099i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3753152i32;
                            } else {
                                _gotoNext = 3753211i32;
                            };
                        };
                    };
                } else if (__value__ == (3753099i32)) {
                    _t_54.setString((_comment_9 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3753211i32;
                } else if (__value__ == (3753152i32)) {
                    _t_54.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_comment_9))?.__copy__());
                    _gotoNext = 3753211i32;
                } else if (__value__ == (3753211i32)) {
                    _gotoNext = 3753211i32;
                    {
                        _t_55 = _saveXML_11?.__copy__();
                        {
                            final __value__ = _t_55.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3753244i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3753301i32;
                            } else {
                                _gotoNext = 3753416i32;
                            };
                        };
                    };
                } else if (__value__ == (3753244i32)) {
                    _t_55.setString((_saveXMLData_13 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3753416i32;
                } else if (__value__ == (3753301i32)) {
                    if (_t_55.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 3753366i32;
                    } else {
                        _gotoNext = 3753416i32;
                    };
                } else if (__value__ == (3753366i32)) {
                    _t_55.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_saveXMLData_13))?.__copy__());
                    _gotoNext = 3753416i32;
                } else if (__value__ == (3753416i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _unmarshalAttr( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _val:stdgo._internal.reflect.Reflect_value.Value, _attr:stdgo._internal.encoding.xml.Xml_attr.Attr):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        if (_val.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            if (_val.isNil()) {
                _val.set(stdgo._internal.reflect.Reflect_new_.new_(_val.type().elem())?.__copy__());
            };
            _val = _val.elem()?.__copy__();
        };
        if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerattrtype._unmarshalerAttrType) : Bool)) {
            return (stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_unmarshalerattr.UnmarshalerAttr)) : stdgo._internal.encoding.xml.Xml_unmarshalerattr.UnmarshalerAttr).unmarshalXMLAttr(_attr?.__copy__());
        };
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerattrtype._unmarshalerAttrType) : Bool)) {
                return (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.xml.Xml_unmarshalerattr.UnmarshalerAttr)) : stdgo._internal.encoding.xml.Xml_unmarshalerattr.UnmarshalerAttr).unmarshalXMLAttr(_attr?.__copy__());
            };
        };
        if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
            return (stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText((_attr.value : stdgo.Slice<stdgo.GoUInt8>));
        };
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                return (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText((_attr.value : stdgo.Slice<stdgo.GoUInt8>));
            };
        };
        if (((_val.type().kind() == (23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && (_val.type().elem().kind() != (8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
            var _n = (_val.len() : stdgo.GoInt);
            _val.grow((1 : stdgo.GoInt));
            _val.setLen((_n + (1 : stdgo.GoInt) : stdgo.GoInt));
            {
                var _err = (@:check2r _d._unmarshalAttr(_val.index(_n)?.__copy__(), _attr?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    _val.setLen(_n);
                    return _err;
                };
            };
            return (null : stdgo.Error);
        };
        if ((_val.type().string() : String) == (stdgo._internal.encoding.xml.Xml__attrtype._attrType.string() : String)) {
            _val.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_attr)))?.__copy__());
            return (null : stdgo.Error);
        };
        return stdgo._internal.encoding.xml.Xml__copyvalue._copyValue(_val?.__copy__(), (_attr.value : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _unmarshalTextInterface( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _val:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _depth = (1 : stdgo.GoInt);
        while ((_depth > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = @:check2r _d.token(), _t:stdgo._internal.encoding.xml.Xml_token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            {
                final __type__ = _t;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_chardata.CharData))) {
                    var _t:stdgo._internal.encoding.xml.Xml_chardata.CharData = __type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__() == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__ == null ? (new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : stdgo._internal.encoding.xml.Xml_chardata.CharData) : __type__.__underlying__().value;
                    if (_depth == ((1 : stdgo.GoInt))) {
                        _buf = (_buf.__append__(...(_t : Array<stdgo.GoUInt8>)));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                    var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value;
                    _depth++;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                    var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value;
                    _depth--;
                };
            };
        };
        return _val.unmarshalText(_buf);
    }
    @:keep
    @:tdfield
    static public function _unmarshalInterface( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _val:stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        @:check2r _d._pushEOF();
        (@:checkr _d ?? throw "null pointer dereference")._unmarshalDepth++;
        var _err = (_val.unmarshalXML(_d, (_start : stdgo._internal.encoding.xml.Xml_startelement.StartElement)?.__copy__()) : stdgo.Error);
        (@:checkr _d ?? throw "null pointer dereference")._unmarshalDepth--;
        if (_err != null) {
            @:check2r _d._popEOF();
            return _err;
        };
        if (!@:check2r _d._popEOF()) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: %s.UnmarshalXML did not consume entire <%s> element" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.xml.Xml__receivertype._receiverType(stdgo.Go.toInterface(_val))), stdgo.Go.toInterface((@:checkr _start ?? throw "null pointer dereference").name.local));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function decodeElement( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _v:stdgo.AnyInterface, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        var _val = (stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        if (_val.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            return stdgo._internal.errors.Errors_new_.new_(("non-pointer passed to Unmarshal" : stdgo.GoString));
        };
        if (_val.isNil()) {
            return stdgo._internal.errors.Errors_new_.new_(("nil pointer passed to Unmarshal" : stdgo.GoString));
        };
        return @:check2r _d._unmarshal(_val.elem()?.__copy__(), _start, (0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function decode( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> = _d;
        return @:check2r _d.decodeElement(_v, null);
    }
}
