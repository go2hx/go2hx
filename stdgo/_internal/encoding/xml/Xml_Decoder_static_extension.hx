package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    static public function _readName( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _ok = false;
        var _b:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            {
                var __tmp__ = _d._mustgetc();
                _b = __tmp__._0;
                _ok = __tmp__._1;
            };
            if (!_ok) {
                return _ok;
            };
        };
        if (((_b < (128 : stdgo.GoUInt8) : Bool) && !stdgo._internal.encoding.xml.Xml__isNameByte._isNameByte(_b) : Bool)) {
            _d._ungetc(_b);
            return false;
        };
        _d._buf.writeByte(_b);
        while (true) {
            {
                {
                    var __tmp__ = _d._mustgetc();
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    return _ok;
                };
            };
            if (((_b < (128 : stdgo.GoUInt8) : Bool) && !stdgo._internal.encoding.xml.Xml__isNameByte._isNameByte(_b) : Bool)) {
                _d._ungetc(_b);
                break;
            };
            _d._buf.writeByte(_b);
        };
        return true;
    }
    @:keep
    static public function _name( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _s = ("" : stdgo.GoString), _ok = false;
        _d._buf.reset();
        if (!_d._readName()) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
        };
        var _b = _d._buf.bytes();
        if (!stdgo._internal.encoding.xml.Xml__isName._isName(_b)) {
            _d._err = _d._syntaxError((("invalid XML name: " : stdgo.GoString) + (_b : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
        };
        return { _0 : (_b : stdgo.GoString)?.__copy__(), _1 : true };
    }
    @:keep
    static public function _nsname( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_Name.Name; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name), _ok = false;
        var __tmp__ = _d._name(), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : _name, _1 : _ok };
        };
        if ((stdgo._internal.strings.Strings_count.count(_s?.__copy__(), (":" : stdgo.GoString)) > (1 : stdgo.GoInt) : Bool)) {
            return { _0 : _name?.__copy__(), _1 : false };
        } else {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_s?.__copy__(), (":" : stdgo.GoString)), _space:stdgo.GoString = __tmp__._0, _local:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (((!_ok || _space == (stdgo.Go.str()) : Bool) || (_local == stdgo.Go.str()) : Bool)) {
                _name.local = _s?.__copy__();
            } else {
                _name.space = _space?.__copy__();
                _name.local = _local?.__copy__();
            };
        };
        return { _0 : _name?.__copy__(), _1 : true };
    }
    @:keep
    static public function _text( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _quote:stdgo.GoInt, _cdata:Bool):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _text_3669967:stdgo.GoString = ("" : stdgo.GoString);
        var _b_3668877:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var inputBreak = false;
        var _err_3670643:stdgo.Error = (null : stdgo.Error);
        var _haveText_3669986:Bool = false;
        var _s_3670574:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3669952:Bool = false;
        var _b0_3668819:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _data_3671876:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_3671122:Bool = false;
        var _r_3671119:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _start_3670293:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3668880:Bool = false;
        var _b1_3668823:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_3672027:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r_3672024:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _buf_3671990:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _name_3671004:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _base_3670155:stdgo.GoInt = (0 : stdgo.GoInt);
        var _before_3669899:stdgo.GoInt = (0 : stdgo.GoInt);
        var _trunc_3668836:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ent_3671465:stdgo.GoString = ("" : stdgo.GoString);
        var _s_3671092:stdgo.GoString = ("" : stdgo.GoString);
        var _n_3670640:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _d._buf.reset();
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
                        var __tmp__ = _d._getc();
                        _b_3668877 = __tmp__._0;
                        _ok_3668880 = __tmp__._1;
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
                    if (stdgo.Go.toInterface(_d._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _gotoNext = 3668943i32;
                    } else {
                        _gotoNext = 3669017i32;
                    };
                } else if (__value__ == (3668943i32)) {
                    _d._err = _d._syntaxError(("unexpected EOF in CDATA section" : stdgo.GoString));
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
                    _d._err = _d._syntaxError(("unescaped ]]> not in CDATA section" : stdgo.GoString));
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
                    _d._err = _d._syntaxError(("unescaped < inside quoted string" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3669488i32;
                } else if (__value__ == (3669488i32)) {
                    _d._ungetc((60 : stdgo.GoUInt8));
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
                    _before_3669899 = _d._buf.len();
                    _d._buf.writeByte((38 : stdgo.GoUInt8));
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3668877 = __tmp__._0;
                            _ok_3669952 = __tmp__._1;
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
                    _d._buf.writeByte(_b_3668877);
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3668877 = __tmp__._0;
                            _ok_3669952 = __tmp__._1;
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
                    _d._buf.writeByte(_b_3668877);
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3668877 = __tmp__._0;
                            _ok_3669952 = __tmp__._1;
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
                    _start_3670293 = _d._buf.len();
                    var __blank__ = 0i32;
                    _gotoNext = 3670318i32;
                } else if (__value__ == (3670318i32)) {
                    if ((((((48 : stdgo.GoUInt8) <= _b_3668877 : Bool) && (_b_3668877 <= (57 : stdgo.GoUInt8) : Bool) : Bool) || ((_base_3670155 == ((16 : stdgo.GoInt)) && ((97 : stdgo.GoUInt8) <= _b_3668877 : Bool) : Bool) && (_b_3668877 <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || ((_base_3670155 == ((16 : stdgo.GoInt)) && ((65 : stdgo.GoUInt8) <= _b_3668877 : Bool) : Bool) && (_b_3668877 <= (70 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3670429i32;
                    } else {
                        _gotoNext = 3670525i32;
                    };
                } else if (__value__ == (3670429i32)) {
                    _d._buf.writeByte(_b_3668877);
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3668877 = __tmp__._0;
                            _ok_3669952 = __tmp__._1;
                        };
                        if (!_ok_3669952) {
                            _gotoNext = 3670489i32;
                        } else {
                            _gotoNext = 3670525i32;
                        };
                    };
                } else if (__value__ == (3670489i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3670525i32;
                } else if (__value__ == (3670525i32)) {
                    if (_b_3668877 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3670537i32;
                    } else {
                        _gotoNext = 3670567i32;
                    };
                } else if (__value__ == (3670537i32)) {
                    _d._ungetc(_b_3668877);
                    _gotoNext = 3671291i32;
                } else if (__value__ == (3670567i32)) {
                    _gotoNext = 3670567i32;
                    _s_3670574 = ((_d._buf.bytes().__slice__(_start_3670293) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    _d._buf.writeByte((59 : stdgo.GoUInt8));
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_s_3670574?.__copy__(), _base_3670155, (64 : stdgo.GoInt));
                        _n_3670640 = __tmp__._0;
                        _err_3670643 = __tmp__._1;
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
                    _d._ungetc(_b_3668877);
                    if (!_d._readName()) {
                        _gotoNext = 3670839i32;
                    } else {
                        _gotoNext = 3670898i32;
                    };
                } else if (__value__ == (3670839i32)) {
                    if (_d._err != null) {
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
                            var __tmp__ = _d._mustgetc();
                            _b_3668877 = __tmp__._0;
                            _ok_3669952 = __tmp__._1;
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
                    _d._ungetc(_b_3668877);
                    _gotoNext = 3671291i32;
                } else if (__value__ == (3670997i32)) {
                    _gotoNext = 3670997i32;
                    _name_3671004 = (_d._buf.bytes().__slice__((_before_3669899 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _d._buf.writeByte((59 : stdgo.GoUInt8));
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
                            _r_3671119 = __tmp__._0;
                            _ok_3671122 = __tmp__._1;
                        };
                        if (_ok_3671122) {
                            _gotoNext = 3671142i32;
                        } else if (_d.entity != null) {
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
                        var __tmp__ = (_d.entity != null && _d.entity.exists(_s_3671092?.__copy__()) ? { _0 : _d.entity[_s_3671092?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false });
                        _text_3669967 = __tmp__._0?.__copy__();
                        _haveText_3669986 = __tmp__._1;
                    };
                    _gotoNext = 3671291i32;
                } else if (__value__ == (3671291i32)) {
                    if (_haveText_3669986) {
                        _gotoNext = 3671303i32;
                    } else {
                        _gotoNext = 3671405i32;
                    };
                } else if (__value__ == (3671303i32)) {
                    _d._buf.truncate(_before_3669899);
                    _d._buf.writeString(_text_3669967?.__copy__());
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_3668819 = __tmp__0;
                        _b1_3668823 = __tmp__1;
                    };
                    _gotoNext = 3668869i32;
                } else if (__value__ == (3671405i32)) {
                    if (!_d.strict) {
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
                    _ent_3671465 = ((_d._buf.bytes().__slice__(_before_3669899) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    if (_ent_3671465[((_ent_3671465.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3671532i32;
                    } else {
                        _gotoNext = 3671571i32;
                    };
                } else if (__value__ == (3671532i32)) {
                    _ent_3671465 = (_ent_3671465 + ((" (no semicolon)" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3671571i32;
                } else if (__value__ == (3671571i32)) {
                    _d._err = _d._syntaxError((("invalid character entity " : stdgo.GoString) + _ent_3671465?.__copy__() : stdgo.GoString)?.__copy__());
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
                    _d._buf.writeByte((10 : stdgo.GoUInt8));
                    _gotoNext = 3671857i32;
                } else if (__value__ == (3671777i32)) {
                    _gotoNext = 3671857i32;
                } else if (__value__ == (3671826i32)) {
                    _gotoNext = 3671826i32;
                    _d._buf.writeByte(_b_3668877);
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
                    _data_3671876 = _d._buf.bytes();
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
                        _r_3672024 = __tmp__._0;
                        _size_3672027 = __tmp__._1;
                    };
                    if (((_r_3672024 == (65533 : stdgo.GoInt32)) && (_size_3672027 == (1 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3672094i32;
                    } else {
                        _gotoNext = 3672158i32;
                    };
                } else if (__value__ == (3672094i32)) {
                    _d._err = _d._syntaxError(("invalid UTF-8" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3672158i32;
                } else if (__value__ == (3672158i32)) {
                    _buf_3671990 = (_buf_3671990.__slice__(_size_3672027) : stdgo.Slice<stdgo.GoUInt8>);
                    if (!stdgo._internal.encoding.xml.Xml__isInCharacterRange._isInCharacterRange(_r_3672024)) {
                        _gotoNext = 3672203i32;
                    } else {
                        _gotoNext = 3672298i32;
                    };
                } else if (__value__ == (3672203i32)) {
                    _d._err = _d._syntaxError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("illegal character code %U" : stdgo.GoString), stdgo.Go.toInterface(_r_3672024))?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3672298i32;
                } else if (__value__ == (3672298i32)) {
                    return _data_3671876;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function _ungetc( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _b:stdgo.GoUInt8):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        if (_b == ((10 : stdgo.GoUInt8))) {
            _d._line--;
        };
        _d._nextByte = (_b : stdgo.GoInt);
        _d._offset--;
    }
    @:keep
    static public function _mustgetc( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _b = (0 : stdgo.GoUInt8), _ok = false;
        {
            {
                var __tmp__ = _d._getc();
                _b = __tmp__._0;
                _ok = __tmp__._1;
            };
            if (!_ok) {
                if (stdgo.Go.toInterface(_d._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _d._err = _d._syntaxError(("unexpected EOF" : stdgo.GoString));
                };
            };
        };
        return { _0 : _b, _1 : _ok };
    }
    @:keep
    static public function _savedOffset( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _n = (_d._saved.len() : stdgo.GoInt);
        if ((_d._nextByte >= (0 : stdgo.GoInt) : Bool)) {
            _n--;
        };
        return _n;
    }
    @:keep
    static public function inputPos( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _line = (0 : stdgo.GoInt), _column = (0 : stdgo.GoInt);
        return { _0 : _d._line, _1 : (((_d._offset - _d._linestart : stdgo.GoInt64) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
    }
    @:keep
    static public function inputOffset( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        return _d._offset;
    }
    @:keep
    static public function _getc( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo.GoUInt8; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _b = (0 : stdgo.GoUInt8), _ok = false;
        if (_d._err != null) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : false };
        };
        if ((_d._nextByte >= (0 : stdgo.GoInt) : Bool)) {
            _b = (_d._nextByte : stdgo.GoUInt8);
            _d._nextByte = (-1 : stdgo.GoInt);
        } else {
            {
                var __tmp__ = _d._r.readByte();
                _b = __tmp__._0;
                _d._err = __tmp__._1;
            };
            if (_d._err != null) {
                return { _0 : (0 : stdgo.GoUInt8), _1 : false };
            };
            if ((_d._saved != null && ((_d._saved : Dynamic).__nil__ == null || !(_d._saved : Dynamic).__nil__))) {
                _d._saved.writeByte(_b);
            };
        };
        if (_b == ((10 : stdgo.GoUInt8))) {
            _d._line++;
            _d._linestart = (_d._offset + (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
        };
        _d._offset++;
        return { _0 : _b, _1 : true };
    }
    @:keep
    static public function _space( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        while (true) {
            var __tmp__ = _d._getc(), _b:stdgo.GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return;
            };
            {
                final __value__ = _b;
                if (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8))) {} else {
                    _d._ungetc(_b);
                    return;
                };
            };
        };
    }
    @:keep
    static public function _attrval( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var __tmp__ = _d._mustgetc(), _b:stdgo.GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_b == (34 : stdgo.GoUInt8)) || (_b == (39 : stdgo.GoUInt8)) : Bool)) {
            return _d._text((_b : stdgo.GoInt), false);
        };
        if (_d.strict) {
            _d._err = _d._syntaxError(("unquoted or missing attribute value in element" : stdgo.GoString));
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        _d._ungetc(_b);
        _d._buf.reset();
        while (true) {
            {
                var __tmp__ = _d._mustgetc();
                _b = __tmp__._0;
                _ok = __tmp__._1;
            };
            if (!_ok) {
                return (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            if (((((((((97 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || _b == ((95 : stdgo.GoUInt8)) : Bool) || _b == ((58 : stdgo.GoUInt8)) : Bool) || (_b == (45 : stdgo.GoUInt8)) : Bool)) {
                _d._buf.writeByte(_b);
            } else {
                _d._ungetc(_b);
                break;
            };
        };
        return _d._buf.bytes();
    }
    @:keep
    static public function _rawToken( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_Token.Token; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _a_3665134:stdgo._internal.encoding.xml.Xml_Attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr);
        var _empty_3664624:Bool = false;
        var _b_3659761:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b0_3664033:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _data_3662885:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b1_3662179:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b0_3662175:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _enc_3661161:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3659764:Bool = false;
        var _data_3665560:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _s_3663673:stdgo.GoString = ("" : stdgo.GoString);
        var _data_3662494:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err_3661450:stdgo.Error = (null : stdgo.Error);
        var _ver_3660971:stdgo.GoString = ("" : stdgo.GoString);
        var _b0_3660693:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _name_3660071:stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
        var _newr_3661444:stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
        var _inquote_3663194:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3662642:stdgo.GoInt = (0 : stdgo.GoInt);
        var _target_3660501:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3663692:stdgo.GoInt = (0 : stdgo.GoInt);
        var _depth_3663216:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_3660853:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _data_3659863:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _attr_3664637:stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
        var _name_3664611:stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
        var _b1_3664037:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _j_3663815:stdgo.GoInt = (0 : stdgo.GoInt);
        var _content_3660944:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_d._t != null) {
                        _gotoNext = 3659479i32;
                    } else {
                        _gotoNext = 3659506i32;
                    };
                } else if (__value__ == (3659479i32)) {
                    return _d._t.token();
                    _gotoNext = 3659506i32;
                } else if (__value__ == (3659506i32)) {
                    if (_d._err != null) {
                        _gotoNext = 3659522i32;
                    } else {
                        _gotoNext = 3659548i32;
                    };
                } else if (__value__ == (3659522i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3659548i32;
                } else if (__value__ == (3659548i32)) {
                    if (_d._needClose) {
                        _gotoNext = 3659563i32;
                    } else {
                        _gotoNext = 3659761i32;
                    };
                } else if (__value__ == (3659563i32)) {
                    _d._needClose = false;
                    return { _0 : stdgo.Go.toInterface((new stdgo._internal.encoding.xml.Xml_EndElement.EndElement(_d._toClose?.__copy__()) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3659761i32;
                } else if (__value__ == (3659761i32)) {
                    {
                        var __tmp__ = _d._getc();
                        _b_3659761 = __tmp__._0;
                        _ok_3659764 = __tmp__._1;
                    };
                    if (!_ok_3659764) {
                        _gotoNext = 3659787i32;
                    } else {
                        _gotoNext = 3659814i32;
                    };
                } else if (__value__ == (3659787i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3659814i32;
                } else if (__value__ == (3659814i32)) {
                    if (_b_3659761 != ((60 : stdgo.GoUInt8))) {
                        _gotoNext = 3659826i32;
                    } else {
                        _gotoNext = 3659967i32;
                    };
                } else if (__value__ == (3659826i32)) {
                    _d._ungetc(_b_3659761);
                    _data_3659863 = _d._text((-1 : stdgo.GoInt), false);
                    if (_data_3659863 == null) {
                        _gotoNext = 3659906i32;
                    } else {
                        _gotoNext = 3659935i32;
                    };
                } else if (__value__ == (3659906i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3659935i32;
                } else if (__value__ == (3659935i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3659863 : stdgo._internal.encoding.xml.Xml_CharData.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3659967i32;
                } else if (__value__ == (3659967i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3659761 = __tmp__._0;
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3659996i32;
                        } else {
                            _gotoNext = 3660022i32;
                        };
                    };
                } else if (__value__ == (3659996i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
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
                            var __tmp__ = _d._nsname();
                            _name_3660071 = __tmp__._0?.__copy__();
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3660113i32;
                        } else {
                            _gotoNext = 3660228i32;
                        };
                    };
                } else if (__value__ == (3660113i32)) {
                    if (_d._err == null) {
                        _gotoNext = 3660134i32;
                    } else {
                        _gotoNext = 3660204i32;
                    };
                } else if (__value__ == (3660134i32)) {
                    _d._err = _d._syntaxError(("expected element name after </" : stdgo.GoString));
                    _gotoNext = 3660204i32;
                } else if (__value__ == (3660204i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3660228i32;
                } else if (__value__ == (3660228i32)) {
                    _d._space();
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3659761 = __tmp__._0;
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3660269i32;
                        } else {
                            _gotoNext = 3660298i32;
                        };
                    };
                } else if (__value__ == (3660269i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3660298i32;
                } else if (__value__ == (3660298i32)) {
                    if (_b_3659761 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3660310i32;
                    } else {
                        _gotoNext = 3660421i32;
                    };
                } else if (__value__ == (3660310i32)) {
                    _d._err = _d._syntaxError(((("invalid characters between </" : stdgo.GoString) + _name_3660071.local?.__copy__() : stdgo.GoString) + (" and >" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3660421i32;
                } else if (__value__ == (3660421i32)) {
                    return { _0 : stdgo.Go.toInterface((new stdgo._internal.encoding.xml.Xml_EndElement.EndElement(_name_3660071?.__copy__()) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3664589i32;
                } else if (__value__ == (3660452i32)) {
                    {
                        {
                            var __tmp__ = _d._name();
                            _target_3660501 = __tmp__._0?.__copy__();
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3660547i32;
                        } else {
                            _gotoNext = 3660661i32;
                        };
                    };
                } else if (__value__ == (3660547i32)) {
                    if (_d._err == null) {
                        _gotoNext = 3660568i32;
                    } else {
                        _gotoNext = 3660637i32;
                    };
                } else if (__value__ == (3660568i32)) {
                    _d._err = _d._syntaxError(("expected target name after <?" : stdgo.GoString));
                    _gotoNext = 3660637i32;
                } else if (__value__ == (3660637i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3660661i32;
                } else if (__value__ == (3660661i32)) {
                    _d._space();
                    _d._buf.reset();
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
                            var __tmp__ = _d._mustgetc();
                            _b_3659761 = __tmp__._0;
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3660741i32;
                        } else {
                            _gotoNext = 3660773i32;
                        };
                    };
                } else if (__value__ == (3660741i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3660773i32;
                } else if (__value__ == (3660773i32)) {
                    _d._buf.writeByte(_b_3659761);
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
                    _data_3660853 = _d._buf.bytes();
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
                    _d._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: unsupported version %q; only version 1.0 is supported" : stdgo.GoString), stdgo.Go.toInterface(_ver_3660971));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3661161i32;
                } else if (__value__ == (3661161i32)) {
                    _enc_3661161 = stdgo._internal.encoding.xml.Xml__procInst._procInst(("encoding" : stdgo.GoString), _content_3660944?.__copy__())?.__copy__();
                    if ((((_enc_3661161 != (stdgo.Go.str()) && _enc_3661161 != (("utf-8" : stdgo.GoString)) : Bool) && _enc_3661161 != (("UTF-8" : stdgo.GoString)) : Bool) && !stdgo._internal.strings.Strings_equalFold.equalFold(_enc_3661161?.__copy__(), ("utf-8" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3661286i32;
                    } else {
                        _gotoNext = 3661743i32;
                    };
                } else if (__value__ == (3661286i32)) {
                    if (_d.charsetReader == null) {
                        _gotoNext = 3661318i32;
                    } else {
                        _gotoNext = 3661444i32;
                    };
                } else if (__value__ == (3661318i32)) {
                    _d._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: encoding %q declared but Decoder.CharsetReader is nil" : stdgo.GoString), stdgo.Go.toInterface(_enc_3661161));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3661444i32;
                } else if (__value__ == (3661444i32)) {
                    {
                        var __tmp__ = _d.charsetReader(_enc_3661161?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d._r) : stdgo._internal.io.Io_Reader.Reader)) : stdgo._internal.io.Io_Reader.Reader));
                        _newr_3661444 = __tmp__._0;
                        _err_3661450 = __tmp__._1;
                    };
                    if (_err_3661450 != null) {
                        _gotoNext = 3661513i32;
                    } else {
                        _gotoNext = 3661613i32;
                    };
                } else if (__value__ == (3661513i32)) {
                    _d._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: opening charset %q: %w" : stdgo.GoString), stdgo.Go.toInterface(_enc_3661161), stdgo.Go.toInterface(_err_3661450));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
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
                    _d._switchToReader(_newr_3661444);
                    _gotoNext = 3661743i32;
                } else if (__value__ == (3661743i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst(_target_3660501?.__copy__(), _data_3660853) : stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3664589i32;
                } else if (__value__ == (3661780i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3659761 = __tmp__._0;
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3661858i32;
                        } else {
                            _gotoNext = 3661887i32;
                        };
                    };
                } else if (__value__ == (3661858i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
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
                            var __tmp__ = _d._mustgetc();
                            _b_3659761 = __tmp__._0;
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3661984i32;
                        } else {
                            _gotoNext = 3662016i32;
                        };
                    };
                } else if (__value__ == (3661984i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3662016i32;
                } else if (__value__ == (3662016i32)) {
                    if (_b_3659761 != ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 3662028i32;
                    } else {
                        _gotoNext = 3662154i32;
                    };
                } else if (__value__ == (3662028i32)) {
                    _d._err = _d._syntaxError(("invalid sequence <!- not part of <!--" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3662154i32;
                } else if (__value__ == (3662154i32)) {
                    _d._buf.reset();
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
                            var __tmp__ = _d._mustgetc();
                            _b_3659761 = __tmp__._0;
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3662229i32;
                        } else {
                            _gotoNext = 3662264i32;
                        };
                    };
                } else if (__value__ == (3662229i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3662264i32;
                } else if (__value__ == (3662264i32)) {
                    _d._buf.writeByte(_b_3659761);
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
                    _d._err = _d._syntaxError(("invalid sequence \"--\" not allowed in comments" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
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
                    _data_3662494 = _d._buf.bytes();
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
                            var __tmp__ = _d._mustgetc();
                            _b_3659761 = __tmp__._0;
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3662696i32;
                        } else {
                            _gotoNext = 3662731i32;
                        };
                    };
                } else if (__value__ == (3662696i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3662731i32;
                } else if (__value__ == (3662731i32)) {
                    if (_b_3659761 != (("CDATA[" : stdgo.GoString)[(_i_3662642 : stdgo.GoInt)])) {
                        _gotoNext = 3662751i32;
                    } else {
                        _gotoNext = 3662657i32;
                    };
                } else if (__value__ == (3662751i32)) {
                    _d._err = _d._syntaxError(("invalid <![ sequence" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3662657i32;
                } else if (__value__ == (3662885i32)) {
                    _data_3662885 = _d._text((-1 : stdgo.GoInt), true);
                    if (_data_3662885 == null) {
                        _gotoNext = 3662928i32;
                    } else {
                        _gotoNext = 3662960i32;
                    };
                } else if (__value__ == (3662928i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3662960i32;
                } else if (__value__ == (3662960i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3662885 : stdgo._internal.encoding.xml.Xml_CharData.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3663157i32;
                } else if (__value__ == (3663157i32)) {
                    _d._buf.reset();
                    _d._buf.writeByte(_b_3659761);
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
                            var __tmp__ = _d._mustgetc();
                            _b_3659761 = __tmp__._0;
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3663267i32;
                        } else {
                            _gotoNext = 3663299i32;
                        };
                    };
                } else if (__value__ == (3663267i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
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
                    _d._buf.writeByte(_b_3659761);
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
                        _gotoNext = 3664499i32;
                    };
                } else if (__value__ == (3663406i32)) {
                    _inquote_3663194 = (0 : stdgo.GoUInt8);
                    _gotoNext = 3664499i32;
                } else if (__value__ == (3663445i32)) {
                    _gotoNext = 3664499i32;
                } else if (__value__ == (3663504i32)) {
                    _inquote_3663194 = _b_3659761;
                    _gotoNext = 3664499i32;
                } else if (__value__ == (3663552i32)) {
                    _depth_3663216--;
                    _gotoNext = 3664499i32;
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
                            var __tmp__ = _d._mustgetc();
                            _b_3659761 = __tmp__._0;
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3663752i32;
                        } else {
                            _gotoNext = 3663790i32;
                        };
                    };
                } else if (__value__ == (3663752i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
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
                    _d._buf.writeByte(_s_3663673[(_j_3663815 : stdgo.GoInt)]);
                    _j_3663815++;
                    _gotoNext = 3663811i32;
                } else if (__value__ == (3663879i32)) {
                    _depth_3663216++;
                    _gotoNext = 3663360i32;
                } else if (__value__ == (3663964i32)) {
                    _d._buf.truncate((_d._buf.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
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
                            var __tmp__ = _d._mustgetc();
                            _b_3659761 = __tmp__._0;
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3664089i32;
                        } else {
                            _gotoNext = 3664127i32;
                        };
                    };
                } else if (__value__ == (3664089i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
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
                    _d._buf.writeByte((32 : stdgo.GoUInt8));
                    _gotoNext = 3664499i32;
                } else if (__value__ == (3664499i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_d._buf.bytes() : stdgo._internal.encoding.xml.Xml_Directive.Directive))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3664589i32;
                } else if (__value__ == (3664589i32)) {
                    _d._ungetc(_b_3659761);
                    {
                        {
                            var __tmp__ = _d._nsname();
                            _name_3664611 = __tmp__._0?.__copy__();
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3664684i32;
                        } else {
                            _gotoNext = 3664793i32;
                        };
                    };
                } else if (__value__ == (3664684i32)) {
                    if (_d._err == null) {
                        _gotoNext = 3664704i32;
                    } else {
                        _gotoNext = 3664770i32;
                    };
                } else if (__value__ == (3664704i32)) {
                    _d._err = _d._syntaxError(("expected element name after <" : stdgo.GoString));
                    _gotoNext = 3664770i32;
                } else if (__value__ == (3664770i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
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
                    _d._space();
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3659761 = __tmp__._0;
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3664859i32;
                        } else {
                            _gotoNext = 3664888i32;
                        };
                    };
                } else if (__value__ == (3664859i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
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
                            var __tmp__ = _d._mustgetc();
                            _b_3659761 = __tmp__._0;
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3664950i32;
                        } else {
                            _gotoNext = 3664982i32;
                        };
                    };
                } else if (__value__ == (3664950i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3664982i32;
                } else if (__value__ == (3664982i32)) {
                    if (_b_3659761 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3664994i32;
                    } else {
                        _gotoNext = 3665078i32;
                    };
                } else if (__value__ == (3664994i32)) {
                    _d._err = _d._syntaxError(("expected /> in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
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
                    _d._ungetc(_b_3659761);
                    _a_3665134 = (new stdgo._internal.encoding.xml.Xml_Attr.Attr() : stdgo._internal.encoding.xml.Xml_Attr.Attr);
                    {
                        {
                            var __tmp__ = _d._nsname();
                            _a_3665134.name = __tmp__._0?.__copy__();
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3665180i32;
                        } else {
                            _gotoNext = 3665299i32;
                        };
                    };
                } else if (__value__ == (3665180i32)) {
                    if (_d._err == null) {
                        _gotoNext = 3665201i32;
                    } else {
                        _gotoNext = 3665275i32;
                    };
                } else if (__value__ == (3665201i32)) {
                    _d._err = _d._syntaxError(("expected attribute name in element" : stdgo.GoString));
                    _gotoNext = 3665275i32;
                } else if (__value__ == (3665275i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3665299i32;
                } else if (__value__ == (3665299i32)) {
                    _d._space();
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3659761 = __tmp__._0;
                            _ok_3659764 = __tmp__._1;
                        };
                        if (!_ok_3659764) {
                            _gotoNext = 3665340i32;
                        } else {
                            _gotoNext = 3665369i32;
                        };
                    };
                } else if (__value__ == (3665340i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3665369i32;
                } else if (__value__ == (3665369i32)) {
                    if (_b_3659761 != ((61 : stdgo.GoUInt8))) {
                        _gotoNext = 3665381i32;
                    } else {
                        _gotoNext = 3665542i32;
                    };
                } else if (__value__ == (3665381i32)) {
                    if (_d.strict) {
                        _gotoNext = 3665398i32;
                    } else {
                        _gotoNext = 3665495i32;
                    };
                } else if (__value__ == (3665398i32)) {
                    _d._err = _d._syntaxError(("attribute name without = in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3665495i32;
                } else if (__value__ == (3665495i32)) {
                    _d._ungetc(_b_3659761);
                    _a_3665134.value = _a_3665134.name.local?.__copy__();
                    _gotoNext = 3665659i32;
                } else if (__value__ == (3665542i32)) {
                    _gotoNext = 3665542i32;
                    _d._space();
                    _data_3665560 = _d._attrval();
                    if (_data_3665560 == null) {
                        _gotoNext = 3665598i32;
                    } else {
                        _gotoNext = 3665630i32;
                    };
                } else if (__value__ == (3665598i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
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
                    _d._needClose = true;
                    _d._toClose = _name_3664611?.__copy__();
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
    static public function rawToken( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_Token.Token; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        if ((_d._unmarshalDepth > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : stdgo._internal.encoding.xml.Xml__errRawToken._errRawToken };
        };
        return _d._rawToken();
    }
    @:keep
    static public function _autoClose( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _t:stdgo._internal.encoding.xml.Xml_Token.Token):{ var _0 : stdgo._internal.encoding.xml.Xml_Token.Token; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        if (((_d._stk == null || (_d._stk : Dynamic).__nil__) || (_d._stk._kind != (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : false };
        };
        for (__0 => _s in _d.autoClose) {
            if (stdgo._internal.strings.Strings_equalFold.equalFold(_s?.__copy__(), _d._stk._name.local?.__copy__())) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_t : stdgo._internal.encoding.xml.Xml_EndElement.EndElement)) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement), _1 : true };
                } catch(_) {
                    { _0 : ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement), _1 : false };
                }, _et = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || !stdgo._internal.strings.Strings_equalFold.equalFold(_et.name.local?.__copy__(), _d._stk._name.local?.__copy__()) : Bool)) {
                    return { _0 : stdgo.Go.toInterface((new stdgo._internal.encoding.xml.Xml_EndElement.EndElement(_d._stk._name?.__copy__()) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement)), _1 : true };
                };
                break;
            };
        };
        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : false };
    }
    @:keep
    static public function _popElement( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _t:stdgo.Ref<stdgo._internal.encoding.xml.Xml_EndElement.EndElement>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _s = _d._pop();
        var _name = (_t.name?.__copy__() : stdgo._internal.encoding.xml.Xml_Name.Name);
        if (((_s == null || (_s : Dynamic).__nil__) || (_s._kind != (0 : stdgo.GoInt)) : Bool)) {
            _d._err = _d._syntaxError(((("unexpected end element </" : stdgo.GoString) + _name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            return false;
        } else if (_s._name.local != (_name.local)) {
            if (!_d.strict) {
                _d._needClose = true;
                _d._toClose = _t.name?.__copy__();
                _t.name = _s._name?.__copy__();
                return true;
            };
            _d._err = _d._syntaxError(((((("element <" : stdgo.GoString) + _s._name.local?.__copy__() : stdgo.GoString) + ("> closed by </" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            return false;
        } else if (_s._name.space != (_name.space)) {
            _d._err = _d._syntaxError((((((((("element <" : stdgo.GoString) + _s._name.local?.__copy__() : stdgo.GoString) + ("> in space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s._name.space?.__copy__() : stdgo.GoString) + (" closed by </" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name.local?.__copy__() : stdgo.GoString) + ("> in space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name.space?.__copy__() : stdgo.GoString)?.__copy__());
            return false;
        };
        _d._translate((stdgo.Go.setRef(_t.name) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Name.Name>), true);
        while ((((_d._stk != null && ((_d._stk : Dynamic).__nil__ == null || !(_d._stk : Dynamic).__nil__)) && _d._stk._kind != ((0 : stdgo.GoInt)) : Bool) && (_d._stk._kind != (2 : stdgo.GoInt)) : Bool)) {
            var _s = _d._pop();
            if (_s._ok) {
                _d._ns[_s._name.local] = _s._name.space?.__copy__();
            } else {
                if (_d._ns != null) _d._ns.remove(_s._name.local);
            };
        };
        return true;
    }
    @:keep
    static public function _syntaxError( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _msg:stdgo.GoString):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ msg : _msg?.__copy__(), line : _d._line } : stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_SyntaxError.SyntaxError>));
    }
    @:keep
    static public function _pushNs( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _local:stdgo.GoString, _url:stdgo.GoString, _ok:Bool):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _s = _d._push((1 : stdgo.GoInt));
        _s._name.local = _local?.__copy__();
        _s._name.space = _url?.__copy__();
        _s._ok = _ok;
    }
    @:keep
    static public function _pushElement( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _name:stdgo._internal.encoding.xml.Xml_Name.Name):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _s = _d._push((0 : stdgo.GoInt));
        _s._name = _name?.__copy__();
    }
    @:keep
    static public function _popEOF( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        if (((_d._stk == null || (_d._stk : Dynamic).__nil__) || (_d._stk._kind != (2 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        _d._pop();
        return true;
    }
    @:keep
    static public function _pushEOF( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _start = _d._stk;
        while (_start._kind != ((0 : stdgo.GoInt))) {
            _start = _start._next;
        };
        while (((_start._next != null && ((_start._next : Dynamic).__nil__ == null || !(_start._next : Dynamic).__nil__)) && (_start._next._kind == (1 : stdgo.GoInt)) : Bool)) {
            _start = _start._next;
        };
        var _s = _d._free;
        if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
            _d._free = _s._next;
        } else {
            _s = (stdgo.Go.setRef(({} : stdgo._internal.encoding.xml.Xml_T_stack.T_stack)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>);
        };
        _s._kind = (2 : stdgo.GoInt);
        _s._next = _start._next;
        _start._next = _s;
    }
    @:keep
    static public function _pop( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _s = _d._stk;
        if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
            _d._stk = _s._next;
            _s._next = _d._free;
            _d._free = _s;
        };
        return _s;
    }
    @:keep
    static public function _push( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _kind:stdgo.GoInt):stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _s = _d._free;
        if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
            _d._free = _s._next;
        } else {
            _s = (stdgo.Go.setRef(({} : stdgo._internal.encoding.xml.Xml_T_stack.T_stack)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_stack.T_stack>);
        };
        _s._next = _d._stk;
        _s._kind = _kind;
        _d._stk = _s;
        return _s;
    }
    @:keep
    static public function _switchToReader( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _r:stdgo._internal.io.Io_Reader.Reader):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_ByteReader.ByteReader)) : stdgo._internal.io.Io_ByteReader.ByteReader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_ByteReader.ByteReader), _1 : false };
            }, _rb = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _d._r = _rb;
            } else {
                _d._r = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newReader.newReader(_r));
            };
        };
    }
    @:keep
    static public function _translate( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _n:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Name.Name>, _isElementName:Bool):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        if (_n.space == (("xmlns" : stdgo.GoString))) {
            return;
        } else if (((_n.space == stdgo.Go.str()) && !_isElementName : Bool)) {
            return;
        } else if (_n.space == (("xml" : stdgo.GoString))) {
            _n.space = ("http://www.w3.org/XML/1998/namespace" : stdgo.GoString);
        } else if (((_n.space == stdgo.Go.str()) && (_n.local == ("xmlns" : stdgo.GoString)) : Bool)) {
            return;
        };
        {
            var __tmp__ = (_d._ns != null && _d._ns.exists(_n.space?.__copy__()) ? { _0 : _d._ns[_n.space?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _n.space = _v?.__copy__();
            } else if (_n.space == (stdgo.Go.str())) {
                _n.space = _d.defaultSpace?.__copy__();
            };
        };
    }
    @:keep
    static public function token( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_Token.Token; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _t:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _err:stdgo.Error = (null : stdgo.Error);
        if (((_d._stk != null && ((_d._stk : Dynamic).__nil__ == null || !(_d._stk : Dynamic).__nil__)) && (_d._stk._kind == (2 : stdgo.GoInt)) : Bool)) {
            return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : stdgo._internal.io.Io_eof.eof };
        };
        if (_d._nextToken != null) {
            _t = _d._nextToken;
            _d._nextToken = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        } else {
            {
                {
                    var __tmp__ = _d._rawToken();
                    _t = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (((_t == null) && (_err != null) : Bool)) {
                    if (((stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) && (_d._stk != null && ((_d._stk : Dynamic).__nil__ == null || !(_d._stk : Dynamic).__nil__)) : Bool) && (_d._stk._kind != (2 : stdgo.GoInt)) : Bool)) {
                        _err = _d._syntaxError(("unexpected EOF" : stdgo.GoString));
                    };
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _err };
                };
            };
            _err = (null : stdgo.Error);
        };
        if (!_d.strict) {
            {
                var __tmp__ = _d._autoClose(_t), _t1:stdgo._internal.encoding.xml.Xml_Token.Token = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _d._nextToken = _t;
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
                        var __tmp__ = (_d._ns != null && _d._ns.exists(_a.name.local?.__copy__()) ? { _0 : _d._ns[_a.name.local?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        _d._pushNs(_a.name.local?.__copy__(), _v?.__copy__(), _ok);
                        _d._ns[_a.name.local] = _a.value?.__copy__();
                    };
                    if (((_a.name.space == stdgo.Go.str()) && (_a.name.local == ("xmlns" : stdgo.GoString)) : Bool)) {
                        var __tmp__ = (_d._ns != null && _d._ns.exists(stdgo.Go.str()?.__copy__()) ? { _0 : _d._ns[stdgo.Go.str()?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        _d._pushNs(stdgo.Go.str()?.__copy__(), _v?.__copy__(), _ok);
                        _d._ns[stdgo.Go.str()] = _a.value?.__copy__();
                    };
                };
                _d._pushElement(_t1.name?.__copy__());
                _d._translate((stdgo.Go.setRef(_t1.name) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Name.Name>), true);
                for (_i => _ in _t1.attr) {
                    _d._translate((stdgo.Go.setRef(_t1.attr[(_i : stdgo.GoInt)].name) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Name.Name>), false);
                };
                _t = stdgo.Go.toInterface(stdgo.Go.asInterface(_t1));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                var _t1:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                if (!_d._popElement((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_EndElement.EndElement>))) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                };
                _t = stdgo.Go.toInterface(_t1);
            };
        };
        return { _0 : _t, _1 : _err };
    }
    @:keep
    static public function skip( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _depth:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        while (true) {
            var __tmp__ = _d.token(), _tok:stdgo._internal.encoding.xml.Xml_Token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
    static public function _unmarshalPath( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _tinfo:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>, _sv:stdgo._internal.reflect.Reflect_Value.Value, _parents:stdgo.Slice<stdgo.GoString>, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>, _depth:stdgo.GoInt):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _consumed = false, _err = (null : stdgo.Error);
        var _t_3757148:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement);
        var _j_3755692:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3755490:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tok_3756654:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _finfo_3755518:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _recurse_3755462:Bool = false;
        var _err_3757068:stdgo.Error = (null : stdgo.Error);
        var _err_3756943:stdgo.Error = (null : stdgo.Error);
        var _consumed2_3756932:Bool = false;
        var _t_3756775:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3756775;
                    _gotoNext = 3757177i32;
                    _recurse_3755462 = false;
                    _gotoNext = 3755479i32;
                } else if (__value__ == (3755479i32)) {
                    if ((0i32 : stdgo.GoInt) < (_tinfo._fields.length)) {
                        _gotoNext = 3756385i32;
                    } else {
                        _gotoNext = 3756389i32;
                    };
                } else if (__value__ == (3755490i32)) {
                    _i_3755490++;
                    _gotoNext = 3756386i32;
                } else if (__value__ == (3755514i32)) {
                    _finfo_3755518 = (stdgo.Go.setRef(_tinfo._fields[(_i_3755490 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if ((((_finfo_3755518._flags & (1 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || ((_finfo_3755518._parents.length) < (_parents.length) : Bool) : Bool) || (_finfo_3755518._xmlns != (stdgo.Go.str()) && _finfo_3755518._xmlns != (_start.name.space) : Bool) : Bool)) {
                        _gotoNext = 3755668i32;
                    } else {
                        _gotoNext = 3755688i32;
                    };
                } else if (__value__ == (3755668i32)) {
                    _i_3755490++;
                    _gotoNext = 3756386i32;
                } else if (__value__ == (3755688i32)) {
                    if ((0i32 : stdgo.GoInt) < (_parents.length)) {
                        _gotoNext = 3755776i32;
                    } else {
                        _gotoNext = 3755781i32;
                    };
                } else if (__value__ == (3755692i32)) {
                    _j_3755692++;
                    _gotoNext = 3755777i32;
                } else if (__value__ == (3755711i32)) {
                    if (_parents[(_j_3755692 : stdgo.GoInt)] != (_finfo_3755518._parents[(_j_3755692 : stdgo.GoInt)])) {
                        _gotoNext = 3755750i32;
                    } else {
                        _gotoNext = 3755692i32;
                    };
                } else if (__value__ == (3755750i32)) {
                    _i_3755490++;
                    _gotoNext = 3756386i32;
                } else if (__value__ == (3755776i32)) {
                    _j_3755692 = 0i32;
                    _gotoNext = 3755777i32;
                } else if (__value__ == (3755777i32)) {
                    if (_j_3755692 < (_parents.length)) {
                        _gotoNext = 3755711i32;
                    } else {
                        _gotoNext = 3755781i32;
                    };
                } else if (__value__ == (3755781i32)) {
                    if (((_finfo_3755518._parents.length == (_parents.length)) && (_finfo_3755518._name == _start.name.local) : Bool)) {
                        _gotoNext = 3755853i32;
                    } else {
                        _gotoNext = 3755988i32;
                    };
                } else if (__value__ == (3755853i32)) {
                    return { _0 : true, _1 : _d._unmarshal(_finfo_3755518._value(_sv?.__copy__(), true)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                    _gotoNext = 3755988i32;
                } else if (__value__ == (3755988i32)) {
                    if ((((_finfo_3755518._parents.length) > (_parents.length) : Bool) && (_finfo_3755518._parents[(_parents.length : stdgo.GoInt)] == _start.name.local) : Bool)) {
                        _gotoNext = 3756076i32;
                    } else {
                        _gotoNext = 3755490i32;
                    };
                } else if (__value__ == (3756076i32)) {
                    _recurse_3755462 = true;
                    _parents = (_finfo_3755518._parents.__slice__(0, ((_parents.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 3756389i32;
                } else if (__value__ == (3756385i32)) {
                    _i_3755490 = 0i32;
                    _gotoNext = 3756386i32;
                } else if (__value__ == (3756386i32)) {
                    if (_i_3755490 < (_tinfo._fields.length)) {
                        _gotoNext = 3755514i32;
                    } else {
                        _gotoNext = 3756389i32;
                    };
                } else if (__value__ == (3756389i32)) {
                    if (!_recurse_3755462) {
                        _gotoNext = 3756401i32;
                    } else {
                        _gotoNext = 3756642i32;
                    };
                } else if (__value__ == (3756401i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
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
                        var __tmp__ = _d.token();
                        _tok_3756654 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        _gotoNext = 3756703i32;
                    } else {
                        _gotoNext = 3756731i32;
                    };
                } else if (__value__ == (3756703i32)) {
                    return { _0 : true, _1 : _err };
                    _gotoNext = 3756731i32;
                } else if (__value__ == (3756731i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3756731i32;
                    {
                        final __type__ = _tok_3756654;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                            _t_3756775 = _t;
                            _gotoNext = 3756758i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                            _t_3757148 = _t;
                            _gotoNext = 3757133i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_Token.Token = __type__?.__underlying__();
                            _gotoNext = 3757177i32;
                        };
                    };
                    _gotoNext = 3756642i32;
                } else if (__value__ == (3756758i32)) {
                    {
                        var __tmp__ = _d._unmarshalPath(_tinfo, _sv?.__copy__(), _parents, (stdgo.Go.setRef(_t_3756775) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), _depth);
                        _consumed2_3756932 = __tmp__._0;
                        _err_3756943 = __tmp__._1;
                    };
                    if (_err_3756943 != null) {
                        _gotoNext = 3757014i32;
                    } else {
                        _gotoNext = 3757045i32;
                    };
                } else if (__value__ == (3757014i32)) {
                    return { _0 : true, _1 : _err_3756943 };
                    _gotoNext = 3757045i32;
                } else if (__value__ == (3757045i32)) {
                    if (!_consumed2_3756932) {
                        _gotoNext = 3757059i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3757059i32)) {
                    {
                        _err_3757068 = _d.skip();
                        if (_err_3757068 != null) {
                            _gotoNext = 3757096i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (3757096i32)) {
                    return { _0 : true, _1 : _err_3757068 };
                    _gotoNext = 0i32;
                } else if (__value__ == (3757133i32)) {
                    return { _0 : true, _1 : (null : stdgo.Error) };
                    var __blank__ = _t_3757148;
                    _gotoNext = 3757177i32;
                } else if (__value__ == (3757177i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function _unmarshal( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _val:stdgo._internal.reflect.Reflect_Value.Value, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>, _depth:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _t_3751565:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _i_3750624:stdgo.GoInt = (0 : stdgo.GoInt);
        var _finfo_3750393:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _e_3749474:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3746541:Bool = false;
        var _finfo_3749963:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _i_3749933:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3748591:stdgo.Error = (null : stdgo.Error);
        var _n_3748503:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3746476:stdgo.Error = (null : stdgo.Error);
        var _err_3752047:stdgo.Error = (null : stdgo.Error);
        var _err_3750184:stdgo.Error = (null : stdgo.Error);
        var _t_3752122:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement);
        var _savedOffset_3751381:stdgo.GoInt = (0 : stdgo.GoInt);
        var loopBreak = false;
        var _saveAny_3747933:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3750473:stdgo.Error = (null : stdgo.Error);
        var _any_3749916:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_3747761:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _pv_3747245:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3751466:stdgo.Error = (null : stdgo.Error);
        var _tok_3751461:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _a_3749869:stdgo._internal.encoding.xml.Xml_Attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr);
        var _t_3746538:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _err_3751932:stdgo.Error = (null : stdgo.Error);
        var _t_3752297:stdgo._internal.encoding.xml.Xml_CharData.CharData = new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0);
        var _fv_3749704:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _saveXMLIndex_3747892:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3748016:stdgo.Error = (null : stdgo.Error);
        var _sv_3747962:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _saveXMLData_3747911:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _e_3746754:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _tok_3746471:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _err_3752852:stdgo.Error = (null : stdgo.Error);
        var _t_3752376:stdgo._internal.encoding.xml.Xml_Comment.Comment = new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0);
        var _finfo_3750653:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _t_3753218:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _consumed_3751570:Bool = false;
        var _i_3749874_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _comment_3747812:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err_3752997:stdgo.Error = (null : stdgo.Error);
        var _strv_3750425:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _finfo_3749214:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _typ_3748975:stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _ok_3749752:Bool = false;
        var _typ_3748353:stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _saveComment_3747834:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _saveData_3747783:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _pv_3752754:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _t_3753069:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3752565:stdgo.Error = (null : stdgo.Error);
        var _pv_3747579:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _v_3748047:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _saveXML_3747863:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _strv_3750043:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _handled_3749896:Bool = false;
        var _tinfo_3747991:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3751565;
                    _gotoNext = 3752458i32;
                    var __blank__ = _t_3752297;
                    _gotoNext = 3752458i32;
                    var __blank__ = _t_3752376;
                    _gotoNext = 3752458i32;
                    if (((_depth >= (10000 : stdgo.GoInt) : Bool) || (true && (_depth >= (5000 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3746371i32;
                    } else {
                        _gotoNext = 3746442i32;
                    };
                } else if (__value__ == (3746371i32)) {
                    return stdgo._internal.encoding.xml.Xml__errUnmarshalDepth._errUnmarshalDepth;
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
                        var __tmp__ = _d.token();
                        _tok_3746471 = __tmp__._0;
                        _err_3746476 = __tmp__._1;
                    };
                    if (_err_3746476 != null) {
                        _gotoNext = 3746510i32;
                    } else {
                        _gotoNext = 3746535i32;
                    };
                } else if (__value__ == (3746510i32)) {
                    return _err_3746476;
                    _gotoNext = 3746535i32;
                } else if (__value__ == (3746535i32)) {
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_tok_3746471 : stdgo._internal.encoding.xml.Xml_StartElement.StartElement)) : stdgo._internal.encoding.xml.Xml_StartElement.StartElement), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement), _1 : false };
                            };
                            _t_3746538 = __tmp__._0?.__copy__();
                            _ok_3746541 = __tmp__._1;
                        };
                        if (_ok_3746541) {
                            _gotoNext = 3746570i32;
                        } else {
                            _gotoNext = 3746699i32;
                        };
                    };
                } else if (__value__ == (3746570i32)) {
                    _start = (stdgo.Go.setRef(_t_3746538) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>);
                    _gotoNext = 3746699i32;
                } else if (__value__ == (3746699i32)) {
                    if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_val.isNil() : Bool)) {
                        _gotoNext = 3746750i32;
                    } else {
                        _gotoNext = 3746839i32;
                    };
                } else if (__value__ == (3746750i32)) {
                    _e_3746754 = _val.elem()?.__copy__();
                    if (((_e_3746754.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_e_3746754.isNil() : Bool)) {
                        _gotoNext = 3746817i32;
                    } else {
                        _gotoNext = 3746839i32;
                    };
                } else if (__value__ == (3746817i32)) {
                    _val = _e_3746754?.__copy__();
                    _gotoNext = 3746839i32;
                } else if (__value__ == (3746839i32)) {
                    if (_val.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
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
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerType._unmarshalerType) : Bool)) {
                        _gotoNext = 3747028i32;
                    } else {
                        _gotoNext = 3747224i32;
                    };
                } else if (__value__ == (3747028i32)) {
                    return _d._unmarshalInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3747224i32;
                } else if (__value__ == (3747224i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3747241i32;
                    } else {
                        _gotoNext = 3747405i32;
                    };
                } else if (__value__ == (3747241i32)) {
                    _pv_3747245 = _val.addr()?.__copy__();
                    if ((_pv_3747245.canInterface() && _pv_3747245.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerType._unmarshalerType) : Bool)) {
                        _gotoNext = 3747326i32;
                    } else {
                        _gotoNext = 3747405i32;
                    };
                } else if (__value__ == (3747326i32)) {
                    return _d._unmarshalInterface((stdgo.Go.typeAssert((_pv_3747245.interface_() : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3747405i32;
                } else if (__value__ == (3747405i32)) {
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3747473i32;
                    } else {
                        _gotoNext = 3747558i32;
                    };
                } else if (__value__ == (3747473i32)) {
                    return _d._unmarshalTextInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler));
                    _gotoNext = 3747558i32;
                } else if (__value__ == (3747558i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3747575i32;
                    } else {
                        _gotoNext = 3747753i32;
                    };
                } else if (__value__ == (3747575i32)) {
                    _pv_3747579 = _val.addr()?.__copy__();
                    if ((_pv_3747579.canInterface() && _pv_3747579.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3747664i32;
                    } else {
                        _gotoNext = 3747753i32;
                    };
                } else if (__value__ == (3747664i32)) {
                    return _d._unmarshalTextInterface((stdgo.Go.typeAssert((_pv_3747579.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler));
                    _gotoNext = 3747753i32;
                } else if (__value__ == (3747753i32)) {
                    _gotoNext = 3748040i32;
                } else if (__value__ == (3748040i32)) {
                    {
                        _v_3748047 = _val?.__copy__();
                        {
                            final __value__ = _v_3748047.kind();
                            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3748137i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3748331i32;
                            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3748700i32;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3748952i32;
                            } else {
                                _gotoNext = 3748069i32;
                            };
                        };
                    };
                } else if (__value__ == (3748069i32)) {
                    return stdgo._internal.errors.Errors_new_.new_((("unknown type " : stdgo.GoString) + (_v_3748047.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3748137i32)) {
                    return _d.skip();
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3748331i32)) {
                    _typ_3748353 = _v_3748047.type();
                    if (_typ_3748353.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3748409i32;
                    } else {
                        _gotoNext = 3748503i32;
                    };
                } else if (__value__ == (3748409i32)) {
                    _saveData_3747783 = _v_3748047?.__copy__();
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3748503i32)) {
                    _n_3748503 = _v_3748047.len();
                    _v_3748047.grow((1 : stdgo.GoInt));
                    _v_3748047.setLen((_n_3748503 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    {
                        _err_3748591 = _d._unmarshal(_v_3748047.index(_n_3748503)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_3748591 != null) {
                            _gotoNext = 3748650i32;
                        } else {
                            _gotoNext = 3748687i32;
                        };
                    };
                } else if (__value__ == (3748650i32)) {
                    _v_3748047.setLen(_n_3748503);
                    return _err_3748591;
                    _gotoNext = 3748687i32;
                } else if (__value__ == (3748687i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3748700i32)) {
                    _saveData_3747783 = _v_3748047?.__copy__();
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3748952i32)) {
                    _typ_3748975 = _v_3748047.type();
                    if ((_typ_3748975.string() : String) == (stdgo._internal.encoding.xml.Xml__nameType._nameType.string() : String)) {
                        _gotoNext = 3749012i32;
                    } else {
                        _gotoNext = 3749068i32;
                    };
                } else if (__value__ == (3749012i32)) {
                    _v_3748047.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_start.name))?.__copy__());
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3749068i32)) {
                    _sv_3747962 = _v_3748047?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.encoding.xml.Xml__getTypeInfo._getTypeInfo(_typ_3748975);
                        _tinfo_3747991 = __tmp__._0;
                        _err_3748016 = __tmp__._1;
                    };
                    if (_err_3748016 != null) {
                        _gotoNext = 3749123i32;
                    } else {
                        _gotoNext = 3749185i32;
                    };
                } else if (__value__ == (3749123i32)) {
                    return _err_3748016;
                    _gotoNext = 3749185i32;
                } else if (__value__ == (3749185i32)) {
                    if ((_tinfo_3747991._xmlname != null && ((_tinfo_3747991._xmlname : Dynamic).__nil__ == null || !(_tinfo_3747991._xmlname : Dynamic).__nil__))) {
                        _gotoNext = 3749209i32;
                    } else {
                        _gotoNext = 3749862i32;
                    };
                } else if (__value__ == (3749209i32)) {
                    _finfo_3749214 = _tinfo_3747991._xmlname;
                    if (((_finfo_3749214._name != stdgo.Go.str()) && (_finfo_3749214._name != _start.name.local) : Bool)) {
                        _gotoNext = 3749294i32;
                    } else {
                        _gotoNext = 3749412i32;
                    };
                } else if (__value__ == (3749294i32)) {
                    return stdgo.Go.asInterface((((((("expected element type <" : stdgo.GoString) + _finfo_3749214._name?.__copy__() : stdgo.GoString) + ("> but have <" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _start.name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError));
                    _gotoNext = 3749412i32;
                } else if (__value__ == (3749412i32)) {
                    if (((_finfo_3749214._xmlns != stdgo.Go.str()) && (_finfo_3749214._xmlns != _start.name.space) : Bool)) {
                        _gotoNext = 3749468i32;
                    } else {
                        _gotoNext = 3749704i32;
                    };
                } else if (__value__ == (3749468i32)) {
                    _e_3749474 = ((((("expected element <" : stdgo.GoString) + _finfo_3749214._name?.__copy__() : stdgo.GoString) + ("> in name space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _finfo_3749214._xmlns?.__copy__() : stdgo.GoString) + (" but have " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    if (_start.name.space == (stdgo.Go.str())) {
                        _gotoNext = 3749593i32;
                    } else {
                        _gotoNext = 3749632i32;
                    };
                } else if (__value__ == (3749593i32)) {
                    _e_3749474 = (_e_3749474 + (("no name space" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3749671i32;
                } else if (__value__ == (3749632i32)) {
                    _gotoNext = 3749632i32;
                    _e_3749474 = (_e_3749474 + (_start.name.space)?.__copy__() : stdgo.GoString);
                    var __blank__ = 0i32;
                    _gotoNext = 3749671i32;
                } else if (__value__ == (3749671i32)) {
                    return stdgo.Go.asInterface((_e_3749474 : stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError));
                    _gotoNext = 3749704i32;
                } else if (__value__ == (3749704i32)) {
                    _fv_3749704 = _finfo_3749214._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_fv_3749704.interface_() : stdgo._internal.encoding.xml.Xml_Name.Name)) : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : false };
                            };
                            _ok_3749752 = __tmp__._1;
                        };
                        if (_ok_3749752) {
                            _gotoNext = 3749784i32;
                        } else {
                            _gotoNext = 3749862i32;
                        };
                    };
                } else if (__value__ == (3749784i32)) {
                    _fv_3749704.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_start.name))?.__copy__());
                    _gotoNext = 3749862i32;
                } else if (__value__ == (3749862i32)) {
                    if ((0i32 : stdgo.GoInt) < (_start.attr.length)) {
                        _gotoNext = 3750547i32;
                    } else {
                        _gotoNext = 3750620i32;
                    };
                } else if (__value__ == (3749866i32)) {
                    _i_3749874_0++;
                    _gotoNext = 3750548i32;
                } else if (__value__ == (3749891i32)) {
                    _a_3749869 = _start.attr[(_i_3749874_0 : stdgo.GoInt)];
                    _handled_3749896 = false;
                    _any_3749916 = (-1 : stdgo.GoInt);
                    if ((0i32 : stdgo.GoInt) < (_tinfo_3747991._fields.length)) {
                        _gotoNext = 3750357i32;
                    } else {
                        _gotoNext = 3750363i32;
                    };
                } else if (__value__ == (3749933i32)) {
                    _i_3749933++;
                    _gotoNext = 3750358i32;
                } else if (__value__ == (3749957i32)) {
                    _finfo_3749963 = (stdgo.Go.setRef(_tinfo_3747991._fields[(_i_3749933 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _gotoNext = 3749993i32;
                } else if (__value__ == (3749993i32)) {
                    {
                        final __value__ = (_finfo_3749963._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                        if (__value__ == ((2 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3750026i32;
                        } else if (__value__ == ((66 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3750289i32;
                        } else {
                            _gotoNext = 3749933i32;
                        };
                    };
                } else if (__value__ == (3750026i32)) {
                    _strv_3750043 = _finfo_3749963._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    if (((_a_3749869.name.local == _finfo_3749963._name) && (((_finfo_3749963._xmlns == stdgo.Go.str()) || (_finfo_3749963._xmlns == _a_3749869.name.space) : Bool)) : Bool)) {
                        _gotoNext = 3750173i32;
                    } else {
                        _gotoNext = 3749933i32;
                    };
                } else if (__value__ == (3750173i32)) {
                    {
                        _err_3750184 = _d._unmarshalAttr(_strv_3750043?.__copy__(), _a_3749869?.__copy__());
                        if (_err_3750184 != null) {
                            _gotoNext = 3750228i32;
                        } else {
                            _gotoNext = 3750262i32;
                        };
                    };
                } else if (__value__ == (3750228i32)) {
                    return _err_3750184;
                    _gotoNext = 3750262i32;
                } else if (__value__ == (3750262i32)) {
                    _handled_3749896 = true;
                    _gotoNext = 3749933i32;
                } else if (__value__ == (3750289i32)) {
                    if (_any_3749916 == ((-1 : stdgo.GoInt))) {
                        _gotoNext = 3750326i32;
                    } else {
                        _gotoNext = 3749933i32;
                    };
                } else if (__value__ == (3750326i32)) {
                    _any_3749916 = _i_3749933;
                    _gotoNext = 3749933i32;
                } else if (__value__ == (3750357i32)) {
                    _i_3749933 = 0i32;
                    _gotoNext = 3750358i32;
                } else if (__value__ == (3750358i32)) {
                    if (_i_3749933 < (_tinfo_3747991._fields.length)) {
                        _gotoNext = 3749957i32;
                    } else {
                        _gotoNext = 3750363i32;
                    };
                } else if (__value__ == (3750363i32)) {
                    if ((!_handled_3749896 && (_any_3749916 >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3750387i32;
                    } else {
                        _gotoNext = 3749866i32;
                    };
                } else if (__value__ == (3750387i32)) {
                    _finfo_3750393 = (stdgo.Go.setRef(_tinfo_3747991._fields[(_any_3749916 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _strv_3750425 = _finfo_3750393._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    {
                        _err_3750473 = _d._unmarshalAttr(_strv_3750425?.__copy__(), _a_3749869?.__copy__());
                        if (_err_3750473 != null) {
                            _gotoNext = 3750517i32;
                        } else {
                            _gotoNext = 3749866i32;
                        };
                    };
                } else if (__value__ == (3750517i32)) {
                    return _err_3750473;
                    _gotoNext = 3749866i32;
                } else if (__value__ == (3750547i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _start.attr[(0i32 : stdgo.GoInt)];
                        _i_3749874_0 = __tmp__0;
                        _a_3749869 = __tmp__1;
                    };
                    _gotoNext = 3750548i32;
                } else if (__value__ == (3750548i32)) {
                    if (_i_3749874_0 < (_start.attr.length)) {
                        _gotoNext = 3749891i32;
                    } else {
                        _gotoNext = 3750620i32;
                    };
                } else if (__value__ == (3750620i32)) {
                    if ((0i32 : stdgo.GoInt) < (_tinfo_3747991._fields.length)) {
                        _gotoNext = 3751293i32;
                    } else {
                        _gotoNext = 3751362i32;
                    };
                } else if (__value__ == (3750624i32)) {
                    _i_3750624++;
                    _gotoNext = 3751294i32;
                } else if (__value__ == (3750648i32)) {
                    _finfo_3750653 = (stdgo.Go.setRef(_tinfo_3747991._fields[(_i_3750624 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _gotoNext = 3750682i32;
                } else if (__value__ == (3750682i32)) {
                    {
                        final __value__ = (_finfo_3750653._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                        if (__value__ == ((4 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3750714i32;
                        } else if (__value__ == ((32 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3750826i32;
                        } else if (__value__ == ((64 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((65 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3750935i32;
                        } else if (__value__ == ((16 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3751049i32;
                        } else {
                            _gotoNext = 3750624i32;
                        };
                    };
                } else if (__value__ == (3750714i32)) {
                    if (!_saveData_3747783.isValid()) {
                        _gotoNext = 3750765i32;
                    } else {
                        _gotoNext = 3750624i32;
                    };
                } else if (__value__ == (3750765i32)) {
                    _saveData_3747783 = _finfo_3750653._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3750826i32)) {
                    if (!_saveComment_3747834.isValid()) {
                        _gotoNext = 3750871i32;
                    } else {
                        _gotoNext = 3750624i32;
                    };
                } else if (__value__ == (3750871i32)) {
                    _saveComment_3747834 = _finfo_3750653._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3750935i32)) {
                    if (!_saveAny_3747933.isValid()) {
                        _gotoNext = 3750989i32;
                    } else {
                        _gotoNext = 3750624i32;
                    };
                } else if (__value__ == (3750989i32)) {
                    _saveAny_3747933 = _finfo_3750653._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3751049i32)) {
                    if (!_saveXML_3747863.isValid()) {
                        _gotoNext = 3751091i32;
                    } else {
                        _gotoNext = 3750624i32;
                    };
                } else if (__value__ == (3751091i32)) {
                    _saveXML_3747863 = _finfo_3750653._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    if ((_d._saved == null || (_d._saved : Dynamic).__nil__)) {
                        _gotoNext = 3751164i32;
                    } else {
                        _gotoNext = 3751235i32;
                    };
                } else if (__value__ == (3751164i32)) {
                    _saveXMLIndex_3747892 = (0 : stdgo.GoInt);
                    _d._saved = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3751235i32)) {
                    _gotoNext = 3751235i32;
                    _saveXMLIndex_3747892 = _d._savedOffset();
                    var __blank__ = 0i32;
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3751293i32)) {
                    _i_3750624 = 0i32;
                    _gotoNext = 3751294i32;
                } else if (__value__ == (3751294i32)) {
                    if (_i_3750624 < (_tinfo_3747991._fields.length)) {
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
                    if (_saveXML_3747863.isValid()) {
                        _gotoNext = 3751420i32;
                    } else {
                        _gotoNext = 3751461i32;
                    };
                } else if (__value__ == (3751420i32)) {
                    _savedOffset_3751381 = _d._savedOffset();
                    _gotoNext = 3751461i32;
                } else if (__value__ == (3751461i32)) {
                    {
                        var __tmp__ = _d.token();
                        _tok_3751461 = __tmp__._0;
                        _err_3751466 = __tmp__._1;
                    };
                    if (_err_3751466 != null) {
                        _gotoNext = 3751499i32;
                    } else {
                        _gotoNext = 3751521i32;
                    };
                } else if (__value__ == (3751499i32)) {
                    return _err_3751466;
                    _gotoNext = 3751521i32;
                } else if (__value__ == (3751521i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3751521i32;
                    {
                        final __type__ = _tok_3751461;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                            _t_3751565 = _t;
                            _gotoNext = 3751548i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                            _t_3752122 = _t;
                            _gotoNext = 3752107i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_CharData.CharData))) {
                            var _t:stdgo._internal.encoding.xml.Xml_CharData.CharData = __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__().value;
                            _t_3752297 = _t;
                            _gotoNext = 3752284i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_Comment.Comment))) {
                            var _t:stdgo._internal.encoding.xml.Xml_Comment.Comment = __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__().value;
                            _t_3752376 = _t;
                            _gotoNext = 3752364i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_Token.Token = __type__?.__underlying__();
                            _gotoNext = 3752458i32;
                        };
                    };
                    _gotoNext = 3751369i32;
                } else if (__value__ == (3751548i32)) {
                    _consumed_3751570 = false;
                    if (_sv_3747962.isValid()) {
                        _gotoNext = 3751607i32;
                    } else {
                        _gotoNext = 3752025i32;
                    };
                } else if (__value__ == (3751607i32)) {
                    {
                        var __tmp__ = _d._unmarshalPath(_tinfo_3747991, _sv_3747962?.__copy__(), (null : stdgo.Slice<stdgo.GoString>), (stdgo.Go.setRef(_t_3751565) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), _depth);
                        _consumed_3751570 = __tmp__._0;
                        _err_3751466 = __tmp__._1;
                    };
                    if (_err_3751466 != null) {
                        _gotoNext = 3751839i32;
                    } else {
                        _gotoNext = 3751867i32;
                    };
                } else if (__value__ == (3751839i32)) {
                    return _err_3751466;
                    _gotoNext = 3751867i32;
                } else if (__value__ == (3751867i32)) {
                    if ((!_consumed_3751570 && _saveAny_3747933.isValid() : Bool)) {
                        _gotoNext = 3751901i32;
                    } else {
                        _gotoNext = 3752025i32;
                    };
                } else if (__value__ == (3751901i32)) {
                    _consumed_3751570 = true;
                    {
                        _err_3751932 = _d._unmarshal(_saveAny_3747933?.__copy__(), (stdgo.Go.setRef(_t_3751565) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_3751932 != null) {
                            _gotoNext = 3751985i32;
                        } else {
                            _gotoNext = 3752025i32;
                        };
                    };
                } else if (__value__ == (3751985i32)) {
                    return _err_3751932;
                    _gotoNext = 3752025i32;
                } else if (__value__ == (3752025i32)) {
                    if (!_consumed_3751570) {
                        _gotoNext = 3752038i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3752038i32)) {
                    {
                        _err_3752047 = _d.skip();
                        if (_err_3752047 != null) {
                            _gotoNext = 3752075i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (3752075i32)) {
                    return _err_3752047;
                    _gotoNext = 0i32;
                } else if (__value__ == (3752107i32)) {
                    if (_saveXML_3747863.isValid()) {
                        _gotoNext = 3752148i32;
                    } else {
                        _gotoNext = 3752270i32;
                    };
                } else if (__value__ == (3752148i32)) {
                    _saveXMLData_3747911 = (_d._saved.bytes().__slice__(_saveXMLIndex_3747892, _savedOffset_3751381) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_saveXMLIndex_3747892 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3752235i32;
                    } else {
                        _gotoNext = 3752270i32;
                    };
                } else if (__value__ == (3752235i32)) {
                    _d._saved = null;
                    _gotoNext = 3752270i32;
                } else if (__value__ == (3752270i32)) {
                    loopBreak = true;
                    _gotoNext = 3751369i32;
                } else if (__value__ == (3752284i32)) {
                    if (_saveData_3747783.isValid()) {
                        _gotoNext = 3752324i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3752324i32)) {
                    _data_3747761 = (_data_3747761.__append__(...(_t_3752297 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 0i32;
                } else if (__value__ == (3752364i32)) {
                    if (_saveComment_3747834.isValid()) {
                        _gotoNext = 3752406i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3752406i32)) {
                    _comment_3747812 = (_comment_3747812.__append__(...(_t_3752376 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 0i32;
                } else if (__value__ == (3752458i32)) {
                    if (((_saveData_3747783.isValid() && _saveData_3747783.canInterface() : Bool) && _saveData_3747783.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3752558i32;
                    } else {
                        _gotoNext = 3752706i32;
                    };
                } else if (__value__ == (3752558i32)) {
                    {
                        _err_3752565 = (stdgo.Go.typeAssert((_saveData_3747783.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText(_data_3747761);
                        if (_err_3752565 != null) {
                            _gotoNext = 3752652i32;
                        } else {
                            _gotoNext = 3752674i32;
                        };
                    };
                } else if (__value__ == (3752652i32)) {
                    return _err_3752565;
                    _gotoNext = 3752674i32;
                } else if (__value__ == (3752674i32)) {
                    _saveData_3747783 = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
                    _gotoNext = 3752706i32;
                } else if (__value__ == (3752706i32)) {
                    if ((_saveData_3747783.isValid() && _saveData_3747783.canAddr() : Bool)) {
                        _gotoNext = 3752750i32;
                    } else {
                        _gotoNext = 3752994i32;
                    };
                } else if (__value__ == (3752750i32)) {
                    _pv_3752754 = _saveData_3747783.addr()?.__copy__();
                    if ((_pv_3752754.canInterface() && _pv_3752754.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3752844i32;
                    } else {
                        _gotoNext = 3752994i32;
                    };
                } else if (__value__ == (3752844i32)) {
                    {
                        _err_3752852 = (stdgo.Go.typeAssert((_pv_3752754.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText(_data_3747761);
                        if (_err_3752852 != null) {
                            _gotoNext = 3752933i32;
                        } else {
                            _gotoNext = 3752958i32;
                        };
                    };
                } else if (__value__ == (3752933i32)) {
                    return _err_3752852;
                    _gotoNext = 3752958i32;
                } else if (__value__ == (3752958i32)) {
                    _saveData_3747783 = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
                    _gotoNext = 3752994i32;
                } else if (__value__ == (3752994i32)) {
                    {
                        _err_3752997 = stdgo._internal.encoding.xml.Xml__copyValue._copyValue(_saveData_3747783?.__copy__(), _data_3747761);
                        if (_err_3752997 != null) {
                            _gotoNext = 3753042i32;
                        } else {
                            _gotoNext = 3753062i32;
                        };
                    };
                } else if (__value__ == (3753042i32)) {
                    return _err_3752997;
                    _gotoNext = 3753062i32;
                } else if (__value__ == (3753062i32)) {
                    _gotoNext = 3753062i32;
                    {
                        _t_3753069 = _saveComment_3747834?.__copy__();
                        {
                            final __value__ = _t_3753069.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3753099i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3753152i32;
                            } else {
                                _gotoNext = 3753211i32;
                            };
                        };
                    };
                } else if (__value__ == (3753099i32)) {
                    _t_3753069.setString((_comment_3747812 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3753211i32;
                } else if (__value__ == (3753152i32)) {
                    _t_3753069.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_comment_3747812))?.__copy__());
                    _gotoNext = 3753211i32;
                } else if (__value__ == (3753211i32)) {
                    _gotoNext = 3753211i32;
                    {
                        _t_3753218 = _saveXML_3747863?.__copy__();
                        {
                            final __value__ = _t_3753218.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3753244i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3753301i32;
                            } else {
                                _gotoNext = 3753416i32;
                            };
                        };
                    };
                } else if (__value__ == (3753244i32)) {
                    _t_3753218.setString((_saveXMLData_3747911 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3753416i32;
                } else if (__value__ == (3753301i32)) {
                    if (_t_3753218.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3753366i32;
                    } else {
                        _gotoNext = 3753416i32;
                    };
                } else if (__value__ == (3753366i32)) {
                    _t_3753218.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_saveXMLData_3747911))?.__copy__());
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
                var _err = (_d._unmarshalAttr(_val.index(_n)?.__copy__(), _attr?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    _val.setLen(_n);
                    return _err;
                };
            };
            return (null : stdgo.Error);
        };
        if ((_val.type().string() : String) == (stdgo._internal.encoding.xml.Xml__attrType._attrType.string() : String)) {
            _val.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_attr))?.__copy__());
            return (null : stdgo.Error);
        };
        return stdgo._internal.encoding.xml.Xml__copyValue._copyValue(_val?.__copy__(), (_attr.value : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function _unmarshalTextInterface( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _val:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _depth = (1 : stdgo.GoInt);
        while ((_depth > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = _d.token(), _t:stdgo._internal.encoding.xml.Xml_Token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
    static public function _unmarshalInterface( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _val:stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        _d._pushEOF();
        _d._unmarshalDepth++;
        var _err = (_val.unmarshalXML(_d, (_start : stdgo._internal.encoding.xml.Xml_StartElement.StartElement)?.__copy__()) : stdgo.Error);
        _d._unmarshalDepth--;
        if (_err != null) {
            _d._popEOF();
            return _err;
        };
        if (!_d._popEOF()) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("xml: %s.UnmarshalXML did not consume entire <%s> element" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.xml.Xml__receiverType._receiverType(stdgo.Go.toInterface(_val))), stdgo.Go.toInterface(_start.name.local));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function decodeElement( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _v:stdgo.AnyInterface, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _val = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_val.kind() != ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
            return stdgo._internal.errors.Errors_new_.new_(("non-pointer passed to Unmarshal" : stdgo.GoString));
        };
        if (_val.isNil()) {
            return stdgo._internal.errors.Errors_new_.new_(("nil pointer passed to Unmarshal" : stdgo.GoString));
        };
        return _d._unmarshal(_val.elem()?.__copy__(), _start, (0 : stdgo.GoInt));
    }
    @:keep
    static public function decode( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        return _d.decodeElement(_v, null);
    }
}
