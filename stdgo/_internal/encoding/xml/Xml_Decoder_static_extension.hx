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
        var _r_3672024:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _buf_3671990:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _r_3671119:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _err_3670643:stdgo.Error = (null : stdgo.Error);
        var _base_3670155:stdgo.GoInt = (0 : stdgo.GoInt);
        var inputBreak = false;
        var _b1_3668823:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ok_3669952:Bool = false;
        var _before_3669899:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_3668877:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b0_3668819:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_3672027:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ent_3671465:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3671122:Bool = false;
        var _s_3671092:stdgo.GoString = ("" : stdgo.GoString);
        var _trunc_3668836:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_3671876:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _name_3671004:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_3670640:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _s_3670574:stdgo.GoString = ("" : stdgo.GoString);
        var _start_3670293:stdgo.GoInt = (0 : stdgo.GoInt);
        var _haveText_3669986:Bool = false;
        var _text_3669967:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3668880:Bool = false;
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
                    _d._buf.writeByte(_b_3668877);
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
            if (_d._saved != null && ((_d._saved : Dynamic).__nil__ == null || !(_d._saved : Dynamic).__nil__)) {
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
        var _b1_3662179:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _newr_3661444:stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
        var _name_3664611:stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
        var _s_3663673:stdgo.GoString = ("" : stdgo.GoString);
        var _inquote_3663194:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ok_3659764:Bool = false;
        var _b0_3660693:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _name_3660071:stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
        var _data_3665560:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _depth_3663216:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b0_3662175:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _err_3661450:stdgo.Error = (null : stdgo.Error);
        var _data_3660853:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _target_3660501:stdgo.GoString = ("" : stdgo.GoString);
        var _b_3659761:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _data_3662885:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _enc_3661161:stdgo.GoString = ("" : stdgo.GoString);
        var _ver_3660971:stdgo.GoString = ("" : stdgo.GoString);
        var _content_3660944:stdgo.GoString = ("" : stdgo.GoString);
        var _data_3659863:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _i_3663692:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_3662494:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b1_3664037:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b0_3664033:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _j_3663815:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3662642:stdgo.GoInt = (0 : stdgo.GoInt);
        var _empty_3664624:Bool = false;
        var _a_3665134:stdgo._internal.encoding.xml.Xml_Attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr);
        var _attr_3664637:stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
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
                    var __blank__ = 0i32;
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
                    var __blank__ = 0i32;
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
                    var __blank__ = 0i32;
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
        if ((((_d._stk == null) || (_d._stk : Dynamic).__nil__) || (_d._stk._kind != (0 : stdgo.GoInt)) : Bool)) {
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
        if ((((_s == null) || (_s : Dynamic).__nil__) || (_s._kind != (0 : stdgo.GoInt)) : Bool)) {
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
        while (((_d._stk != null && ((_d._stk : Dynamic).__nil__ == null || !(_d._stk : Dynamic).__nil__) && _d._stk._kind != ((0 : stdgo.GoInt)) : Bool) && (_d._stk._kind != (2 : stdgo.GoInt)) : Bool)) {
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
        if ((((_d._stk == null) || (_d._stk : Dynamic).__nil__) || (_d._stk._kind != (2 : stdgo.GoInt)) : Bool)) {
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
        while ((((_start._next != null) && ((_start._next : Dynamic).__nil__ == null || !(_start._next : Dynamic).__nil__)) && (_start._next._kind == (1 : stdgo.GoInt)) : Bool)) {
            _start = _start._next;
        };
        var _s = _d._free;
        if (_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__)) {
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
        if (_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__)) {
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
        if (_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__)) {
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
        if ((((_d._stk != null) && ((_d._stk : Dynamic).__nil__ == null || !(_d._stk : Dynamic).__nil__)) && (_d._stk._kind == (2 : stdgo.GoInt)) : Bool)) {
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
                    if (((stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) && _d._stk != null && ((_d._stk : Dynamic).__nil__ == null || !(_d._stk : Dynamic).__nil__) : Bool) && (_d._stk._kind != (2 : stdgo.GoInt)) : Bool)) {
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
        var _consumed2_3747070:Bool = false;
        var _t_3747286:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement);
        var _tok_3746792:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _i_3745628:stdgo.GoInt = (0 : stdgo.GoInt);
        var _recurse_3745600:Bool = false;
        var _err_3747206:stdgo.Error = (null : stdgo.Error);
        var _err_3747081:stdgo.Error = (null : stdgo.Error);
        var _t_3746913:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _j_3745830:stdgo.GoInt = (0 : stdgo.GoInt);
        var _finfo_3745656:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _recurse_3745600 = false;
                    _gotoNext = 3745617i32;
                } else if (__value__ == (3745617i32)) {
                    if ((0i32 : stdgo.GoInt) < (_tinfo._fields.length)) {
                        _gotoNext = 3746523i32;
                    } else {
                        _gotoNext = 3746527i32;
                    };
                } else if (__value__ == (3745628i32)) {
                    _i_3745628++;
                    _gotoNext = 3746524i32;
                } else if (__value__ == (3745652i32)) {
                    _finfo_3745656 = (stdgo.Go.setRef(_tinfo._fields[(_i_3745628 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if ((((_finfo_3745656._flags & (1 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || ((_finfo_3745656._parents.length) < (_parents.length) : Bool) : Bool) || (_finfo_3745656._xmlns != (stdgo.Go.str()) && _finfo_3745656._xmlns != (_start.name.space) : Bool) : Bool)) {
                        _gotoNext = 3745806i32;
                    } else {
                        _gotoNext = 3745826i32;
                    };
                } else if (__value__ == (3745806i32)) {
                    _i_3745628++;
                    _gotoNext = 3746524i32;
                } else if (__value__ == (3745826i32)) {
                    if ((0i32 : stdgo.GoInt) < (_parents.length)) {
                        _gotoNext = 3745914i32;
                    } else {
                        _gotoNext = 3745919i32;
                    };
                } else if (__value__ == (3745830i32)) {
                    _j_3745830++;
                    _gotoNext = 3745915i32;
                } else if (__value__ == (3745849i32)) {
                    if (_parents[(_j_3745830 : stdgo.GoInt)] != (_finfo_3745656._parents[(_j_3745830 : stdgo.GoInt)])) {
                        _gotoNext = 3745888i32;
                    } else {
                        _gotoNext = 3745830i32;
                    };
                } else if (__value__ == (3745888i32)) {
                    _i_3745628++;
                    _gotoNext = 3746524i32;
                } else if (__value__ == (3745914i32)) {
                    _j_3745830 = 0i32;
                    _gotoNext = 3745915i32;
                } else if (__value__ == (3745915i32)) {
                    if (_j_3745830 < (_parents.length)) {
                        _gotoNext = 3745849i32;
                    } else {
                        _gotoNext = 3745919i32;
                    };
                } else if (__value__ == (3745919i32)) {
                    if (((_finfo_3745656._parents.length == (_parents.length)) && (_finfo_3745656._name == _start.name.local) : Bool)) {
                        _gotoNext = 3745991i32;
                    } else {
                        _gotoNext = 3746126i32;
                    };
                } else if (__value__ == (3745991i32)) {
                    return { _0 : true, _1 : _d._unmarshal(_finfo_3745656._value(_sv?.__copy__(), true)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                    _gotoNext = 3746126i32;
                } else if (__value__ == (3746126i32)) {
                    if ((((_finfo_3745656._parents.length) > (_parents.length) : Bool) && (_finfo_3745656._parents[(_parents.length : stdgo.GoInt)] == _start.name.local) : Bool)) {
                        _gotoNext = 3746214i32;
                    } else {
                        _gotoNext = 3745628i32;
                    };
                } else if (__value__ == (3746214i32)) {
                    _recurse_3745600 = true;
                    _parents = (_finfo_3745656._parents.__slice__(0, ((_parents.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 3746527i32;
                } else if (__value__ == (3746523i32)) {
                    _i_3745628 = 0i32;
                    _gotoNext = 3746524i32;
                } else if (__value__ == (3746524i32)) {
                    if (_i_3745628 < (_tinfo._fields.length)) {
                        _gotoNext = 3745652i32;
                    } else {
                        _gotoNext = 3746527i32;
                    };
                } else if (__value__ == (3746527i32)) {
                    if (!_recurse_3745600) {
                        _gotoNext = 3746539i32;
                    } else {
                        _gotoNext = 3746780i32;
                    };
                } else if (__value__ == (3746539i32)) {
                    return { _0 : false, _1 : (null : stdgo.Error) };
                    _gotoNext = 3746780i32;
                } else if (__value__ == (3746780i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3746780i32;
                    if (true) {
                        _gotoNext = 3746784i32;
                    } else {
                        _gotoNext = 3747315i32;
                    };
                } else if (__value__ == (3746784i32)) {
                    {
                        var __tmp__ = _d.token();
                        _tok_3746792 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        _gotoNext = 3746841i32;
                    } else {
                        _gotoNext = 3746869i32;
                    };
                } else if (__value__ == (3746841i32)) {
                    return { _0 : true, _1 : _err };
                    _gotoNext = 3746869i32;
                } else if (__value__ == (3746869i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3746869i32;
                    {
                        final __type__ = stdgo._internal.encoding.xml.Xml__tok._tok;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                            _t_3746913 = _t;
                            _gotoNext = 3746896i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                            _t_3747286 = _t;
                            _gotoNext = 3747271i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_Token.Token = __type__?.__underlying__();
                            _gotoNext = 3747315i32;
                        };
                    };
                    _gotoNext = 3746780i32;
                } else if (__value__ == (3746896i32)) {
                    {
                        var __tmp__ = _d._unmarshalPath(_tinfo, _sv?.__copy__(), _parents, (stdgo.Go.setRef(_t_3746913) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), _depth);
                        _consumed2_3747070 = __tmp__._0;
                        _err_3747081 = __tmp__._1;
                    };
                    if (_err_3747081 != null) {
                        _gotoNext = 3747152i32;
                    } else {
                        _gotoNext = 3747183i32;
                    };
                } else if (__value__ == (3747152i32)) {
                    return { _0 : true, _1 : _err_3747081 };
                    _gotoNext = 3747183i32;
                } else if (__value__ == (3747183i32)) {
                    if (!_consumed2_3747070) {
                        _gotoNext = 3747197i32;
                    } else {
                        _gotoNext = 3747315i32;
                    };
                } else if (__value__ == (3747197i32)) {
                    {
                        _err_3747206 = _d.skip();
                        if (_err_3747206 != null) {
                            _gotoNext = 3747234i32;
                        } else {
                            _gotoNext = 3747315i32;
                        };
                    };
                } else if (__value__ == (3747234i32)) {
                    return { _0 : true, _1 : _err_3747206 };
                    _gotoNext = 3747315i32;
                } else if (__value__ == (3747271i32)) {
                    return { _0 : true, _1 : (null : stdgo.Error) };
                    _gotoNext = 3747315i32;
                } else if (__value__ == (3747315i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function _unmarshal( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _val:stdgo._internal.reflect.Reflect_Value.Value, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>, _depth:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _t_3743207:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _consumed_3741708:Bool = false;
        var _finfo_3740791:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _v_3738185:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _saveAny_3738071:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _ok_3739890:Bool = false;
        var _saveComment_3737972:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _typ_3738491:stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _err_3740322:stdgo.Error = (null : stdgo.Error);
        var _err_3738729:stdgo.Error = (null : stdgo.Error);
        var _pv_3742892:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3742185:stdgo.Error = (null : stdgo.Error);
        var _sv_3738100:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _data_3737899:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _e_3736892:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _strv_3740181:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _i_3740012_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _finfo_3739352:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _err_3742070:stdgo.Error = (null : stdgo.Error);
        var _savedOffset_3741519:stdgo.GoInt = (0 : stdgo.GoInt);
        var _strv_3740563:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _typ_3739113:stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _err_3742990:stdgo.Error = (null : stdgo.Error);
        var _tinfo_3738129:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>);
        var _t_3742514:stdgo._internal.encoding.xml.Xml_Comment.Comment = new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0);
        var _t_3742435:stdgo._internal.encoding.xml.Xml_CharData.CharData = new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0);
        var _i_3740762:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3740071:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3738154:stdgo.Error = (null : stdgo.Error);
        var _saveXMLIndex_3738030:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_3743356:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3742703:stdgo.Error = (null : stdgo.Error);
        var _err_3741604:stdgo.Error = (null : stdgo.Error);
        var _err_3740611:stdgo.Error = (null : stdgo.Error);
        var _finfo_3740101:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _t_3736676:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _finfo_3740531:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _handled_3740034:Bool = false;
        var _e_3739612:stdgo.GoString = ("" : stdgo.GoString);
        var _saveXML_3738001:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _pv_3737383:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3736614:stdgo.Error = (null : stdgo.Error);
        var _err_3743135:stdgo.Error = (null : stdgo.Error);
        var _t_3742260:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement);
        var _any_3740054:stdgo.GoInt = (0 : stdgo.GoInt);
        var _comment_3737950:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _saveData_3737921:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _tok_3736609:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var loopBreak = false;
        var _fv_3739842:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _n_3738641:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pv_3737717:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _ok_3736679:Bool = false;
        var _tok_3741599:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _a_3740007:stdgo._internal.encoding.xml.Xml_Attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr);
        var _t_3741703:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _saveXMLData_3738049:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (((_depth >= (10000 : stdgo.GoInt) : Bool) || (true && (_depth >= (5000 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3736509i32;
                    } else {
                        _gotoNext = 3736580i32;
                    };
                } else if (__value__ == (3736509i32)) {
                    return stdgo._internal.encoding.xml.Xml__errUnmarshalDepth._errUnmarshalDepth;
                    _gotoNext = 3736580i32;
                } else if (__value__ == (3736580i32)) {
                    if (_start == null || (_start : Dynamic).__nil__) {
                        _gotoNext = 3736596i32;
                    } else {
                        _gotoNext = 3736837i32;
                    };
                } else if (__value__ == (3736596i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3736600i32;
                } else if (__value__ == (3736600i32)) {
                    if (true) {
                        _gotoNext = 3736604i32;
                    } else {
                        _gotoNext = 3736837i32;
                    };
                } else if (__value__ == (3736604i32)) {
                    {
                        var __tmp__ = _d.token();
                        _tok_3736609 = __tmp__._0;
                        _err_3736614 = __tmp__._1;
                    };
                    if (_err_3736614 != null) {
                        _gotoNext = 3736648i32;
                    } else {
                        _gotoNext = 3736673i32;
                    };
                } else if (__value__ == (3736648i32)) {
                    return _err_3736614;
                    _gotoNext = 3736673i32;
                } else if (__value__ == (3736673i32)) {
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_tok_3736609 : stdgo._internal.encoding.xml.Xml_StartElement.StartElement)) : stdgo._internal.encoding.xml.Xml_StartElement.StartElement), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement), _1 : false };
                            };
                            _t_3736676 = __tmp__._0?.__copy__();
                            _ok_3736679 = __tmp__._1;
                        };
                        if (_ok_3736679) {
                            _gotoNext = 3736708i32;
                        } else {
                            _gotoNext = 3736837i32;
                        };
                    };
                } else if (__value__ == (3736708i32)) {
                    _start = (stdgo.Go.setRef(_t_3736676) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>);
                    _gotoNext = 3736837i32;
                } else if (__value__ == (3736837i32)) {
                    if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_val.isNil() : Bool)) {
                        _gotoNext = 3736888i32;
                    } else {
                        _gotoNext = 3736977i32;
                    };
                } else if (__value__ == (3736888i32)) {
                    _e_3736892 = _val.elem()?.__copy__();
                    if (((_e_3736892.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_e_3736892.isNil() : Bool)) {
                        _gotoNext = 3736955i32;
                    } else {
                        _gotoNext = 3736977i32;
                    };
                } else if (__value__ == (3736955i32)) {
                    _val = _e_3736892?.__copy__();
                    _gotoNext = 3736977i32;
                } else if (__value__ == (3736977i32)) {
                    if (_val.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3737010i32;
                    } else {
                        _gotoNext = 3737102i32;
                    };
                } else if (__value__ == (3737010i32)) {
                    if (_val.isNil()) {
                        _gotoNext = 3737029i32;
                    } else {
                        _gotoNext = 3737080i32;
                    };
                } else if (__value__ == (3737029i32)) {
                    _val.set(stdgo._internal.reflect.Reflect_new_.new_(_val.type().elem())?.__copy__());
                    _gotoNext = 3737080i32;
                } else if (__value__ == (3737080i32)) {
                    _val = _val.elem()?.__copy__();
                    _gotoNext = 3737102i32;
                } else if (__value__ == (3737102i32)) {
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerType._unmarshalerType) : Bool)) {
                        _gotoNext = 3737166i32;
                    } else {
                        _gotoNext = 3737362i32;
                    };
                } else if (__value__ == (3737166i32)) {
                    return _d._unmarshalInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3737362i32;
                } else if (__value__ == (3737362i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3737379i32;
                    } else {
                        _gotoNext = 3737543i32;
                    };
                } else if (__value__ == (3737379i32)) {
                    _pv_3737383 = _val.addr()?.__copy__();
                    if ((_pv_3737383.canInterface() && _pv_3737383.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerType._unmarshalerType) : Bool)) {
                        _gotoNext = 3737464i32;
                    } else {
                        _gotoNext = 3737543i32;
                    };
                } else if (__value__ == (3737464i32)) {
                    return _d._unmarshalInterface((stdgo.Go.typeAssert((_pv_3737383.interface_() : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3737543i32;
                } else if (__value__ == (3737543i32)) {
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3737611i32;
                    } else {
                        _gotoNext = 3737696i32;
                    };
                } else if (__value__ == (3737611i32)) {
                    return _d._unmarshalTextInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler));
                    _gotoNext = 3737696i32;
                } else if (__value__ == (3737696i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3737713i32;
                    } else {
                        _gotoNext = 3737891i32;
                    };
                } else if (__value__ == (3737713i32)) {
                    _pv_3737717 = _val.addr()?.__copy__();
                    if ((_pv_3737717.canInterface() && _pv_3737717.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3737802i32;
                    } else {
                        _gotoNext = 3737891i32;
                    };
                } else if (__value__ == (3737802i32)) {
                    return _d._unmarshalTextInterface((stdgo.Go.typeAssert((_pv_3737717.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler));
                    _gotoNext = 3737891i32;
                } else if (__value__ == (3737891i32)) {
                    _v_3738185 = _val?.__copy__();
                    _gotoNext = 3738178i32;
                } else if (__value__ == (3738178i32)) {
                    {
                        _v_3738185 = _val?.__copy__();
                        {
                            final __value__ = _v_3738185.kind();
                            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3738275i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3738469i32;
                            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3738838i32;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3739090i32;
                            } else {
                                _gotoNext = 3738207i32;
                            };
                        };
                    };
                } else if (__value__ == (3738207i32)) {
                    return stdgo._internal.errors.Errors_new_.new_((("unknown type " : stdgo.GoString) + (_v_3738185.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 3741500i32;
                } else if (__value__ == (3738275i32)) {
                    return _d.skip();
                    _gotoNext = 3741500i32;
                } else if (__value__ == (3738469i32)) {
                    _typ_3738491 = _v_3738185.type();
                    if (_typ_3738491.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3738547i32;
                    } else {
                        _gotoNext = 3738641i32;
                    };
                } else if (__value__ == (3738547i32)) {
                    _saveData_3737921 = _v_3738185?.__copy__();
                    _gotoNext = 3741500i32;
                } else if (__value__ == (3738641i32)) {
                    _n_3738641 = _v_3738185.len();
                    _v_3738185.grow((1 : stdgo.GoInt));
                    _v_3738185.setLen((_n_3738641 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    {
                        _err_3738729 = _d._unmarshal(_v_3738185.index(_n_3738641)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_3738729 != null) {
                            _gotoNext = 3738788i32;
                        } else {
                            _gotoNext = 3738825i32;
                        };
                    };
                } else if (__value__ == (3738788i32)) {
                    _v_3738185.setLen(_n_3738641);
                    return _err_3738729;
                    _gotoNext = 3738825i32;
                } else if (__value__ == (3738825i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3741500i32;
                } else if (__value__ == (3738838i32)) {
                    _saveData_3737921 = _v_3738185?.__copy__();
                    _gotoNext = 3741500i32;
                } else if (__value__ == (3739090i32)) {
                    _typ_3739113 = _v_3738185.type();
                    if ((_typ_3739113.string() : String) == (stdgo._internal.encoding.xml.Xml__nameType._nameType.string() : String)) {
                        _gotoNext = 3739150i32;
                    } else {
                        _gotoNext = 3739206i32;
                    };
                } else if (__value__ == (3739150i32)) {
                    _v_3738185.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_start.name))?.__copy__());
                    _gotoNext = 3741500i32;
                } else if (__value__ == (3739206i32)) {
                    _sv_3738100 = _v_3738185?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.encoding.xml.Xml__getTypeInfo._getTypeInfo(_typ_3739113);
                        _tinfo_3738129 = __tmp__._0;
                        _err_3738154 = __tmp__._1;
                    };
                    if (_err_3738154 != null) {
                        _gotoNext = 3739261i32;
                    } else {
                        _gotoNext = 3739323i32;
                    };
                } else if (__value__ == (3739261i32)) {
                    return _err_3738154;
                    _gotoNext = 3739323i32;
                } else if (__value__ == (3739323i32)) {
                    if (_tinfo_3738129._xmlname != null && ((_tinfo_3738129._xmlname : Dynamic).__nil__ == null || !(_tinfo_3738129._xmlname : Dynamic).__nil__)) {
                        _gotoNext = 3739347i32;
                    } else {
                        _gotoNext = 3740000i32;
                    };
                } else if (__value__ == (3739347i32)) {
                    _finfo_3739352 = _tinfo_3738129._xmlname;
                    if (((_finfo_3739352._name != stdgo.Go.str()) && (_finfo_3739352._name != _start.name.local) : Bool)) {
                        _gotoNext = 3739432i32;
                    } else {
                        _gotoNext = 3739550i32;
                    };
                } else if (__value__ == (3739432i32)) {
                    return stdgo.Go.asInterface((((((("expected element type <" : stdgo.GoString) + _finfo_3739352._name?.__copy__() : stdgo.GoString) + ("> but have <" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _start.name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError));
                    _gotoNext = 3739550i32;
                } else if (__value__ == (3739550i32)) {
                    if (((_finfo_3739352._xmlns != stdgo.Go.str()) && (_finfo_3739352._xmlns != _start.name.space) : Bool)) {
                        _gotoNext = 3739606i32;
                    } else {
                        _gotoNext = 3739842i32;
                    };
                } else if (__value__ == (3739606i32)) {
                    _e_3739612 = ((((("expected element <" : stdgo.GoString) + _finfo_3739352._name?.__copy__() : stdgo.GoString) + ("> in name space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _finfo_3739352._xmlns?.__copy__() : stdgo.GoString) + (" but have " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    if (_start.name.space == (stdgo.Go.str())) {
                        _gotoNext = 3739731i32;
                    } else {
                        _gotoNext = 3739770i32;
                    };
                } else if (__value__ == (3739731i32)) {
                    _e_3739612 = (_e_3739612 + (("no name space" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3739809i32;
                } else if (__value__ == (3739770i32)) {
                    _e_3739612 = (_e_3739612 + (_start.name.space)?.__copy__() : stdgo.GoString);
                    _gotoNext = 3739809i32;
                } else if (__value__ == (3739809i32)) {
                    return stdgo.Go.asInterface((_e_3739612 : stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError));
                    _gotoNext = 3739842i32;
                } else if (__value__ == (3739842i32)) {
                    _fv_3739842 = _finfo_3739352._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_fv_3739842.interface_() : stdgo._internal.encoding.xml.Xml_Name.Name)) : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : false };
                            };
                            _ok_3739890 = __tmp__._1;
                        };
                        if (_ok_3739890) {
                            _gotoNext = 3739922i32;
                        } else {
                            _gotoNext = 3740000i32;
                        };
                    };
                } else if (__value__ == (3739922i32)) {
                    _fv_3739842.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_start.name))?.__copy__());
                    _gotoNext = 3740000i32;
                } else if (__value__ == (3740000i32)) {
                    if ((0i32 : stdgo.GoInt) < (_start.attr.length)) {
                        _gotoNext = 3740685i32;
                    } else {
                        _gotoNext = 3740758i32;
                    };
                } else if (__value__ == (3740004i32)) {
                    _i_3740012_0++;
                    _gotoNext = 3740686i32;
                } else if (__value__ == (3740029i32)) {
                    _a_3740007 = _start.attr[(_i_3740012_0 : stdgo.GoInt)];
                    _handled_3740034 = false;
                    _any_3740054 = (-1 : stdgo.GoInt);
                    if ((0i32 : stdgo.GoInt) < (_tinfo_3738129._fields.length)) {
                        _gotoNext = 3740495i32;
                    } else {
                        _gotoNext = 3740501i32;
                    };
                } else if (__value__ == (3740071i32)) {
                    _i_3740071++;
                    _gotoNext = 3740496i32;
                } else if (__value__ == (3740095i32)) {
                    _finfo_3740101 = (stdgo.Go.setRef(_tinfo_3738129._fields[(_i_3740071 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    var __blank__ = 0i32;
                    _gotoNext = 3740131i32;
                } else if (__value__ == (3740131i32)) {
                    {
                        final __value__ = (_finfo_3740101._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                        if (__value__ == ((2 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3740164i32;
                        } else if (__value__ == ((66 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3740427i32;
                        } else {
                            _gotoNext = 3740071i32;
                        };
                    };
                } else if (__value__ == (3740164i32)) {
                    _strv_3740181 = _finfo_3740101._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    if (((_a_3740007.name.local == _finfo_3740101._name) && (((_finfo_3740101._xmlns == stdgo.Go.str()) || (_finfo_3740101._xmlns == _a_3740007.name.space) : Bool)) : Bool)) {
                        _gotoNext = 3740311i32;
                    } else {
                        _gotoNext = 3740071i32;
                    };
                } else if (__value__ == (3740311i32)) {
                    {
                        _err_3740322 = _d._unmarshalAttr(_strv_3740181?.__copy__(), _a_3740007?.__copy__());
                        if (_err_3740322 != null) {
                            _gotoNext = 3740366i32;
                        } else {
                            _gotoNext = 3740400i32;
                        };
                    };
                } else if (__value__ == (3740366i32)) {
                    return _err_3740322;
                    _gotoNext = 3740400i32;
                } else if (__value__ == (3740400i32)) {
                    _handled_3740034 = true;
                    _gotoNext = 3740071i32;
                } else if (__value__ == (3740427i32)) {
                    if (_any_3740054 == ((-1 : stdgo.GoInt))) {
                        _gotoNext = 3740464i32;
                    } else {
                        _gotoNext = 3740071i32;
                    };
                } else if (__value__ == (3740464i32)) {
                    _any_3740054 = _i_3740071;
                    _gotoNext = 3740071i32;
                } else if (__value__ == (3740495i32)) {
                    _i_3740071 = 0i32;
                    _gotoNext = 3740496i32;
                } else if (__value__ == (3740496i32)) {
                    if (_i_3740071 < (_tinfo_3738129._fields.length)) {
                        _gotoNext = 3740095i32;
                    } else {
                        _gotoNext = 3740501i32;
                    };
                } else if (__value__ == (3740501i32)) {
                    if ((!_handled_3740034 && (_any_3740054 >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3740525i32;
                    } else {
                        _gotoNext = 3740004i32;
                    };
                } else if (__value__ == (3740525i32)) {
                    _finfo_3740531 = (stdgo.Go.setRef(_tinfo_3738129._fields[(_any_3740054 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _strv_3740563 = _finfo_3740531._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    {
                        _err_3740611 = _d._unmarshalAttr(_strv_3740563?.__copy__(), _a_3740007?.__copy__());
                        if (_err_3740611 != null) {
                            _gotoNext = 3740655i32;
                        } else {
                            _gotoNext = 3740004i32;
                        };
                    };
                } else if (__value__ == (3740655i32)) {
                    return _err_3740611;
                    _gotoNext = 3740004i32;
                } else if (__value__ == (3740685i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _start.attr[(0i32 : stdgo.GoInt)];
                        _i_3740012_0 = __tmp__0;
                        _a_3740007 = __tmp__1;
                    };
                    _gotoNext = 3740686i32;
                } else if (__value__ == (3740686i32)) {
                    if (_i_3740012_0 < (_start.attr.length)) {
                        _gotoNext = 3740029i32;
                    } else {
                        _gotoNext = 3740758i32;
                    };
                } else if (__value__ == (3740758i32)) {
                    if ((0i32 : stdgo.GoInt) < (_tinfo_3738129._fields.length)) {
                        _gotoNext = 3741431i32;
                    } else {
                        _gotoNext = 3741500i32;
                    };
                } else if (__value__ == (3740762i32)) {
                    _i_3740762++;
                    _gotoNext = 3741432i32;
                } else if (__value__ == (3740786i32)) {
                    _finfo_3740791 = (stdgo.Go.setRef(_tinfo_3738129._fields[(_i_3740762 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    var __blank__ = 0i32;
                    _gotoNext = 3740820i32;
                } else if (__value__ == (3740820i32)) {
                    {
                        final __value__ = (_finfo_3740791._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                        if (__value__ == ((4 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3740852i32;
                        } else if (__value__ == ((32 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3740964i32;
                        } else if (__value__ == ((64 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((65 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3741073i32;
                        } else if (__value__ == ((16 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3741187i32;
                        } else {
                            _gotoNext = 3740762i32;
                        };
                    };
                } else if (__value__ == (3740852i32)) {
                    if (!_saveData_3737921.isValid()) {
                        _gotoNext = 3740903i32;
                    } else {
                        _gotoNext = 3740762i32;
                    };
                } else if (__value__ == (3740903i32)) {
                    _saveData_3737921 = _finfo_3740791._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    _gotoNext = 3740762i32;
                } else if (__value__ == (3740964i32)) {
                    if (!_saveComment_3737972.isValid()) {
                        _gotoNext = 3741009i32;
                    } else {
                        _gotoNext = 3740762i32;
                    };
                } else if (__value__ == (3741009i32)) {
                    _saveComment_3737972 = _finfo_3740791._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    _gotoNext = 3740762i32;
                } else if (__value__ == (3741073i32)) {
                    if (!_saveAny_3738071.isValid()) {
                        _gotoNext = 3741127i32;
                    } else {
                        _gotoNext = 3740762i32;
                    };
                } else if (__value__ == (3741127i32)) {
                    _saveAny_3738071 = _finfo_3740791._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    _gotoNext = 3740762i32;
                } else if (__value__ == (3741187i32)) {
                    if (!_saveXML_3738001.isValid()) {
                        _gotoNext = 3741229i32;
                    } else {
                        _gotoNext = 3740762i32;
                    };
                } else if (__value__ == (3741229i32)) {
                    _saveXML_3738001 = _finfo_3740791._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    if (_d._saved == null || (_d._saved : Dynamic).__nil__) {
                        _gotoNext = 3741302i32;
                    } else {
                        _gotoNext = 3741373i32;
                    };
                } else if (__value__ == (3741302i32)) {
                    _saveXMLIndex_3738030 = (0 : stdgo.GoInt);
                    _d._saved = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                    _gotoNext = 3740762i32;
                } else if (__value__ == (3741373i32)) {
                    _saveXMLIndex_3738030 = _d._savedOffset();
                    _gotoNext = 3740762i32;
                } else if (__value__ == (3741431i32)) {
                    _i_3740762 = 0i32;
                    _gotoNext = 3741432i32;
                } else if (__value__ == (3741432i32)) {
                    if (_i_3740762 < (_tinfo_3738129._fields.length)) {
                        _gotoNext = 3740786i32;
                    } else {
                        _gotoNext = 3741500i32;
                    };
                } else if (__value__ == (3741500i32)) {
                    _gotoNext = 3741500i32;
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3741507i32;
                } else if (__value__ == (3741507i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3741511i32;
                    } else {
                        _gotoNext = 3742596i32;
                    };
                } else if (__value__ == (3741511i32)) {
                    if (_saveXML_3738001.isValid()) {
                        _gotoNext = 3741558i32;
                    } else {
                        _gotoNext = 3741599i32;
                    };
                } else if (__value__ == (3741558i32)) {
                    _savedOffset_3741519 = _d._savedOffset();
                    _gotoNext = 3741599i32;
                } else if (__value__ == (3741599i32)) {
                    {
                        var __tmp__ = _d.token();
                        _tok_3741599 = __tmp__._0;
                        _err_3741604 = __tmp__._1;
                    };
                    if (_err_3741604 != null) {
                        _gotoNext = 3741637i32;
                    } else {
                        _gotoNext = 3741659i32;
                    };
                } else if (__value__ == (3741637i32)) {
                    return _err_3741604;
                    _gotoNext = 3741659i32;
                } else if (__value__ == (3741659i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3741659i32;
                    {
                        final __type__ = stdgo._internal.encoding.xml.Xml__tok._tok;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                            _t_3741703 = _t;
                            _gotoNext = 3741686i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                            _t_3742260 = _t;
                            _gotoNext = 3742245i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_CharData.CharData))) {
                            var _t:stdgo._internal.encoding.xml.Xml_CharData.CharData = __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__().value;
                            _t_3742435 = _t;
                            _gotoNext = 3742422i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_Comment.Comment))) {
                            var _t:stdgo._internal.encoding.xml.Xml_Comment.Comment = __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__().value;
                            _t_3742514 = _t;
                            _gotoNext = 3742502i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_Token.Token = __type__?.__underlying__();
                            _gotoNext = 3742596i32;
                        };
                    };
                    _gotoNext = 3741507i32;
                } else if (__value__ == (3741686i32)) {
                    _consumed_3741708 = false;
                    if (_sv_3738100.isValid()) {
                        _gotoNext = 3741745i32;
                    } else {
                        _gotoNext = 3742163i32;
                    };
                } else if (__value__ == (3741745i32)) {
                    {
                        var __tmp__ = _d._unmarshalPath(_tinfo_3738129, _sv_3738100?.__copy__(), (null : stdgo.Slice<stdgo.GoString>), (stdgo.Go.setRef(_t_3741703) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), _depth);
                        _consumed_3741708 = __tmp__._0;
                        _err_3741604 = __tmp__._1;
                    };
                    if (_err_3741604 != null) {
                        _gotoNext = 3741977i32;
                    } else {
                        _gotoNext = 3742005i32;
                    };
                } else if (__value__ == (3741977i32)) {
                    return _err_3741604;
                    _gotoNext = 3742005i32;
                } else if (__value__ == (3742005i32)) {
                    if ((!_consumed_3741708 && _saveAny_3738071.isValid() : Bool)) {
                        _gotoNext = 3742039i32;
                    } else {
                        _gotoNext = 3742163i32;
                    };
                } else if (__value__ == (3742039i32)) {
                    _consumed_3741708 = true;
                    {
                        _err_3742070 = _d._unmarshal(_saveAny_3738071?.__copy__(), (stdgo.Go.setRef(_t_3741703) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_3742070 != null) {
                            _gotoNext = 3742123i32;
                        } else {
                            _gotoNext = 3742163i32;
                        };
                    };
                } else if (__value__ == (3742123i32)) {
                    return _err_3742070;
                    _gotoNext = 3742163i32;
                } else if (__value__ == (3742163i32)) {
                    if (!_consumed_3741708) {
                        _gotoNext = 3742176i32;
                    } else {
                        _gotoNext = 3742596i32;
                    };
                } else if (__value__ == (3742176i32)) {
                    {
                        _err_3742185 = _d.skip();
                        if (_err_3742185 != null) {
                            _gotoNext = 3742213i32;
                        } else {
                            _gotoNext = 3742596i32;
                        };
                    };
                } else if (__value__ == (3742213i32)) {
                    return _err_3742185;
                    _gotoNext = 3742596i32;
                } else if (__value__ == (3742245i32)) {
                    if (_saveXML_3738001.isValid()) {
                        _gotoNext = 3742286i32;
                    } else {
                        _gotoNext = 3742408i32;
                    };
                } else if (__value__ == (3742286i32)) {
                    _saveXMLData_3738049 = (_d._saved.bytes().__slice__(_saveXMLIndex_3738030, _savedOffset_3741519) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_saveXMLIndex_3738030 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3742373i32;
                    } else {
                        _gotoNext = 3742408i32;
                    };
                } else if (__value__ == (3742373i32)) {
                    _d._saved = null;
                    _gotoNext = 3742408i32;
                } else if (__value__ == (3742408i32)) {
                    loopBreak = true;
                    _gotoNext = 3741507i32;
                } else if (__value__ == (3742422i32)) {
                    if (_saveData_3737921.isValid()) {
                        _gotoNext = 3742462i32;
                    } else {
                        _gotoNext = 3742596i32;
                    };
                } else if (__value__ == (3742462i32)) {
                    _data_3737899 = (_data_3737899.__append__(...(_t_3742435 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 3742596i32;
                } else if (__value__ == (3742502i32)) {
                    if (_saveComment_3737972.isValid()) {
                        _gotoNext = 3742544i32;
                    } else {
                        _gotoNext = 3742596i32;
                    };
                } else if (__value__ == (3742544i32)) {
                    _comment_3737950 = (_comment_3737950.__append__(...(_t_3742514 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 3742596i32;
                } else if (__value__ == (3742596i32)) {
                    if (((_saveData_3737921.isValid() && _saveData_3737921.canInterface() : Bool) && _saveData_3737921.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3742696i32;
                    } else {
                        _gotoNext = 3742844i32;
                    };
                } else if (__value__ == (3742696i32)) {
                    {
                        _err_3742703 = (stdgo.Go.typeAssert((_saveData_3737921.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText(_data_3737899);
                        if (_err_3742703 != null) {
                            _gotoNext = 3742790i32;
                        } else {
                            _gotoNext = 3742812i32;
                        };
                    };
                } else if (__value__ == (3742790i32)) {
                    return _err_3742703;
                    _gotoNext = 3742812i32;
                } else if (__value__ == (3742812i32)) {
                    _saveData_3737921 = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
                    _gotoNext = 3742844i32;
                } else if (__value__ == (3742844i32)) {
                    if ((_saveData_3737921.isValid() && _saveData_3737921.canAddr() : Bool)) {
                        _gotoNext = 3742888i32;
                    } else {
                        _gotoNext = 3743132i32;
                    };
                } else if (__value__ == (3742888i32)) {
                    _pv_3742892 = _saveData_3737921.addr()?.__copy__();
                    if ((_pv_3742892.canInterface() && _pv_3742892.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3742982i32;
                    } else {
                        _gotoNext = 3743132i32;
                    };
                } else if (__value__ == (3742982i32)) {
                    {
                        _err_3742990 = (stdgo.Go.typeAssert((_pv_3742892.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText(_data_3737899);
                        if (_err_3742990 != null) {
                            _gotoNext = 3743071i32;
                        } else {
                            _gotoNext = 3743096i32;
                        };
                    };
                } else if (__value__ == (3743071i32)) {
                    return _err_3742990;
                    _gotoNext = 3743096i32;
                } else if (__value__ == (3743096i32)) {
                    _saveData_3737921 = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
                    _gotoNext = 3743132i32;
                } else if (__value__ == (3743132i32)) {
                    {
                        _err_3743135 = stdgo._internal.encoding.xml.Xml__copyValue._copyValue(_saveData_3737921?.__copy__(), _data_3737899);
                        if (_err_3743135 != null) {
                            _gotoNext = 3743180i32;
                        } else {
                            _gotoNext = 3743200i32;
                        };
                    };
                } else if (__value__ == (3743180i32)) {
                    return _err_3743135;
                    _gotoNext = 3743200i32;
                } else if (__value__ == (3743200i32)) {
                    _t_3743207 = _saveComment_3737972?.__copy__();
                    _gotoNext = 3743200i32;
                    {
                        _t_3743207 = _saveComment_3737972?.__copy__();
                        {
                            final __value__ = _t_3743207.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3743237i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3743290i32;
                            } else {
                                _gotoNext = 3743349i32;
                            };
                        };
                    };
                } else if (__value__ == (3743237i32)) {
                    _t_3743207.setString((_comment_3737950 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3743349i32;
                } else if (__value__ == (3743290i32)) {
                    _t_3743207.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_comment_3737950))?.__copy__());
                    _gotoNext = 3743349i32;
                } else if (__value__ == (3743349i32)) {
                    _t_3743356 = _saveXML_3738001?.__copy__();
                    _gotoNext = 3743349i32;
                    {
                        _t_3743356 = _saveXML_3738001?.__copy__();
                        {
                            final __value__ = _t_3743356.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3743382i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3743439i32;
                            } else {
                                _gotoNext = 3743554i32;
                            };
                        };
                    };
                } else if (__value__ == (3743382i32)) {
                    _t_3743356.setString((_saveXMLData_3738049 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3743554i32;
                } else if (__value__ == (3743439i32)) {
                    if (_t_3743356.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3743504i32;
                    } else {
                        _gotoNext = 3743554i32;
                    };
                } else if (__value__ == (3743504i32)) {
                    _t_3743356.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_saveXMLData_3738049))?.__copy__());
                    _gotoNext = 3743554i32;
                } else if (__value__ == (3743554i32)) {
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
