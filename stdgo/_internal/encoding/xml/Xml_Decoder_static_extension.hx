package stdgo._internal.encoding.xml;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    @:tdfield
    static public function _readName( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
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
        if (((_b < (128 : stdgo.GoUInt8) : Bool) && !stdgo._internal.encoding.xml.Xml__isNameByte._isNameByte(_b) : Bool)) {
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
            if (((_b < (128 : stdgo.GoUInt8) : Bool) && !stdgo._internal.encoding.xml.Xml__isNameByte._isNameByte(_b) : Bool)) {
                @:check2r _d._ungetc(_b);
                break;
            };
            @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b);
        };
        return _ok = true;
    }
    @:keep
    @:tdfield
    static public function _name( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _s = ("" : stdgo.GoString), _ok = false;
        @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
        if (!@:check2r _d._readName()) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
                _s = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _b = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
        if (!stdgo._internal.encoding.xml.Xml__isName._isName(_b)) {
            (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError((("invalid XML name: " : stdgo.GoString) + (_b : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
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
    static public function _nsname( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_Name.Name; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name), _ok = false;
        var __tmp__ = @:check2r _d._name(), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : _name, _1 : _ok };
        };
        if ((stdgo._internal.strings.Strings_count.count(_s?.__copy__(), (":" : stdgo.GoString)) > (1 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.encoding.xml.Xml_Name.Name; var _1 : Bool; } = { _0 : _name?.__copy__(), _1 : false };
                _name = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        } else {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_s?.__copy__(), (":" : stdgo.GoString)), _space:stdgo.GoString = __tmp__._0, _local:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (((!_ok || _space == (stdgo.Go.str()) : Bool) || (_local == stdgo.Go.str()) : Bool)) {
                _name.local = _s?.__copy__();
            } else {
                _name.space = _space?.__copy__();
                _name.local = _local?.__copy__();
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.encoding.xml.Xml_Name.Name; var _1 : Bool; } = { _0 : _name?.__copy__(), _1 : true };
            _name = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _text( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _quote:stdgo.GoInt, _cdata:Bool):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _s_3670574:stdgo.GoString = ("" : stdgo.GoString);
        var _start_3670293:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_3670155:stdgo.GoInt = (0 : stdgo.GoInt);
        var _haveText_3669986:Bool = false;
        var _trunc_3668836:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3671122:Bool = false;
        var _buf_3671990:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_3670640:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _text_3669967:stdgo.GoString = ("" : stdgo.GoString);
        var _b_3668877:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var inputBreak = false;
        var _size_3672027:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3672024:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _ent_3671465:stdgo.GoString = ("" : stdgo.GoString);
        var _s_3671092:stdgo.GoString = ("" : stdgo.GoString);
        var _b1_3668823:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _err_3670643:stdgo.Error = (null : stdgo.Error);
        var _ok_3669952:Bool = false;
        var _before_3669899:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3668880:Bool = false;
        var _b0_3668819:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _data_3671876:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _r_3671119:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _name_3671004:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    _gotoNext = 3668861i32;
                } else if (__value__ == (3668861i32)) {
                    var __blank__ = 0i32;
                    inputBreak = false;
                    _gotoNext = 3668869i32;
                } else if (__value__ == (3668869i32)) {
                    if (!inputBreak) {
                        _gotoNext = 3668873i32;
                    } else {
                        _gotoNext = 3671876i32;
                    };
                } else if (__value__ == (3668873i32)) {
                    {
                        var __tmp__ = @:check2r _d._getc();
                        _b_3668877 = @:tmpset0 __tmp__._0;
                        _ok_3668880 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_3668880) {
                        _gotoNext = 3668904i32;
                    } else {
                        _gotoNext = 3669149i32;
                    };
                } else if (__value__ == (3668904i32)) {
                    if (_cdata) {
                        _gotoNext = 3668918i32;
                    } else {
                        _gotoNext = 3669036i32;
                    };
                } else if (__value__ == (3668918i32)) {
                    if (stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                        _gotoNext = 3668943i32;
                    } else {
                        _gotoNext = 3669017i32;
                    };
                } else if (__value__ == (3668943i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unexpected EOF in CDATA section" : stdgo.GoString));
                    _gotoNext = 3669017i32;
                } else if (__value__ == (3669017i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3669036i32;
                } else if (__value__ == (3669036i32)) {
                    inputBreak = true;
                    _gotoNext = 3668869i32;
                } else if (__value__ == (3669149i32)) {
                    if (((_b0_3668819 == ((93 : stdgo.GoUInt8)) && _b1_3668823 == ((93 : stdgo.GoUInt8)) : Bool) && (_b_3668877 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3669187i32;
                    } else {
                        _gotoNext = 3669360i32;
                    };
                } else if (__value__ == (3669187i32)) {
                    if (_cdata) {
                        _gotoNext = 3669201i32;
                    } else {
                        _gotoNext = 3669241i32;
                    };
                } else if (__value__ == (3669201i32)) {
                    _trunc_3668836 = (2 : stdgo.GoInt);
                    inputBreak = true;
                    _gotoNext = 3668869i32;
                } else if (__value__ == (3669241i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unescaped ]]> not in CDATA section" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3669360i32;
                } else if (__value__ == (3669360i32)) {
                    if (((_b_3668877 == (60 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                        _gotoNext = 3669382i32;
                    } else {
                        _gotoNext = 3669523i32;
                    };
                } else if (__value__ == (3669382i32)) {
                    if ((_quote >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3669401i32;
                    } else {
                        _gotoNext = 3669488i32;
                    };
                } else if (__value__ == (3669401i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unescaped < inside quoted string" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3669488i32;
                } else if (__value__ == (3669488i32)) {
                    @:check2r _d._ungetc((60 : stdgo.GoUInt8));
                    inputBreak = true;
                    _gotoNext = 3668869i32;
                } else if (__value__ == (3669523i32)) {
                    if (((_quote >= (0 : stdgo.GoInt) : Bool) && (_b_3668877 == (_quote : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3669557i32;
                    } else {
                        _gotoNext = 3669580i32;
                    };
                } else if (__value__ == (3669557i32)) {
                    inputBreak = true;
                    _gotoNext = 3668869i32;
                } else if (__value__ == (3669580i32)) {
                    if (((_b_3668877 == (38 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                        _gotoNext = 3669602i32;
                    } else {
                        _gotoNext = 3671701i32;
                    };
                } else if (__value__ == (3669602i32)) {
                    _before_3669899 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.len();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((38 : stdgo.GoUInt8));
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3668877 = @:tmpset0 __tmp__._0;
                            _ok_3669952 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3669952) {
                            _gotoNext = 3670032i32;
                        } else {
                            _gotoNext = 3670057i32;
                        };
                    };
                } else if (__value__ == (3670032i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3670057i32;
                } else if (__value__ == (3670057i32)) {
                    if (_b_3668877 == ((35 : stdgo.GoUInt8))) {
                        _gotoNext = 3670069i32;
                    } else {
                        _gotoNext = 3670800i32;
                    };
                } else if (__value__ == (3670069i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3668877);
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3668877 = @:tmpset0 __tmp__._0;
                            _ok_3669952 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3669952) {
                            _gotoNext = 3670127i32;
                        } else {
                            _gotoNext = 3670155i32;
                        };
                    };
                } else if (__value__ == (3670127i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3670155i32;
                } else if (__value__ == (3670155i32)) {
                    _base_3670155 = (10 : stdgo.GoInt);
                    if (_b_3668877 == ((120 : stdgo.GoUInt8))) {
                        _gotoNext = 3670182i32;
                    } else {
                        _gotoNext = 3670293i32;
                    };
                } else if (__value__ == (3670182i32)) {
                    _base_3670155 = (16 : stdgo.GoInt);
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3668877);
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3668877 = @:tmpset0 __tmp__._0;
                            _ok_3669952 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3669952) {
                            _gotoNext = 3670257i32;
                        } else {
                            _gotoNext = 3670293i32;
                        };
                    };
                } else if (__value__ == (3670257i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3670293i32;
                } else if (__value__ == (3670293i32)) {
                    _start_3670293 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.len();
                    var __blank__ = 0i32;
                    _gotoNext = 3670318i32;
                } else if (__value__ == (3670318i32)) {
                    if ((((((48 : stdgo.GoUInt8) <= _b_3668877 : Bool) && (_b_3668877 <= (57 : stdgo.GoUInt8) : Bool) : Bool) || ((_base_3670155 == ((16 : stdgo.GoInt)) && ((97 : stdgo.GoUInt8) <= _b_3668877 : Bool) : Bool) && (_b_3668877 <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || ((_base_3670155 == ((16 : stdgo.GoInt)) && ((65 : stdgo.GoUInt8) <= _b_3668877 : Bool) : Bool) && (_b_3668877 <= (70 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3670429i32;
                    } else {
                        _gotoNext = 3670525i32;
                    };
                } else if (__value__ == (3670429i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3668877);
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3668877 = @:tmpset0 __tmp__._0;
                            _ok_3669952 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3669952) {
                            _gotoNext = 3670489i32;
                        } else {
                            _gotoNext = 3670318i32;
                        };
                    };
                } else if (__value__ == (3670489i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3670318i32;
                } else if (__value__ == (3670525i32)) {
                    if (_b_3668877 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3670537i32;
                    } else {
                        _gotoNext = 3670567i32;
                    };
                } else if (__value__ == (3670537i32)) {
                    @:check2r _d._ungetc(_b_3668877);
                    _gotoNext = 3671291i32;
                } else if (__value__ == (3670567i32)) {
                    _gotoNext = 3670567i32;
                    _s_3670574 = ((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__(_start_3670293) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((59 : stdgo.GoUInt8));
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_s_3670574?.__copy__(), _base_3670155, (64 : stdgo.GoInt));
                        _n_3670640 = @:tmpset0 __tmp__._0;
                        _err_3670643 = @:tmpset0 __tmp__._1;
                    };
                    if (((_err_3670643 == null) && (_n_3670640 <= (1114111i64 : stdgo.GoUInt64) : Bool) : Bool)) {
                        _gotoNext = 3670724i32;
                    } else {
                        _gotoNext = 3671291i32;
                    };
                } else if (__value__ == (3670724i32)) {
                    _text_3669967 = ((_n_3670640 : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
                    _haveText_3669986 = true;
                    _gotoNext = 3671291i32;
                } else if (__value__ == (3670800i32)) {
                    _gotoNext = 3670800i32;
                    @:check2r _d._ungetc(_b_3668877);
                    if (!@:check2r _d._readName()) {
                        _gotoNext = 3670839i32;
                    } else {
                        _gotoNext = 3670898i32;
                    };
                } else if (__value__ == (3670839i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 3670862i32;
                    } else {
                        _gotoNext = 3670898i32;
                    };
                } else if (__value__ == (3670862i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3670898i32;
                } else if (__value__ == (3670898i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3668877 = @:tmpset0 __tmp__._0;
                            _ok_3669952 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3669952) {
                            _gotoNext = 3670927i32;
                        } else {
                            _gotoNext = 3670955i32;
                        };
                    };
                } else if (__value__ == (3670927i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3670955i32;
                } else if (__value__ == (3670955i32)) {
                    if (_b_3668877 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3670967i32;
                    } else {
                        _gotoNext = 3670997i32;
                    };
                } else if (__value__ == (3670967i32)) {
                    @:check2r _d._ungetc(_b_3668877);
                    _gotoNext = 3671291i32;
                } else if (__value__ == (3670997i32)) {
                    _gotoNext = 3670997i32;
                    _name_3671004 = (@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__((_before_3669899 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((59 : stdgo.GoUInt8));
                    if (stdgo._internal.encoding.xml.Xml__isName._isName(_name_3671004)) {
                        _gotoNext = 3671084i32;
                    } else {
                        _gotoNext = 3671291i32;
                    };
                } else if (__value__ == (3671084i32)) {
                    _s_3671092 = (_name_3671004 : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = (stdgo._internal.encoding.xml.Xml__entity._entity != null && stdgo._internal.encoding.xml.Xml__entity._entity.exists(_s_3671092?.__copy__()) ? { _0 : stdgo._internal.encoding.xml.Xml__entity._entity[_s_3671092?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt32), _1 : false });
                            _r_3671119 = @:tmpset0 __tmp__._0;
                            _ok_3671122 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3671122) {
                            _gotoNext = 3671142i32;
                        } else if ((@:checkr _d ?? throw "null pointer dereference").entity != null) {
                            _gotoNext = 3671223i32;
                        } else {
                            _gotoNext = 3671291i32;
                        };
                    };
                } else if (__value__ == (3671142i32)) {
                    _text_3669967 = (_r_3671119 : stdgo.GoString)?.__copy__();
                    _haveText_3669986 = true;
                    _gotoNext = 3671291i32;
                } else if (__value__ == (3671223i32)) {
                    {
                        var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference").entity != null && (@:checkr _d ?? throw "null pointer dereference").entity.exists(_s_3671092?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference").entity[_s_3671092?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false });
                        _text_3669967 = @:tmpset0 __tmp__._0?.__copy__();
                        _haveText_3669986 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3671291i32;
                } else if (__value__ == (3671291i32)) {
                    if (_haveText_3669986) {
                        _gotoNext = 3671303i32;
                    } else {
                        _gotoNext = 3671405i32;
                    };
                } else if (__value__ == (3671303i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.truncate(_before_3669899);
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeString(_text_3669967?.__copy__());
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_3668819 = __tmp__0;
                        _b1_3668823 = __tmp__1;
                    };
                    _gotoNext = 3668869i32;
                } else if (__value__ == (3671405i32)) {
                    if (!(@:checkr _d ?? throw "null pointer dereference").strict) {
                        _gotoNext = 3671418i32;
                    } else {
                        _gotoNext = 3671465i32;
                    };
                } else if (__value__ == (3671418i32)) {
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_3668819 = __tmp__0;
                        _b1_3668823 = __tmp__1;
                    };
                    _gotoNext = 3668869i32;
                } else if (__value__ == (3671465i32)) {
                    _ent_3671465 = ((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__(_before_3669899) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    if (_ent_3671465[((_ent_3671465.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3671532i32;
                    } else {
                        _gotoNext = 3671571i32;
                    };
                } else if (__value__ == (3671532i32)) {
                    _ent_3671465 = (_ent_3671465 + ((" (no semicolon)" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3671571i32;
                } else if (__value__ == (3671571i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError((("invalid character entity " : stdgo.GoString) + _ent_3671465?.__copy__() : stdgo.GoString)?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3671701i32;
                } else if (__value__ == (3671701i32)) {
                    if (_b_3668877 == ((13 : stdgo.GoUInt8))) {
                        _gotoNext = 3671714i32;
                    } else if (((_b1_3668823 == (13 : stdgo.GoUInt8)) && (_b_3668877 == (10 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3671777i32;
                    } else {
                        _gotoNext = 3671826i32;
                    };
                } else if (__value__ == (3671714i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((10 : stdgo.GoUInt8));
                    _gotoNext = 3671857i32;
                } else if (__value__ == (3671777i32)) {
                    _gotoNext = 3671857i32;
                } else if (__value__ == (3671826i32)) {
                    _gotoNext = 3671826i32;
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3668877);
                    var __blank__ = 0i32;
                    _gotoNext = 3671857i32;
                } else if (__value__ == (3671857i32)) {
                    {
                        final __tmp__0 = _b1_3668823;
                        final __tmp__1 = _b_3668877;
                        _b0_3668819 = __tmp__0;
                        _b1_3668823 = __tmp__1;
                    };
                    _gotoNext = 3668869i32;
                } else if (__value__ == (3671876i32)) {
                    _data_3671876 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_3671876 = (_data_3671876.__slice__((0 : stdgo.GoInt), ((_data_3671876.length) - _trunc_3668836 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _buf_3671990 = _data_3671876;
                    var __blank__ = 0i32;
                    _gotoNext = 3672003i32;
                } else if (__value__ == (3672003i32)) {
                    if (((_buf_3671990.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3672020i32;
                    } else {
                        _gotoNext = 3672298i32;
                    };
                } else if (__value__ == (3672020i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_buf_3671990);
                        _r_3672024 = @:tmpset0 __tmp__._0;
                        _size_3672027 = @:tmpset0 __tmp__._1;
                    };
                    if (((_r_3672024 == (65533 : stdgo.GoInt32)) && (_size_3672027 == (1 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3672094i32;
                    } else {
                        _gotoNext = 3672158i32;
                    };
                } else if (__value__ == (3672094i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid UTF-8" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3672158i32;
                } else if (__value__ == (3672158i32)) {
                    _buf_3671990 = (_buf_3671990.__slice__(_size_3672027) : stdgo.Slice<stdgo.GoUInt8>);
                    if (!stdgo._internal.encoding.xml.Xml__isInCharacterRange._isInCharacterRange(_r_3672024)) {
                        _gotoNext = 3672203i32;
                    } else {
                        _gotoNext = 3672003i32;
                    };
                } else if (__value__ == (3672203i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("illegal character code %U" : stdgo.GoString), stdgo.Go.toInterface(_r_3672024))?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3672003i32;
                } else if (__value__ == (3672298i32)) {
                    return _data_3671876;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _ungetc( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _b:stdgo.GoUInt8):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        if (_b == ((10 : stdgo.GoUInt8))) {
            (@:checkr _d ?? throw "null pointer dereference")._line--;
        };
        (@:checkr _d ?? throw "null pointer dereference")._nextByte = (_b : stdgo.GoInt);
        (@:checkr _d ?? throw "null pointer dereference")._offset--;
    }
    @:keep
    @:tdfield
    static public function _mustgetc( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _b = (0 : stdgo.GoUInt8), _ok = false;
        {
            {
                var __tmp__ = @:check2r _d._getc();
                _b = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            if (!_ok) {
                if (stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unexpected EOF" : stdgo.GoString));
                };
            };
        };
        return { _0 : _b, _1 : _ok };
    }
    @:keep
    @:tdfield
    static public function _savedOffset( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _n = (@:check2r (@:checkr _d ?? throw "null pointer dereference")._saved.len() : stdgo.GoInt);
        if (((@:checkr _d ?? throw "null pointer dereference")._nextByte >= (0 : stdgo.GoInt) : Bool)) {
            _n--;
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function inputPos( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
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
    static public function inputOffset( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        return (@:checkr _d ?? throw "null pointer dereference")._offset;
    }
    @:keep
    @:tdfield
    static public function _getc( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
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
    static public function _space( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
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
    static public function _attrval( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
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
    static public function _rawToken( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_Token.Token; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _data_3665560:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _data_3662885:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _i_3662642:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b0_3662175:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b_3659761:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _attr_3664637:stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
        var _data_3660853:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _j_3663815:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3663673:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3661450:stdgo.Error = (null : stdgo.Error);
        var _enc_3661161:stdgo.GoString = ("" : stdgo.GoString);
        var _content_3660944:stdgo.GoString = ("" : stdgo.GoString);
        var _b0_3660693:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b1_3664037:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b0_3664033:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _empty_3664624:Bool = false;
        var _name_3664611:stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
        var _newr_3661444:stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
        var _target_3660501:stdgo.GoString = ("" : stdgo.GoString);
        var _ver_3660971:stdgo.GoString = ("" : stdgo.GoString);
        var _a_3665134:stdgo._internal.encoding.xml.Xml_Attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr);
        var _i_3663692:stdgo.GoInt = (0 : stdgo.GoInt);
        var _depth_3663216:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_3662494:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _inquote_3663194:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b1_3662179:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _name_3660071:stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
        var _data_3659863:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_3659764:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._t != null) {
                        _gotoNext = 3659479i32;
                    } else {
                        _gotoNext = 3659506i32;
                    };
                } else if (__value__ == (3659479i32)) {
                    return (@:checkr _d ?? throw "null pointer dereference")._t.token();
                    _gotoNext = 3659506i32;
                } else if (__value__ == (3659506i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 3659522i32;
                    } else {
                        _gotoNext = 3659548i32;
                    };
                } else if (__value__ == (3659522i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3659548i32;
                } else if (__value__ == (3659548i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._needClose) {
                        _gotoNext = 3659563i32;
                    } else {
                        _gotoNext = 3659761i32;
                    };
                } else if (__value__ == (3659563i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._needClose = false;
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_EndElement.EndElement((@:checkr _d ?? throw "null pointer dereference")._toClose?.__copy__()) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3659761i32;
                } else if (__value__ == (3659761i32)) {
                    {
                        var __tmp__ = @:check2r _d._getc();
                        _b_3659761 = @:tmpset0 __tmp__._0;
                        _ok_3659764 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_3659764) {
                        _gotoNext = 3659787i32;
                    } else {
                        _gotoNext = 3659814i32;
                    };
                } else if (__value__ == (3659787i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3659814i32;
                } else if (__value__ == (3659814i32)) {
                    if (_b_3659761 != ((60 : stdgo.GoUInt8))) {
                        _gotoNext = 3659826i32;
                    } else {
                        _gotoNext = 3659967i32;
                    };
                } else if (__value__ == (3659826i32)) {
                    @:check2r _d._ungetc(_b_3659761);
                    _data_3659863 = @:check2r _d._text((-1 : stdgo.GoInt), false);
                    if (_data_3659863 == null) {
                        _gotoNext = 3659906i32;
                    } else {
                        _gotoNext = 3659935i32;
                    };
                } else if (__value__ == (3659906i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3659935i32;
                } else if (__value__ == (3659935i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3659863 : stdgo._internal.encoding.xml.Xml_CharData.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3659967i32;
                } else if (__value__ == (3659967i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3659761 = @:tmpset0 __tmp__._0;
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3659996i32;
                        } else {
                            _gotoNext = 3660022i32;
                        };
                    };
                } else if (__value__ == (3659996i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3660022i32;
                } else if (__value__ == (3660022i32)) {
                    _gotoNext = 3660022i32;
                    {
                        final __value__ = _b_3659761;
                        if (__value__ == ((47 : stdgo.GoUInt8))) {
                            _gotoNext = 3660034i32;
                        } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                            _gotoNext = 3660452i32;
                        } else if (__value__ == ((33 : stdgo.GoUInt8))) {
                            _gotoNext = 3661780i32;
                        } else {
                            _gotoNext = 3664589i32;
                        };
                    };
                } else if (__value__ == (3660034i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._nsname();
                            _name_3660071 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3660113i32;
                        } else {
                            _gotoNext = 3660228i32;
                        };
                    };
                } else if (__value__ == (3660113i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3660134i32;
                    } else {
                        _gotoNext = 3660204i32;
                    };
                } else if (__value__ == (3660134i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected element name after </" : stdgo.GoString));
                    _gotoNext = 3660204i32;
                } else if (__value__ == (3660204i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3660228i32;
                } else if (__value__ == (3660228i32)) {
                    @:check2r _d._space();
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3659761 = @:tmpset0 __tmp__._0;
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3660269i32;
                        } else {
                            _gotoNext = 3660298i32;
                        };
                    };
                } else if (__value__ == (3660269i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3660298i32;
                } else if (__value__ == (3660298i32)) {
                    if (_b_3659761 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3660310i32;
                    } else {
                        _gotoNext = 3660421i32;
                    };
                } else if (__value__ == (3660310i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(((("invalid characters between </" : stdgo.GoString) + _name_3660071.local?.__copy__() : stdgo.GoString) + (" and >" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3660421i32;
                } else if (__value__ == (3660421i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_EndElement.EndElement(_name_3660071?.__copy__()) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3664589i32;
                } else if (__value__ == (3660452i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._name();
                            _target_3660501 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3660547i32;
                        } else {
                            _gotoNext = 3660661i32;
                        };
                    };
                } else if (__value__ == (3660547i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3660568i32;
                    } else {
                        _gotoNext = 3660637i32;
                    };
                } else if (__value__ == (3660568i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected target name after <?" : stdgo.GoString));
                    _gotoNext = 3660637i32;
                } else if (__value__ == (3660637i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3660661i32;
                } else if (__value__ == (3660661i32)) {
                    @:check2r _d._space();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    var __blank__ = 0i32;
                    _gotoNext = 3660703i32;
                } else if (__value__ == (3660703i32)) {
                    if (true) {
                        _gotoNext = 3660707i32;
                    } else {
                        _gotoNext = 3660853i32;
                    };
                } else if (__value__ == (3660707i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3659761 = @:tmpset0 __tmp__._0;
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3660741i32;
                        } else {
                            _gotoNext = 3660773i32;
                        };
                    };
                } else if (__value__ == (3660741i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3660773i32;
                } else if (__value__ == (3660773i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3659761);
                    if (((_b0_3660693 == (63 : stdgo.GoUInt8)) && (_b_3659761 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3660820i32;
                    } else {
                        _gotoNext = 3660840i32;
                    };
                } else if (__value__ == (3660820i32)) {
                    _gotoNext = 3660853i32;
                } else if (__value__ == (3660840i32)) {
                    _b0_3660693 = _b_3659761;
                    _gotoNext = 3660703i32;
                } else if (__value__ == (3660853i32)) {
                    _data_3660853 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_3660853 = (_data_3660853.__slice__((0 : stdgo.GoInt), ((_data_3660853.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_target_3660501 == (("xml" : stdgo.GoString))) {
                        _gotoNext = 3660939i32;
                    } else {
                        _gotoNext = 3661743i32;
                    };
                } else if (__value__ == (3660939i32)) {
                    _content_3660944 = (_data_3660853 : stdgo.GoString)?.__copy__();
                    _ver_3660971 = stdgo._internal.encoding.xml.Xml__procInst._procInst(("version" : stdgo.GoString), _content_3660944?.__copy__())?.__copy__();
                    if (((_ver_3660971 != stdgo.Go.str()) && (_ver_3660971 != ("1.0" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3661039i32;
                    } else {
                        _gotoNext = 3661161i32;
                    };
                } else if (__value__ == (3661039i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: unsupported version %q; only version 1.0 is supported" : stdgo.GoString), stdgo.Go.toInterface(_ver_3660971));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3661161i32;
                } else if (__value__ == (3661161i32)) {
                    _enc_3661161 = stdgo._internal.encoding.xml.Xml__procInst._procInst(("encoding" : stdgo.GoString), _content_3660944?.__copy__())?.__copy__();
                    if ((((_enc_3661161 != (stdgo.Go.str()) && _enc_3661161 != (("utf-8" : stdgo.GoString)) : Bool) && _enc_3661161 != (("UTF-8" : stdgo.GoString)) : Bool) && !stdgo._internal.strings.Strings_equalFold.equalFold(_enc_3661161?.__copy__(), ("utf-8" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3661286i32;
                    } else {
                        _gotoNext = 3661743i32;
                    };
                } else if (__value__ == (3661286i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference").charsetReader == null) {
                        _gotoNext = 3661318i32;
                    } else {
                        _gotoNext = 3661444i32;
                    };
                } else if (__value__ == (3661318i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: encoding %q declared but Decoder.CharsetReader is nil" : stdgo.GoString), stdgo.Go.toInterface(_enc_3661161));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3661444i32;
                } else if (__value__ == (3661444i32)) {
                    {
                        var __tmp__ = (@:checkr _d ?? throw "null pointer dereference").charsetReader(_enc_3661161?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._r) : stdgo._internal.io.Io_Reader.Reader)) : stdgo._internal.io.Io_Reader.Reader));
                        _newr_3661444 = @:tmpset0 __tmp__._0;
                        _err_3661450 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3661450 != null) {
                        _gotoNext = 3661513i32;
                    } else {
                        _gotoNext = 3661613i32;
                    };
                } else if (__value__ == (3661513i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: opening charset %q: %w" : stdgo.GoString), stdgo.Go.toInterface(_enc_3661161), stdgo.Go.toInterface(_err_3661450));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3661613i32;
                } else if (__value__ == (3661613i32)) {
                    if (_newr_3661444 == null) {
                        _gotoNext = 3661628i32;
                    } else {
                        _gotoNext = 3661709i32;
                    };
                } else if (__value__ == (3661628i32)) {
                    throw stdgo.Go.toInterface((("CharsetReader returned a nil Reader for charset " : stdgo.GoString) + _enc_3661161?.__copy__() : stdgo.GoString));
                    _gotoNext = 3661709i32;
                } else if (__value__ == (3661709i32)) {
                    @:check2r _d._switchToReader(_newr_3661444);
                    _gotoNext = 3661743i32;
                } else if (__value__ == (3661743i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst(_target_3660501?.__copy__(), _data_3660853) : stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3664589i32;
                } else if (__value__ == (3661780i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3659761 = @:tmpset0 __tmp__._0;
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3661858i32;
                        } else {
                            _gotoNext = 3661887i32;
                        };
                    };
                } else if (__value__ == (3661858i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3661887i32;
                } else if (__value__ == (3661887i32)) {
                    _gotoNext = 3661887i32;
                    {
                        final __value__ = _b_3659761;
                        if (__value__ == ((45 : stdgo.GoUInt8))) {
                            _gotoNext = 3661900i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3662592i32;
                        } else {
                            _gotoNext = 3663157i32;
                        };
                    };
                } else if (__value__ == (3661900i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3659761 = @:tmpset0 __tmp__._0;
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3661984i32;
                        } else {
                            _gotoNext = 3662016i32;
                        };
                    };
                } else if (__value__ == (3661984i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662016i32;
                } else if (__value__ == (3662016i32)) {
                    if (_b_3659761 != ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 3662028i32;
                    } else {
                        _gotoNext = 3662154i32;
                    };
                } else if (__value__ == (3662028i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid sequence <!- not part of <!--" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662154i32;
                } else if (__value__ == (3662154i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    var __blank__ = 0i32;
                    _gotoNext = 3662190i32;
                } else if (__value__ == (3662190i32)) {
                    if (true) {
                        _gotoNext = 3662194i32;
                    } else {
                        _gotoNext = 3662494i32;
                    };
                } else if (__value__ == (3662194i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3659761 = @:tmpset0 __tmp__._0;
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3662229i32;
                        } else {
                            _gotoNext = 3662264i32;
                        };
                    };
                } else if (__value__ == (3662229i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662264i32;
                } else if (__value__ == (3662264i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3659761);
                    if (((_b0_3662175 == (45 : stdgo.GoUInt8)) && (_b1_3662179 == (45 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3662313i32;
                    } else {
                        _gotoNext = 3662471i32;
                    };
                } else if (__value__ == (3662313i32)) {
                    if (_b_3659761 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3662332i32;
                    } else {
                        _gotoNext = 3662455i32;
                    };
                } else if (__value__ == (3662332i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid sequence \"--\" not allowed in comments" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662455i32;
                } else if (__value__ == (3662455i32)) {
                    _gotoNext = 3662494i32;
                } else if (__value__ == (3662471i32)) {
                    {
                        final __tmp__0 = _b1_3662179;
                        final __tmp__1 = _b_3659761;
                        _b0_3662175 = __tmp__0;
                        _b1_3662179 = __tmp__1;
                    };
                    _gotoNext = 3662190i32;
                } else if (__value__ == (3662494i32)) {
                    _data_3662494 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_3662494 = (_data_3662494.__slice__((0 : stdgo.GoInt), ((_data_3662494.length) - (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3662494 : stdgo._internal.encoding.xml.Xml_Comment.Comment))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3663157i32;
                } else if (__value__ == (3662592i32)) {
                    _i_3662642 = (0 : stdgo.GoInt);
                    _gotoNext = 3662638i32;
                } else if (__value__ == (3662638i32)) {
                    if ((_i_3662642 < (6 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3662661i32;
                    } else {
                        _gotoNext = 3662885i32;
                    };
                } else if (__value__ == (3662657i32)) {
                    _i_3662642++;
                    _gotoNext = 3662638i32;
                } else if (__value__ == (3662661i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3659761 = @:tmpset0 __tmp__._0;
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3662696i32;
                        } else {
                            _gotoNext = 3662731i32;
                        };
                    };
                } else if (__value__ == (3662696i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662731i32;
                } else if (__value__ == (3662731i32)) {
                    if (_b_3659761 != (("CDATA[" : stdgo.GoString)[(_i_3662642 : stdgo.GoInt)])) {
                        _gotoNext = 3662751i32;
                    } else {
                        _gotoNext = 3662657i32;
                    };
                } else if (__value__ == (3662751i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid <![ sequence" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662657i32;
                } else if (__value__ == (3662885i32)) {
                    _data_3662885 = @:check2r _d._text((-1 : stdgo.GoInt), true);
                    if (_data_3662885 == null) {
                        _gotoNext = 3662928i32;
                    } else {
                        _gotoNext = 3662960i32;
                    };
                } else if (__value__ == (3662928i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3662960i32;
                } else if (__value__ == (3662960i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3662885 : stdgo._internal.encoding.xml.Xml_CharData.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3663157i32;
                } else if (__value__ == (3663157i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3659761);
                    _inquote_3663194 = (0 : stdgo.GoUInt8);
                    _depth_3663216 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3663229i32;
                } else if (__value__ == (3663229i32)) {
                    if (true) {
                        _gotoNext = 3663233i32;
                    } else {
                        _gotoNext = 3664499i32;
                    };
                } else if (__value__ == (3663233i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3659761 = @:tmpset0 __tmp__._0;
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3663267i32;
                        } else {
                            _gotoNext = 3663299i32;
                        };
                    };
                } else if (__value__ == (3663267i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3663299i32;
                } else if (__value__ == (3663299i32)) {
                    if (((_inquote_3663194 == ((0 : stdgo.GoUInt8)) && _b_3659761 == ((62 : stdgo.GoUInt8)) : Bool) && (_depth_3663216 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3663341i32;
                    } else {
                        _gotoNext = 3663360i32;
                    };
                } else if (__value__ == (3663341i32)) {
                    _gotoNext = 3664499i32;
                } else if (__value__ == (3663360i32)) {
                    _gotoNext = 3663360i32;
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3659761);
                    _gotoNext = 3663394i32;
                } else if (__value__ == (3663394i32)) {
                    if (_b_3659761 == (_inquote_3663194)) {
                        _gotoNext = 3663406i32;
                    } else if (_inquote_3663194 != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3663445i32;
                    } else if (((_b_3659761 == (39 : stdgo.GoUInt8)) || (_b_3659761 == (34 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3663504i32;
                    } else if (((_b_3659761 == (62 : stdgo.GoUInt8)) && (_inquote_3663194 == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3663552i32;
                    } else if (((_b_3659761 == (60 : stdgo.GoUInt8)) && (_inquote_3663194 == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3663599i32;
                    } else {
                        _gotoNext = 3663229i32;
                    };
                } else if (__value__ == (3663406i32)) {
                    _inquote_3663194 = (0 : stdgo.GoUInt8);
                    _gotoNext = 3663229i32;
                } else if (__value__ == (3663445i32)) {
                    _gotoNext = 3663229i32;
                } else if (__value__ == (3663504i32)) {
                    _inquote_3663194 = _b_3659761;
                    _gotoNext = 3663229i32;
                } else if (__value__ == (3663552i32)) {
                    _depth_3663216--;
                    _gotoNext = 3663229i32;
                } else if (__value__ == (3663599i32)) {
                    _s_3663673 = ("!--" : stdgo.GoString);
                    _i_3663692 = (0 : stdgo.GoInt);
                    _gotoNext = 3663688i32;
                } else if (__value__ == (3663688i32)) {
                    if ((_i_3663692 < (_s_3663673.length) : Bool)) {
                        _gotoNext = 3663716i32;
                    } else {
                        _gotoNext = 3663964i32;
                    };
                } else if (__value__ == (3663712i32)) {
                    _i_3663692++;
                    _gotoNext = 3663688i32;
                } else if (__value__ == (3663716i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3659761 = @:tmpset0 __tmp__._0;
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3663752i32;
                        } else {
                            _gotoNext = 3663790i32;
                        };
                    };
                } else if (__value__ == (3663752i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3663790i32;
                } else if (__value__ == (3663790i32)) {
                    if (_b_3659761 != (_s_3663673[(_i_3663692 : stdgo.GoInt)])) {
                        _gotoNext = 3663803i32;
                    } else {
                        _gotoNext = 3663712i32;
                    };
                } else if (__value__ == (3663803i32)) {
                    _j_3663815 = (0 : stdgo.GoInt);
                    _gotoNext = 3663811i32;
                } else if (__value__ == (3663811i32)) {
                    if ((_j_3663815 < _i_3663692 : Bool)) {
                        _gotoNext = 3663834i32;
                    } else {
                        _gotoNext = 3663879i32;
                    };
                } else if (__value__ == (3663834i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_s_3663673[(_j_3663815 : stdgo.GoInt)]);
                    _j_3663815++;
                    _gotoNext = 3663811i32;
                } else if (__value__ == (3663879i32)) {
                    _depth_3663216++;
                    _gotoNext = 3663360i32;
                } else if (__value__ == (3663964i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.truncate((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3664049i32;
                } else if (__value__ == (3664049i32)) {
                    if (true) {
                        _gotoNext = 3664053i32;
                    } else {
                        _gotoNext = 3664467i32;
                    };
                } else if (__value__ == (3664053i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3659761 = @:tmpset0 __tmp__._0;
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3664089i32;
                        } else {
                            _gotoNext = 3664127i32;
                        };
                    };
                } else if (__value__ == (3664089i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3664127i32;
                } else if (__value__ == (3664127i32)) {
                    if (((_b0_3664033 == ((45 : stdgo.GoUInt8)) && _b1_3664037 == ((45 : stdgo.GoUInt8)) : Bool) && (_b_3659761 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3664165i32;
                    } else {
                        _gotoNext = 3664191i32;
                    };
                } else if (__value__ == (3664165i32)) {
                    _gotoNext = 3664467i32;
                } else if (__value__ == (3664191i32)) {
                    {
                        final __tmp__0 = _b1_3664037;
                        final __tmp__1 = _b_3659761;
                        _b0_3664033 = __tmp__0;
                        _b1_3664037 = __tmp__1;
                    };
                    _gotoNext = 3664049i32;
                } else if (__value__ == (3664467i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((32 : stdgo.GoUInt8));
                    _gotoNext = 3663229i32;
                } else if (__value__ == (3664499i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes() : stdgo._internal.encoding.xml.Xml_Directive.Directive))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3664589i32;
                } else if (__value__ == (3664589i32)) {
                    @:check2r _d._ungetc(_b_3659761);
                    {
                        {
                            var __tmp__ = @:check2r _d._nsname();
                            _name_3664611 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3664684i32;
                        } else {
                            _gotoNext = 3664793i32;
                        };
                    };
                } else if (__value__ == (3664684i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3664704i32;
                    } else {
                        _gotoNext = 3664770i32;
                    };
                } else if (__value__ == (3664704i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected element name after <" : stdgo.GoString));
                    _gotoNext = 3664770i32;
                } else if (__value__ == (3664770i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3664793i32;
                } else if (__value__ == (3664793i32)) {
                    _attr_3664637 = (new stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr)])) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
                    var __blank__ = 0i32;
                    _gotoNext = 3664810i32;
                } else if (__value__ == (3664810i32)) {
                    if (true) {
                        _gotoNext = 3664814i32;
                    } else {
                        _gotoNext = 3665686i32;
                    };
                } else if (__value__ == (3664814i32)) {
                    @:check2r _d._space();
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3659761 = @:tmpset0 __tmp__._0;
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3664859i32;
                        } else {
                            _gotoNext = 3664888i32;
                        };
                    };
                } else if (__value__ == (3664859i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3664888i32;
                } else if (__value__ == (3664888i32)) {
                    if (_b_3659761 == ((47 : stdgo.GoUInt8))) {
                        _gotoNext = 3664900i32;
                    } else {
                        _gotoNext = 3665090i32;
                    };
                } else if (__value__ == (3664900i32)) {
                    _empty_3664624 = true;
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3659761 = @:tmpset0 __tmp__._0;
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3664950i32;
                        } else {
                            _gotoNext = 3664982i32;
                        };
                    };
                } else if (__value__ == (3664950i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3664982i32;
                } else if (__value__ == (3664982i32)) {
                    if (_b_3659761 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3664994i32;
                    } else {
                        _gotoNext = 3665078i32;
                    };
                } else if (__value__ == (3664994i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected /> in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3665078i32;
                } else if (__value__ == (3665078i32)) {
                    _gotoNext = 3665686i32;
                } else if (__value__ == (3665090i32)) {
                    if (_b_3659761 == ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3665102i32;
                    } else {
                        _gotoNext = 3665119i32;
                    };
                } else if (__value__ == (3665102i32)) {
                    _gotoNext = 3665686i32;
                } else if (__value__ == (3665119i32)) {
                    @:check2r _d._ungetc(_b_3659761);
                    _a_3665134 = (new stdgo._internal.encoding.xml.Xml_Attr.Attr() : stdgo._internal.encoding.xml.Xml_Attr.Attr);
                    {
                        {
                            var __tmp__ = @:check2r _d._nsname();
                            _a_3665134.name = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3665180i32;
                        } else {
                            _gotoNext = 3665299i32;
                        };
                    };
                } else if (__value__ == (3665180i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3665201i32;
                    } else {
                        _gotoNext = 3665275i32;
                    };
                } else if (__value__ == (3665201i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected attribute name in element" : stdgo.GoString));
                    _gotoNext = 3665275i32;
                } else if (__value__ == (3665275i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3665299i32;
                } else if (__value__ == (3665299i32)) {
                    @:check2r _d._space();
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3659761 = @:tmpset0 __tmp__._0;
                            _ok_3659764 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3665340i32;
                        } else {
                            _gotoNext = 3665369i32;
                        };
                    };
                } else if (__value__ == (3665340i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3665369i32;
                } else if (__value__ == (3665369i32)) {
                    if (_b_3659761 != ((61 : stdgo.GoUInt8))) {
                        _gotoNext = 3665381i32;
                    } else {
                        _gotoNext = 3665542i32;
                    };
                } else if (__value__ == (3665381i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference").strict) {
                        _gotoNext = 3665398i32;
                    } else {
                        _gotoNext = 3665495i32;
                    };
                } else if (__value__ == (3665398i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("attribute name without = in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3665495i32;
                } else if (__value__ == (3665495i32)) {
                    @:check2r _d._ungetc(_b_3659761);
                    _a_3665134.value = _a_3665134.name.local?.__copy__();
                    _gotoNext = 3665659i32;
                } else if (__value__ == (3665542i32)) {
                    _gotoNext = 3665542i32;
                    @:check2r _d._space();
                    _data_3665560 = @:check2r _d._attrval();
                    if (_data_3665560 == null) {
                        _gotoNext = 3665598i32;
                    } else {
                        _gotoNext = 3665630i32;
                    };
                } else if (__value__ == (3665598i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3665630i32;
                } else if (__value__ == (3665630i32)) {
                    _a_3665134.value = (_data_3665560 : stdgo.GoString)?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3665659i32;
                } else if (__value__ == (3665659i32)) {
                    _attr_3664637 = (_attr_3664637.__append__(_a_3665134?.__copy__()));
                    _gotoNext = 3664810i32;
                } else if (__value__ == (3665686i32)) {
                    if (_empty_3664624) {
                        _gotoNext = 3665695i32;
                    } else {
                        _gotoNext = 3665741i32;
                    };
                } else if (__value__ == (3665695i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._needClose = true;
                    (@:checkr _d ?? throw "null pointer dereference")._toClose = _name_3664611?.__copy__();
                    _gotoNext = 3665741i32;
                } else if (__value__ == (3665741i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_StartElement.StartElement(_name_3664611?.__copy__(), _attr_3664637) : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function rawToken( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_Token.Token; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        if (((@:checkr _d ?? throw "null pointer dereference")._unmarshalDepth > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : stdgo._internal.encoding.xml.Xml__errRawToken._errRawToken };
        };
        return @:check2r _d._rawToken();
    }
    @:keep
    @:tdfield
    static public function _autoClose( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _t:stdgo._internal.encoding.xml.Xml_Token.Token):{ var _0 : stdgo._internal.encoding.xml.Xml_Token.Token; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        if ((((@:checkr _d ?? throw "null pointer dereference")._stk == null || ((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__) || ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : false };
        };
        for (__0 => _s in (@:checkr _d ?? throw "null pointer dereference").autoClose) {
            if (stdgo._internal.strings.Strings_equalFold.equalFold(_s?.__copy__(), (@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._name.local?.__copy__())) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_t : stdgo._internal.encoding.xml.Xml_EndElement.EndElement)) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement), _1 : true };
                } catch(_) {
                    { _0 : ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement), _1 : false };
                }, _et = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || !stdgo._internal.strings.Strings_equalFold.equalFold(_et.name.local?.__copy__(), (@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._name.local?.__copy__()) : Bool)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_EndElement.EndElement((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._name?.__copy__()) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))), _1 : true };
                };
                break;
            };
        };
        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : false };
    }
    @:keep
    @:tdfield
    static public function _popElement( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _t:stdgo.Ref<stdgo._internal.encoding.xml.Xml_EndElement.EndElement>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _s = @:check2r _d._pop();
        var _name = ((@:checkr _t ?? throw "null pointer dereference").name?.__copy__() : stdgo._internal.encoding.xml.Xml_Name.Name);
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
        @:check2r _d._translate((stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference").name) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Name.Name>), true);
        while (((((@:checkr _d ?? throw "null pointer dereference")._stk != null && (((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__)) && (@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != ((0 : stdgo.GoInt)) : Bool) && ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != (2 : stdgo.GoInt)) : Bool)) {
            var _s = @:check2r _d._pop();
            if ((@:checkr _s ?? throw "null pointer dereference")._ok) {
                (@:checkr _d ?? throw "null pointer dereference")._ns[(@:checkr _s ?? throw "null pointer dereference")._name.local] = (@:checkr _s ?? throw "null pointer dereference")._name.space?.__copy__();
            } else {
                if ((@:checkr _d ?? throw "null pointer dereference")._ns != null) (@:checkr _d ?? throw "null pointer dereference")._ns.remove((@:checkr _s ?? throw "null pointer dereference")._name.local);
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _syntaxError( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _msg:stdgo.GoString):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ msg : _msg?.__copy__(), line : (@:checkr _d ?? throw "null pointer dereference")._line } : stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError>));
    }
    @:keep
    @:tdfield
    static public function _pushNs( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _local:stdgo.GoString, _url:stdgo.GoString, _ok:Bool):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _s = @:check2r _d._push((1 : stdgo.GoInt));
        (@:checkr _s ?? throw "null pointer dereference")._name.local = _local?.__copy__();
        (@:checkr _s ?? throw "null pointer dereference")._name.space = _url?.__copy__();
        (@:checkr _s ?? throw "null pointer dereference")._ok = _ok;
    }
    @:keep
    @:tdfield
    static public function _pushElement( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _name:stdgo._internal.encoding.xml.Xml_Name.Name):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _s = @:check2r _d._push((0 : stdgo.GoInt));
        (@:checkr _s ?? throw "null pointer dereference")._name = _name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _popEOF( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        if ((((@:checkr _d ?? throw "null pointer dereference")._stk == null || ((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__) || ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != (2 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        @:check2r _d._pop();
        return true;
    }
    @:keep
    @:tdfield
    static public function _pushEOF( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
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
            _s = (stdgo.Go.setRef(({} : stdgo._internal.encoding.xml.Xml_T_stack.T_stack)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>);
        };
        (@:checkr _s ?? throw "null pointer dereference")._kind = (2 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._next = (@:checkr _start ?? throw "null pointer dereference")._next;
        (@:checkr _start ?? throw "null pointer dereference")._next = _s;
    }
    @:keep
    @:tdfield
    static public function _pop( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
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
    static public function _push( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _kind:stdgo.GoInt):stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _s = (@:checkr _d ?? throw "null pointer dereference")._free;
        if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
            (@:checkr _d ?? throw "null pointer dereference")._free = (@:checkr _s ?? throw "null pointer dereference")._next;
        } else {
            _s = (stdgo.Go.setRef(({} : stdgo._internal.encoding.xml.Xml_T_stack.T_stack)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>);
        };
        (@:checkr _s ?? throw "null pointer dereference")._next = (@:checkr _d ?? throw "null pointer dereference")._stk;
        (@:checkr _s ?? throw "null pointer dereference")._kind = _kind;
        (@:checkr _d ?? throw "null pointer dereference")._stk = _s;
        return _s;
    }
    @:keep
    @:tdfield
    static public function _switchToReader( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _r:stdgo._internal.io.Io_Reader.Reader):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_ByteReader.ByteReader)) : stdgo._internal.io.Io_ByteReader.ByteReader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_ByteReader.ByteReader), _1 : false };
            }, _rb = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _d ?? throw "null pointer dereference")._r = _rb;
            } else {
                (@:checkr _d ?? throw "null pointer dereference")._r = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newReader.newReader(_r));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _translate( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _n:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Name.Name>, _isElementName:Bool):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        if ((@:checkr _n ?? throw "null pointer dereference").space == (("xmlns" : stdgo.GoString))) {
            return;
        } else if ((((@:checkr _n ?? throw "null pointer dereference").space == stdgo.Go.str()) && !_isElementName : Bool)) {
            return;
        } else if ((@:checkr _n ?? throw "null pointer dereference").space == (("xml" : stdgo.GoString))) {
            (@:checkr _n ?? throw "null pointer dereference").space = ("http://www.w3.org/XML/1998/namespace" : stdgo.GoString);
        } else if ((((@:checkr _n ?? throw "null pointer dereference").space == stdgo.Go.str()) && ((@:checkr _n ?? throw "null pointer dereference").local == ("xmlns" : stdgo.GoString)) : Bool)) {
            return;
        };
        {
            var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._ns != null && (@:checkr _d ?? throw "null pointer dereference")._ns.exists((@:checkr _n ?? throw "null pointer dereference").space?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._ns[(@:checkr _n ?? throw "null pointer dereference").space?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                (@:checkr _n ?? throw "null pointer dereference").space = _v?.__copy__();
            } else if ((@:checkr _n ?? throw "null pointer dereference").space == (stdgo.Go.str())) {
                (@:checkr _n ?? throw "null pointer dereference").space = (@:checkr _d ?? throw "null pointer dereference").defaultSpace?.__copy__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function token( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_Token.Token; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _t:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((((@:checkr _d ?? throw "null pointer dereference")._stk != null && (((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__)) && ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind == (2 : stdgo.GoInt)) : Bool)) {
            return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : stdgo._internal.io.Io_eOF.eOF };
        };
        if ((@:checkr _d ?? throw "null pointer dereference")._nextToken != null) {
            _t = (@:checkr _d ?? throw "null pointer dereference")._nextToken;
            (@:checkr _d ?? throw "null pointer dereference")._nextToken = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        } else {
            {
                {
                    var __tmp__ = @:check2r _d._rawToken();
                    _t = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (((_t == null) && (_err != null) : Bool)) {
                    if (((stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF)) && ((@:checkr _d ?? throw "null pointer dereference")._stk != null && (((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference")._stk : Dynamic).__nil__)) : Bool) && ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._stk ?? throw "null pointer dereference")._kind != (2 : stdgo.GoInt)) : Bool)) {
                        _err = @:check2r _d._syntaxError(("unexpected EOF" : stdgo.GoString));
                    };
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _err };
                };
            };
            _err = (null : stdgo.Error);
        };
        if (!(@:checkr _d ?? throw "null pointer dereference").strict) {
            {
                var __tmp__ = @:check2r _d._autoClose(_t), _t1:stdgo._internal.encoding.xml.Xml_Token.Token = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    (@:checkr _d ?? throw "null pointer dereference")._nextToken = _t;
                    _t = _t1;
                };
            };
        };
        {
            final __type__ = _t;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                var _t1:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                for (__0 => _a in _t1.attr) {
                    if (_a.name.space == (("xmlns" : stdgo.GoString))) {
                        var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._ns != null && (@:checkr _d ?? throw "null pointer dereference")._ns.exists(_a.name.local?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._ns[_a.name.local?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        @:check2r _d._pushNs(_a.name.local?.__copy__(), _v?.__copy__(), _ok);
                        (@:checkr _d ?? throw "null pointer dereference")._ns[_a.name.local] = _a.value?.__copy__();
                    };
                    if (((_a.name.space == stdgo.Go.str()) && (_a.name.local == ("xmlns" : stdgo.GoString)) : Bool)) {
                        var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._ns != null && (@:checkr _d ?? throw "null pointer dereference")._ns.exists(stdgo.Go.str()?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._ns[stdgo.Go.str()?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        @:check2r _d._pushNs(stdgo.Go.str()?.__copy__(), _v?.__copy__(), _ok);
                        (@:checkr _d ?? throw "null pointer dereference")._ns[stdgo.Go.str()] = _a.value?.__copy__();
                    };
                };
                @:check2r _d._pushElement(_t1.name?.__copy__());
                @:check2r _d._translate((stdgo.Go.setRef(_t1.name) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Name.Name>), true);
                for (_i => _ in _t1.attr) {
                    @:check2r _d._translate((stdgo.Go.setRef(_t1.attr[(_i : stdgo.GoInt)].name) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Name.Name>), false);
                };
                _t = stdgo.Go.toInterface(stdgo.Go.asInterface(_t1));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                var _t1:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                if (!@:check2r _d._popElement((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_EndElement.EndElement>))) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                };
                _t = stdgo.Go.toInterface(stdgo.Go.asInterface(_t1));
            };
        };
        return { _0 : _t, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function skip( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _depth:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        while (true) {
            var __tmp__ = @:check2r _d.token(), _tok:stdgo._internal.encoding.xml.Xml_Token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            {
                final __type__ = _tok;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                    _depth++;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
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
    static public function _unmarshalPath( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>, _sv:stdgo._internal.reflect.Reflect_Value.Value, _parents:stdgo.Slice<stdgo.GoString>, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>, _depth:stdgo.GoInt):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _consumed = false, _err = (null : stdgo.Error);
        var _t_3714862:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _tok_3714741:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _finfo_3713605:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _consumed2_3715019:Bool = false;
        var _j_3713779:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3713577:stdgo.GoInt = (0 : stdgo.GoInt);
        var _recurse_3713549:Bool = false;
        var _err_3715155:stdgo.Error = (null : stdgo.Error);
        var _err_3715030:stdgo.Error = (null : stdgo.Error);
        var _t_3715235:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3714862;
                    _gotoNext = 3714729i32;
                    _recurse_3713549 = false;
                    _gotoNext = 3713566i32;
                } else if (__value__ == (3713566i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3714472i32;
                    } else {
                        _gotoNext = 3714476i32;
                    };
                } else if (__value__ == (3713577i32)) {
                    _i_3713577++;
                    _gotoNext = 3714473i32;
                } else if (__value__ == (3713601i32)) {
                    _finfo_3713605 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3713577 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if (((((@:checkr _finfo_3713605 ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || (((@:checkr _finfo_3713605 ?? throw "null pointer dereference")._parents.length) < (_parents.length) : Bool) : Bool) || ((@:checkr _finfo_3713605 ?? throw "null pointer dereference")._xmlns != (stdgo.Go.str()) && (@:checkr _finfo_3713605 ?? throw "null pointer dereference")._xmlns != ((@:checkr _start ?? throw "null pointer dereference").name.space) : Bool) : Bool)) {
                        _gotoNext = 3713755i32;
                    } else {
                        _gotoNext = 3713775i32;
                    };
                } else if (__value__ == (3713755i32)) {
                    _i_3713577++;
                    _gotoNext = 3714473i32;
                } else if (__value__ == (3713775i32)) {
                    if ((0i32 : stdgo.GoInt) < (_parents.length)) {
                        _gotoNext = 3713863i32;
                    } else {
                        _gotoNext = 3713868i32;
                    };
                } else if (__value__ == (3713779i32)) {
                    _j_3713779++;
                    _gotoNext = 3713864i32;
                } else if (__value__ == (3713798i32)) {
                    if (_parents[(_j_3713779 : stdgo.GoInt)] != ((@:checkr _finfo_3713605 ?? throw "null pointer dereference")._parents[(_j_3713779 : stdgo.GoInt)])) {
                        _gotoNext = 3713837i32;
                    } else {
                        _gotoNext = 3713779i32;
                    };
                } else if (__value__ == (3713837i32)) {
                    _i_3713577++;
                    _gotoNext = 3714473i32;
                } else if (__value__ == (3713863i32)) {
                    _j_3713779 = 0i32;
                    _gotoNext = 3713864i32;
                } else if (__value__ == (3713864i32)) {
                    if (_j_3713779 < (_parents.length)) {
                        _gotoNext = 3713798i32;
                    } else {
                        _gotoNext = 3713868i32;
                    };
                } else if (__value__ == (3713868i32)) {
                    if ((((@:checkr _finfo_3713605 ?? throw "null pointer dereference")._parents.length == (_parents.length)) && ((@:checkr _finfo_3713605 ?? throw "null pointer dereference")._name == (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3713940i32;
                    } else {
                        _gotoNext = 3714075i32;
                    };
                } else if (__value__ == (3713940i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : @:check2r _d._unmarshal(@:check2r _finfo_3713605._value(_sv?.__copy__(), true)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3714075i32;
                } else if (__value__ == (3714075i32)) {
                    if (((((@:checkr _finfo_3713605 ?? throw "null pointer dereference")._parents.length) > (_parents.length) : Bool) && ((@:checkr _finfo_3713605 ?? throw "null pointer dereference")._parents[(_parents.length : stdgo.GoInt)] == (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3714163i32;
                    } else {
                        _gotoNext = 3713577i32;
                    };
                } else if (__value__ == (3714163i32)) {
                    _recurse_3713549 = true;
                    _parents = ((@:checkr _finfo_3713605 ?? throw "null pointer dereference")._parents.__slice__(0, ((_parents.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 3714476i32;
                } else if (__value__ == (3714472i32)) {
                    _i_3713577 = 0i32;
                    _gotoNext = 3714473i32;
                } else if (__value__ == (3714473i32)) {
                    if (_i_3713577 < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3713601i32;
                    } else {
                        _gotoNext = 3714476i32;
                    };
                } else if (__value__ == (3714476i32)) {
                    if (!_recurse_3713549) {
                        _gotoNext = 3714488i32;
                    } else {
                        _gotoNext = 3714729i32;
                    };
                } else if (__value__ == (3714488i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3714729i32;
                } else if (__value__ == (3714729i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3714729i32;
                    if (true) {
                        _gotoNext = 3714733i32;
                    } else {
                        _gotoNext = 3715264i32;
                    };
                } else if (__value__ == (3714733i32)) {
                    {
                        var __tmp__ = @:check2r _d.token();
                        _tok_3714741 = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        _gotoNext = 3714790i32;
                    } else {
                        _gotoNext = 3714818i32;
                    };
                } else if (__value__ == (3714790i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3714818i32;
                } else if (__value__ == (3714818i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3714818i32;
                    {
                        final __type__ = _tok_3714741;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                            _t_3714862 = _t;
                            _gotoNext = 3714845i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                            _t_3715235 = _t;
                            _gotoNext = 3715220i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_Token.Token = __type__?.__underlying__();
                            _gotoNext = 3714729i32;
                        };
                    };
                    _gotoNext = 3714729i32;
                } else if (__value__ == (3714845i32)) {
                    {
                        var __tmp__ = @:check2r _d._unmarshalPath(_tinfo, _sv?.__copy__(), _parents, (stdgo.Go.setRef(_t_3714862) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), _depth);
                        _consumed2_3715019 = @:tmpset0 __tmp__._0;
                        _err_3715030 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3715030 != null) {
                        _gotoNext = 3715101i32;
                    } else {
                        _gotoNext = 3715132i32;
                    };
                } else if (__value__ == (3715101i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_3715030 };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3715132i32;
                } else if (__value__ == (3715132i32)) {
                    if (!_consumed2_3715019) {
                        _gotoNext = 3715146i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3715146i32)) {
                    {
                        _err_3715155 = @:check2r _d.skip();
                        if (_err_3715155 != null) {
                            _gotoNext = 3715183i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (3715183i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_3715155 };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 0i32;
                } else if (__value__ == (3715220i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : (null : stdgo.Error) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = _t_3715235;
                    _gotoNext = 3714729i32;
                } else if (__value__ == (3715264i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _unmarshal( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _val:stdgo._internal.reflect.Reflect_Value.Value, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>, _depth:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _i_3707961_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3706590:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_3704625:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _err_3710019:stdgo.Error = (null : stdgo.Error);
        var _t_3709652:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _err_3708560:stdgo.Error = (null : stdgo.Error);
        var _ok_3707839:Bool = false;
        var _saveXML_3705950:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _consumed_3709657:Bool = false;
        var _saveData_3705870:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _data_3705848:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _pv_3705666:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _pv_3705332:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3710652:stdgo.Error = (null : stdgo.Error);
        var _pv_3710841:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3710134:stdgo.Error = (null : stdgo.Error);
        var _typ_3707062:stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _tinfo_3706078:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>);
        var _i_3708711:stdgo.GoInt = (0 : stdgo.GoInt);
        var _strv_3708512:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3706678:stdgo.Error = (null : stdgo.Error);
        var _saveComment_3705921:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var loopBreak = false;
        var _err_3708271:stdgo.Error = (null : stdgo.Error);
        var _any_3708003:stdgo.GoInt = (0 : stdgo.GoInt);
        var _typ_3706440:stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _saveXMLData_3705998:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _savedOffset_3709468:stdgo.GoInt = (0 : stdgo.GoInt);
        var _saveXMLIndex_3705979:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_3710384:stdgo._internal.encoding.xml.Xml_CharData.CharData = new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0);
        var _t_3710209:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement);
        var _finfo_3708480:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _strv_3708130:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _handled_3707983:Bool = false;
        var _t_3711305:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3711084:stdgo.Error = (null : stdgo.Error);
        var _fv_3707791:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _saveAny_3706020:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3704563:stdgo.Error = (null : stdgo.Error);
        var _t_3710463:stdgo._internal.encoding.xml.Xml_Comment.Comment = new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0);
        var _a_3707956:stdgo._internal.encoding.xml.Xml_Attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr);
        var _e_3707561:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3706103:stdgo.Error = (null : stdgo.Error);
        var _err_3710939:stdgo.Error = (null : stdgo.Error);
        var _ok_3704628:Bool = false;
        var _t_3711156:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3709553:stdgo.Error = (null : stdgo.Error);
        var _tok_3709548:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _finfo_3708740:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _i_3708020:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sv_3706049:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _finfo_3708050:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _finfo_3707301:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _v_3706134:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _comment_3705899:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _e_3704841:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _tok_3704558:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3709652;
                    _gotoNext = 3709456i32;
                    var __blank__ = _t_3710384;
                    _gotoNext = 3709456i32;
                    var __blank__ = _t_3710463;
                    _gotoNext = 3709456i32;
                    if (((_depth >= (10000 : stdgo.GoInt) : Bool) || (true && (_depth >= (5000 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3704458i32;
                    } else {
                        _gotoNext = 3704529i32;
                    };
                } else if (__value__ == (3704458i32)) {
                    return stdgo._internal.encoding.xml.Xml__errUnmarshalDepth._errUnmarshalDepth;
                    _gotoNext = 3704529i32;
                } else if (__value__ == (3704529i32)) {
                    if ((_start == null || (_start : Dynamic).__nil__)) {
                        _gotoNext = 3704545i32;
                    } else {
                        _gotoNext = 3704786i32;
                    };
                } else if (__value__ == (3704545i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3704549i32;
                } else if (__value__ == (3704549i32)) {
                    if (true) {
                        _gotoNext = 3704553i32;
                    } else {
                        _gotoNext = 3704786i32;
                    };
                } else if (__value__ == (3704553i32)) {
                    {
                        var __tmp__ = @:check2r _d.token();
                        _tok_3704558 = @:tmpset0 __tmp__._0;
                        _err_3704563 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3704563 != null) {
                        _gotoNext = 3704597i32;
                    } else {
                        _gotoNext = 3704622i32;
                    };
                } else if (__value__ == (3704597i32)) {
                    return _err_3704563;
                    _gotoNext = 3704622i32;
                } else if (__value__ == (3704622i32)) {
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_tok_3704558 : stdgo._internal.encoding.xml.Xml_StartElement.StartElement)) : stdgo._internal.encoding.xml.Xml_StartElement.StartElement), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement), _1 : false };
                            };
                            _t_3704625 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3704628 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3704628) {
                            _gotoNext = 3704657i32;
                        } else {
                            _gotoNext = 3704549i32;
                        };
                    };
                } else if (__value__ == (3704657i32)) {
                    _start = (stdgo.Go.setRef(_t_3704625) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>);
                    _gotoNext = 3704786i32;
                } else if (__value__ == (3704786i32)) {
                    if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_val.isNil() : Bool)) {
                        _gotoNext = 3704837i32;
                    } else {
                        _gotoNext = 3704926i32;
                    };
                } else if (__value__ == (3704837i32)) {
                    _e_3704841 = _val.elem()?.__copy__();
                    if (((_e_3704841.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_e_3704841.isNil() : Bool)) {
                        _gotoNext = 3704904i32;
                    } else {
                        _gotoNext = 3704926i32;
                    };
                } else if (__value__ == (3704904i32)) {
                    _val = _e_3704841?.__copy__();
                    _gotoNext = 3704926i32;
                } else if (__value__ == (3704926i32)) {
                    if (_val.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3704959i32;
                    } else {
                        _gotoNext = 3705051i32;
                    };
                } else if (__value__ == (3704959i32)) {
                    if (_val.isNil()) {
                        _gotoNext = 3704978i32;
                    } else {
                        _gotoNext = 3705029i32;
                    };
                } else if (__value__ == (3704978i32)) {
                    _val.set(stdgo._internal.reflect.Reflect_new_.new_(_val.type().elem())?.__copy__());
                    _gotoNext = 3705029i32;
                } else if (__value__ == (3705029i32)) {
                    _val = _val.elem()?.__copy__();
                    _gotoNext = 3705051i32;
                } else if (__value__ == (3705051i32)) {
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerType._unmarshalerType) : Bool)) {
                        _gotoNext = 3705115i32;
                    } else {
                        _gotoNext = 3705311i32;
                    };
                } else if (__value__ == (3705115i32)) {
                    return @:check2r _d._unmarshalInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3705311i32;
                } else if (__value__ == (3705311i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3705328i32;
                    } else {
                        _gotoNext = 3705492i32;
                    };
                } else if (__value__ == (3705328i32)) {
                    _pv_3705332 = _val.addr()?.__copy__();
                    if ((_pv_3705332.canInterface() && _pv_3705332.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerType._unmarshalerType) : Bool)) {
                        _gotoNext = 3705413i32;
                    } else {
                        _gotoNext = 3705492i32;
                    };
                } else if (__value__ == (3705413i32)) {
                    return @:check2r _d._unmarshalInterface((stdgo.Go.typeAssert((_pv_3705332.interface_() : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3705492i32;
                } else if (__value__ == (3705492i32)) {
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3705560i32;
                    } else {
                        _gotoNext = 3705645i32;
                    };
                } else if (__value__ == (3705560i32)) {
                    return @:check2r _d._unmarshalTextInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler));
                    _gotoNext = 3705645i32;
                } else if (__value__ == (3705645i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3705662i32;
                    } else {
                        _gotoNext = 3705840i32;
                    };
                } else if (__value__ == (3705662i32)) {
                    _pv_3705666 = _val.addr()?.__copy__();
                    if ((_pv_3705666.canInterface() && _pv_3705666.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3705751i32;
                    } else {
                        _gotoNext = 3705840i32;
                    };
                } else if (__value__ == (3705751i32)) {
                    return @:check2r _d._unmarshalTextInterface((stdgo.Go.typeAssert((_pv_3705666.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler));
                    _gotoNext = 3705840i32;
                } else if (__value__ == (3705840i32)) {
                    _gotoNext = 3706127i32;
                } else if (__value__ == (3706127i32)) {
                    {
                        _v_3706134 = _val?.__copy__();
                        {
                            final __value__ = _v_3706134.kind();
                            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3706224i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3706418i32;
                            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3706787i32;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3707039i32;
                            } else {
                                _gotoNext = 3706156i32;
                            };
                        };
                    };
                } else if (__value__ == (3706156i32)) {
                    return stdgo._internal.errors.Errors_new_.new_((("unknown type " : stdgo.GoString) + (_v_3706134.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 3709449i32;
                } else if (__value__ == (3706224i32)) {
                    return @:check2r _d.skip();
                    _gotoNext = 3709449i32;
                } else if (__value__ == (3706418i32)) {
                    _typ_3706440 = _v_3706134.type();
                    if (_typ_3706440.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3706496i32;
                    } else {
                        _gotoNext = 3706590i32;
                    };
                } else if (__value__ == (3706496i32)) {
                    _saveData_3705870 = _v_3706134?.__copy__();
                    _gotoNext = 3709449i32;
                } else if (__value__ == (3706590i32)) {
                    _n_3706590 = _v_3706134.len();
                    _v_3706134.grow((1 : stdgo.GoInt));
                    _v_3706134.setLen((_n_3706590 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    {
                        _err_3706678 = @:check2r _d._unmarshal(_v_3706134.index(_n_3706590)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_3706678 != null) {
                            _gotoNext = 3706737i32;
                        } else {
                            _gotoNext = 3706774i32;
                        };
                    };
                } else if (__value__ == (3706737i32)) {
                    _v_3706134.setLen(_n_3706590);
                    return _err_3706678;
                    _gotoNext = 3706774i32;
                } else if (__value__ == (3706774i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3709449i32;
                } else if (__value__ == (3706787i32)) {
                    _saveData_3705870 = _v_3706134?.__copy__();
                    _gotoNext = 3709449i32;
                } else if (__value__ == (3707039i32)) {
                    _typ_3707062 = _v_3706134.type();
                    if ((_typ_3707062.string() : String) == (stdgo._internal.encoding.xml.Xml__nameType._nameType.string() : String)) {
                        _gotoNext = 3707099i32;
                    } else {
                        _gotoNext = 3707155i32;
                    };
                } else if (__value__ == (3707099i32)) {
                    _v_3706134.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _start ?? throw "null pointer dereference").name)))?.__copy__());
                    _gotoNext = 3709449i32;
                } else if (__value__ == (3707155i32)) {
                    _sv_3706049 = _v_3706134?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.encoding.xml.Xml__getTypeInfo._getTypeInfo(_typ_3707062);
                        _tinfo_3706078 = @:tmpset0 __tmp__._0;
                        _err_3706103 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3706103 != null) {
                        _gotoNext = 3707210i32;
                    } else {
                        _gotoNext = 3707272i32;
                    };
                } else if (__value__ == (3707210i32)) {
                    return _err_3706103;
                    _gotoNext = 3707272i32;
                } else if (__value__ == (3707272i32)) {
                    if (((@:checkr _tinfo_3706078 ?? throw "null pointer dereference")._xmlname != null && (((@:checkr _tinfo_3706078 ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__ == null || !((@:checkr _tinfo_3706078 ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__))) {
                        _gotoNext = 3707296i32;
                    } else {
                        _gotoNext = 3707949i32;
                    };
                } else if (__value__ == (3707296i32)) {
                    _finfo_3707301 = (@:checkr _tinfo_3706078 ?? throw "null pointer dereference")._xmlname;
                    if ((((@:checkr _finfo_3707301 ?? throw "null pointer dereference")._name != stdgo.Go.str()) && ((@:checkr _finfo_3707301 ?? throw "null pointer dereference")._name != (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3707381i32;
                    } else {
                        _gotoNext = 3707499i32;
                    };
                } else if (__value__ == (3707381i32)) {
                    return stdgo.Go.asInterface((((((("expected element type <" : stdgo.GoString) + (@:checkr _finfo_3707301 ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString) + ("> but have <" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _start ?? throw "null pointer dereference").name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError));
                    _gotoNext = 3707499i32;
                } else if (__value__ == (3707499i32)) {
                    if ((((@:checkr _finfo_3707301 ?? throw "null pointer dereference")._xmlns != stdgo.Go.str()) && ((@:checkr _finfo_3707301 ?? throw "null pointer dereference")._xmlns != (@:checkr _start ?? throw "null pointer dereference").name.space) : Bool)) {
                        _gotoNext = 3707555i32;
                    } else {
                        _gotoNext = 3707791i32;
                    };
                } else if (__value__ == (3707555i32)) {
                    _e_3707561 = ((((("expected element <" : stdgo.GoString) + (@:checkr _finfo_3707301 ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString) + ("> in name space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _finfo_3707301 ?? throw "null pointer dereference")._xmlns?.__copy__() : stdgo.GoString) + (" but have " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    if ((@:checkr _start ?? throw "null pointer dereference").name.space == (stdgo.Go.str())) {
                        _gotoNext = 3707680i32;
                    } else {
                        _gotoNext = 3707719i32;
                    };
                } else if (__value__ == (3707680i32)) {
                    _e_3707561 = (_e_3707561 + (("no name space" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3707758i32;
                } else if (__value__ == (3707719i32)) {
                    _gotoNext = 3707719i32;
                    _e_3707561 = (_e_3707561 + ((@:checkr _start ?? throw "null pointer dereference").name.space)?.__copy__() : stdgo.GoString);
                    var __blank__ = 0i32;
                    _gotoNext = 3707758i32;
                } else if (__value__ == (3707758i32)) {
                    return stdgo.Go.asInterface((_e_3707561 : stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError));
                    _gotoNext = 3707791i32;
                } else if (__value__ == (3707791i32)) {
                    _fv_3707791 = @:check2r _finfo_3707301._value(_sv_3706049?.__copy__(), true)?.__copy__();
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_fv_3707791.interface_() : stdgo._internal.encoding.xml.Xml_Name.Name)) : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : false };
                            };
                            _ok_3707839 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3707839) {
                            _gotoNext = 3707871i32;
                        } else {
                            _gotoNext = 3707949i32;
                        };
                    };
                } else if (__value__ == (3707871i32)) {
                    _fv_3707791.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _start ?? throw "null pointer dereference").name)))?.__copy__());
                    _gotoNext = 3707949i32;
                } else if (__value__ == (3707949i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _start ?? throw "null pointer dereference").attr.length)) {
                        _gotoNext = 3708634i32;
                    } else {
                        _gotoNext = 3708707i32;
                    };
                } else if (__value__ == (3707953i32)) {
                    _i_3707961_0++;
                    _gotoNext = 3708635i32;
                } else if (__value__ == (3707978i32)) {
                    _a_3707956 = (@:checkr _start ?? throw "null pointer dereference").attr[(_i_3707961_0 : stdgo.GoInt)];
                    _handled_3707983 = false;
                    _any_3708003 = (-1 : stdgo.GoInt);
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo_3706078 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3708444i32;
                    } else {
                        _gotoNext = 3708450i32;
                    };
                } else if (__value__ == (3708020i32)) {
                    _i_3708020++;
                    _gotoNext = 3708445i32;
                } else if (__value__ == (3708044i32)) {
                    _finfo_3708050 = (stdgo.Go.setRef((@:checkr _tinfo_3706078 ?? throw "null pointer dereference")._fields[(_i_3708020 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _gotoNext = 3708080i32;
                } else if (__value__ == (3708080i32)) {
                    {
                        final __value__ = ((@:checkr _finfo_3708050 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                        if (__value__ == ((2 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3708113i32;
                        } else if (__value__ == ((66 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3708376i32;
                        } else {
                            _gotoNext = 3708020i32;
                        };
                    };
                } else if (__value__ == (3708113i32)) {
                    _strv_3708130 = @:check2r _finfo_3708050._value(_sv_3706049?.__copy__(), true)?.__copy__();
                    if (((_a_3707956.name.local == (@:checkr _finfo_3708050 ?? throw "null pointer dereference")._name) && ((((@:checkr _finfo_3708050 ?? throw "null pointer dereference")._xmlns == stdgo.Go.str()) || ((@:checkr _finfo_3708050 ?? throw "null pointer dereference")._xmlns == _a_3707956.name.space) : Bool)) : Bool)) {
                        _gotoNext = 3708260i32;
                    } else {
                        _gotoNext = 3708020i32;
                    };
                } else if (__value__ == (3708260i32)) {
                    {
                        _err_3708271 = @:check2r _d._unmarshalAttr(_strv_3708130?.__copy__(), _a_3707956?.__copy__());
                        if (_err_3708271 != null) {
                            _gotoNext = 3708315i32;
                        } else {
                            _gotoNext = 3708349i32;
                        };
                    };
                } else if (__value__ == (3708315i32)) {
                    return _err_3708271;
                    _gotoNext = 3708349i32;
                } else if (__value__ == (3708349i32)) {
                    _handled_3707983 = true;
                    _gotoNext = 3708020i32;
                } else if (__value__ == (3708376i32)) {
                    if (_any_3708003 == ((-1 : stdgo.GoInt))) {
                        _gotoNext = 3708413i32;
                    } else {
                        _gotoNext = 3708020i32;
                    };
                } else if (__value__ == (3708413i32)) {
                    _any_3708003 = _i_3708020;
                    _gotoNext = 3708020i32;
                } else if (__value__ == (3708444i32)) {
                    _i_3708020 = 0i32;
                    _gotoNext = 3708445i32;
                } else if (__value__ == (3708445i32)) {
                    if (_i_3708020 < ((@:checkr _tinfo_3706078 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3708044i32;
                    } else {
                        _gotoNext = 3708450i32;
                    };
                } else if (__value__ == (3708450i32)) {
                    if ((!_handled_3707983 && (_any_3708003 >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3708474i32;
                    } else {
                        _gotoNext = 3707953i32;
                    };
                } else if (__value__ == (3708474i32)) {
                    _finfo_3708480 = (stdgo.Go.setRef((@:checkr _tinfo_3706078 ?? throw "null pointer dereference")._fields[(_any_3708003 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _strv_3708512 = @:check2r _finfo_3708480._value(_sv_3706049?.__copy__(), true)?.__copy__();
                    {
                        _err_3708560 = @:check2r _d._unmarshalAttr(_strv_3708512?.__copy__(), _a_3707956?.__copy__());
                        if (_err_3708560 != null) {
                            _gotoNext = 3708604i32;
                        } else {
                            _gotoNext = 3707953i32;
                        };
                    };
                } else if (__value__ == (3708604i32)) {
                    return _err_3708560;
                    _gotoNext = 3707953i32;
                } else if (__value__ == (3708634i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _start ?? throw "null pointer dereference").attr[(0i32 : stdgo.GoInt)];
                        _i_3707961_0 = __tmp__0;
                        _a_3707956 = __tmp__1;
                    };
                    _gotoNext = 3708635i32;
                } else if (__value__ == (3708635i32)) {
                    if (_i_3707961_0 < ((@:checkr _start ?? throw "null pointer dereference").attr.length)) {
                        _gotoNext = 3707978i32;
                    } else {
                        _gotoNext = 3708707i32;
                    };
                } else if (__value__ == (3708707i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo_3706078 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3709380i32;
                    } else {
                        _gotoNext = 3709449i32;
                    };
                } else if (__value__ == (3708711i32)) {
                    _i_3708711++;
                    _gotoNext = 3709381i32;
                } else if (__value__ == (3708735i32)) {
                    _finfo_3708740 = (stdgo.Go.setRef((@:checkr _tinfo_3706078 ?? throw "null pointer dereference")._fields[(_i_3708711 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _gotoNext = 3708769i32;
                } else if (__value__ == (3708769i32)) {
                    {
                        final __value__ = ((@:checkr _finfo_3708740 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                        if (__value__ == ((4 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3708801i32;
                        } else if (__value__ == ((32 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3708913i32;
                        } else if (__value__ == ((64 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((65 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3709022i32;
                        } else if (__value__ == ((16 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3709136i32;
                        } else {
                            _gotoNext = 3708711i32;
                        };
                    };
                } else if (__value__ == (3708801i32)) {
                    if (!_saveData_3705870.isValid()) {
                        _gotoNext = 3708852i32;
                    } else {
                        _gotoNext = 3708711i32;
                    };
                } else if (__value__ == (3708852i32)) {
                    _saveData_3705870 = @:check2r _finfo_3708740._value(_sv_3706049?.__copy__(), true)?.__copy__();
                    _gotoNext = 3708711i32;
                } else if (__value__ == (3708913i32)) {
                    if (!_saveComment_3705921.isValid()) {
                        _gotoNext = 3708958i32;
                    } else {
                        _gotoNext = 3708711i32;
                    };
                } else if (__value__ == (3708958i32)) {
                    _saveComment_3705921 = @:check2r _finfo_3708740._value(_sv_3706049?.__copy__(), true)?.__copy__();
                    _gotoNext = 3708711i32;
                } else if (__value__ == (3709022i32)) {
                    if (!_saveAny_3706020.isValid()) {
                        _gotoNext = 3709076i32;
                    } else {
                        _gotoNext = 3708711i32;
                    };
                } else if (__value__ == (3709076i32)) {
                    _saveAny_3706020 = @:check2r _finfo_3708740._value(_sv_3706049?.__copy__(), true)?.__copy__();
                    _gotoNext = 3708711i32;
                } else if (__value__ == (3709136i32)) {
                    if (!_saveXML_3705950.isValid()) {
                        _gotoNext = 3709178i32;
                    } else {
                        _gotoNext = 3708711i32;
                    };
                } else if (__value__ == (3709178i32)) {
                    _saveXML_3705950 = @:check2r _finfo_3708740._value(_sv_3706049?.__copy__(), true)?.__copy__();
                    if (((@:checkr _d ?? throw "null pointer dereference")._saved == null || ((@:checkr _d ?? throw "null pointer dereference")._saved : Dynamic).__nil__)) {
                        _gotoNext = 3709251i32;
                    } else {
                        _gotoNext = 3709322i32;
                    };
                } else if (__value__ == (3709251i32)) {
                    _saveXMLIndex_3705979 = (0 : stdgo.GoInt);
                    (@:checkr _d ?? throw "null pointer dereference")._saved = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                    _gotoNext = 3708711i32;
                } else if (__value__ == (3709322i32)) {
                    _gotoNext = 3709322i32;
                    _saveXMLIndex_3705979 = @:check2r _d._savedOffset();
                    var __blank__ = 0i32;
                    _gotoNext = 3708711i32;
                } else if (__value__ == (3709380i32)) {
                    _i_3708711 = 0i32;
                    _gotoNext = 3709381i32;
                } else if (__value__ == (3709381i32)) {
                    if (_i_3708711 < ((@:checkr _tinfo_3706078 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3708735i32;
                    } else {
                        _gotoNext = 3709449i32;
                    };
                } else if (__value__ == (3709449i32)) {
                    _gotoNext = 3709449i32;
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3709456i32;
                } else if (__value__ == (3709456i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3709460i32;
                    } else {
                        _gotoNext = 3710545i32;
                    };
                } else if (__value__ == (3709460i32)) {
                    if (_saveXML_3705950.isValid()) {
                        _gotoNext = 3709507i32;
                    } else {
                        _gotoNext = 3709548i32;
                    };
                } else if (__value__ == (3709507i32)) {
                    _savedOffset_3709468 = @:check2r _d._savedOffset();
                    _gotoNext = 3709548i32;
                } else if (__value__ == (3709548i32)) {
                    {
                        var __tmp__ = @:check2r _d.token();
                        _tok_3709548 = @:tmpset0 __tmp__._0;
                        _err_3709553 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3709553 != null) {
                        _gotoNext = 3709586i32;
                    } else {
                        _gotoNext = 3709608i32;
                    };
                } else if (__value__ == (3709586i32)) {
                    return _err_3709553;
                    _gotoNext = 3709608i32;
                } else if (__value__ == (3709608i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3709608i32;
                    {
                        final __type__ = _tok_3709548;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                            _t_3709652 = _t;
                            _gotoNext = 3709635i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                            _t_3710209 = _t;
                            _gotoNext = 3710194i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_CharData.CharData))) {
                            var _t:stdgo._internal.encoding.xml.Xml_CharData.CharData = __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__().value;
                            _t_3710384 = _t;
                            _gotoNext = 3710371i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_Comment.Comment))) {
                            var _t:stdgo._internal.encoding.xml.Xml_Comment.Comment = __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__().value;
                            _t_3710463 = _t;
                            _gotoNext = 3710451i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_Token.Token = __type__?.__underlying__();
                            _gotoNext = 3709456i32;
                        };
                    };
                    _gotoNext = 3709456i32;
                } else if (__value__ == (3709635i32)) {
                    _consumed_3709657 = false;
                    if (_sv_3706049.isValid()) {
                        _gotoNext = 3709694i32;
                    } else {
                        _gotoNext = 3710112i32;
                    };
                } else if (__value__ == (3709694i32)) {
                    {
                        var __tmp__ = @:check2r _d._unmarshalPath(_tinfo_3706078, _sv_3706049?.__copy__(), (null : stdgo.Slice<stdgo.GoString>), (stdgo.Go.setRef(_t_3709652) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), _depth);
                        _consumed_3709657 = @:tmpset0 __tmp__._0;
                        _err_3709553 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3709553 != null) {
                        _gotoNext = 3709926i32;
                    } else {
                        _gotoNext = 3709954i32;
                    };
                } else if (__value__ == (3709926i32)) {
                    return _err_3709553;
                    _gotoNext = 3709954i32;
                } else if (__value__ == (3709954i32)) {
                    if ((!_consumed_3709657 && _saveAny_3706020.isValid() : Bool)) {
                        _gotoNext = 3709988i32;
                    } else {
                        _gotoNext = 3710112i32;
                    };
                } else if (__value__ == (3709988i32)) {
                    _consumed_3709657 = true;
                    {
                        _err_3710019 = @:check2r _d._unmarshal(_saveAny_3706020?.__copy__(), (stdgo.Go.setRef(_t_3709652) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_3710019 != null) {
                            _gotoNext = 3710072i32;
                        } else {
                            _gotoNext = 3710112i32;
                        };
                    };
                } else if (__value__ == (3710072i32)) {
                    return _err_3710019;
                    _gotoNext = 3710112i32;
                } else if (__value__ == (3710112i32)) {
                    if (!_consumed_3709657) {
                        _gotoNext = 3710125i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3710125i32)) {
                    {
                        _err_3710134 = @:check2r _d.skip();
                        if (_err_3710134 != null) {
                            _gotoNext = 3710162i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (3710162i32)) {
                    return _err_3710134;
                    _gotoNext = 0i32;
                } else if (__value__ == (3710194i32)) {
                    if (_saveXML_3705950.isValid()) {
                        _gotoNext = 3710235i32;
                    } else {
                        _gotoNext = 3710357i32;
                    };
                } else if (__value__ == (3710235i32)) {
                    _saveXMLData_3705998 = (@:check2r (@:checkr _d ?? throw "null pointer dereference")._saved.bytes().__slice__(_saveXMLIndex_3705979, _savedOffset_3709468) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_saveXMLIndex_3705979 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3710322i32;
                    } else {
                        _gotoNext = 3710357i32;
                    };
                } else if (__value__ == (3710322i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._saved = null;
                    _gotoNext = 3710357i32;
                } else if (__value__ == (3710357i32)) {
                    loopBreak = true;
                    _gotoNext = 3709456i32;
                } else if (__value__ == (3710371i32)) {
                    if (_saveData_3705870.isValid()) {
                        _gotoNext = 3710411i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3710411i32)) {
                    _data_3705848 = (_data_3705848.__append__(...(_t_3710384 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 0i32;
                } else if (__value__ == (3710451i32)) {
                    if (_saveComment_3705921.isValid()) {
                        _gotoNext = 3710493i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3710493i32)) {
                    _comment_3705899 = (_comment_3705899.__append__(...(_t_3710463 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 0i32;
                } else if (__value__ == (3710545i32)) {
                    if (((_saveData_3705870.isValid() && _saveData_3705870.canInterface() : Bool) && _saveData_3705870.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3710645i32;
                    } else {
                        _gotoNext = 3710793i32;
                    };
                } else if (__value__ == (3710645i32)) {
                    {
                        _err_3710652 = (stdgo.Go.typeAssert((_saveData_3705870.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText(_data_3705848);
                        if (_err_3710652 != null) {
                            _gotoNext = 3710739i32;
                        } else {
                            _gotoNext = 3710761i32;
                        };
                    };
                } else if (__value__ == (3710739i32)) {
                    return _err_3710652;
                    _gotoNext = 3710761i32;
                } else if (__value__ == (3710761i32)) {
                    _saveData_3705870 = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
                    _gotoNext = 3710793i32;
                } else if (__value__ == (3710793i32)) {
                    if ((_saveData_3705870.isValid() && _saveData_3705870.canAddr() : Bool)) {
                        _gotoNext = 3710837i32;
                    } else {
                        _gotoNext = 3711081i32;
                    };
                } else if (__value__ == (3710837i32)) {
                    _pv_3710841 = _saveData_3705870.addr()?.__copy__();
                    if ((_pv_3710841.canInterface() && _pv_3710841.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3710931i32;
                    } else {
                        _gotoNext = 3711081i32;
                    };
                } else if (__value__ == (3710931i32)) {
                    {
                        _err_3710939 = (stdgo.Go.typeAssert((_pv_3710841.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText(_data_3705848);
                        if (_err_3710939 != null) {
                            _gotoNext = 3711020i32;
                        } else {
                            _gotoNext = 3711045i32;
                        };
                    };
                } else if (__value__ == (3711020i32)) {
                    return _err_3710939;
                    _gotoNext = 3711045i32;
                } else if (__value__ == (3711045i32)) {
                    _saveData_3705870 = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
                    _gotoNext = 3711081i32;
                } else if (__value__ == (3711081i32)) {
                    {
                        _err_3711084 = stdgo._internal.encoding.xml.Xml__copyValue._copyValue(_saveData_3705870?.__copy__(), _data_3705848);
                        if (_err_3711084 != null) {
                            _gotoNext = 3711129i32;
                        } else {
                            _gotoNext = 3711149i32;
                        };
                    };
                } else if (__value__ == (3711129i32)) {
                    return _err_3711084;
                    _gotoNext = 3711149i32;
                } else if (__value__ == (3711149i32)) {
                    _gotoNext = 3711149i32;
                    {
                        _t_3711156 = _saveComment_3705921?.__copy__();
                        {
                            final __value__ = _t_3711156.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3711186i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3711239i32;
                            } else {
                                _gotoNext = 3711298i32;
                            };
                        };
                    };
                } else if (__value__ == (3711186i32)) {
                    _t_3711156.setString((_comment_3705899 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3711298i32;
                } else if (__value__ == (3711239i32)) {
                    _t_3711156.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_comment_3705899))?.__copy__());
                    _gotoNext = 3711298i32;
                } else if (__value__ == (3711298i32)) {
                    _gotoNext = 3711298i32;
                    {
                        _t_3711305 = _saveXML_3705950?.__copy__();
                        {
                            final __value__ = _t_3711305.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3711331i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3711388i32;
                            } else {
                                _gotoNext = 3711503i32;
                            };
                        };
                    };
                } else if (__value__ == (3711331i32)) {
                    _t_3711305.setString((_saveXMLData_3705998 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3711503i32;
                } else if (__value__ == (3711388i32)) {
                    if (_t_3711305.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3711453i32;
                    } else {
                        _gotoNext = 3711503i32;
                    };
                } else if (__value__ == (3711453i32)) {
                    _t_3711305.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_saveXMLData_3705998))?.__copy__());
                    _gotoNext = 3711503i32;
                } else if (__value__ == (3711503i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _unmarshalAttr( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _val:stdgo._internal.reflect.Reflect_Value.Value, _attr:stdgo._internal.encoding.xml.Xml_Attr.Attr):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        if (_val.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            if (_val.isNil()) {
                _val.set(stdgo._internal.reflect.Reflect_new_.new_(_val.type().elem())?.__copy__());
            };
            _val = _val.elem()?.__copy__();
        };
        if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerAttrType._unmarshalerAttrType) : Bool)) {
            return (stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_UnmarshalerAttr.UnmarshalerAttr)) : stdgo._internal.encoding.xml.Xml_UnmarshalerAttr.UnmarshalerAttr).unmarshalXMLAttr(_attr?.__copy__());
        };
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerAttrType._unmarshalerAttrType) : Bool)) {
                return (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.xml.Xml_UnmarshalerAttr.UnmarshalerAttr)) : stdgo._internal.encoding.xml.Xml_UnmarshalerAttr.UnmarshalerAttr).unmarshalXMLAttr(_attr?.__copy__());
            };
        };
        if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
            return (stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText((_attr.value : stdgo.Slice<stdgo.GoUInt8>));
        };
        if (_val.canAddr()) {
            var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                return (stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText((_attr.value : stdgo.Slice<stdgo.GoUInt8>));
            };
        };
        if (((_val.type().kind() == (23u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && (_val.type().elem().kind() != (8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
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
        if ((_val.type().string() : String) == (stdgo._internal.encoding.xml.Xml__attrType._attrType.string() : String)) {
            _val.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_attr)))?.__copy__());
            return (null : stdgo.Error);
        };
        return stdgo._internal.encoding.xml.Xml__copyValue._copyValue(_val?.__copy__(), (_attr.value : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _unmarshalTextInterface( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _val:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _depth = (1 : stdgo.GoInt);
        while ((_depth > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = @:check2r _d.token(), _t:stdgo._internal.encoding.xml.Xml_Token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            {
                final __type__ = _t;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_CharData.CharData))) {
                    var _t:stdgo._internal.encoding.xml.Xml_CharData.CharData = __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__().value;
                    if (_depth == ((1 : stdgo.GoInt))) {
                        _buf = (_buf.__append__(...(_t : Array<stdgo.GoUInt8>)));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                    var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                    _depth++;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                    var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                    _depth--;
                };
            };
        };
        return _val.unmarshalText(_buf);
    }
    @:keep
    @:tdfield
    static public function _unmarshalInterface( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _val:stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        @:check2r _d._pushEOF();
        (@:checkr _d ?? throw "null pointer dereference")._unmarshalDepth++;
        var _err = (_val.unmarshalXML(_d, (_start : stdgo._internal.encoding.xml.Xml_StartElement.StartElement)?.__copy__()) : stdgo.Error);
        (@:checkr _d ?? throw "null pointer dereference")._unmarshalDepth--;
        if (_err != null) {
            @:check2r _d._popEOF();
            return _err;
        };
        if (!@:check2r _d._popEOF()) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: %s.UnmarshalXML did not consume entire <%s> element" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.xml.Xml__receiverType._receiverType(stdgo.Go.toInterface(_val))), stdgo.Go.toInterface((@:checkr _start ?? throw "null pointer dereference").name.local));
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function decodeElement( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _v:stdgo.AnyInterface, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _val = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_val.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            return stdgo._internal.errors.Errors_new_.new_(("non-pointer passed to Unmarshal" : stdgo.GoString));
        };
        if (_val.isNil()) {
            return stdgo._internal.errors.Errors_new_.new_(("nil pointer passed to Unmarshal" : stdgo.GoString));
        };
        return @:check2r _d._unmarshal(_val.elem()?.__copy__(), _start, (0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function decode( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        return @:check2r _d.decodeElement(_v, null);
    }
}
