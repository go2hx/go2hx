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
            return _ok = false;
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
        return _ok = true;
    }
    @:keep
    static public function _name( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _s = ("" : stdgo.GoString), _ok = false;
        _d._buf.reset();
        if (!_d._readName()) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : false };
                _s = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        var _b = _d._buf.bytes();
        if (!stdgo._internal.encoding.xml.Xml__isName._isName(_b)) {
            _d._err = _d._syntaxError((("invalid XML name: " : stdgo.GoString) + (_b : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
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
    static public function _nsname( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>):{ var _0 : stdgo._internal.encoding.xml.Xml_Name.Name; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name), _ok = false;
        var __tmp__ = _d._name(), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
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
    static public function _text( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _quote:stdgo.GoInt, _cdata:Bool):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _n_3703460:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _s_3703394:stdgo.GoString = ("" : stdgo.GoString);
        var inputBreak = false;
        var _size_3704847:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_3704696:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ent_3704285:stdgo.GoString = ("" : stdgo.GoString);
        var _haveText_3702806:Bool = false;
        var _ok_3702772:Bool = false;
        var _before_3702719:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_3701697:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ok_3703942:Bool = false;
        var _r_3703939:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _s_3703912:stdgo.GoString = ("" : stdgo.GoString);
        var _start_3703113:stdgo.GoInt = (0 : stdgo.GoInt);
        var _text_3702787:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3701700:Bool = false;
        var _trunc_3701656:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b1_3701643:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _name_3703824:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err_3703463:stdgo.Error = (null : stdgo.Error);
        var _r_3704844:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _buf_3704810:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _base_3702975:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b0_3701639:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _d._buf.reset();
                    _gotoNext = 3701681i32;
                } else if (__value__ == (3701681i32)) {
                    var __blank__ = 0i32;
                    inputBreak = false;
                    _gotoNext = 3701689i32;
                } else if (__value__ == (3701689i32)) {
                    if (!inputBreak) {
                        _gotoNext = 3701693i32;
                    } else {
                        _gotoNext = 3704696i32;
                    };
                } else if (__value__ == (3701693i32)) {
                    {
                        var __tmp__ = _d._getc();
                        _b_3701697 = __tmp__._0;
                        _ok_3701700 = __tmp__._1;
                    };
                    if (!_ok_3701700) {
                        _gotoNext = 3701724i32;
                    } else {
                        _gotoNext = 3701969i32;
                    };
                } else if (__value__ == (3701724i32)) {
                    if (_cdata) {
                        _gotoNext = 3701738i32;
                    } else {
                        _gotoNext = 3701856i32;
                    };
                } else if (__value__ == (3701738i32)) {
                    if (stdgo.Go.toInterface(_d._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _gotoNext = 3701763i32;
                    } else {
                        _gotoNext = 3701837i32;
                    };
                } else if (__value__ == (3701763i32)) {
                    _d._err = _d._syntaxError(("unexpected EOF in CDATA section" : stdgo.GoString));
                    _gotoNext = 3701837i32;
                } else if (__value__ == (3701837i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3701856i32;
                } else if (__value__ == (3701856i32)) {
                    inputBreak = true;
                    _gotoNext = 3701689i32;
                } else if (__value__ == (3701969i32)) {
                    if (((_b0_3701639 == ((93 : stdgo.GoUInt8)) && _b1_3701643 == ((93 : stdgo.GoUInt8)) : Bool) && (_b_3701697 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3702007i32;
                    } else {
                        _gotoNext = 3702180i32;
                    };
                } else if (__value__ == (3702007i32)) {
                    if (_cdata) {
                        _gotoNext = 3702021i32;
                    } else {
                        _gotoNext = 3702061i32;
                    };
                } else if (__value__ == (3702021i32)) {
                    _trunc_3701656 = (2 : stdgo.GoInt);
                    inputBreak = true;
                    _gotoNext = 3701689i32;
                } else if (__value__ == (3702061i32)) {
                    _d._err = _d._syntaxError(("unescaped ]]> not in CDATA section" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3702180i32;
                } else if (__value__ == (3702180i32)) {
                    if (((_b_3701697 == (60 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                        _gotoNext = 3702202i32;
                    } else {
                        _gotoNext = 3702343i32;
                    };
                } else if (__value__ == (3702202i32)) {
                    if ((_quote >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3702221i32;
                    } else {
                        _gotoNext = 3702308i32;
                    };
                } else if (__value__ == (3702221i32)) {
                    _d._err = _d._syntaxError(("unescaped < inside quoted string" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3702308i32;
                } else if (__value__ == (3702308i32)) {
                    _d._ungetc((60 : stdgo.GoUInt8));
                    inputBreak = true;
                    _gotoNext = 3701689i32;
                } else if (__value__ == (3702343i32)) {
                    if (((_quote >= (0 : stdgo.GoInt) : Bool) && (_b_3701697 == (_quote : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3702377i32;
                    } else {
                        _gotoNext = 3702400i32;
                    };
                } else if (__value__ == (3702377i32)) {
                    inputBreak = true;
                    _gotoNext = 3701689i32;
                } else if (__value__ == (3702400i32)) {
                    if (((_b_3701697 == (38 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                        _gotoNext = 3702422i32;
                    } else {
                        _gotoNext = 3704521i32;
                    };
                } else if (__value__ == (3702422i32)) {
                    _before_3702719 = _d._buf.len();
                    _d._buf.writeByte((38 : stdgo.GoUInt8));
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3701697 = __tmp__._0;
                            _ok_3702772 = __tmp__._1;
                        };
                        if (!_ok_3702772) {
                            _gotoNext = 3702852i32;
                        } else {
                            _gotoNext = 3702877i32;
                        };
                    };
                } else if (__value__ == (3702852i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3702877i32;
                } else if (__value__ == (3702877i32)) {
                    if (_b_3701697 == ((35 : stdgo.GoUInt8))) {
                        _gotoNext = 3702889i32;
                    } else {
                        _gotoNext = 3703620i32;
                    };
                } else if (__value__ == (3702889i32)) {
                    _d._buf.writeByte(_b_3701697);
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3701697 = __tmp__._0;
                            _ok_3702772 = __tmp__._1;
                        };
                        if (!_ok_3702772) {
                            _gotoNext = 3702947i32;
                        } else {
                            _gotoNext = 3702975i32;
                        };
                    };
                } else if (__value__ == (3702947i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3702975i32;
                } else if (__value__ == (3702975i32)) {
                    _base_3702975 = (10 : stdgo.GoInt);
                    if (_b_3701697 == ((120 : stdgo.GoUInt8))) {
                        _gotoNext = 3703002i32;
                    } else {
                        _gotoNext = 3703113i32;
                    };
                } else if (__value__ == (3703002i32)) {
                    _base_3702975 = (16 : stdgo.GoInt);
                    _d._buf.writeByte(_b_3701697);
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3701697 = __tmp__._0;
                            _ok_3702772 = __tmp__._1;
                        };
                        if (!_ok_3702772) {
                            _gotoNext = 3703077i32;
                        } else {
                            _gotoNext = 3703113i32;
                        };
                    };
                } else if (__value__ == (3703077i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3703113i32;
                } else if (__value__ == (3703113i32)) {
                    _start_3703113 = _d._buf.len();
                    var __blank__ = 0i32;
                    _gotoNext = 3703138i32;
                } else if (__value__ == (3703138i32)) {
                    if ((((((48 : stdgo.GoUInt8) <= _b_3701697 : Bool) && (_b_3701697 <= (57 : stdgo.GoUInt8) : Bool) : Bool) || ((_base_3702975 == ((16 : stdgo.GoInt)) && ((97 : stdgo.GoUInt8) <= _b_3701697 : Bool) : Bool) && (_b_3701697 <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || ((_base_3702975 == ((16 : stdgo.GoInt)) && ((65 : stdgo.GoUInt8) <= _b_3701697 : Bool) : Bool) && (_b_3701697 <= (70 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3703249i32;
                    } else {
                        _gotoNext = 3703345i32;
                    };
                } else if (__value__ == (3703249i32)) {
                    _d._buf.writeByte(_b_3701697);
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3701697 = __tmp__._0;
                            _ok_3702772 = __tmp__._1;
                        };
                        if (!_ok_3702772) {
                            _gotoNext = 3703309i32;
                        } else {
                            _gotoNext = 3703345i32;
                        };
                    };
                } else if (__value__ == (3703309i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3703345i32;
                } else if (__value__ == (3703345i32)) {
                    if (_b_3701697 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3703357i32;
                    } else {
                        _gotoNext = 3703387i32;
                    };
                } else if (__value__ == (3703357i32)) {
                    _d._ungetc(_b_3701697);
                    _gotoNext = 3704111i32;
                } else if (__value__ == (3703387i32)) {
                    _gotoNext = 3703387i32;
                    _s_3703394 = ((_d._buf.bytes().__slice__(_start_3703113) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    _d._buf.writeByte((59 : stdgo.GoUInt8));
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_s_3703394?.__copy__(), _base_3702975, (64 : stdgo.GoInt));
                        _n_3703460 = __tmp__._0;
                        _err_3703463 = __tmp__._1;
                    };
                    if (((_err_3703463 == null) && (_n_3703460 <= (1114111i64 : stdgo.GoUInt64) : Bool) : Bool)) {
                        _gotoNext = 3703544i32;
                    } else {
                        _gotoNext = 3704111i32;
                    };
                } else if (__value__ == (3703544i32)) {
                    _text_3702787 = ((_n_3703460 : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
                    _haveText_3702806 = true;
                    _gotoNext = 3704111i32;
                } else if (__value__ == (3703620i32)) {
                    _gotoNext = 3703620i32;
                    _d._ungetc(_b_3701697);
                    if (!_d._readName()) {
                        _gotoNext = 3703659i32;
                    } else {
                        _gotoNext = 3703718i32;
                    };
                } else if (__value__ == (3703659i32)) {
                    if (_d._err != null) {
                        _gotoNext = 3703682i32;
                    } else {
                        _gotoNext = 3703718i32;
                    };
                } else if (__value__ == (3703682i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3703718i32;
                } else if (__value__ == (3703718i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3701697 = __tmp__._0;
                            _ok_3702772 = __tmp__._1;
                        };
                        if (!_ok_3702772) {
                            _gotoNext = 3703747i32;
                        } else {
                            _gotoNext = 3703775i32;
                        };
                    };
                } else if (__value__ == (3703747i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3703775i32;
                } else if (__value__ == (3703775i32)) {
                    if (_b_3701697 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3703787i32;
                    } else {
                        _gotoNext = 3703817i32;
                    };
                } else if (__value__ == (3703787i32)) {
                    _d._ungetc(_b_3701697);
                    _gotoNext = 3704111i32;
                } else if (__value__ == (3703817i32)) {
                    _gotoNext = 3703817i32;
                    _name_3703824 = (_d._buf.bytes().__slice__((_before_3702719 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _d._buf.writeByte((59 : stdgo.GoUInt8));
                    if (stdgo._internal.encoding.xml.Xml__isName._isName(_name_3703824)) {
                        _gotoNext = 3703904i32;
                    } else {
                        _gotoNext = 3704111i32;
                    };
                } else if (__value__ == (3703904i32)) {
                    _s_3703912 = (_name_3703824 : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = (stdgo._internal.encoding.xml.Xml__entity._entity != null && stdgo._internal.encoding.xml.Xml__entity._entity.exists(_s_3703912?.__copy__()) ? { _0 : stdgo._internal.encoding.xml.Xml__entity._entity[_s_3703912?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt32), _1 : false });
                            _r_3703939 = __tmp__._0;
                            _ok_3703942 = __tmp__._1;
                        };
                        if (_ok_3703942) {
                            _gotoNext = 3703962i32;
                        } else if (_d.entity != null) {
                            _gotoNext = 3704043i32;
                        } else {
                            _gotoNext = 3704111i32;
                        };
                    };
                } else if (__value__ == (3703962i32)) {
                    _text_3702787 = (_r_3703939 : stdgo.GoString)?.__copy__();
                    _haveText_3702806 = true;
                    _gotoNext = 3704111i32;
                } else if (__value__ == (3704043i32)) {
                    {
                        var __tmp__ = (_d.entity != null && _d.entity.exists(_s_3703912?.__copy__()) ? { _0 : _d.entity[_s_3703912?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false });
                        _text_3702787 = __tmp__._0?.__copy__();
                        _haveText_3702806 = __tmp__._1;
                    };
                    _gotoNext = 3704111i32;
                } else if (__value__ == (3704111i32)) {
                    if (_haveText_3702806) {
                        _gotoNext = 3704123i32;
                    } else {
                        _gotoNext = 3704225i32;
                    };
                } else if (__value__ == (3704123i32)) {
                    _d._buf.truncate(_before_3702719);
                    _d._buf.writeString(_text_3702787?.__copy__());
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_3701639 = __tmp__0;
                        _b1_3701643 = __tmp__1;
                    };
                    _gotoNext = 3701689i32;
                } else if (__value__ == (3704225i32)) {
                    if (!_d.strict) {
                        _gotoNext = 3704238i32;
                    } else {
                        _gotoNext = 3704285i32;
                    };
                } else if (__value__ == (3704238i32)) {
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_3701639 = __tmp__0;
                        _b1_3701643 = __tmp__1;
                    };
                    _gotoNext = 3701689i32;
                } else if (__value__ == (3704285i32)) {
                    _ent_3704285 = ((_d._buf.bytes().__slice__(_before_3702719) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    if (_ent_3704285[((_ent_3704285.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3704352i32;
                    } else {
                        _gotoNext = 3704391i32;
                    };
                } else if (__value__ == (3704352i32)) {
                    _ent_3704285 = (_ent_3704285 + ((" (no semicolon)" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3704391i32;
                } else if (__value__ == (3704391i32)) {
                    _d._err = _d._syntaxError((("invalid character entity " : stdgo.GoString) + _ent_3704285?.__copy__() : stdgo.GoString)?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3704521i32;
                } else if (__value__ == (3704521i32)) {
                    if (_b_3701697 == ((13 : stdgo.GoUInt8))) {
                        _gotoNext = 3704534i32;
                    } else if (((_b1_3701643 == (13 : stdgo.GoUInt8)) && (_b_3701697 == (10 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3704597i32;
                    } else {
                        _gotoNext = 3704646i32;
                    };
                } else if (__value__ == (3704534i32)) {
                    _d._buf.writeByte((10 : stdgo.GoUInt8));
                    _gotoNext = 3704677i32;
                } else if (__value__ == (3704597i32)) {
                    _gotoNext = 3704677i32;
                } else if (__value__ == (3704646i32)) {
                    _gotoNext = 3704646i32;
                    _d._buf.writeByte(_b_3701697);
                    var __blank__ = 0i32;
                    _gotoNext = 3704677i32;
                } else if (__value__ == (3704677i32)) {
                    {
                        final __tmp__0 = _b1_3701643;
                        final __tmp__1 = _b_3701697;
                        _b0_3701639 = __tmp__0;
                        _b1_3701643 = __tmp__1;
                    };
                    _gotoNext = 3701689i32;
                } else if (__value__ == (3704696i32)) {
                    _data_3704696 = _d._buf.bytes();
                    _data_3704696 = (_data_3704696.__slice__((0 : stdgo.GoInt), ((_data_3704696.length) - _trunc_3701656 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _buf_3704810 = _data_3704696;
                    var __blank__ = 0i32;
                    _gotoNext = 3704823i32;
                } else if (__value__ == (3704823i32)) {
                    if (((_buf_3704810.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3704840i32;
                    } else {
                        _gotoNext = 3705118i32;
                    };
                } else if (__value__ == (3704840i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_buf_3704810);
                        _r_3704844 = __tmp__._0;
                        _size_3704847 = __tmp__._1;
                    };
                    if (((_r_3704844 == (65533 : stdgo.GoInt32)) && (_size_3704847 == (1 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3704914i32;
                    } else {
                        _gotoNext = 3704978i32;
                    };
                } else if (__value__ == (3704914i32)) {
                    _d._err = _d._syntaxError(("invalid UTF-8" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3704978i32;
                } else if (__value__ == (3704978i32)) {
                    _buf_3704810 = (_buf_3704810.__slice__(_size_3704847) : stdgo.Slice<stdgo.GoUInt8>);
                    if (!stdgo._internal.encoding.xml.Xml__isInCharacterRange._isInCharacterRange(_r_3704844)) {
                        _gotoNext = 3705023i32;
                    } else {
                        _gotoNext = 3705118i32;
                    };
                } else if (__value__ == (3705023i32)) {
                    _d._err = _d._syntaxError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("illegal character code %U" : stdgo.GoString), stdgo.Go.toInterface(_r_3704844))?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3705118i32;
                } else if (__value__ == (3705118i32)) {
                    return _data_3704696;
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
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : _d._line, _1 : (((_d._offset - _d._linestart : stdgo.GoInt64) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
            _line = __tmp__._0;
            _column = __tmp__._1;
            __tmp__;
        };
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
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : (0 : stdgo.GoUInt8), _1 : false };
                _b = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
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
                return {
                    final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : (0 : stdgo.GoUInt8), _1 : false };
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
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
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : Bool; } = { _0 : _b, _1 : true };
            _b = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
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
        var _i_3695462:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b0_3693513:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _empty_3697444:Bool = false;
        var _name_3697431:stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
        var _b1_3696857:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b0_3696853:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _j_3696635:stdgo.GoInt = (0 : stdgo.GoInt);
        var _target_3693321:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3692584:Bool = false;
        var _newr_3694264:stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
        var _data_3695705:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _data_3693673:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _a_3697954:stdgo._internal.encoding.xml.Xml_Attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr);
        var _name_3692891:stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
        var _b_3692581:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _attr_3697457:stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
        var _data_3695314:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b1_3694999:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _err_3694270:stdgo.Error = (null : stdgo.Error);
        var _i_3696512:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3696493:stdgo.GoString = ("" : stdgo.GoString);
        var _b0_3694995:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _data_3692683:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ver_3693791:stdgo.GoString = ("" : stdgo.GoString);
        var _content_3693764:stdgo.GoString = ("" : stdgo.GoString);
        var _data_3698380:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _depth_3696036:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inquote_3696014:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _enc_3693981:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_d._t != null) {
                        _gotoNext = 3692299i32;
                    } else {
                        _gotoNext = 3692326i32;
                    };
                } else if (__value__ == (3692299i32)) {
                    return _d._t.token();
                    _gotoNext = 3692326i32;
                } else if (__value__ == (3692326i32)) {
                    if (_d._err != null) {
                        _gotoNext = 3692342i32;
                    } else {
                        _gotoNext = 3692368i32;
                    };
                } else if (__value__ == (3692342i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3692368i32;
                } else if (__value__ == (3692368i32)) {
                    if (_d._needClose) {
                        _gotoNext = 3692383i32;
                    } else {
                        _gotoNext = 3692581i32;
                    };
                } else if (__value__ == (3692383i32)) {
                    _d._needClose = false;
                    return { _0 : stdgo.Go.toInterface((new stdgo._internal.encoding.xml.Xml_EndElement.EndElement(_d._toClose?.__copy__()) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3692581i32;
                } else if (__value__ == (3692581i32)) {
                    {
                        var __tmp__ = _d._getc();
                        _b_3692581 = __tmp__._0;
                        _ok_3692584 = __tmp__._1;
                    };
                    if (!_ok_3692584) {
                        _gotoNext = 3692607i32;
                    } else {
                        _gotoNext = 3692634i32;
                    };
                } else if (__value__ == (3692607i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3692634i32;
                } else if (__value__ == (3692634i32)) {
                    if (_b_3692581 != ((60 : stdgo.GoUInt8))) {
                        _gotoNext = 3692646i32;
                    } else {
                        _gotoNext = 3692787i32;
                    };
                } else if (__value__ == (3692646i32)) {
                    _d._ungetc(_b_3692581);
                    _data_3692683 = _d._text((-1 : stdgo.GoInt), false);
                    if (_data_3692683 == null) {
                        _gotoNext = 3692726i32;
                    } else {
                        _gotoNext = 3692755i32;
                    };
                } else if (__value__ == (3692726i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3692755i32;
                } else if (__value__ == (3692755i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3692683 : stdgo._internal.encoding.xml.Xml_CharData.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3692787i32;
                } else if (__value__ == (3692787i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3692581 = __tmp__._0;
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3692816i32;
                        } else {
                            _gotoNext = 3692842i32;
                        };
                    };
                } else if (__value__ == (3692816i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3692842i32;
                } else if (__value__ == (3692842i32)) {
                    _gotoNext = 3692842i32;
                    {
                        final __value__ = _b_3692581;
                        if (__value__ == ((47 : stdgo.GoUInt8))) {
                            _gotoNext = 3692854i32;
                        } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                            _gotoNext = 3693272i32;
                        } else if (__value__ == ((33 : stdgo.GoUInt8))) {
                            _gotoNext = 3694600i32;
                        } else {
                            _gotoNext = 3697409i32;
                        };
                    };
                } else if (__value__ == (3692854i32)) {
                    {
                        {
                            var __tmp__ = _d._nsname();
                            _name_3692891 = __tmp__._0?.__copy__();
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3692933i32;
                        } else {
                            _gotoNext = 3693048i32;
                        };
                    };
                } else if (__value__ == (3692933i32)) {
                    if (_d._err == null) {
                        _gotoNext = 3692954i32;
                    } else {
                        _gotoNext = 3693024i32;
                    };
                } else if (__value__ == (3692954i32)) {
                    _d._err = _d._syntaxError(("expected element name after </" : stdgo.GoString));
                    _gotoNext = 3693024i32;
                } else if (__value__ == (3693024i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3693048i32;
                } else if (__value__ == (3693048i32)) {
                    _d._space();
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3692581 = __tmp__._0;
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3693089i32;
                        } else {
                            _gotoNext = 3693118i32;
                        };
                    };
                } else if (__value__ == (3693089i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3693118i32;
                } else if (__value__ == (3693118i32)) {
                    if (_b_3692581 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3693130i32;
                    } else {
                        _gotoNext = 3693241i32;
                    };
                } else if (__value__ == (3693130i32)) {
                    _d._err = _d._syntaxError(((("invalid characters between </" : stdgo.GoString) + _name_3692891.local?.__copy__() : stdgo.GoString) + (" and >" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3693241i32;
                } else if (__value__ == (3693241i32)) {
                    return { _0 : stdgo.Go.toInterface((new stdgo._internal.encoding.xml.Xml_EndElement.EndElement(_name_3692891?.__copy__()) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3697409i32;
                } else if (__value__ == (3693272i32)) {
                    {
                        {
                            var __tmp__ = _d._name();
                            _target_3693321 = __tmp__._0?.__copy__();
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3693367i32;
                        } else {
                            _gotoNext = 3693481i32;
                        };
                    };
                } else if (__value__ == (3693367i32)) {
                    if (_d._err == null) {
                        _gotoNext = 3693388i32;
                    } else {
                        _gotoNext = 3693457i32;
                    };
                } else if (__value__ == (3693388i32)) {
                    _d._err = _d._syntaxError(("expected target name after <?" : stdgo.GoString));
                    _gotoNext = 3693457i32;
                } else if (__value__ == (3693457i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3693481i32;
                } else if (__value__ == (3693481i32)) {
                    _d._space();
                    _d._buf.reset();
                    var __blank__ = 0i32;
                    _gotoNext = 3693523i32;
                } else if (__value__ == (3693523i32)) {
                    if (true) {
                        _gotoNext = 3693527i32;
                    } else {
                        _gotoNext = 3693673i32;
                    };
                } else if (__value__ == (3693527i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3692581 = __tmp__._0;
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3693561i32;
                        } else {
                            _gotoNext = 3693593i32;
                        };
                    };
                } else if (__value__ == (3693561i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3693593i32;
                } else if (__value__ == (3693593i32)) {
                    _d._buf.writeByte(_b_3692581);
                    if (((_b0_3693513 == (63 : stdgo.GoUInt8)) && (_b_3692581 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3693640i32;
                    } else {
                        _gotoNext = 3693660i32;
                    };
                } else if (__value__ == (3693640i32)) {
                    _gotoNext = 3693673i32;
                } else if (__value__ == (3693660i32)) {
                    _b0_3693513 = _b_3692581;
                    _gotoNext = 3693523i32;
                } else if (__value__ == (3693673i32)) {
                    _data_3693673 = _d._buf.bytes();
                    _data_3693673 = (_data_3693673.__slice__((0 : stdgo.GoInt), ((_data_3693673.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_target_3693321 == (("xml" : stdgo.GoString))) {
                        _gotoNext = 3693759i32;
                    } else {
                        _gotoNext = 3694563i32;
                    };
                } else if (__value__ == (3693759i32)) {
                    _content_3693764 = (_data_3693673 : stdgo.GoString)?.__copy__();
                    _ver_3693791 = stdgo._internal.encoding.xml.Xml__procInst._procInst(("version" : stdgo.GoString), _content_3693764?.__copy__())?.__copy__();
                    if (((_ver_3693791 != stdgo.Go.str()) && (_ver_3693791 != ("1.0" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3693859i32;
                    } else {
                        _gotoNext = 3693981i32;
                    };
                } else if (__value__ == (3693859i32)) {
                    _d._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: unsupported version %q; only version 1.0 is supported" : stdgo.GoString), stdgo.Go.toInterface(_ver_3693791));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3693981i32;
                } else if (__value__ == (3693981i32)) {
                    _enc_3693981 = stdgo._internal.encoding.xml.Xml__procInst._procInst(("encoding" : stdgo.GoString), _content_3693764?.__copy__())?.__copy__();
                    if ((((_enc_3693981 != (stdgo.Go.str()) && _enc_3693981 != (("utf-8" : stdgo.GoString)) : Bool) && _enc_3693981 != (("UTF-8" : stdgo.GoString)) : Bool) && !stdgo._internal.strings.Strings_equalFold.equalFold(_enc_3693981?.__copy__(), ("utf-8" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3694106i32;
                    } else {
                        _gotoNext = 3694563i32;
                    };
                } else if (__value__ == (3694106i32)) {
                    if (_d.charsetReader == null) {
                        _gotoNext = 3694138i32;
                    } else {
                        _gotoNext = 3694264i32;
                    };
                } else if (__value__ == (3694138i32)) {
                    _d._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: encoding %q declared but Decoder.CharsetReader is nil" : stdgo.GoString), stdgo.Go.toInterface(_enc_3693981));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3694264i32;
                } else if (__value__ == (3694264i32)) {
                    {
                        var __tmp__ = _d.charsetReader(_enc_3693981?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d._r) : stdgo._internal.io.Io_Reader.Reader)) : stdgo._internal.io.Io_Reader.Reader));
                        _newr_3694264 = __tmp__._0;
                        _err_3694270 = __tmp__._1;
                    };
                    if (_err_3694270 != null) {
                        _gotoNext = 3694333i32;
                    } else {
                        _gotoNext = 3694433i32;
                    };
                } else if (__value__ == (3694333i32)) {
                    _d._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: opening charset %q: %w" : stdgo.GoString), stdgo.Go.toInterface(_enc_3693981), stdgo.Go.toInterface(_err_3694270));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3694433i32;
                } else if (__value__ == (3694433i32)) {
                    if (_newr_3694264 == null) {
                        _gotoNext = 3694448i32;
                    } else {
                        _gotoNext = 3694529i32;
                    };
                } else if (__value__ == (3694448i32)) {
                    throw stdgo.Go.toInterface((("CharsetReader returned a nil Reader for charset " : stdgo.GoString) + _enc_3693981?.__copy__() : stdgo.GoString));
                    _gotoNext = 3694529i32;
                } else if (__value__ == (3694529i32)) {
                    _d._switchToReader(_newr_3694264);
                    _gotoNext = 3694563i32;
                } else if (__value__ == (3694563i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst(_target_3693321?.__copy__(), _data_3693673) : stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3697409i32;
                } else if (__value__ == (3694600i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3692581 = __tmp__._0;
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3694678i32;
                        } else {
                            _gotoNext = 3694707i32;
                        };
                    };
                } else if (__value__ == (3694678i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3694707i32;
                } else if (__value__ == (3694707i32)) {
                    _gotoNext = 3694707i32;
                    {
                        final __value__ = _b_3692581;
                        if (__value__ == ((45 : stdgo.GoUInt8))) {
                            _gotoNext = 3694720i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3695412i32;
                        } else {
                            _gotoNext = 3695977i32;
                        };
                    };
                } else if (__value__ == (3694720i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3692581 = __tmp__._0;
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3694804i32;
                        } else {
                            _gotoNext = 3694836i32;
                        };
                    };
                } else if (__value__ == (3694804i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3694836i32;
                } else if (__value__ == (3694836i32)) {
                    if (_b_3692581 != ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 3694848i32;
                    } else {
                        _gotoNext = 3694974i32;
                    };
                } else if (__value__ == (3694848i32)) {
                    _d._err = _d._syntaxError(("invalid sequence <!- not part of <!--" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3694974i32;
                } else if (__value__ == (3694974i32)) {
                    _d._buf.reset();
                    var __blank__ = 0i32;
                    _gotoNext = 3695010i32;
                } else if (__value__ == (3695010i32)) {
                    if (true) {
                        _gotoNext = 3695014i32;
                    } else {
                        _gotoNext = 3695314i32;
                    };
                } else if (__value__ == (3695014i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3692581 = __tmp__._0;
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3695049i32;
                        } else {
                            _gotoNext = 3695084i32;
                        };
                    };
                } else if (__value__ == (3695049i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3695084i32;
                } else if (__value__ == (3695084i32)) {
                    _d._buf.writeByte(_b_3692581);
                    if (((_b0_3694995 == (45 : stdgo.GoUInt8)) && (_b1_3694999 == (45 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3695133i32;
                    } else {
                        _gotoNext = 3695291i32;
                    };
                } else if (__value__ == (3695133i32)) {
                    if (_b_3692581 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3695152i32;
                    } else {
                        _gotoNext = 3695275i32;
                    };
                } else if (__value__ == (3695152i32)) {
                    _d._err = _d._syntaxError(("invalid sequence \"--\" not allowed in comments" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3695275i32;
                } else if (__value__ == (3695275i32)) {
                    _gotoNext = 3695314i32;
                } else if (__value__ == (3695291i32)) {
                    {
                        final __tmp__0 = _b1_3694999;
                        final __tmp__1 = _b_3692581;
                        _b0_3694995 = __tmp__0;
                        _b1_3694999 = __tmp__1;
                    };
                    _gotoNext = 3695010i32;
                } else if (__value__ == (3695314i32)) {
                    _data_3695314 = _d._buf.bytes();
                    _data_3695314 = (_data_3695314.__slice__((0 : stdgo.GoInt), ((_data_3695314.length) - (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3695314 : stdgo._internal.encoding.xml.Xml_Comment.Comment))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3695977i32;
                } else if (__value__ == (3695412i32)) {
                    _i_3695462 = (0 : stdgo.GoInt);
                    _gotoNext = 3695458i32;
                } else if (__value__ == (3695458i32)) {
                    if ((_i_3695462 < (6 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3695481i32;
                    } else {
                        _gotoNext = 3695705i32;
                    };
                } else if (__value__ == (3695477i32)) {
                    _i_3695462++;
                    _gotoNext = 3695458i32;
                } else if (__value__ == (3695481i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3692581 = __tmp__._0;
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3695516i32;
                        } else {
                            _gotoNext = 3695551i32;
                        };
                    };
                } else if (__value__ == (3695516i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3695551i32;
                } else if (__value__ == (3695551i32)) {
                    if (_b_3692581 != (("CDATA[" : stdgo.GoString)[(_i_3695462 : stdgo.GoInt)])) {
                        _gotoNext = 3695571i32;
                    } else {
                        _gotoNext = 3695477i32;
                    };
                } else if (__value__ == (3695571i32)) {
                    _d._err = _d._syntaxError(("invalid <![ sequence" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3695477i32;
                } else if (__value__ == (3695705i32)) {
                    _data_3695705 = _d._text((-1 : stdgo.GoInt), true);
                    if (_data_3695705 == null) {
                        _gotoNext = 3695748i32;
                    } else {
                        _gotoNext = 3695780i32;
                    };
                } else if (__value__ == (3695748i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3695780i32;
                } else if (__value__ == (3695780i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3695705 : stdgo._internal.encoding.xml.Xml_CharData.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3695977i32;
                } else if (__value__ == (3695977i32)) {
                    _d._buf.reset();
                    _d._buf.writeByte(_b_3692581);
                    _inquote_3696014 = (0 : stdgo.GoUInt8);
                    _depth_3696036 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3696049i32;
                } else if (__value__ == (3696049i32)) {
                    if (true) {
                        _gotoNext = 3696053i32;
                    } else {
                        _gotoNext = 3697319i32;
                    };
                } else if (__value__ == (3696053i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3692581 = __tmp__._0;
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3696087i32;
                        } else {
                            _gotoNext = 3696119i32;
                        };
                    };
                } else if (__value__ == (3696087i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3696119i32;
                } else if (__value__ == (3696119i32)) {
                    if (((_inquote_3696014 == ((0 : stdgo.GoUInt8)) && _b_3692581 == ((62 : stdgo.GoUInt8)) : Bool) && (_depth_3696036 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3696161i32;
                    } else {
                        _gotoNext = 3696180i32;
                    };
                } else if (__value__ == (3696161i32)) {
                    _gotoNext = 3697319i32;
                } else if (__value__ == (3696180i32)) {
                    _gotoNext = 3696180i32;
                    _d._buf.writeByte(_b_3692581);
                    _gotoNext = 3696214i32;
                } else if (__value__ == (3696214i32)) {
                    if (_b_3692581 == (_inquote_3696014)) {
                        _gotoNext = 3696226i32;
                    } else if (_inquote_3696014 != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3696265i32;
                    } else if (((_b_3692581 == (39 : stdgo.GoUInt8)) || (_b_3692581 == (34 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3696324i32;
                    } else if (((_b_3692581 == (62 : stdgo.GoUInt8)) && (_inquote_3696014 == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3696372i32;
                    } else if (((_b_3692581 == (60 : stdgo.GoUInt8)) && (_inquote_3696014 == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3696419i32;
                    } else {
                        _gotoNext = 3697319i32;
                    };
                } else if (__value__ == (3696226i32)) {
                    _inquote_3696014 = (0 : stdgo.GoUInt8);
                    _gotoNext = 3697319i32;
                } else if (__value__ == (3696265i32)) {
                    _gotoNext = 3697319i32;
                } else if (__value__ == (3696324i32)) {
                    _inquote_3696014 = _b_3692581;
                    _gotoNext = 3697319i32;
                } else if (__value__ == (3696372i32)) {
                    _depth_3696036--;
                    _gotoNext = 3697319i32;
                } else if (__value__ == (3696419i32)) {
                    _s_3696493 = ("!--" : stdgo.GoString);
                    _i_3696512 = (0 : stdgo.GoInt);
                    _gotoNext = 3696508i32;
                } else if (__value__ == (3696508i32)) {
                    if ((_i_3696512 < (_s_3696493.length) : Bool)) {
                        _gotoNext = 3696536i32;
                    } else {
                        _gotoNext = 3696784i32;
                    };
                } else if (__value__ == (3696532i32)) {
                    _i_3696512++;
                    _gotoNext = 3696508i32;
                } else if (__value__ == (3696536i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3692581 = __tmp__._0;
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3696572i32;
                        } else {
                            _gotoNext = 3696610i32;
                        };
                    };
                } else if (__value__ == (3696572i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3696610i32;
                } else if (__value__ == (3696610i32)) {
                    if (_b_3692581 != (_s_3696493[(_i_3696512 : stdgo.GoInt)])) {
                        _gotoNext = 3696623i32;
                    } else {
                        _gotoNext = 3696532i32;
                    };
                } else if (__value__ == (3696623i32)) {
                    _j_3696635 = (0 : stdgo.GoInt);
                    _gotoNext = 3696631i32;
                } else if (__value__ == (3696631i32)) {
                    if ((_j_3696635 < _i_3696512 : Bool)) {
                        _gotoNext = 3696654i32;
                    } else {
                        _gotoNext = 3696699i32;
                    };
                } else if (__value__ == (3696654i32)) {
                    _d._buf.writeByte(_s_3696493[(_j_3696635 : stdgo.GoInt)]);
                    _j_3696635++;
                    _gotoNext = 3696631i32;
                } else if (__value__ == (3696699i32)) {
                    _depth_3696036++;
                    _gotoNext = 3696180i32;
                } else if (__value__ == (3696784i32)) {
                    _d._buf.truncate((_d._buf.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3696869i32;
                } else if (__value__ == (3696869i32)) {
                    if (true) {
                        _gotoNext = 3696873i32;
                    } else {
                        _gotoNext = 3697287i32;
                    };
                } else if (__value__ == (3696873i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3692581 = __tmp__._0;
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3696909i32;
                        } else {
                            _gotoNext = 3696947i32;
                        };
                    };
                } else if (__value__ == (3696909i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3696947i32;
                } else if (__value__ == (3696947i32)) {
                    if (((_b0_3696853 == ((45 : stdgo.GoUInt8)) && _b1_3696857 == ((45 : stdgo.GoUInt8)) : Bool) && (_b_3692581 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3696985i32;
                    } else {
                        _gotoNext = 3697011i32;
                    };
                } else if (__value__ == (3696985i32)) {
                    _gotoNext = 3697287i32;
                } else if (__value__ == (3697011i32)) {
                    {
                        final __tmp__0 = _b1_3696857;
                        final __tmp__1 = _b_3692581;
                        _b0_3696853 = __tmp__0;
                        _b1_3696857 = __tmp__1;
                    };
                    _gotoNext = 3696869i32;
                } else if (__value__ == (3697287i32)) {
                    _d._buf.writeByte((32 : stdgo.GoUInt8));
                    _gotoNext = 3697319i32;
                } else if (__value__ == (3697319i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_d._buf.bytes() : stdgo._internal.encoding.xml.Xml_Directive.Directive))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3697409i32;
                } else if (__value__ == (3697409i32)) {
                    _d._ungetc(_b_3692581);
                    {
                        {
                            var __tmp__ = _d._nsname();
                            _name_3697431 = __tmp__._0?.__copy__();
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3697504i32;
                        } else {
                            _gotoNext = 3697613i32;
                        };
                    };
                } else if (__value__ == (3697504i32)) {
                    if (_d._err == null) {
                        _gotoNext = 3697524i32;
                    } else {
                        _gotoNext = 3697590i32;
                    };
                } else if (__value__ == (3697524i32)) {
                    _d._err = _d._syntaxError(("expected element name after <" : stdgo.GoString));
                    _gotoNext = 3697590i32;
                } else if (__value__ == (3697590i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3697613i32;
                } else if (__value__ == (3697613i32)) {
                    _attr_3697457 = (new stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr)])) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
                    var __blank__ = 0i32;
                    _gotoNext = 3697630i32;
                } else if (__value__ == (3697630i32)) {
                    if (true) {
                        _gotoNext = 3697634i32;
                    } else {
                        _gotoNext = 3698506i32;
                    };
                } else if (__value__ == (3697634i32)) {
                    _d._space();
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3692581 = __tmp__._0;
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3697679i32;
                        } else {
                            _gotoNext = 3697708i32;
                        };
                    };
                } else if (__value__ == (3697679i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3697708i32;
                } else if (__value__ == (3697708i32)) {
                    if (_b_3692581 == ((47 : stdgo.GoUInt8))) {
                        _gotoNext = 3697720i32;
                    } else {
                        _gotoNext = 3697910i32;
                    };
                } else if (__value__ == (3697720i32)) {
                    _empty_3697444 = true;
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3692581 = __tmp__._0;
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3697770i32;
                        } else {
                            _gotoNext = 3697802i32;
                        };
                    };
                } else if (__value__ == (3697770i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3697802i32;
                } else if (__value__ == (3697802i32)) {
                    if (_b_3692581 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3697814i32;
                    } else {
                        _gotoNext = 3697898i32;
                    };
                } else if (__value__ == (3697814i32)) {
                    _d._err = _d._syntaxError(("expected /> in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3697898i32;
                } else if (__value__ == (3697898i32)) {
                    _gotoNext = 3698506i32;
                } else if (__value__ == (3697910i32)) {
                    if (_b_3692581 == ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3697922i32;
                    } else {
                        _gotoNext = 3697939i32;
                    };
                } else if (__value__ == (3697922i32)) {
                    _gotoNext = 3698506i32;
                } else if (__value__ == (3697939i32)) {
                    _d._ungetc(_b_3692581);
                    _a_3697954 = (new stdgo._internal.encoding.xml.Xml_Attr.Attr() : stdgo._internal.encoding.xml.Xml_Attr.Attr);
                    {
                        {
                            var __tmp__ = _d._nsname();
                            _a_3697954.name = __tmp__._0?.__copy__();
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3698000i32;
                        } else {
                            _gotoNext = 3698119i32;
                        };
                    };
                } else if (__value__ == (3698000i32)) {
                    if (_d._err == null) {
                        _gotoNext = 3698021i32;
                    } else {
                        _gotoNext = 3698095i32;
                    };
                } else if (__value__ == (3698021i32)) {
                    _d._err = _d._syntaxError(("expected attribute name in element" : stdgo.GoString));
                    _gotoNext = 3698095i32;
                } else if (__value__ == (3698095i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3698119i32;
                } else if (__value__ == (3698119i32)) {
                    _d._space();
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3692581 = __tmp__._0;
                            _ok_3692584 = __tmp__._1;
                        };
                        if (!_ok_3692584) {
                            _gotoNext = 3698160i32;
                        } else {
                            _gotoNext = 3698189i32;
                        };
                    };
                } else if (__value__ == (3698160i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3698189i32;
                } else if (__value__ == (3698189i32)) {
                    if (_b_3692581 != ((61 : stdgo.GoUInt8))) {
                        _gotoNext = 3698201i32;
                    } else {
                        _gotoNext = 3698362i32;
                    };
                } else if (__value__ == (3698201i32)) {
                    if (_d.strict) {
                        _gotoNext = 3698218i32;
                    } else {
                        _gotoNext = 3698315i32;
                    };
                } else if (__value__ == (3698218i32)) {
                    _d._err = _d._syntaxError(("attribute name without = in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3698315i32;
                } else if (__value__ == (3698315i32)) {
                    _d._ungetc(_b_3692581);
                    _a_3697954.value = _a_3697954.name.local?.__copy__();
                    _gotoNext = 3698479i32;
                } else if (__value__ == (3698362i32)) {
                    _gotoNext = 3698362i32;
                    _d._space();
                    _data_3698380 = _d._attrval();
                    if (_data_3698380 == null) {
                        _gotoNext = 3698418i32;
                    } else {
                        _gotoNext = 3698450i32;
                    };
                } else if (__value__ == (3698418i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3698450i32;
                } else if (__value__ == (3698450i32)) {
                    _a_3697954.value = (_data_3698380 : stdgo.GoString)?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3698479i32;
                } else if (__value__ == (3698479i32)) {
                    _attr_3697457 = (_attr_3697457.__append__(_a_3697954?.__copy__()));
                    _gotoNext = 3697630i32;
                } else if (__value__ == (3698506i32)) {
                    if (_empty_3697444) {
                        _gotoNext = 3698515i32;
                    } else {
                        _gotoNext = 3698561i32;
                    };
                } else if (__value__ == (3698515i32)) {
                    _d._needClose = true;
                    _d._toClose = _name_3697431?.__copy__();
                    _gotoNext = 3698561i32;
                } else if (__value__ == (3698561i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_StartElement.StartElement(_name_3697431?.__copy__(), _attr_3697457) : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))), _1 : (null : stdgo.Error) };
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
        var _t_3666681:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _tok_3666560:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _recurse_3665368:Bool = false;
        var _err_3666849:stdgo.Error = (null : stdgo.Error);
        var _j_3665598:stdgo.GoInt = (0 : stdgo.GoInt);
        var _finfo_3665424:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _i_3665396:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3666974:stdgo.Error = (null : stdgo.Error);
        var _consumed2_3666838:Bool = false;
        var _t_3667054:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3666681;
                    _gotoNext = 3667083i32;
                    _recurse_3665368 = false;
                    _gotoNext = 3665385i32;
                } else if (__value__ == (3665385i32)) {
                    if ((0i32 : stdgo.GoInt) < (_tinfo._fields.length)) {
                        _gotoNext = 3666291i32;
                    } else {
                        _gotoNext = 3666295i32;
                    };
                } else if (__value__ == (3665396i32)) {
                    _i_3665396++;
                    _gotoNext = 3666292i32;
                } else if (__value__ == (3665420i32)) {
                    _finfo_3665424 = (stdgo.Go.setRef(_tinfo._fields[(_i_3665396 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if ((((_finfo_3665424._flags & (1 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || ((_finfo_3665424._parents.length) < (_parents.length) : Bool) : Bool) || (_finfo_3665424._xmlns != (stdgo.Go.str()) && _finfo_3665424._xmlns != (_start.name.space) : Bool) : Bool)) {
                        _gotoNext = 3665574i32;
                    } else {
                        _gotoNext = 3665594i32;
                    };
                } else if (__value__ == (3665574i32)) {
                    _i_3665396++;
                    _gotoNext = 3666292i32;
                } else if (__value__ == (3665594i32)) {
                    if ((0i32 : stdgo.GoInt) < (_parents.length)) {
                        _gotoNext = 3665682i32;
                    } else {
                        _gotoNext = 3665687i32;
                    };
                } else if (__value__ == (3665598i32)) {
                    _j_3665598++;
                    _gotoNext = 3665683i32;
                } else if (__value__ == (3665617i32)) {
                    if (_parents[(_j_3665598 : stdgo.GoInt)] != (_finfo_3665424._parents[(_j_3665598 : stdgo.GoInt)])) {
                        _gotoNext = 3665656i32;
                    } else {
                        _gotoNext = 3665598i32;
                    };
                } else if (__value__ == (3665656i32)) {
                    _i_3665396++;
                    _gotoNext = 3666292i32;
                } else if (__value__ == (3665682i32)) {
                    _j_3665598 = 0i32;
                    _gotoNext = 3665683i32;
                } else if (__value__ == (3665683i32)) {
                    if (_j_3665598 < (_parents.length)) {
                        _gotoNext = 3665617i32;
                    } else {
                        _gotoNext = 3665687i32;
                    };
                } else if (__value__ == (3665687i32)) {
                    if (((_finfo_3665424._parents.length == (_parents.length)) && (_finfo_3665424._name == _start.name.local) : Bool)) {
                        _gotoNext = 3665759i32;
                    } else {
                        _gotoNext = 3665894i32;
                    };
                } else if (__value__ == (3665759i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _d._unmarshal(_finfo_3665424._value(_sv?.__copy__(), true)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3665894i32;
                } else if (__value__ == (3665894i32)) {
                    if ((((_finfo_3665424._parents.length) > (_parents.length) : Bool) && (_finfo_3665424._parents[(_parents.length : stdgo.GoInt)] == _start.name.local) : Bool)) {
                        _gotoNext = 3665982i32;
                    } else {
                        _gotoNext = 3665396i32;
                    };
                } else if (__value__ == (3665982i32)) {
                    _recurse_3665368 = true;
                    _parents = (_finfo_3665424._parents.__slice__(0, ((_parents.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 3666295i32;
                } else if (__value__ == (3666291i32)) {
                    _i_3665396 = 0i32;
                    _gotoNext = 3666292i32;
                } else if (__value__ == (3666292i32)) {
                    if (_i_3665396 < (_tinfo._fields.length)) {
                        _gotoNext = 3665420i32;
                    } else {
                        _gotoNext = 3666295i32;
                    };
                } else if (__value__ == (3666295i32)) {
                    if (!_recurse_3665368) {
                        _gotoNext = 3666307i32;
                    } else {
                        _gotoNext = 3666548i32;
                    };
                } else if (__value__ == (3666307i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3666548i32;
                } else if (__value__ == (3666548i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3666548i32;
                    if (true) {
                        _gotoNext = 3666552i32;
                    } else {
                        _gotoNext = 3667083i32;
                    };
                } else if (__value__ == (3666552i32)) {
                    {
                        var __tmp__ = _d.token();
                        _tok_3666560 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        _gotoNext = 3666609i32;
                    } else {
                        _gotoNext = 3666637i32;
                    };
                } else if (__value__ == (3666609i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3666637i32;
                } else if (__value__ == (3666637i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3666637i32;
                    {
                        final __type__ = _tok_3666560;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                            _t_3666681 = _t;
                            _gotoNext = 3666664i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                            _t_3667054 = _t;
                            _gotoNext = 3667039i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_Token.Token = __type__?.__underlying__();
                            _gotoNext = 3667083i32;
                        };
                    };
                    _gotoNext = 3666548i32;
                } else if (__value__ == (3666664i32)) {
                    {
                        var __tmp__ = _d._unmarshalPath(_tinfo, _sv?.__copy__(), _parents, (stdgo.Go.setRef(_t_3666681) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), _depth);
                        _consumed2_3666838 = __tmp__._0;
                        _err_3666849 = __tmp__._1;
                    };
                    if (_err_3666849 != null) {
                        _gotoNext = 3666920i32;
                    } else {
                        _gotoNext = 3666951i32;
                    };
                } else if (__value__ == (3666920i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_3666849 };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3666951i32;
                } else if (__value__ == (3666951i32)) {
                    if (!_consumed2_3666838) {
                        _gotoNext = 3666965i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3666965i32)) {
                    {
                        _err_3666974 = _d.skip();
                        if (_err_3666974 != null) {
                            _gotoNext = 3667002i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (3667002i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_3666974 };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 0i32;
                } else if (__value__ == (3667039i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : (null : stdgo.Error) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = _t_3667054;
                    _gotoNext = 3667083i32;
                } else if (__value__ == (3667083i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function _unmarshal( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _val:stdgo._internal.reflect.Reflect_Value.Value, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>, _depth:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _i_3659780_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _v_3657953:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _finfo_3659869:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _err_3660379:stdgo.Error = (null : stdgo.Error);
        var _handled_3659802:Bool = false;
        var _typ_3658881:stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _finfo_3660559:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _finfo_3659120:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _typ_3658259:stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _saveXMLData_3657817:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _pv_3657151:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _t_3662975:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _t_3661471:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _t_3663124:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3662903:stdgo.Error = (null : stdgo.Error);
        var _strv_3660331:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _strv_3659949:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _t_3656444:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _pv_3662660:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _savedOffset_3661287:stdgo.GoInt = (0 : stdgo.GoInt);
        var _any_3659822:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3659380:stdgo.GoString = ("" : stdgo.GoString);
        var _tinfo_3657897:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>);
        var _data_3657667:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _tok_3656377:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _consumed_3661476:Bool = false;
        var _i_3659839:stdgo.GoInt = (0 : stdgo.GoInt);
        var _a_3659775:stdgo._internal.encoding.xml.Xml_Attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr);
        var _comment_3657718:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _tok_3661367:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _err_3660090:stdgo.Error = (null : stdgo.Error);
        var _ok_3659658:Bool = false;
        var _saveAny_3657839:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var loopBreak = false;
        var _saveXMLIndex_3657798:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_3662282:stdgo._internal.encoding.xml.Xml_Comment.Comment = new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0);
        var _t_3662028:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement);
        var _i_3660530:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3656447:Bool = false;
        var _err_3658497:stdgo.Error = (null : stdgo.Error);
        var _e_3656660:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3656382:stdgo.Error = (null : stdgo.Error);
        var _n_3658409:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3657922:stdgo.Error = (null : stdgo.Error);
        var _saveComment_3657740:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3662471:stdgo.Error = (null : stdgo.Error);
        var _err_3661838:stdgo.Error = (null : stdgo.Error);
        var _saveXML_3657769:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _saveData_3657689:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3661953:stdgo.Error = (null : stdgo.Error);
        var _sv_3657868:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _t_3662203:stdgo._internal.encoding.xml.Xml_CharData.CharData = new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0);
        var _err_3661372:stdgo.Error = (null : stdgo.Error);
        var _finfo_3660299:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _fv_3659610:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _pv_3657485:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3662758:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3661471;
                    _gotoNext = 3662364i32;
                    var __blank__ = _t_3662203;
                    _gotoNext = 3662364i32;
                    var __blank__ = _t_3662282;
                    _gotoNext = 3662364i32;
                    if (((_depth >= (10000 : stdgo.GoInt) : Bool) || (true && (_depth >= (5000 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3656277i32;
                    } else {
                        _gotoNext = 3656348i32;
                    };
                } else if (__value__ == (3656277i32)) {
                    return stdgo._internal.encoding.xml.Xml__errUnmarshalDepth._errUnmarshalDepth;
                    _gotoNext = 3656348i32;
                } else if (__value__ == (3656348i32)) {
                    if ((_start == null || (_start : Dynamic).__nil__)) {
                        _gotoNext = 3656364i32;
                    } else {
                        _gotoNext = 3656605i32;
                    };
                } else if (__value__ == (3656364i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3656368i32;
                } else if (__value__ == (3656368i32)) {
                    if (true) {
                        _gotoNext = 3656372i32;
                    } else {
                        _gotoNext = 3656605i32;
                    };
                } else if (__value__ == (3656372i32)) {
                    {
                        var __tmp__ = _d.token();
                        _tok_3656377 = __tmp__._0;
                        _err_3656382 = __tmp__._1;
                    };
                    if (_err_3656382 != null) {
                        _gotoNext = 3656416i32;
                    } else {
                        _gotoNext = 3656441i32;
                    };
                } else if (__value__ == (3656416i32)) {
                    return _err_3656382;
                    _gotoNext = 3656441i32;
                } else if (__value__ == (3656441i32)) {
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_tok_3656377 : stdgo._internal.encoding.xml.Xml_StartElement.StartElement)) : stdgo._internal.encoding.xml.Xml_StartElement.StartElement), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement), _1 : false };
                            };
                            _t_3656444 = __tmp__._0?.__copy__();
                            _ok_3656447 = __tmp__._1;
                        };
                        if (_ok_3656447) {
                            _gotoNext = 3656476i32;
                        } else {
                            _gotoNext = 3656605i32;
                        };
                    };
                } else if (__value__ == (3656476i32)) {
                    _start = (stdgo.Go.setRef(_t_3656444) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>);
                    _gotoNext = 3656605i32;
                } else if (__value__ == (3656605i32)) {
                    if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_val.isNil() : Bool)) {
                        _gotoNext = 3656656i32;
                    } else {
                        _gotoNext = 3656745i32;
                    };
                } else if (__value__ == (3656656i32)) {
                    _e_3656660 = _val.elem()?.__copy__();
                    if (((_e_3656660.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_e_3656660.isNil() : Bool)) {
                        _gotoNext = 3656723i32;
                    } else {
                        _gotoNext = 3656745i32;
                    };
                } else if (__value__ == (3656723i32)) {
                    _val = _e_3656660?.__copy__();
                    _gotoNext = 3656745i32;
                } else if (__value__ == (3656745i32)) {
                    if (_val.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3656778i32;
                    } else {
                        _gotoNext = 3656870i32;
                    };
                } else if (__value__ == (3656778i32)) {
                    if (_val.isNil()) {
                        _gotoNext = 3656797i32;
                    } else {
                        _gotoNext = 3656848i32;
                    };
                } else if (__value__ == (3656797i32)) {
                    _val.set(stdgo._internal.reflect.Reflect_new_.new_(_val.type().elem())?.__copy__());
                    _gotoNext = 3656848i32;
                } else if (__value__ == (3656848i32)) {
                    _val = _val.elem()?.__copy__();
                    _gotoNext = 3656870i32;
                } else if (__value__ == (3656870i32)) {
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerType._unmarshalerType) : Bool)) {
                        _gotoNext = 3656934i32;
                    } else {
                        _gotoNext = 3657130i32;
                    };
                } else if (__value__ == (3656934i32)) {
                    return _d._unmarshalInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3657130i32;
                } else if (__value__ == (3657130i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3657147i32;
                    } else {
                        _gotoNext = 3657311i32;
                    };
                } else if (__value__ == (3657147i32)) {
                    _pv_3657151 = _val.addr()?.__copy__();
                    if ((_pv_3657151.canInterface() && _pv_3657151.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerType._unmarshalerType) : Bool)) {
                        _gotoNext = 3657232i32;
                    } else {
                        _gotoNext = 3657311i32;
                    };
                } else if (__value__ == (3657232i32)) {
                    return _d._unmarshalInterface((stdgo.Go.typeAssert((_pv_3657151.interface_() : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3657311i32;
                } else if (__value__ == (3657311i32)) {
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3657379i32;
                    } else {
                        _gotoNext = 3657464i32;
                    };
                } else if (__value__ == (3657379i32)) {
                    return _d._unmarshalTextInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler));
                    _gotoNext = 3657464i32;
                } else if (__value__ == (3657464i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3657481i32;
                    } else {
                        _gotoNext = 3657659i32;
                    };
                } else if (__value__ == (3657481i32)) {
                    _pv_3657485 = _val.addr()?.__copy__();
                    if ((_pv_3657485.canInterface() && _pv_3657485.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3657570i32;
                    } else {
                        _gotoNext = 3657659i32;
                    };
                } else if (__value__ == (3657570i32)) {
                    return _d._unmarshalTextInterface((stdgo.Go.typeAssert((_pv_3657485.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler));
                    _gotoNext = 3657659i32;
                } else if (__value__ == (3657659i32)) {
                    _gotoNext = 3657946i32;
                } else if (__value__ == (3657946i32)) {
                    {
                        _v_3657953 = _val?.__copy__();
                        {
                            final __value__ = _v_3657953.kind();
                            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3658043i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3658237i32;
                            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3658606i32;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3658858i32;
                            } else {
                                _gotoNext = 3657975i32;
                            };
                        };
                    };
                } else if (__value__ == (3657975i32)) {
                    return stdgo._internal.errors.Errors_new_.new_((("unknown type " : stdgo.GoString) + (_v_3657953.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 3661268i32;
                } else if (__value__ == (3658043i32)) {
                    return _d.skip();
                    _gotoNext = 3661268i32;
                } else if (__value__ == (3658237i32)) {
                    _typ_3658259 = _v_3657953.type();
                    if (_typ_3658259.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3658315i32;
                    } else {
                        _gotoNext = 3658409i32;
                    };
                } else if (__value__ == (3658315i32)) {
                    _saveData_3657689 = _v_3657953?.__copy__();
                    _gotoNext = 3661268i32;
                } else if (__value__ == (3658409i32)) {
                    _n_3658409 = _v_3657953.len();
                    _v_3657953.grow((1 : stdgo.GoInt));
                    _v_3657953.setLen((_n_3658409 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    {
                        _err_3658497 = _d._unmarshal(_v_3657953.index(_n_3658409)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_3658497 != null) {
                            _gotoNext = 3658556i32;
                        } else {
                            _gotoNext = 3658593i32;
                        };
                    };
                } else if (__value__ == (3658556i32)) {
                    _v_3657953.setLen(_n_3658409);
                    return _err_3658497;
                    _gotoNext = 3658593i32;
                } else if (__value__ == (3658593i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3661268i32;
                } else if (__value__ == (3658606i32)) {
                    _saveData_3657689 = _v_3657953?.__copy__();
                    _gotoNext = 3661268i32;
                } else if (__value__ == (3658858i32)) {
                    _typ_3658881 = _v_3657953.type();
                    if ((_typ_3658881.string() : String) == (stdgo._internal.encoding.xml.Xml__nameType._nameType.string() : String)) {
                        _gotoNext = 3658918i32;
                    } else {
                        _gotoNext = 3658974i32;
                    };
                } else if (__value__ == (3658918i32)) {
                    _v_3657953.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_start.name))?.__copy__());
                    _gotoNext = 3661268i32;
                } else if (__value__ == (3658974i32)) {
                    _sv_3657868 = _v_3657953?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.encoding.xml.Xml__getTypeInfo._getTypeInfo(_typ_3658881);
                        _tinfo_3657897 = __tmp__._0;
                        _err_3657922 = __tmp__._1;
                    };
                    if (_err_3657922 != null) {
                        _gotoNext = 3659029i32;
                    } else {
                        _gotoNext = 3659091i32;
                    };
                } else if (__value__ == (3659029i32)) {
                    return _err_3657922;
                    _gotoNext = 3659091i32;
                } else if (__value__ == (3659091i32)) {
                    if ((_tinfo_3657897._xmlname != null && ((_tinfo_3657897._xmlname : Dynamic).__nil__ == null || !(_tinfo_3657897._xmlname : Dynamic).__nil__))) {
                        _gotoNext = 3659115i32;
                    } else {
                        _gotoNext = 3659768i32;
                    };
                } else if (__value__ == (3659115i32)) {
                    _finfo_3659120 = _tinfo_3657897._xmlname;
                    if (((_finfo_3659120._name != stdgo.Go.str()) && (_finfo_3659120._name != _start.name.local) : Bool)) {
                        _gotoNext = 3659200i32;
                    } else {
                        _gotoNext = 3659318i32;
                    };
                } else if (__value__ == (3659200i32)) {
                    return stdgo.Go.asInterface((((((("expected element type <" : stdgo.GoString) + _finfo_3659120._name?.__copy__() : stdgo.GoString) + ("> but have <" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _start.name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError));
                    _gotoNext = 3659318i32;
                } else if (__value__ == (3659318i32)) {
                    if (((_finfo_3659120._xmlns != stdgo.Go.str()) && (_finfo_3659120._xmlns != _start.name.space) : Bool)) {
                        _gotoNext = 3659374i32;
                    } else {
                        _gotoNext = 3659610i32;
                    };
                } else if (__value__ == (3659374i32)) {
                    _e_3659380 = ((((("expected element <" : stdgo.GoString) + _finfo_3659120._name?.__copy__() : stdgo.GoString) + ("> in name space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _finfo_3659120._xmlns?.__copy__() : stdgo.GoString) + (" but have " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    if (_start.name.space == (stdgo.Go.str())) {
                        _gotoNext = 3659499i32;
                    } else {
                        _gotoNext = 3659538i32;
                    };
                } else if (__value__ == (3659499i32)) {
                    _e_3659380 = (_e_3659380 + (("no name space" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3659577i32;
                } else if (__value__ == (3659538i32)) {
                    _gotoNext = 3659538i32;
                    _e_3659380 = (_e_3659380 + (_start.name.space)?.__copy__() : stdgo.GoString);
                    var __blank__ = 0i32;
                    _gotoNext = 3659577i32;
                } else if (__value__ == (3659577i32)) {
                    return stdgo.Go.asInterface((_e_3659380 : stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError));
                    _gotoNext = 3659610i32;
                } else if (__value__ == (3659610i32)) {
                    _fv_3659610 = _finfo_3659120._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_fv_3659610.interface_() : stdgo._internal.encoding.xml.Xml_Name.Name)) : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : false };
                            };
                            _ok_3659658 = __tmp__._1;
                        };
                        if (_ok_3659658) {
                            _gotoNext = 3659690i32;
                        } else {
                            _gotoNext = 3659768i32;
                        };
                    };
                } else if (__value__ == (3659690i32)) {
                    _fv_3659610.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_start.name))?.__copy__());
                    _gotoNext = 3659768i32;
                } else if (__value__ == (3659768i32)) {
                    if ((0i32 : stdgo.GoInt) < (_start.attr.length)) {
                        _gotoNext = 3660453i32;
                    } else {
                        _gotoNext = 3660526i32;
                    };
                } else if (__value__ == (3659772i32)) {
                    _i_3659780_0++;
                    _gotoNext = 3660454i32;
                } else if (__value__ == (3659797i32)) {
                    _a_3659775 = _start.attr[(_i_3659780_0 : stdgo.GoInt)];
                    _handled_3659802 = false;
                    _any_3659822 = (-1 : stdgo.GoInt);
                    if ((0i32 : stdgo.GoInt) < (_tinfo_3657897._fields.length)) {
                        _gotoNext = 3660263i32;
                    } else {
                        _gotoNext = 3660269i32;
                    };
                } else if (__value__ == (3659839i32)) {
                    _i_3659839++;
                    _gotoNext = 3660264i32;
                } else if (__value__ == (3659863i32)) {
                    _finfo_3659869 = (stdgo.Go.setRef(_tinfo_3657897._fields[(_i_3659839 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _gotoNext = 3659899i32;
                } else if (__value__ == (3659899i32)) {
                    {
                        final __value__ = (_finfo_3659869._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                        if (__value__ == ((2 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3659932i32;
                        } else if (__value__ == ((66 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3660195i32;
                        } else {
                            _gotoNext = 3659839i32;
                        };
                    };
                } else if (__value__ == (3659932i32)) {
                    _strv_3659949 = _finfo_3659869._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    if (((_a_3659775.name.local == _finfo_3659869._name) && (((_finfo_3659869._xmlns == stdgo.Go.str()) || (_finfo_3659869._xmlns == _a_3659775.name.space) : Bool)) : Bool)) {
                        _gotoNext = 3660079i32;
                    } else {
                        _gotoNext = 3659839i32;
                    };
                } else if (__value__ == (3660079i32)) {
                    {
                        _err_3660090 = _d._unmarshalAttr(_strv_3659949?.__copy__(), _a_3659775?.__copy__());
                        if (_err_3660090 != null) {
                            _gotoNext = 3660134i32;
                        } else {
                            _gotoNext = 3660168i32;
                        };
                    };
                } else if (__value__ == (3660134i32)) {
                    return _err_3660090;
                    _gotoNext = 3660168i32;
                } else if (__value__ == (3660168i32)) {
                    _handled_3659802 = true;
                    _gotoNext = 3659839i32;
                } else if (__value__ == (3660195i32)) {
                    if (_any_3659822 == ((-1 : stdgo.GoInt))) {
                        _gotoNext = 3660232i32;
                    } else {
                        _gotoNext = 3659839i32;
                    };
                } else if (__value__ == (3660232i32)) {
                    _any_3659822 = _i_3659839;
                    _gotoNext = 3659839i32;
                } else if (__value__ == (3660263i32)) {
                    _i_3659839 = 0i32;
                    _gotoNext = 3660264i32;
                } else if (__value__ == (3660264i32)) {
                    if (_i_3659839 < (_tinfo_3657897._fields.length)) {
                        _gotoNext = 3659863i32;
                    } else {
                        _gotoNext = 3660269i32;
                    };
                } else if (__value__ == (3660269i32)) {
                    if ((!_handled_3659802 && (_any_3659822 >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3660293i32;
                    } else {
                        _gotoNext = 3659772i32;
                    };
                } else if (__value__ == (3660293i32)) {
                    _finfo_3660299 = (stdgo.Go.setRef(_tinfo_3657897._fields[(_any_3659822 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _strv_3660331 = _finfo_3660299._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    {
                        _err_3660379 = _d._unmarshalAttr(_strv_3660331?.__copy__(), _a_3659775?.__copy__());
                        if (_err_3660379 != null) {
                            _gotoNext = 3660423i32;
                        } else {
                            _gotoNext = 3659772i32;
                        };
                    };
                } else if (__value__ == (3660423i32)) {
                    return _err_3660379;
                    _gotoNext = 3659772i32;
                } else if (__value__ == (3660453i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _start.attr[(0i32 : stdgo.GoInt)];
                        _i_3659780_0 = __tmp__0;
                        _a_3659775 = __tmp__1;
                    };
                    _gotoNext = 3660454i32;
                } else if (__value__ == (3660454i32)) {
                    if (_i_3659780_0 < (_start.attr.length)) {
                        _gotoNext = 3659797i32;
                    } else {
                        _gotoNext = 3660526i32;
                    };
                } else if (__value__ == (3660526i32)) {
                    if ((0i32 : stdgo.GoInt) < (_tinfo_3657897._fields.length)) {
                        _gotoNext = 3661199i32;
                    } else {
                        _gotoNext = 3661268i32;
                    };
                } else if (__value__ == (3660530i32)) {
                    _i_3660530++;
                    _gotoNext = 3661200i32;
                } else if (__value__ == (3660554i32)) {
                    _finfo_3660559 = (stdgo.Go.setRef(_tinfo_3657897._fields[(_i_3660530 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _gotoNext = 3660588i32;
                } else if (__value__ == (3660588i32)) {
                    {
                        final __value__ = (_finfo_3660559._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                        if (__value__ == ((4 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3660620i32;
                        } else if (__value__ == ((32 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3660732i32;
                        } else if (__value__ == ((64 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((65 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3660841i32;
                        } else if (__value__ == ((16 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3660955i32;
                        } else {
                            _gotoNext = 3660530i32;
                        };
                    };
                } else if (__value__ == (3660620i32)) {
                    if (!_saveData_3657689.isValid()) {
                        _gotoNext = 3660671i32;
                    } else {
                        _gotoNext = 3660530i32;
                    };
                } else if (__value__ == (3660671i32)) {
                    _saveData_3657689 = _finfo_3660559._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    _gotoNext = 3660530i32;
                } else if (__value__ == (3660732i32)) {
                    if (!_saveComment_3657740.isValid()) {
                        _gotoNext = 3660777i32;
                    } else {
                        _gotoNext = 3660530i32;
                    };
                } else if (__value__ == (3660777i32)) {
                    _saveComment_3657740 = _finfo_3660559._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    _gotoNext = 3660530i32;
                } else if (__value__ == (3660841i32)) {
                    if (!_saveAny_3657839.isValid()) {
                        _gotoNext = 3660895i32;
                    } else {
                        _gotoNext = 3660530i32;
                    };
                } else if (__value__ == (3660895i32)) {
                    _saveAny_3657839 = _finfo_3660559._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    _gotoNext = 3660530i32;
                } else if (__value__ == (3660955i32)) {
                    if (!_saveXML_3657769.isValid()) {
                        _gotoNext = 3660997i32;
                    } else {
                        _gotoNext = 3660530i32;
                    };
                } else if (__value__ == (3660997i32)) {
                    _saveXML_3657769 = _finfo_3660559._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    if ((_d._saved == null || (_d._saved : Dynamic).__nil__)) {
                        _gotoNext = 3661070i32;
                    } else {
                        _gotoNext = 3661141i32;
                    };
                } else if (__value__ == (3661070i32)) {
                    _saveXMLIndex_3657798 = (0 : stdgo.GoInt);
                    _d._saved = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                    _gotoNext = 3660530i32;
                } else if (__value__ == (3661141i32)) {
                    _gotoNext = 3661141i32;
                    _saveXMLIndex_3657798 = _d._savedOffset();
                    var __blank__ = 0i32;
                    _gotoNext = 3660530i32;
                } else if (__value__ == (3661199i32)) {
                    _i_3660530 = 0i32;
                    _gotoNext = 3661200i32;
                } else if (__value__ == (3661200i32)) {
                    if (_i_3660530 < (_tinfo_3657897._fields.length)) {
                        _gotoNext = 3660554i32;
                    } else {
                        _gotoNext = 3661268i32;
                    };
                } else if (__value__ == (3661268i32)) {
                    _gotoNext = 3661268i32;
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3661275i32;
                } else if (__value__ == (3661275i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3661279i32;
                    } else {
                        _gotoNext = 3662364i32;
                    };
                } else if (__value__ == (3661279i32)) {
                    if (_saveXML_3657769.isValid()) {
                        _gotoNext = 3661326i32;
                    } else {
                        _gotoNext = 3661367i32;
                    };
                } else if (__value__ == (3661326i32)) {
                    _savedOffset_3661287 = _d._savedOffset();
                    _gotoNext = 3661367i32;
                } else if (__value__ == (3661367i32)) {
                    {
                        var __tmp__ = _d.token();
                        _tok_3661367 = __tmp__._0;
                        _err_3661372 = __tmp__._1;
                    };
                    if (_err_3661372 != null) {
                        _gotoNext = 3661405i32;
                    } else {
                        _gotoNext = 3661427i32;
                    };
                } else if (__value__ == (3661405i32)) {
                    return _err_3661372;
                    _gotoNext = 3661427i32;
                } else if (__value__ == (3661427i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3661427i32;
                    {
                        final __type__ = _tok_3661367;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                            _t_3661471 = _t;
                            _gotoNext = 3661454i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                            _t_3662028 = _t;
                            _gotoNext = 3662013i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_CharData.CharData))) {
                            var _t:stdgo._internal.encoding.xml.Xml_CharData.CharData = __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__().value;
                            _t_3662203 = _t;
                            _gotoNext = 3662190i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_Comment.Comment))) {
                            var _t:stdgo._internal.encoding.xml.Xml_Comment.Comment = __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__().value;
                            _t_3662282 = _t;
                            _gotoNext = 3662270i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_Token.Token = __type__?.__underlying__();
                            _gotoNext = 3662364i32;
                        };
                    };
                    _gotoNext = 3661275i32;
                } else if (__value__ == (3661454i32)) {
                    _consumed_3661476 = false;
                    if (_sv_3657868.isValid()) {
                        _gotoNext = 3661513i32;
                    } else {
                        _gotoNext = 3661931i32;
                    };
                } else if (__value__ == (3661513i32)) {
                    {
                        var __tmp__ = _d._unmarshalPath(_tinfo_3657897, _sv_3657868?.__copy__(), (null : stdgo.Slice<stdgo.GoString>), (stdgo.Go.setRef(_t_3661471) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), _depth);
                        _consumed_3661476 = __tmp__._0;
                        _err_3661372 = __tmp__._1;
                    };
                    if (_err_3661372 != null) {
                        _gotoNext = 3661745i32;
                    } else {
                        _gotoNext = 3661773i32;
                    };
                } else if (__value__ == (3661745i32)) {
                    return _err_3661372;
                    _gotoNext = 3661773i32;
                } else if (__value__ == (3661773i32)) {
                    if ((!_consumed_3661476 && _saveAny_3657839.isValid() : Bool)) {
                        _gotoNext = 3661807i32;
                    } else {
                        _gotoNext = 3661931i32;
                    };
                } else if (__value__ == (3661807i32)) {
                    _consumed_3661476 = true;
                    {
                        _err_3661838 = _d._unmarshal(_saveAny_3657839?.__copy__(), (stdgo.Go.setRef(_t_3661471) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_3661838 != null) {
                            _gotoNext = 3661891i32;
                        } else {
                            _gotoNext = 3661931i32;
                        };
                    };
                } else if (__value__ == (3661891i32)) {
                    return _err_3661838;
                    _gotoNext = 3661931i32;
                } else if (__value__ == (3661931i32)) {
                    if (!_consumed_3661476) {
                        _gotoNext = 3661944i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3661944i32)) {
                    {
                        _err_3661953 = _d.skip();
                        if (_err_3661953 != null) {
                            _gotoNext = 3661981i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (3661981i32)) {
                    return _err_3661953;
                    _gotoNext = 0i32;
                } else if (__value__ == (3662013i32)) {
                    if (_saveXML_3657769.isValid()) {
                        _gotoNext = 3662054i32;
                    } else {
                        _gotoNext = 3662176i32;
                    };
                } else if (__value__ == (3662054i32)) {
                    _saveXMLData_3657817 = (_d._saved.bytes().__slice__(_saveXMLIndex_3657798, _savedOffset_3661287) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_saveXMLIndex_3657798 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3662141i32;
                    } else {
                        _gotoNext = 3662176i32;
                    };
                } else if (__value__ == (3662141i32)) {
                    _d._saved = null;
                    _gotoNext = 3662176i32;
                } else if (__value__ == (3662176i32)) {
                    loopBreak = true;
                    _gotoNext = 3661275i32;
                } else if (__value__ == (3662190i32)) {
                    if (_saveData_3657689.isValid()) {
                        _gotoNext = 3662230i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3662230i32)) {
                    _data_3657667 = (_data_3657667.__append__(...(_t_3662203 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 0i32;
                } else if (__value__ == (3662270i32)) {
                    if (_saveComment_3657740.isValid()) {
                        _gotoNext = 3662312i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3662312i32)) {
                    _comment_3657718 = (_comment_3657718.__append__(...(_t_3662282 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 0i32;
                } else if (__value__ == (3662364i32)) {
                    if (((_saveData_3657689.isValid() && _saveData_3657689.canInterface() : Bool) && _saveData_3657689.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3662464i32;
                    } else {
                        _gotoNext = 3662612i32;
                    };
                } else if (__value__ == (3662464i32)) {
                    {
                        _err_3662471 = (stdgo.Go.typeAssert((_saveData_3657689.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText(_data_3657667);
                        if (_err_3662471 != null) {
                            _gotoNext = 3662558i32;
                        } else {
                            _gotoNext = 3662580i32;
                        };
                    };
                } else if (__value__ == (3662558i32)) {
                    return _err_3662471;
                    _gotoNext = 3662580i32;
                } else if (__value__ == (3662580i32)) {
                    _saveData_3657689 = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
                    _gotoNext = 3662612i32;
                } else if (__value__ == (3662612i32)) {
                    if ((_saveData_3657689.isValid() && _saveData_3657689.canAddr() : Bool)) {
                        _gotoNext = 3662656i32;
                    } else {
                        _gotoNext = 3662900i32;
                    };
                } else if (__value__ == (3662656i32)) {
                    _pv_3662660 = _saveData_3657689.addr()?.__copy__();
                    if ((_pv_3662660.canInterface() && _pv_3662660.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3662750i32;
                    } else {
                        _gotoNext = 3662900i32;
                    };
                } else if (__value__ == (3662750i32)) {
                    {
                        _err_3662758 = (stdgo.Go.typeAssert((_pv_3662660.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText(_data_3657667);
                        if (_err_3662758 != null) {
                            _gotoNext = 3662839i32;
                        } else {
                            _gotoNext = 3662864i32;
                        };
                    };
                } else if (__value__ == (3662839i32)) {
                    return _err_3662758;
                    _gotoNext = 3662864i32;
                } else if (__value__ == (3662864i32)) {
                    _saveData_3657689 = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
                    _gotoNext = 3662900i32;
                } else if (__value__ == (3662900i32)) {
                    {
                        _err_3662903 = stdgo._internal.encoding.xml.Xml__copyValue._copyValue(_saveData_3657689?.__copy__(), _data_3657667);
                        if (_err_3662903 != null) {
                            _gotoNext = 3662948i32;
                        } else {
                            _gotoNext = 3662968i32;
                        };
                    };
                } else if (__value__ == (3662948i32)) {
                    return _err_3662903;
                    _gotoNext = 3662968i32;
                } else if (__value__ == (3662968i32)) {
                    _gotoNext = 3662968i32;
                    {
                        _t_3662975 = _saveComment_3657740?.__copy__();
                        {
                            final __value__ = _t_3662975.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3663005i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3663058i32;
                            } else {
                                _gotoNext = 3663117i32;
                            };
                        };
                    };
                } else if (__value__ == (3663005i32)) {
                    _t_3662975.setString((_comment_3657718 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3663117i32;
                } else if (__value__ == (3663058i32)) {
                    _t_3662975.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_comment_3657718))?.__copy__());
                    _gotoNext = 3663117i32;
                } else if (__value__ == (3663117i32)) {
                    _gotoNext = 3663117i32;
                    {
                        _t_3663124 = _saveXML_3657769?.__copy__();
                        {
                            final __value__ = _t_3663124.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3663150i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3663207i32;
                            } else {
                                _gotoNext = 3663322i32;
                            };
                        };
                    };
                } else if (__value__ == (3663150i32)) {
                    _t_3663124.setString((_saveXMLData_3657817 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3663322i32;
                } else if (__value__ == (3663207i32)) {
                    if (_t_3663124.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3663272i32;
                    } else {
                        _gotoNext = 3663322i32;
                    };
                } else if (__value__ == (3663272i32)) {
                    _t_3663124.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_saveXMLData_3657817))?.__copy__());
                    _gotoNext = 3663322i32;
                } else if (__value__ == (3663322i32)) {
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
