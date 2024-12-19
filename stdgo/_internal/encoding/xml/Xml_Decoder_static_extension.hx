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
        var _b_3733748:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var inputBreak = false;
        var _b0_3733690:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _size_3736898:stdgo.GoInt = (0 : stdgo.GoInt);
        var _name_3735875:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _n_3735511:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _base_3735026:stdgo.GoInt = (0 : stdgo.GoInt);
        var _text_3734838:stdgo.GoString = ("" : stdgo.GoString);
        var _haveText_3734857:Bool = false;
        var _before_3734770:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b1_3733694:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3736895:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _data_3736747:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_3735993:Bool = false;
        var _s_3735445:stdgo.GoString = ("" : stdgo.GoString);
        var _s_3735963:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3734823:Bool = false;
        var _trunc_3733707:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ent_3736336:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3735514:stdgo.Error = (null : stdgo.Error);
        var _start_3735164:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3733751:Bool = false;
        var _buf_3736861:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _r_3735990:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _d._buf.reset();
                    _gotoNext = 3733732i32;
                } else if (__value__ == (3733732i32)) {
                    var __blank__ = 0i32;
                    inputBreak = false;
                    _gotoNext = 3733740i32;
                } else if (__value__ == (3733740i32)) {
                    if (!inputBreak) {
                        _gotoNext = 3733744i32;
                    } else {
                        _gotoNext = 3736747i32;
                    };
                } else if (__value__ == (3733744i32)) {
                    {
                        var __tmp__ = _d._getc();
                        _b_3733748 = __tmp__._0;
                        _ok_3733751 = __tmp__._1;
                    };
                    if (!_ok_3733751) {
                        _gotoNext = 3733775i32;
                    } else {
                        _gotoNext = 3734020i32;
                    };
                } else if (__value__ == (3733775i32)) {
                    if (_cdata) {
                        _gotoNext = 3733789i32;
                    } else {
                        _gotoNext = 3733907i32;
                    };
                } else if (__value__ == (3733789i32)) {
                    if (stdgo.Go.toInterface(_d._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _gotoNext = 3733814i32;
                    } else {
                        _gotoNext = 3733888i32;
                    };
                } else if (__value__ == (3733814i32)) {
                    _d._err = _d._syntaxError(("unexpected EOF in CDATA section" : stdgo.GoString));
                    _gotoNext = 3733888i32;
                } else if (__value__ == (3733888i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3733907i32;
                } else if (__value__ == (3733907i32)) {
                    inputBreak = true;
                    _gotoNext = 3733740i32;
                } else if (__value__ == (3734020i32)) {
                    if (((_b0_3733690 == ((93 : stdgo.GoUInt8)) && _b1_3733694 == ((93 : stdgo.GoUInt8)) : Bool) && (_b_3733748 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3734058i32;
                    } else {
                        _gotoNext = 3734231i32;
                    };
                } else if (__value__ == (3734058i32)) {
                    if (_cdata) {
                        _gotoNext = 3734072i32;
                    } else {
                        _gotoNext = 3734112i32;
                    };
                } else if (__value__ == (3734072i32)) {
                    _trunc_3733707 = (2 : stdgo.GoInt);
                    inputBreak = true;
                    _gotoNext = 3733740i32;
                } else if (__value__ == (3734112i32)) {
                    _d._err = _d._syntaxError(("unescaped ]]> not in CDATA section" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3734231i32;
                } else if (__value__ == (3734231i32)) {
                    if (((_b_3733748 == (60 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                        _gotoNext = 3734253i32;
                    } else {
                        _gotoNext = 3734394i32;
                    };
                } else if (__value__ == (3734253i32)) {
                    if ((_quote >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3734272i32;
                    } else {
                        _gotoNext = 3734359i32;
                    };
                } else if (__value__ == (3734272i32)) {
                    _d._err = _d._syntaxError(("unescaped < inside quoted string" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3734359i32;
                } else if (__value__ == (3734359i32)) {
                    _d._ungetc((60 : stdgo.GoUInt8));
                    inputBreak = true;
                    _gotoNext = 3733740i32;
                } else if (__value__ == (3734394i32)) {
                    if (((_quote >= (0 : stdgo.GoInt) : Bool) && (_b_3733748 == (_quote : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3734428i32;
                    } else {
                        _gotoNext = 3734451i32;
                    };
                } else if (__value__ == (3734428i32)) {
                    inputBreak = true;
                    _gotoNext = 3733740i32;
                } else if (__value__ == (3734451i32)) {
                    if (((_b_3733748 == (38 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                        _gotoNext = 3734473i32;
                    } else {
                        _gotoNext = 3736572i32;
                    };
                } else if (__value__ == (3734473i32)) {
                    _before_3734770 = _d._buf.len();
                    _d._buf.writeByte((38 : stdgo.GoUInt8));
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3733748 = __tmp__._0;
                            _ok_3734823 = __tmp__._1;
                        };
                        if (!_ok_3734823) {
                            _gotoNext = 3734903i32;
                        } else {
                            _gotoNext = 3734928i32;
                        };
                    };
                } else if (__value__ == (3734903i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3734928i32;
                } else if (__value__ == (3734928i32)) {
                    if (_b_3733748 == ((35 : stdgo.GoUInt8))) {
                        _gotoNext = 3734940i32;
                    } else {
                        _gotoNext = 3735671i32;
                    };
                } else if (__value__ == (3734940i32)) {
                    _d._buf.writeByte(_b_3733748);
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3733748 = __tmp__._0;
                            _ok_3734823 = __tmp__._1;
                        };
                        if (!_ok_3734823) {
                            _gotoNext = 3734998i32;
                        } else {
                            _gotoNext = 3735026i32;
                        };
                    };
                } else if (__value__ == (3734998i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3735026i32;
                } else if (__value__ == (3735026i32)) {
                    _base_3735026 = (10 : stdgo.GoInt);
                    if (_b_3733748 == ((120 : stdgo.GoUInt8))) {
                        _gotoNext = 3735053i32;
                    } else {
                        _gotoNext = 3735164i32;
                    };
                } else if (__value__ == (3735053i32)) {
                    _base_3735026 = (16 : stdgo.GoInt);
                    _d._buf.writeByte(_b_3733748);
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3733748 = __tmp__._0;
                            _ok_3734823 = __tmp__._1;
                        };
                        if (!_ok_3734823) {
                            _gotoNext = 3735128i32;
                        } else {
                            _gotoNext = 3735164i32;
                        };
                    };
                } else if (__value__ == (3735128i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3735164i32;
                } else if (__value__ == (3735164i32)) {
                    _start_3735164 = _d._buf.len();
                    var __blank__ = 0i32;
                    _gotoNext = 3735189i32;
                } else if (__value__ == (3735189i32)) {
                    if ((((((48 : stdgo.GoUInt8) <= _b_3733748 : Bool) && (_b_3733748 <= (57 : stdgo.GoUInt8) : Bool) : Bool) || ((_base_3735026 == ((16 : stdgo.GoInt)) && ((97 : stdgo.GoUInt8) <= _b_3733748 : Bool) : Bool) && (_b_3733748 <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || ((_base_3735026 == ((16 : stdgo.GoInt)) && ((65 : stdgo.GoUInt8) <= _b_3733748 : Bool) : Bool) && (_b_3733748 <= (70 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3735300i32;
                    } else {
                        _gotoNext = 3735396i32;
                    };
                } else if (__value__ == (3735300i32)) {
                    _d._buf.writeByte(_b_3733748);
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3733748 = __tmp__._0;
                            _ok_3734823 = __tmp__._1;
                        };
                        if (!_ok_3734823) {
                            _gotoNext = 3735360i32;
                        } else {
                            _gotoNext = 3735396i32;
                        };
                    };
                } else if (__value__ == (3735360i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3735396i32;
                } else if (__value__ == (3735396i32)) {
                    if (_b_3733748 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3735408i32;
                    } else {
                        _gotoNext = 3735438i32;
                    };
                } else if (__value__ == (3735408i32)) {
                    _d._ungetc(_b_3733748);
                    _gotoNext = 3736162i32;
                } else if (__value__ == (3735438i32)) {
                    _gotoNext = 3735438i32;
                    _s_3735445 = ((_d._buf.bytes().__slice__(_start_3735164) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    _d._buf.writeByte((59 : stdgo.GoUInt8));
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_s_3735445?.__copy__(), _base_3735026, (64 : stdgo.GoInt));
                        _n_3735511 = __tmp__._0;
                        _err_3735514 = __tmp__._1;
                    };
                    if (((_err_3735514 == null) && (_n_3735511 <= (1114111i64 : stdgo.GoUInt64) : Bool) : Bool)) {
                        _gotoNext = 3735595i32;
                    } else {
                        _gotoNext = 3736162i32;
                    };
                } else if (__value__ == (3735595i32)) {
                    _text_3734838 = ((_n_3735511 : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
                    _haveText_3734857 = true;
                    _gotoNext = 3736162i32;
                } else if (__value__ == (3735671i32)) {
                    _gotoNext = 3735671i32;
                    _d._ungetc(_b_3733748);
                    if (!_d._readName()) {
                        _gotoNext = 3735710i32;
                    } else {
                        _gotoNext = 3735769i32;
                    };
                } else if (__value__ == (3735710i32)) {
                    if (_d._err != null) {
                        _gotoNext = 3735733i32;
                    } else {
                        _gotoNext = 3735769i32;
                    };
                } else if (__value__ == (3735733i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3735769i32;
                } else if (__value__ == (3735769i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3733748 = __tmp__._0;
                            _ok_3734823 = __tmp__._1;
                        };
                        if (!_ok_3734823) {
                            _gotoNext = 3735798i32;
                        } else {
                            _gotoNext = 3735826i32;
                        };
                    };
                } else if (__value__ == (3735798i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3735826i32;
                } else if (__value__ == (3735826i32)) {
                    if (_b_3733748 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3735838i32;
                    } else {
                        _gotoNext = 3735868i32;
                    };
                } else if (__value__ == (3735838i32)) {
                    _d._ungetc(_b_3733748);
                    _gotoNext = 3736162i32;
                } else if (__value__ == (3735868i32)) {
                    _gotoNext = 3735868i32;
                    _name_3735875 = (_d._buf.bytes().__slice__((_before_3734770 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _d._buf.writeByte((59 : stdgo.GoUInt8));
                    if (stdgo._internal.encoding.xml.Xml__isName._isName(_name_3735875)) {
                        _gotoNext = 3735955i32;
                    } else {
                        _gotoNext = 3736162i32;
                    };
                } else if (__value__ == (3735955i32)) {
                    _s_3735963 = (_name_3735875 : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = (stdgo._internal.encoding.xml.Xml__entity._entity != null && stdgo._internal.encoding.xml.Xml__entity._entity.exists(_s_3735963?.__copy__()) ? { _0 : stdgo._internal.encoding.xml.Xml__entity._entity[_s_3735963?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt32), _1 : false });
                            _r_3735990 = __tmp__._0;
                            _ok_3735993 = __tmp__._1;
                        };
                        if (_ok_3735993) {
                            _gotoNext = 3736013i32;
                        } else if (_d.entity != null) {
                            _gotoNext = 3736094i32;
                        } else {
                            _gotoNext = 3736162i32;
                        };
                    };
                } else if (__value__ == (3736013i32)) {
                    _text_3734838 = (_r_3735990 : stdgo.GoString)?.__copy__();
                    _haveText_3734857 = true;
                    _gotoNext = 3736162i32;
                } else if (__value__ == (3736094i32)) {
                    {
                        var __tmp__ = (_d.entity != null && _d.entity.exists(_s_3735963?.__copy__()) ? { _0 : _d.entity[_s_3735963?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false });
                        _text_3734838 = __tmp__._0?.__copy__();
                        _haveText_3734857 = __tmp__._1;
                    };
                    _gotoNext = 3736162i32;
                } else if (__value__ == (3736162i32)) {
                    if (_haveText_3734857) {
                        _gotoNext = 3736174i32;
                    } else {
                        _gotoNext = 3736276i32;
                    };
                } else if (__value__ == (3736174i32)) {
                    _d._buf.truncate(_before_3734770);
                    _d._buf.writeString(_text_3734838?.__copy__());
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_3733690 = __tmp__0;
                        _b1_3733694 = __tmp__1;
                    };
                    _gotoNext = 3733740i32;
                } else if (__value__ == (3736276i32)) {
                    if (!_d.strict) {
                        _gotoNext = 3736289i32;
                    } else {
                        _gotoNext = 3736336i32;
                    };
                } else if (__value__ == (3736289i32)) {
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_3733690 = __tmp__0;
                        _b1_3733694 = __tmp__1;
                    };
                    _gotoNext = 3733740i32;
                } else if (__value__ == (3736336i32)) {
                    _ent_3736336 = ((_d._buf.bytes().__slice__(_before_3734770) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    if (_ent_3736336[((_ent_3736336.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3736403i32;
                    } else {
                        _gotoNext = 3736442i32;
                    };
                } else if (__value__ == (3736403i32)) {
                    _ent_3736336 = (_ent_3736336 + ((" (no semicolon)" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3736442i32;
                } else if (__value__ == (3736442i32)) {
                    _d._err = _d._syntaxError((("invalid character entity " : stdgo.GoString) + _ent_3736336?.__copy__() : stdgo.GoString)?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3736572i32;
                } else if (__value__ == (3736572i32)) {
                    if (_b_3733748 == ((13 : stdgo.GoUInt8))) {
                        _gotoNext = 3736585i32;
                    } else if (((_b1_3733694 == (13 : stdgo.GoUInt8)) && (_b_3733748 == (10 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3736648i32;
                    } else {
                        _gotoNext = 3736697i32;
                    };
                } else if (__value__ == (3736585i32)) {
                    _d._buf.writeByte((10 : stdgo.GoUInt8));
                    _gotoNext = 3736728i32;
                } else if (__value__ == (3736648i32)) {
                    _gotoNext = 3736728i32;
                } else if (__value__ == (3736697i32)) {
                    _gotoNext = 3736697i32;
                    _d._buf.writeByte(_b_3733748);
                    var __blank__ = 0i32;
                    _gotoNext = 3736728i32;
                } else if (__value__ == (3736728i32)) {
                    {
                        final __tmp__0 = _b1_3733694;
                        final __tmp__1 = _b_3733748;
                        _b0_3733690 = __tmp__0;
                        _b1_3733694 = __tmp__1;
                    };
                    _gotoNext = 3733740i32;
                } else if (__value__ == (3736747i32)) {
                    _data_3736747 = _d._buf.bytes();
                    _data_3736747 = (_data_3736747.__slice__((0 : stdgo.GoInt), ((_data_3736747.length) - _trunc_3733707 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _buf_3736861 = _data_3736747;
                    var __blank__ = 0i32;
                    _gotoNext = 3736874i32;
                } else if (__value__ == (3736874i32)) {
                    if (((_buf_3736861.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3736891i32;
                    } else {
                        _gotoNext = 3737169i32;
                    };
                } else if (__value__ == (3736891i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_buf_3736861);
                        _r_3736895 = __tmp__._0;
                        _size_3736898 = __tmp__._1;
                    };
                    if (((_r_3736895 == (65533 : stdgo.GoInt32)) && (_size_3736898 == (1 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3736965i32;
                    } else {
                        _gotoNext = 3737029i32;
                    };
                } else if (__value__ == (3736965i32)) {
                    _d._err = _d._syntaxError(("invalid UTF-8" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3737029i32;
                } else if (__value__ == (3737029i32)) {
                    _buf_3736861 = (_buf_3736861.__slice__(_size_3736898) : stdgo.Slice<stdgo.GoUInt8>);
                    if (!stdgo._internal.encoding.xml.Xml__isInCharacterRange._isInCharacterRange(_r_3736895)) {
                        _gotoNext = 3737074i32;
                    } else {
                        _gotoNext = 3737169i32;
                    };
                } else if (__value__ == (3737074i32)) {
                    _d._err = _d._syntaxError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("illegal character code %U" : stdgo.GoString), stdgo.Go.toInterface(_r_3736895))?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3737169i32;
                } else if (__value__ == (3737169i32)) {
                    return _data_3736747;
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
        var _data_3727756:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _content_3725815:stdgo.GoString = ("" : stdgo.GoString);
        var _b0_3727046:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b0_3728904:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _inquote_3728065:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _data_3725724:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _attr_3729508:stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
        var _b1_3728908:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _s_3728544:stdgo.GoString = ("" : stdgo.GoString);
        var _depth_3728087:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3727513:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b1_3727050:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _data_3730431:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _a_3730005:stdgo._internal.encoding.xml.Xml_Attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr);
        var _j_3728686:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3728563:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_3727365:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _target_3725372:stdgo.GoString = ("" : stdgo.GoString);
        var _name_3729482:stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
        var _ver_3725842:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3726321:stdgo.Error = (null : stdgo.Error);
        var _name_3724942:stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
        var _data_3724734:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b_3724632:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _empty_3729495:Bool = false;
        var _newr_3726315:stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
        var _enc_3726032:stdgo.GoString = ("" : stdgo.GoString);
        var _b0_3725564:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ok_3724635:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_d._t != null) {
                        _gotoNext = 3724350i32;
                    } else {
                        _gotoNext = 3724377i32;
                    };
                } else if (__value__ == (3724350i32)) {
                    return _d._t.token();
                    _gotoNext = 3724377i32;
                } else if (__value__ == (3724377i32)) {
                    if (_d._err != null) {
                        _gotoNext = 3724393i32;
                    } else {
                        _gotoNext = 3724419i32;
                    };
                } else if (__value__ == (3724393i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3724419i32;
                } else if (__value__ == (3724419i32)) {
                    if (_d._needClose) {
                        _gotoNext = 3724434i32;
                    } else {
                        _gotoNext = 3724632i32;
                    };
                } else if (__value__ == (3724434i32)) {
                    _d._needClose = false;
                    return { _0 : stdgo.Go.toInterface((new stdgo._internal.encoding.xml.Xml_EndElement.EndElement(_d._toClose?.__copy__()) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3724632i32;
                } else if (__value__ == (3724632i32)) {
                    {
                        var __tmp__ = _d._getc();
                        _b_3724632 = __tmp__._0;
                        _ok_3724635 = __tmp__._1;
                    };
                    if (!_ok_3724635) {
                        _gotoNext = 3724658i32;
                    } else {
                        _gotoNext = 3724685i32;
                    };
                } else if (__value__ == (3724658i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3724685i32;
                } else if (__value__ == (3724685i32)) {
                    if (_b_3724632 != ((60 : stdgo.GoUInt8))) {
                        _gotoNext = 3724697i32;
                    } else {
                        _gotoNext = 3724838i32;
                    };
                } else if (__value__ == (3724697i32)) {
                    _d._ungetc(_b_3724632);
                    _data_3724734 = _d._text((-1 : stdgo.GoInt), false);
                    if (_data_3724734 == null) {
                        _gotoNext = 3724777i32;
                    } else {
                        _gotoNext = 3724806i32;
                    };
                } else if (__value__ == (3724777i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3724806i32;
                } else if (__value__ == (3724806i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3724734 : stdgo._internal.encoding.xml.Xml_CharData.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3724838i32;
                } else if (__value__ == (3724838i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3724632 = __tmp__._0;
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3724867i32;
                        } else {
                            _gotoNext = 3724893i32;
                        };
                    };
                } else if (__value__ == (3724867i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3724893i32;
                } else if (__value__ == (3724893i32)) {
                    _gotoNext = 3724893i32;
                    {
                        final __value__ = _b_3724632;
                        if (__value__ == ((47 : stdgo.GoUInt8))) {
                            _gotoNext = 3724905i32;
                        } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                            _gotoNext = 3725323i32;
                        } else if (__value__ == ((33 : stdgo.GoUInt8))) {
                            _gotoNext = 3726651i32;
                        } else {
                            _gotoNext = 3729460i32;
                        };
                    };
                } else if (__value__ == (3724905i32)) {
                    {
                        {
                            var __tmp__ = _d._nsname();
                            _name_3724942 = __tmp__._0?.__copy__();
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3724984i32;
                        } else {
                            _gotoNext = 3725099i32;
                        };
                    };
                } else if (__value__ == (3724984i32)) {
                    if (_d._err == null) {
                        _gotoNext = 3725005i32;
                    } else {
                        _gotoNext = 3725075i32;
                    };
                } else if (__value__ == (3725005i32)) {
                    _d._err = _d._syntaxError(("expected element name after </" : stdgo.GoString));
                    _gotoNext = 3725075i32;
                } else if (__value__ == (3725075i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3725099i32;
                } else if (__value__ == (3725099i32)) {
                    _d._space();
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3724632 = __tmp__._0;
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3725140i32;
                        } else {
                            _gotoNext = 3725169i32;
                        };
                    };
                } else if (__value__ == (3725140i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3725169i32;
                } else if (__value__ == (3725169i32)) {
                    if (_b_3724632 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3725181i32;
                    } else {
                        _gotoNext = 3725292i32;
                    };
                } else if (__value__ == (3725181i32)) {
                    _d._err = _d._syntaxError(((("invalid characters between </" : stdgo.GoString) + _name_3724942.local?.__copy__() : stdgo.GoString) + (" and >" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3725292i32;
                } else if (__value__ == (3725292i32)) {
                    return { _0 : stdgo.Go.toInterface((new stdgo._internal.encoding.xml.Xml_EndElement.EndElement(_name_3724942?.__copy__()) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3729460i32;
                } else if (__value__ == (3725323i32)) {
                    {
                        {
                            var __tmp__ = _d._name();
                            _target_3725372 = __tmp__._0?.__copy__();
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3725418i32;
                        } else {
                            _gotoNext = 3725532i32;
                        };
                    };
                } else if (__value__ == (3725418i32)) {
                    if (_d._err == null) {
                        _gotoNext = 3725439i32;
                    } else {
                        _gotoNext = 3725508i32;
                    };
                } else if (__value__ == (3725439i32)) {
                    _d._err = _d._syntaxError(("expected target name after <?" : stdgo.GoString));
                    _gotoNext = 3725508i32;
                } else if (__value__ == (3725508i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3725532i32;
                } else if (__value__ == (3725532i32)) {
                    _d._space();
                    _d._buf.reset();
                    var __blank__ = 0i32;
                    _gotoNext = 3725574i32;
                } else if (__value__ == (3725574i32)) {
                    if (true) {
                        _gotoNext = 3725578i32;
                    } else {
                        _gotoNext = 3725724i32;
                    };
                } else if (__value__ == (3725578i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3724632 = __tmp__._0;
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3725612i32;
                        } else {
                            _gotoNext = 3725644i32;
                        };
                    };
                } else if (__value__ == (3725612i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3725644i32;
                } else if (__value__ == (3725644i32)) {
                    _d._buf.writeByte(_b_3724632);
                    if (((_b0_3725564 == (63 : stdgo.GoUInt8)) && (_b_3724632 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3725691i32;
                    } else {
                        _gotoNext = 3725711i32;
                    };
                } else if (__value__ == (3725691i32)) {
                    _gotoNext = 3725724i32;
                } else if (__value__ == (3725711i32)) {
                    _b0_3725564 = _b_3724632;
                    _gotoNext = 3725574i32;
                } else if (__value__ == (3725724i32)) {
                    _data_3725724 = _d._buf.bytes();
                    _data_3725724 = (_data_3725724.__slice__((0 : stdgo.GoInt), ((_data_3725724.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_target_3725372 == (("xml" : stdgo.GoString))) {
                        _gotoNext = 3725810i32;
                    } else {
                        _gotoNext = 3726614i32;
                    };
                } else if (__value__ == (3725810i32)) {
                    _content_3725815 = (_data_3725724 : stdgo.GoString)?.__copy__();
                    _ver_3725842 = stdgo._internal.encoding.xml.Xml__procInst._procInst(("version" : stdgo.GoString), _content_3725815?.__copy__())?.__copy__();
                    if (((_ver_3725842 != stdgo.Go.str()) && (_ver_3725842 != ("1.0" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3725910i32;
                    } else {
                        _gotoNext = 3726032i32;
                    };
                } else if (__value__ == (3725910i32)) {
                    _d._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: unsupported version %q; only version 1.0 is supported" : stdgo.GoString), stdgo.Go.toInterface(_ver_3725842));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3726032i32;
                } else if (__value__ == (3726032i32)) {
                    _enc_3726032 = stdgo._internal.encoding.xml.Xml__procInst._procInst(("encoding" : stdgo.GoString), _content_3725815?.__copy__())?.__copy__();
                    if ((((_enc_3726032 != (stdgo.Go.str()) && _enc_3726032 != (("utf-8" : stdgo.GoString)) : Bool) && _enc_3726032 != (("UTF-8" : stdgo.GoString)) : Bool) && !stdgo._internal.strings.Strings_equalFold.equalFold(_enc_3726032?.__copy__(), ("utf-8" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3726157i32;
                    } else {
                        _gotoNext = 3726614i32;
                    };
                } else if (__value__ == (3726157i32)) {
                    if (_d.charsetReader == null) {
                        _gotoNext = 3726189i32;
                    } else {
                        _gotoNext = 3726315i32;
                    };
                } else if (__value__ == (3726189i32)) {
                    _d._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: encoding %q declared but Decoder.CharsetReader is nil" : stdgo.GoString), stdgo.Go.toInterface(_enc_3726032));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3726315i32;
                } else if (__value__ == (3726315i32)) {
                    {
                        var __tmp__ = _d.charsetReader(_enc_3726032?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d._r) : stdgo._internal.io.Io_Reader.Reader)) : stdgo._internal.io.Io_Reader.Reader));
                        _newr_3726315 = __tmp__._0;
                        _err_3726321 = __tmp__._1;
                    };
                    if (_err_3726321 != null) {
                        _gotoNext = 3726384i32;
                    } else {
                        _gotoNext = 3726484i32;
                    };
                } else if (__value__ == (3726384i32)) {
                    _d._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: opening charset %q: %w" : stdgo.GoString), stdgo.Go.toInterface(_enc_3726032), stdgo.Go.toInterface(_err_3726321));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3726484i32;
                } else if (__value__ == (3726484i32)) {
                    if (_newr_3726315 == null) {
                        _gotoNext = 3726499i32;
                    } else {
                        _gotoNext = 3726580i32;
                    };
                } else if (__value__ == (3726499i32)) {
                    throw stdgo.Go.toInterface((("CharsetReader returned a nil Reader for charset " : stdgo.GoString) + _enc_3726032?.__copy__() : stdgo.GoString));
                    _gotoNext = 3726580i32;
                } else if (__value__ == (3726580i32)) {
                    _d._switchToReader(_newr_3726315);
                    _gotoNext = 3726614i32;
                } else if (__value__ == (3726614i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst(_target_3725372?.__copy__(), _data_3725724) : stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3729460i32;
                } else if (__value__ == (3726651i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3724632 = __tmp__._0;
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3726729i32;
                        } else {
                            _gotoNext = 3726758i32;
                        };
                    };
                } else if (__value__ == (3726729i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3726758i32;
                } else if (__value__ == (3726758i32)) {
                    _gotoNext = 3726758i32;
                    {
                        final __value__ = _b_3724632;
                        if (__value__ == ((45 : stdgo.GoUInt8))) {
                            _gotoNext = 3726771i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3727463i32;
                        } else {
                            _gotoNext = 3728028i32;
                        };
                    };
                } else if (__value__ == (3726771i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3724632 = __tmp__._0;
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3726855i32;
                        } else {
                            _gotoNext = 3726887i32;
                        };
                    };
                } else if (__value__ == (3726855i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3726887i32;
                } else if (__value__ == (3726887i32)) {
                    if (_b_3724632 != ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 3726899i32;
                    } else {
                        _gotoNext = 3727025i32;
                    };
                } else if (__value__ == (3726899i32)) {
                    _d._err = _d._syntaxError(("invalid sequence <!- not part of <!--" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3727025i32;
                } else if (__value__ == (3727025i32)) {
                    _d._buf.reset();
                    var __blank__ = 0i32;
                    _gotoNext = 3727061i32;
                } else if (__value__ == (3727061i32)) {
                    if (true) {
                        _gotoNext = 3727065i32;
                    } else {
                        _gotoNext = 3727365i32;
                    };
                } else if (__value__ == (3727065i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3724632 = __tmp__._0;
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3727100i32;
                        } else {
                            _gotoNext = 3727135i32;
                        };
                    };
                } else if (__value__ == (3727100i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3727135i32;
                } else if (__value__ == (3727135i32)) {
                    _d._buf.writeByte(_b_3724632);
                    if (((_b0_3727046 == (45 : stdgo.GoUInt8)) && (_b1_3727050 == (45 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3727184i32;
                    } else {
                        _gotoNext = 3727342i32;
                    };
                } else if (__value__ == (3727184i32)) {
                    if (_b_3724632 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3727203i32;
                    } else {
                        _gotoNext = 3727326i32;
                    };
                } else if (__value__ == (3727203i32)) {
                    _d._err = _d._syntaxError(("invalid sequence \"--\" not allowed in comments" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3727326i32;
                } else if (__value__ == (3727326i32)) {
                    _gotoNext = 3727365i32;
                } else if (__value__ == (3727342i32)) {
                    {
                        final __tmp__0 = _b1_3727050;
                        final __tmp__1 = _b_3724632;
                        _b0_3727046 = __tmp__0;
                        _b1_3727050 = __tmp__1;
                    };
                    _gotoNext = 3727061i32;
                } else if (__value__ == (3727365i32)) {
                    _data_3727365 = _d._buf.bytes();
                    _data_3727365 = (_data_3727365.__slice__((0 : stdgo.GoInt), ((_data_3727365.length) - (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3727365 : stdgo._internal.encoding.xml.Xml_Comment.Comment))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3728028i32;
                } else if (__value__ == (3727463i32)) {
                    _i_3727513 = (0 : stdgo.GoInt);
                    _gotoNext = 3727509i32;
                } else if (__value__ == (3727509i32)) {
                    if ((_i_3727513 < (6 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3727532i32;
                    } else {
                        _gotoNext = 3727756i32;
                    };
                } else if (__value__ == (3727528i32)) {
                    _i_3727513++;
                    _gotoNext = 3727509i32;
                } else if (__value__ == (3727532i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3724632 = __tmp__._0;
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3727567i32;
                        } else {
                            _gotoNext = 3727602i32;
                        };
                    };
                } else if (__value__ == (3727567i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3727602i32;
                } else if (__value__ == (3727602i32)) {
                    if (_b_3724632 != (("CDATA[" : stdgo.GoString)[(_i_3727513 : stdgo.GoInt)])) {
                        _gotoNext = 3727622i32;
                    } else {
                        _gotoNext = 3727528i32;
                    };
                } else if (__value__ == (3727622i32)) {
                    _d._err = _d._syntaxError(("invalid <![ sequence" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3727528i32;
                } else if (__value__ == (3727756i32)) {
                    _data_3727756 = _d._text((-1 : stdgo.GoInt), true);
                    if (_data_3727756 == null) {
                        _gotoNext = 3727799i32;
                    } else {
                        _gotoNext = 3727831i32;
                    };
                } else if (__value__ == (3727799i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3727831i32;
                } else if (__value__ == (3727831i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3727756 : stdgo._internal.encoding.xml.Xml_CharData.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3728028i32;
                } else if (__value__ == (3728028i32)) {
                    _d._buf.reset();
                    _d._buf.writeByte(_b_3724632);
                    _inquote_3728065 = (0 : stdgo.GoUInt8);
                    _depth_3728087 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3728100i32;
                } else if (__value__ == (3728100i32)) {
                    if (true) {
                        _gotoNext = 3728104i32;
                    } else {
                        _gotoNext = 3729370i32;
                    };
                } else if (__value__ == (3728104i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3724632 = __tmp__._0;
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3728138i32;
                        } else {
                            _gotoNext = 3728170i32;
                        };
                    };
                } else if (__value__ == (3728138i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3728170i32;
                } else if (__value__ == (3728170i32)) {
                    if (((_inquote_3728065 == ((0 : stdgo.GoUInt8)) && _b_3724632 == ((62 : stdgo.GoUInt8)) : Bool) && (_depth_3728087 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3728212i32;
                    } else {
                        _gotoNext = 3728231i32;
                    };
                } else if (__value__ == (3728212i32)) {
                    _gotoNext = 3729370i32;
                } else if (__value__ == (3728231i32)) {
                    _gotoNext = 3728231i32;
                    _d._buf.writeByte(_b_3724632);
                    _gotoNext = 3728265i32;
                } else if (__value__ == (3728265i32)) {
                    if (_b_3724632 == (_inquote_3728065)) {
                        _gotoNext = 3728277i32;
                    } else if (_inquote_3728065 != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3728316i32;
                    } else if (((_b_3724632 == (39 : stdgo.GoUInt8)) || (_b_3724632 == (34 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3728375i32;
                    } else if (((_b_3724632 == (62 : stdgo.GoUInt8)) && (_inquote_3728065 == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3728423i32;
                    } else if (((_b_3724632 == (60 : stdgo.GoUInt8)) && (_inquote_3728065 == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3728470i32;
                    } else {
                        _gotoNext = 3729370i32;
                    };
                } else if (__value__ == (3728277i32)) {
                    _inquote_3728065 = (0 : stdgo.GoUInt8);
                    _gotoNext = 3729370i32;
                } else if (__value__ == (3728316i32)) {
                    _gotoNext = 3729370i32;
                } else if (__value__ == (3728375i32)) {
                    _inquote_3728065 = _b_3724632;
                    _gotoNext = 3729370i32;
                } else if (__value__ == (3728423i32)) {
                    _depth_3728087--;
                    _gotoNext = 3729370i32;
                } else if (__value__ == (3728470i32)) {
                    _s_3728544 = ("!--" : stdgo.GoString);
                    _i_3728563 = (0 : stdgo.GoInt);
                    _gotoNext = 3728559i32;
                } else if (__value__ == (3728559i32)) {
                    if ((_i_3728563 < (_s_3728544.length) : Bool)) {
                        _gotoNext = 3728587i32;
                    } else {
                        _gotoNext = 3728835i32;
                    };
                } else if (__value__ == (3728583i32)) {
                    _i_3728563++;
                    _gotoNext = 3728559i32;
                } else if (__value__ == (3728587i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3724632 = __tmp__._0;
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3728623i32;
                        } else {
                            _gotoNext = 3728661i32;
                        };
                    };
                } else if (__value__ == (3728623i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3728661i32;
                } else if (__value__ == (3728661i32)) {
                    if (_b_3724632 != (_s_3728544[(_i_3728563 : stdgo.GoInt)])) {
                        _gotoNext = 3728674i32;
                    } else {
                        _gotoNext = 3728583i32;
                    };
                } else if (__value__ == (3728674i32)) {
                    _j_3728686 = (0 : stdgo.GoInt);
                    _gotoNext = 3728682i32;
                } else if (__value__ == (3728682i32)) {
                    if ((_j_3728686 < _i_3728563 : Bool)) {
                        _gotoNext = 3728705i32;
                    } else {
                        _gotoNext = 3728750i32;
                    };
                } else if (__value__ == (3728705i32)) {
                    _d._buf.writeByte(_s_3728544[(_j_3728686 : stdgo.GoInt)]);
                    _j_3728686++;
                    _gotoNext = 3728682i32;
                } else if (__value__ == (3728750i32)) {
                    _depth_3728087++;
                    _gotoNext = 3728231i32;
                } else if (__value__ == (3728835i32)) {
                    _d._buf.truncate((_d._buf.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3728920i32;
                } else if (__value__ == (3728920i32)) {
                    if (true) {
                        _gotoNext = 3728924i32;
                    } else {
                        _gotoNext = 3729338i32;
                    };
                } else if (__value__ == (3728924i32)) {
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3724632 = __tmp__._0;
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3728960i32;
                        } else {
                            _gotoNext = 3728998i32;
                        };
                    };
                } else if (__value__ == (3728960i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3728998i32;
                } else if (__value__ == (3728998i32)) {
                    if (((_b0_3728904 == ((45 : stdgo.GoUInt8)) && _b1_3728908 == ((45 : stdgo.GoUInt8)) : Bool) && (_b_3724632 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3729036i32;
                    } else {
                        _gotoNext = 3729062i32;
                    };
                } else if (__value__ == (3729036i32)) {
                    _gotoNext = 3729338i32;
                } else if (__value__ == (3729062i32)) {
                    {
                        final __tmp__0 = _b1_3728908;
                        final __tmp__1 = _b_3724632;
                        _b0_3728904 = __tmp__0;
                        _b1_3728908 = __tmp__1;
                    };
                    _gotoNext = 3728920i32;
                } else if (__value__ == (3729338i32)) {
                    _d._buf.writeByte((32 : stdgo.GoUInt8));
                    _gotoNext = 3729370i32;
                } else if (__value__ == (3729370i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_d._buf.bytes() : stdgo._internal.encoding.xml.Xml_Directive.Directive))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3729460i32;
                } else if (__value__ == (3729460i32)) {
                    _d._ungetc(_b_3724632);
                    {
                        {
                            var __tmp__ = _d._nsname();
                            _name_3729482 = __tmp__._0?.__copy__();
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3729555i32;
                        } else {
                            _gotoNext = 3729664i32;
                        };
                    };
                } else if (__value__ == (3729555i32)) {
                    if (_d._err == null) {
                        _gotoNext = 3729575i32;
                    } else {
                        _gotoNext = 3729641i32;
                    };
                } else if (__value__ == (3729575i32)) {
                    _d._err = _d._syntaxError(("expected element name after <" : stdgo.GoString));
                    _gotoNext = 3729641i32;
                } else if (__value__ == (3729641i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3729664i32;
                } else if (__value__ == (3729664i32)) {
                    _attr_3729508 = (new stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr)])) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
                    var __blank__ = 0i32;
                    _gotoNext = 3729681i32;
                } else if (__value__ == (3729681i32)) {
                    if (true) {
                        _gotoNext = 3729685i32;
                    } else {
                        _gotoNext = 3730557i32;
                    };
                } else if (__value__ == (3729685i32)) {
                    _d._space();
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3724632 = __tmp__._0;
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3729730i32;
                        } else {
                            _gotoNext = 3729759i32;
                        };
                    };
                } else if (__value__ == (3729730i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3729759i32;
                } else if (__value__ == (3729759i32)) {
                    if (_b_3724632 == ((47 : stdgo.GoUInt8))) {
                        _gotoNext = 3729771i32;
                    } else {
                        _gotoNext = 3729961i32;
                    };
                } else if (__value__ == (3729771i32)) {
                    _empty_3729495 = true;
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3724632 = __tmp__._0;
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3729821i32;
                        } else {
                            _gotoNext = 3729853i32;
                        };
                    };
                } else if (__value__ == (3729821i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3729853i32;
                } else if (__value__ == (3729853i32)) {
                    if (_b_3724632 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3729865i32;
                    } else {
                        _gotoNext = 3729949i32;
                    };
                } else if (__value__ == (3729865i32)) {
                    _d._err = _d._syntaxError(("expected /> in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3729949i32;
                } else if (__value__ == (3729949i32)) {
                    _gotoNext = 3730557i32;
                } else if (__value__ == (3729961i32)) {
                    if (_b_3724632 == ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3729973i32;
                    } else {
                        _gotoNext = 3729990i32;
                    };
                } else if (__value__ == (3729973i32)) {
                    _gotoNext = 3730557i32;
                } else if (__value__ == (3729990i32)) {
                    _d._ungetc(_b_3724632);
                    _a_3730005 = (new stdgo._internal.encoding.xml.Xml_Attr.Attr() : stdgo._internal.encoding.xml.Xml_Attr.Attr);
                    {
                        {
                            var __tmp__ = _d._nsname();
                            _a_3730005.name = __tmp__._0?.__copy__();
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3730051i32;
                        } else {
                            _gotoNext = 3730170i32;
                        };
                    };
                } else if (__value__ == (3730051i32)) {
                    if (_d._err == null) {
                        _gotoNext = 3730072i32;
                    } else {
                        _gotoNext = 3730146i32;
                    };
                } else if (__value__ == (3730072i32)) {
                    _d._err = _d._syntaxError(("expected attribute name in element" : stdgo.GoString));
                    _gotoNext = 3730146i32;
                } else if (__value__ == (3730146i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3730170i32;
                } else if (__value__ == (3730170i32)) {
                    _d._space();
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b_3724632 = __tmp__._0;
                            _ok_3724635 = __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3730211i32;
                        } else {
                            _gotoNext = 3730240i32;
                        };
                    };
                } else if (__value__ == (3730211i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3730240i32;
                } else if (__value__ == (3730240i32)) {
                    if (_b_3724632 != ((61 : stdgo.GoUInt8))) {
                        _gotoNext = 3730252i32;
                    } else {
                        _gotoNext = 3730413i32;
                    };
                } else if (__value__ == (3730252i32)) {
                    if (_d.strict) {
                        _gotoNext = 3730269i32;
                    } else {
                        _gotoNext = 3730366i32;
                    };
                } else if (__value__ == (3730269i32)) {
                    _d._err = _d._syntaxError(("attribute name without = in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3730366i32;
                } else if (__value__ == (3730366i32)) {
                    _d._ungetc(_b_3724632);
                    _a_3730005.value = _a_3730005.name.local?.__copy__();
                    _gotoNext = 3730530i32;
                } else if (__value__ == (3730413i32)) {
                    _gotoNext = 3730413i32;
                    _d._space();
                    _data_3730431 = _d._attrval();
                    if (_data_3730431 == null) {
                        _gotoNext = 3730469i32;
                    } else {
                        _gotoNext = 3730501i32;
                    };
                } else if (__value__ == (3730469i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    _gotoNext = 3730501i32;
                } else if (__value__ == (3730501i32)) {
                    _a_3730005.value = (_data_3730431 : stdgo.GoString)?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3730530i32;
                } else if (__value__ == (3730530i32)) {
                    _attr_3729508 = (_attr_3729508.__append__(_a_3730005?.__copy__()));
                    _gotoNext = 3729681i32;
                } else if (__value__ == (3730557i32)) {
                    if (_empty_3729495) {
                        _gotoNext = 3730566i32;
                    } else {
                        _gotoNext = 3730612i32;
                    };
                } else if (__value__ == (3730566i32)) {
                    _d._needClose = true;
                    _d._toClose = _name_3729482?.__copy__();
                    _gotoNext = 3730612i32;
                } else if (__value__ == (3730612i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_StartElement.StartElement(_name_3729482?.__copy__(), _attr_3729508) : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))), _1 : (null : stdgo.Error) };
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
        var _j_3697649:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3697447:stdgo.GoInt = (0 : stdgo.GoInt);
        var _recurse_3697419:Bool = false;
        var _err_3699025:stdgo.Error = (null : stdgo.Error);
        var _consumed2_3698889:Bool = false;
        var _t_3699105:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement);
        var _t_3698732:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _err_3698900:stdgo.Error = (null : stdgo.Error);
        var _tok_3698611:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _finfo_3697475:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3698732;
                    _gotoNext = 3699134i32;
                    _recurse_3697419 = false;
                    _gotoNext = 3697436i32;
                } else if (__value__ == (3697436i32)) {
                    if ((0i32 : stdgo.GoInt) < (_tinfo._fields.length)) {
                        _gotoNext = 3698342i32;
                    } else {
                        _gotoNext = 3698346i32;
                    };
                } else if (__value__ == (3697447i32)) {
                    _i_3697447++;
                    _gotoNext = 3698343i32;
                } else if (__value__ == (3697471i32)) {
                    _finfo_3697475 = (stdgo.Go.setRef(_tinfo._fields[(_i_3697447 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    if ((((_finfo_3697475._flags & (1 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || ((_finfo_3697475._parents.length) < (_parents.length) : Bool) : Bool) || (_finfo_3697475._xmlns != (stdgo.Go.str()) && _finfo_3697475._xmlns != (_start.name.space) : Bool) : Bool)) {
                        _gotoNext = 3697625i32;
                    } else {
                        _gotoNext = 3697645i32;
                    };
                } else if (__value__ == (3697625i32)) {
                    _i_3697447++;
                    _gotoNext = 3698343i32;
                } else if (__value__ == (3697645i32)) {
                    if ((0i32 : stdgo.GoInt) < (_parents.length)) {
                        _gotoNext = 3697733i32;
                    } else {
                        _gotoNext = 3697738i32;
                    };
                } else if (__value__ == (3697649i32)) {
                    _j_3697649++;
                    _gotoNext = 3697734i32;
                } else if (__value__ == (3697668i32)) {
                    if (_parents[(_j_3697649 : stdgo.GoInt)] != (_finfo_3697475._parents[(_j_3697649 : stdgo.GoInt)])) {
                        _gotoNext = 3697707i32;
                    } else {
                        _gotoNext = 3697649i32;
                    };
                } else if (__value__ == (3697707i32)) {
                    _i_3697447++;
                    _gotoNext = 3698343i32;
                } else if (__value__ == (3697733i32)) {
                    _j_3697649 = 0i32;
                    _gotoNext = 3697734i32;
                } else if (__value__ == (3697734i32)) {
                    if (_j_3697649 < (_parents.length)) {
                        _gotoNext = 3697668i32;
                    } else {
                        _gotoNext = 3697738i32;
                    };
                } else if (__value__ == (3697738i32)) {
                    if (((_finfo_3697475._parents.length == (_parents.length)) && (_finfo_3697475._name == _start.name.local) : Bool)) {
                        _gotoNext = 3697810i32;
                    } else {
                        _gotoNext = 3697945i32;
                    };
                } else if (__value__ == (3697810i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _d._unmarshal(_finfo_3697475._value(_sv?.__copy__(), true)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3697945i32;
                } else if (__value__ == (3697945i32)) {
                    if ((((_finfo_3697475._parents.length) > (_parents.length) : Bool) && (_finfo_3697475._parents[(_parents.length : stdgo.GoInt)] == _start.name.local) : Bool)) {
                        _gotoNext = 3698033i32;
                    } else {
                        _gotoNext = 3697447i32;
                    };
                } else if (__value__ == (3698033i32)) {
                    _recurse_3697419 = true;
                    _parents = (_finfo_3697475._parents.__slice__(0, ((_parents.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 3698346i32;
                } else if (__value__ == (3698342i32)) {
                    _i_3697447 = 0i32;
                    _gotoNext = 3698343i32;
                } else if (__value__ == (3698343i32)) {
                    if (_i_3697447 < (_tinfo._fields.length)) {
                        _gotoNext = 3697471i32;
                    } else {
                        _gotoNext = 3698346i32;
                    };
                } else if (__value__ == (3698346i32)) {
                    if (!_recurse_3697419) {
                        _gotoNext = 3698358i32;
                    } else {
                        _gotoNext = 3698599i32;
                    };
                } else if (__value__ == (3698358i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3698599i32;
                } else if (__value__ == (3698599i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3698599i32;
                    if (true) {
                        _gotoNext = 3698603i32;
                    } else {
                        _gotoNext = 3699134i32;
                    };
                } else if (__value__ == (3698603i32)) {
                    {
                        var __tmp__ = _d.token();
                        _tok_3698611 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        _gotoNext = 3698660i32;
                    } else {
                        _gotoNext = 3698688i32;
                    };
                } else if (__value__ == (3698660i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3698688i32;
                } else if (__value__ == (3698688i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3698688i32;
                    {
                        final __type__ = _tok_3698611;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                            _t_3698732 = _t;
                            _gotoNext = 3698715i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                            _t_3699105 = _t;
                            _gotoNext = 3699090i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_Token.Token = __type__?.__underlying__();
                            _gotoNext = 3699134i32;
                        };
                    };
                    _gotoNext = 3698599i32;
                } else if (__value__ == (3698715i32)) {
                    {
                        var __tmp__ = _d._unmarshalPath(_tinfo, _sv?.__copy__(), _parents, (stdgo.Go.setRef(_t_3698732) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), _depth);
                        _consumed2_3698889 = __tmp__._0;
                        _err_3698900 = __tmp__._1;
                    };
                    if (_err_3698900 != null) {
                        _gotoNext = 3698971i32;
                    } else {
                        _gotoNext = 3699002i32;
                    };
                } else if (__value__ == (3698971i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_3698900 };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3699002i32;
                } else if (__value__ == (3699002i32)) {
                    if (!_consumed2_3698889) {
                        _gotoNext = 3699016i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3699016i32)) {
                    {
                        _err_3699025 = _d.skip();
                        if (_err_3699025 != null) {
                            _gotoNext = 3699053i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (3699053i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_3699025 };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 0i32;
                } else if (__value__ == (3699090i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : (null : stdgo.Error) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = _t_3699105;
                    _gotoNext = 3699134i32;
                } else if (__value__ == (3699134i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function _unmarshal( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _val:stdgo._internal.reflect.Reflect_Value.Value, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>, _depth:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        var _saveAny_3689890:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _pv_3689202:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _t_3694333:stdgo._internal.encoding.xml.Xml_Comment.Comment = new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0);
        var _err_3693423:stdgo.Error = (null : stdgo.Error);
        var _finfo_3692610:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _n_3690460:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3690548:stdgo.Error = (null : stdgo.Error);
        var _err_3689973:stdgo.Error = (null : stdgo.Error);
        var _err_3694004:stdgo.Error = (null : stdgo.Error);
        var _tok_3693418:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _savedOffset_3693338:stdgo.GoInt = (0 : stdgo.GoInt);
        var _handled_3691853:Bool = false;
        var _strv_3692382:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _tok_3688428:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
        var _pv_3694711:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var loopBreak = false;
        var _fv_3691661:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _ok_3688498:Bool = false;
        var _e_3691431:stdgo.GoString = ("" : stdgo.GoString);
        var _v_3690004:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _saveComment_3689791:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _t_3695026:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _strv_3692000:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _a_3691826:stdgo._internal.encoding.xml.Xml_Attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr);
        var _ok_3691709:Bool = false;
        var _typ_3690932:stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _sv_3689919:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _err_3688433:stdgo.Error = (null : stdgo.Error);
        var _finfo_3692350:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _err_3692141:stdgo.Error = (null : stdgo.Error);
        var _typ_3690310:stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _e_3688711:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _t_3688495:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _t_3694079:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement);
        var _finfo_3691171:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _saveXMLIndex_3689849:stdgo.GoInt = (0 : stdgo.GoInt);
        var _saveData_3689740:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _data_3689718:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _finfo_3691920:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
        var _t_3694254:stdgo._internal.encoding.xml.Xml_CharData.CharData = new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0);
        var _saveXMLData_3689868:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err_3694522:stdgo.Error = (null : stdgo.Error);
        var _i_3692581:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3692430:stdgo.Error = (null : stdgo.Error);
        var _err_3693889:stdgo.Error = (null : stdgo.Error);
        var _t_3693522:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement);
        var _comment_3689769:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _pv_3689536:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _consumed_3693527:Bool = false;
        var _any_3691873:stdgo.GoInt = (0 : stdgo.GoInt);
        var _saveXML_3689820:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _tinfo_3689948:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>);
        var _err_3694954:stdgo.Error = (null : stdgo.Error);
        var _err_3694809:stdgo.Error = (null : stdgo.Error);
        var _t_3695175:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _i_3691890:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3691831_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3693522;
                    _gotoNext = 3694415i32;
                    var __blank__ = _t_3694254;
                    _gotoNext = 3694415i32;
                    var __blank__ = _t_3694333;
                    _gotoNext = 3694415i32;
                    if (((_depth >= (10000 : stdgo.GoInt) : Bool) || (true && (_depth >= (5000 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3688328i32;
                    } else {
                        _gotoNext = 3688399i32;
                    };
                } else if (__value__ == (3688328i32)) {
                    return stdgo._internal.encoding.xml.Xml__errUnmarshalDepth._errUnmarshalDepth;
                    _gotoNext = 3688399i32;
                } else if (__value__ == (3688399i32)) {
                    if ((_start == null || (_start : Dynamic).__nil__)) {
                        _gotoNext = 3688415i32;
                    } else {
                        _gotoNext = 3688656i32;
                    };
                } else if (__value__ == (3688415i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3688419i32;
                } else if (__value__ == (3688419i32)) {
                    if (true) {
                        _gotoNext = 3688423i32;
                    } else {
                        _gotoNext = 3688656i32;
                    };
                } else if (__value__ == (3688423i32)) {
                    {
                        var __tmp__ = _d.token();
                        _tok_3688428 = __tmp__._0;
                        _err_3688433 = __tmp__._1;
                    };
                    if (_err_3688433 != null) {
                        _gotoNext = 3688467i32;
                    } else {
                        _gotoNext = 3688492i32;
                    };
                } else if (__value__ == (3688467i32)) {
                    return _err_3688433;
                    _gotoNext = 3688492i32;
                } else if (__value__ == (3688492i32)) {
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_tok_3688428 : stdgo._internal.encoding.xml.Xml_StartElement.StartElement)) : stdgo._internal.encoding.xml.Xml_StartElement.StartElement), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement), _1 : false };
                            };
                            _t_3688495 = __tmp__._0?.__copy__();
                            _ok_3688498 = __tmp__._1;
                        };
                        if (_ok_3688498) {
                            _gotoNext = 3688527i32;
                        } else {
                            _gotoNext = 3688656i32;
                        };
                    };
                } else if (__value__ == (3688527i32)) {
                    _start = (stdgo.Go.setRef(_t_3688495) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>);
                    _gotoNext = 3688656i32;
                } else if (__value__ == (3688656i32)) {
                    if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_val.isNil() : Bool)) {
                        _gotoNext = 3688707i32;
                    } else {
                        _gotoNext = 3688796i32;
                    };
                } else if (__value__ == (3688707i32)) {
                    _e_3688711 = _val.elem()?.__copy__();
                    if (((_e_3688711.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_e_3688711.isNil() : Bool)) {
                        _gotoNext = 3688774i32;
                    } else {
                        _gotoNext = 3688796i32;
                    };
                } else if (__value__ == (3688774i32)) {
                    _val = _e_3688711?.__copy__();
                    _gotoNext = 3688796i32;
                } else if (__value__ == (3688796i32)) {
                    if (_val.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3688829i32;
                    } else {
                        _gotoNext = 3688921i32;
                    };
                } else if (__value__ == (3688829i32)) {
                    if (_val.isNil()) {
                        _gotoNext = 3688848i32;
                    } else {
                        _gotoNext = 3688899i32;
                    };
                } else if (__value__ == (3688848i32)) {
                    _val.set(stdgo._internal.reflect.Reflect_new_.new_(_val.type().elem())?.__copy__());
                    _gotoNext = 3688899i32;
                } else if (__value__ == (3688899i32)) {
                    _val = _val.elem()?.__copy__();
                    _gotoNext = 3688921i32;
                } else if (__value__ == (3688921i32)) {
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerType._unmarshalerType) : Bool)) {
                        _gotoNext = 3688985i32;
                    } else {
                        _gotoNext = 3689181i32;
                    };
                } else if (__value__ == (3688985i32)) {
                    return _d._unmarshalInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3689181i32;
                } else if (__value__ == (3689181i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3689198i32;
                    } else {
                        _gotoNext = 3689362i32;
                    };
                } else if (__value__ == (3689198i32)) {
                    _pv_3689202 = _val.addr()?.__copy__();
                    if ((_pv_3689202.canInterface() && _pv_3689202.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerType._unmarshalerType) : Bool)) {
                        _gotoNext = 3689283i32;
                    } else {
                        _gotoNext = 3689362i32;
                    };
                } else if (__value__ == (3689283i32)) {
                    return _d._unmarshalInterface((stdgo.Go.typeAssert((_pv_3689202.interface_() : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3689362i32;
                } else if (__value__ == (3689362i32)) {
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3689430i32;
                    } else {
                        _gotoNext = 3689515i32;
                    };
                } else if (__value__ == (3689430i32)) {
                    return _d._unmarshalTextInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler));
                    _gotoNext = 3689515i32;
                } else if (__value__ == (3689515i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3689532i32;
                    } else {
                        _gotoNext = 3689710i32;
                    };
                } else if (__value__ == (3689532i32)) {
                    _pv_3689536 = _val.addr()?.__copy__();
                    if ((_pv_3689536.canInterface() && _pv_3689536.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3689621i32;
                    } else {
                        _gotoNext = 3689710i32;
                    };
                } else if (__value__ == (3689621i32)) {
                    return _d._unmarshalTextInterface((stdgo.Go.typeAssert((_pv_3689536.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler));
                    _gotoNext = 3689710i32;
                } else if (__value__ == (3689710i32)) {
                    _gotoNext = 3689997i32;
                } else if (__value__ == (3689997i32)) {
                    {
                        _v_3690004 = _val?.__copy__();
                        {
                            final __value__ = _v_3690004.kind();
                            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3690094i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3690288i32;
                            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3690657i32;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3690909i32;
                            } else {
                                _gotoNext = 3690026i32;
                            };
                        };
                    };
                } else if (__value__ == (3690026i32)) {
                    return stdgo._internal.errors.Errors_new_.new_((("unknown type " : stdgo.GoString) + (_v_3690004.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 3693319i32;
                } else if (__value__ == (3690094i32)) {
                    return _d.skip();
                    _gotoNext = 3693319i32;
                } else if (__value__ == (3690288i32)) {
                    _typ_3690310 = _v_3690004.type();
                    if (_typ_3690310.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3690366i32;
                    } else {
                        _gotoNext = 3690460i32;
                    };
                } else if (__value__ == (3690366i32)) {
                    _saveData_3689740 = _v_3690004?.__copy__();
                    _gotoNext = 3693319i32;
                } else if (__value__ == (3690460i32)) {
                    _n_3690460 = _v_3690004.len();
                    _v_3690004.grow((1 : stdgo.GoInt));
                    _v_3690004.setLen((_n_3690460 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    {
                        _err_3690548 = _d._unmarshal(_v_3690004.index(_n_3690460)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_3690548 != null) {
                            _gotoNext = 3690607i32;
                        } else {
                            _gotoNext = 3690644i32;
                        };
                    };
                } else if (__value__ == (3690607i32)) {
                    _v_3690004.setLen(_n_3690460);
                    return _err_3690548;
                    _gotoNext = 3690644i32;
                } else if (__value__ == (3690644i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3693319i32;
                } else if (__value__ == (3690657i32)) {
                    _saveData_3689740 = _v_3690004?.__copy__();
                    _gotoNext = 3693319i32;
                } else if (__value__ == (3690909i32)) {
                    _typ_3690932 = _v_3690004.type();
                    if ((_typ_3690932.string() : String) == (stdgo._internal.encoding.xml.Xml__nameType._nameType.string() : String)) {
                        _gotoNext = 3690969i32;
                    } else {
                        _gotoNext = 3691025i32;
                    };
                } else if (__value__ == (3690969i32)) {
                    _v_3690004.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_start.name))?.__copy__());
                    _gotoNext = 3693319i32;
                } else if (__value__ == (3691025i32)) {
                    _sv_3689919 = _v_3690004?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.encoding.xml.Xml__getTypeInfo._getTypeInfo(_typ_3690932);
                        _tinfo_3689948 = __tmp__._0;
                        _err_3689973 = __tmp__._1;
                    };
                    if (_err_3689973 != null) {
                        _gotoNext = 3691080i32;
                    } else {
                        _gotoNext = 3691142i32;
                    };
                } else if (__value__ == (3691080i32)) {
                    return _err_3689973;
                    _gotoNext = 3691142i32;
                } else if (__value__ == (3691142i32)) {
                    if ((_tinfo_3689948._xmlname != null && ((_tinfo_3689948._xmlname : Dynamic).__nil__ == null || !(_tinfo_3689948._xmlname : Dynamic).__nil__))) {
                        _gotoNext = 3691166i32;
                    } else {
                        _gotoNext = 3691819i32;
                    };
                } else if (__value__ == (3691166i32)) {
                    _finfo_3691171 = _tinfo_3689948._xmlname;
                    if (((_finfo_3691171._name != stdgo.Go.str()) && (_finfo_3691171._name != _start.name.local) : Bool)) {
                        _gotoNext = 3691251i32;
                    } else {
                        _gotoNext = 3691369i32;
                    };
                } else if (__value__ == (3691251i32)) {
                    return stdgo.Go.asInterface((((((("expected element type <" : stdgo.GoString) + _finfo_3691171._name?.__copy__() : stdgo.GoString) + ("> but have <" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _start.name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError));
                    _gotoNext = 3691369i32;
                } else if (__value__ == (3691369i32)) {
                    if (((_finfo_3691171._xmlns != stdgo.Go.str()) && (_finfo_3691171._xmlns != _start.name.space) : Bool)) {
                        _gotoNext = 3691425i32;
                    } else {
                        _gotoNext = 3691661i32;
                    };
                } else if (__value__ == (3691425i32)) {
                    _e_3691431 = ((((("expected element <" : stdgo.GoString) + _finfo_3691171._name?.__copy__() : stdgo.GoString) + ("> in name space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _finfo_3691171._xmlns?.__copy__() : stdgo.GoString) + (" but have " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    if (_start.name.space == (stdgo.Go.str())) {
                        _gotoNext = 3691550i32;
                    } else {
                        _gotoNext = 3691589i32;
                    };
                } else if (__value__ == (3691550i32)) {
                    _e_3691431 = (_e_3691431 + (("no name space" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3691628i32;
                } else if (__value__ == (3691589i32)) {
                    _gotoNext = 3691589i32;
                    _e_3691431 = (_e_3691431 + (_start.name.space)?.__copy__() : stdgo.GoString);
                    var __blank__ = 0i32;
                    _gotoNext = 3691628i32;
                } else if (__value__ == (3691628i32)) {
                    return stdgo.Go.asInterface((_e_3691431 : stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError));
                    _gotoNext = 3691661i32;
                } else if (__value__ == (3691661i32)) {
                    _fv_3691661 = _finfo_3691171._value(_sv_3689919?.__copy__(), true)?.__copy__();
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_fv_3691661.interface_() : stdgo._internal.encoding.xml.Xml_Name.Name)) : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : false };
                            };
                            _ok_3691709 = __tmp__._1;
                        };
                        if (_ok_3691709) {
                            _gotoNext = 3691741i32;
                        } else {
                            _gotoNext = 3691819i32;
                        };
                    };
                } else if (__value__ == (3691741i32)) {
                    _fv_3691661.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_start.name))?.__copy__());
                    _gotoNext = 3691819i32;
                } else if (__value__ == (3691819i32)) {
                    if ((0i32 : stdgo.GoInt) < (_start.attr.length)) {
                        _gotoNext = 3692504i32;
                    } else {
                        _gotoNext = 3692577i32;
                    };
                } else if (__value__ == (3691823i32)) {
                    _i_3691831_0++;
                    _gotoNext = 3692505i32;
                } else if (__value__ == (3691848i32)) {
                    _a_3691826 = _start.attr[(_i_3691831_0 : stdgo.GoInt)];
                    _handled_3691853 = false;
                    _any_3691873 = (-1 : stdgo.GoInt);
                    if ((0i32 : stdgo.GoInt) < (_tinfo_3689948._fields.length)) {
                        _gotoNext = 3692314i32;
                    } else {
                        _gotoNext = 3692320i32;
                    };
                } else if (__value__ == (3691890i32)) {
                    _i_3691890++;
                    _gotoNext = 3692315i32;
                } else if (__value__ == (3691914i32)) {
                    _finfo_3691920 = (stdgo.Go.setRef(_tinfo_3689948._fields[(_i_3691890 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _gotoNext = 3691950i32;
                } else if (__value__ == (3691950i32)) {
                    {
                        final __value__ = (_finfo_3691920._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                        if (__value__ == ((2 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3691983i32;
                        } else if (__value__ == ((66 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3692246i32;
                        } else {
                            _gotoNext = 3691890i32;
                        };
                    };
                } else if (__value__ == (3691983i32)) {
                    _strv_3692000 = _finfo_3691920._value(_sv_3689919?.__copy__(), true)?.__copy__();
                    if (((_a_3691826.name.local == _finfo_3691920._name) && (((_finfo_3691920._xmlns == stdgo.Go.str()) || (_finfo_3691920._xmlns == _a_3691826.name.space) : Bool)) : Bool)) {
                        _gotoNext = 3692130i32;
                    } else {
                        _gotoNext = 3691890i32;
                    };
                } else if (__value__ == (3692130i32)) {
                    {
                        _err_3692141 = _d._unmarshalAttr(_strv_3692000?.__copy__(), _a_3691826?.__copy__());
                        if (_err_3692141 != null) {
                            _gotoNext = 3692185i32;
                        } else {
                            _gotoNext = 3692219i32;
                        };
                    };
                } else if (__value__ == (3692185i32)) {
                    return _err_3692141;
                    _gotoNext = 3692219i32;
                } else if (__value__ == (3692219i32)) {
                    _handled_3691853 = true;
                    _gotoNext = 3691890i32;
                } else if (__value__ == (3692246i32)) {
                    if (_any_3691873 == ((-1 : stdgo.GoInt))) {
                        _gotoNext = 3692283i32;
                    } else {
                        _gotoNext = 3691890i32;
                    };
                } else if (__value__ == (3692283i32)) {
                    _any_3691873 = _i_3691890;
                    _gotoNext = 3691890i32;
                } else if (__value__ == (3692314i32)) {
                    _i_3691890 = 0i32;
                    _gotoNext = 3692315i32;
                } else if (__value__ == (3692315i32)) {
                    if (_i_3691890 < (_tinfo_3689948._fields.length)) {
                        _gotoNext = 3691914i32;
                    } else {
                        _gotoNext = 3692320i32;
                    };
                } else if (__value__ == (3692320i32)) {
                    if ((!_handled_3691853 && (_any_3691873 >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 3692344i32;
                    } else {
                        _gotoNext = 3691823i32;
                    };
                } else if (__value__ == (3692344i32)) {
                    _finfo_3692350 = (stdgo.Go.setRef(_tinfo_3689948._fields[(_any_3691873 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _strv_3692382 = _finfo_3692350._value(_sv_3689919?.__copy__(), true)?.__copy__();
                    {
                        _err_3692430 = _d._unmarshalAttr(_strv_3692382?.__copy__(), _a_3691826?.__copy__());
                        if (_err_3692430 != null) {
                            _gotoNext = 3692474i32;
                        } else {
                            _gotoNext = 3691823i32;
                        };
                    };
                } else if (__value__ == (3692474i32)) {
                    return _err_3692430;
                    _gotoNext = 3691823i32;
                } else if (__value__ == (3692504i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _start.attr[(0i32 : stdgo.GoInt)];
                        _i_3691831_0 = __tmp__0;
                        _a_3691826 = __tmp__1;
                    };
                    _gotoNext = 3692505i32;
                } else if (__value__ == (3692505i32)) {
                    if (_i_3691831_0 < (_start.attr.length)) {
                        _gotoNext = 3691848i32;
                    } else {
                        _gotoNext = 3692577i32;
                    };
                } else if (__value__ == (3692577i32)) {
                    if ((0i32 : stdgo.GoInt) < (_tinfo_3689948._fields.length)) {
                        _gotoNext = 3693250i32;
                    } else {
                        _gotoNext = 3693319i32;
                    };
                } else if (__value__ == (3692581i32)) {
                    _i_3692581++;
                    _gotoNext = 3693251i32;
                } else if (__value__ == (3692605i32)) {
                    _finfo_3692610 = (stdgo.Go.setRef(_tinfo_3689948._fields[(_i_3692581 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                    _gotoNext = 3692639i32;
                } else if (__value__ == (3692639i32)) {
                    {
                        final __value__ = (_finfo_3692610._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                        if (__value__ == ((4 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3692671i32;
                        } else if (__value__ == ((32 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3692783i32;
                        } else if (__value__ == ((64 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((65 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3692892i32;
                        } else if (__value__ == ((16 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                            _gotoNext = 3693006i32;
                        } else {
                            _gotoNext = 3692581i32;
                        };
                    };
                } else if (__value__ == (3692671i32)) {
                    if (!_saveData_3689740.isValid()) {
                        _gotoNext = 3692722i32;
                    } else {
                        _gotoNext = 3692581i32;
                    };
                } else if (__value__ == (3692722i32)) {
                    _saveData_3689740 = _finfo_3692610._value(_sv_3689919?.__copy__(), true)?.__copy__();
                    _gotoNext = 3692581i32;
                } else if (__value__ == (3692783i32)) {
                    if (!_saveComment_3689791.isValid()) {
                        _gotoNext = 3692828i32;
                    } else {
                        _gotoNext = 3692581i32;
                    };
                } else if (__value__ == (3692828i32)) {
                    _saveComment_3689791 = _finfo_3692610._value(_sv_3689919?.__copy__(), true)?.__copy__();
                    _gotoNext = 3692581i32;
                } else if (__value__ == (3692892i32)) {
                    if (!_saveAny_3689890.isValid()) {
                        _gotoNext = 3692946i32;
                    } else {
                        _gotoNext = 3692581i32;
                    };
                } else if (__value__ == (3692946i32)) {
                    _saveAny_3689890 = _finfo_3692610._value(_sv_3689919?.__copy__(), true)?.__copy__();
                    _gotoNext = 3692581i32;
                } else if (__value__ == (3693006i32)) {
                    if (!_saveXML_3689820.isValid()) {
                        _gotoNext = 3693048i32;
                    } else {
                        _gotoNext = 3692581i32;
                    };
                } else if (__value__ == (3693048i32)) {
                    _saveXML_3689820 = _finfo_3692610._value(_sv_3689919?.__copy__(), true)?.__copy__();
                    if ((_d._saved == null || (_d._saved : Dynamic).__nil__)) {
                        _gotoNext = 3693121i32;
                    } else {
                        _gotoNext = 3693192i32;
                    };
                } else if (__value__ == (3693121i32)) {
                    _saveXMLIndex_3689849 = (0 : stdgo.GoInt);
                    _d._saved = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                    _gotoNext = 3692581i32;
                } else if (__value__ == (3693192i32)) {
                    _gotoNext = 3693192i32;
                    _saveXMLIndex_3689849 = _d._savedOffset();
                    var __blank__ = 0i32;
                    _gotoNext = 3692581i32;
                } else if (__value__ == (3693250i32)) {
                    _i_3692581 = 0i32;
                    _gotoNext = 3693251i32;
                } else if (__value__ == (3693251i32)) {
                    if (_i_3692581 < (_tinfo_3689948._fields.length)) {
                        _gotoNext = 3692605i32;
                    } else {
                        _gotoNext = 3693319i32;
                    };
                } else if (__value__ == (3693319i32)) {
                    _gotoNext = 3693319i32;
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3693326i32;
                } else if (__value__ == (3693326i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3693330i32;
                    } else {
                        _gotoNext = 3694415i32;
                    };
                } else if (__value__ == (3693330i32)) {
                    if (_saveXML_3689820.isValid()) {
                        _gotoNext = 3693377i32;
                    } else {
                        _gotoNext = 3693418i32;
                    };
                } else if (__value__ == (3693377i32)) {
                    _savedOffset_3693338 = _d._savedOffset();
                    _gotoNext = 3693418i32;
                } else if (__value__ == (3693418i32)) {
                    {
                        var __tmp__ = _d.token();
                        _tok_3693418 = __tmp__._0;
                        _err_3693423 = __tmp__._1;
                    };
                    if (_err_3693423 != null) {
                        _gotoNext = 3693456i32;
                    } else {
                        _gotoNext = 3693478i32;
                    };
                } else if (__value__ == (3693456i32)) {
                    return _err_3693423;
                    _gotoNext = 3693478i32;
                } else if (__value__ == (3693478i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3693478i32;
                    {
                        final __type__ = _tok_3693418;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                            _t_3693522 = _t;
                            _gotoNext = 3693505i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                            _t_3694079 = _t;
                            _gotoNext = 3694064i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_CharData.CharData))) {
                            var _t:stdgo._internal.encoding.xml.Xml_CharData.CharData = __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__().value;
                            _t_3694254 = _t;
                            _gotoNext = 3694241i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_Comment.Comment))) {
                            var _t:stdgo._internal.encoding.xml.Xml_Comment.Comment = __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__().value;
                            _t_3694333 = _t;
                            _gotoNext = 3694321i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_Token.Token = __type__?.__underlying__();
                            _gotoNext = 3694415i32;
                        };
                    };
                    _gotoNext = 3693326i32;
                } else if (__value__ == (3693505i32)) {
                    _consumed_3693527 = false;
                    if (_sv_3689919.isValid()) {
                        _gotoNext = 3693564i32;
                    } else {
                        _gotoNext = 3693982i32;
                    };
                } else if (__value__ == (3693564i32)) {
                    {
                        var __tmp__ = _d._unmarshalPath(_tinfo_3689948, _sv_3689919?.__copy__(), (null : stdgo.Slice<stdgo.GoString>), (stdgo.Go.setRef(_t_3693522) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), _depth);
                        _consumed_3693527 = __tmp__._0;
                        _err_3693423 = __tmp__._1;
                    };
                    if (_err_3693423 != null) {
                        _gotoNext = 3693796i32;
                    } else {
                        _gotoNext = 3693824i32;
                    };
                } else if (__value__ == (3693796i32)) {
                    return _err_3693423;
                    _gotoNext = 3693824i32;
                } else if (__value__ == (3693824i32)) {
                    if ((!_consumed_3693527 && _saveAny_3689890.isValid() : Bool)) {
                        _gotoNext = 3693858i32;
                    } else {
                        _gotoNext = 3693982i32;
                    };
                } else if (__value__ == (3693858i32)) {
                    _consumed_3693527 = true;
                    {
                        _err_3693889 = _d._unmarshal(_saveAny_3689890?.__copy__(), (stdgo.Go.setRef(_t_3693522) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if (_err_3693889 != null) {
                            _gotoNext = 3693942i32;
                        } else {
                            _gotoNext = 3693982i32;
                        };
                    };
                } else if (__value__ == (3693942i32)) {
                    return _err_3693889;
                    _gotoNext = 3693982i32;
                } else if (__value__ == (3693982i32)) {
                    if (!_consumed_3693527) {
                        _gotoNext = 3693995i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3693995i32)) {
                    {
                        _err_3694004 = _d.skip();
                        if (_err_3694004 != null) {
                            _gotoNext = 3694032i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (3694032i32)) {
                    return _err_3694004;
                    _gotoNext = 0i32;
                } else if (__value__ == (3694064i32)) {
                    if (_saveXML_3689820.isValid()) {
                        _gotoNext = 3694105i32;
                    } else {
                        _gotoNext = 3694227i32;
                    };
                } else if (__value__ == (3694105i32)) {
                    _saveXMLData_3689868 = (_d._saved.bytes().__slice__(_saveXMLIndex_3689849, _savedOffset_3693338) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_saveXMLIndex_3689849 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3694192i32;
                    } else {
                        _gotoNext = 3694227i32;
                    };
                } else if (__value__ == (3694192i32)) {
                    _d._saved = null;
                    _gotoNext = 3694227i32;
                } else if (__value__ == (3694227i32)) {
                    loopBreak = true;
                    _gotoNext = 3693326i32;
                } else if (__value__ == (3694241i32)) {
                    if (_saveData_3689740.isValid()) {
                        _gotoNext = 3694281i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3694281i32)) {
                    _data_3689718 = (_data_3689718.__append__(...(_t_3694254 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 0i32;
                } else if (__value__ == (3694321i32)) {
                    if (_saveComment_3689791.isValid()) {
                        _gotoNext = 3694363i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3694363i32)) {
                    _comment_3689769 = (_comment_3689769.__append__(...(_t_3694333 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 0i32;
                } else if (__value__ == (3694415i32)) {
                    if (((_saveData_3689740.isValid() && _saveData_3689740.canInterface() : Bool) && _saveData_3689740.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3694515i32;
                    } else {
                        _gotoNext = 3694663i32;
                    };
                } else if (__value__ == (3694515i32)) {
                    {
                        _err_3694522 = (stdgo.Go.typeAssert((_saveData_3689740.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText(_data_3689718);
                        if (_err_3694522 != null) {
                            _gotoNext = 3694609i32;
                        } else {
                            _gotoNext = 3694631i32;
                        };
                    };
                } else if (__value__ == (3694609i32)) {
                    return _err_3694522;
                    _gotoNext = 3694631i32;
                } else if (__value__ == (3694631i32)) {
                    _saveData_3689740 = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
                    _gotoNext = 3694663i32;
                } else if (__value__ == (3694663i32)) {
                    if ((_saveData_3689740.isValid() && _saveData_3689740.canAddr() : Bool)) {
                        _gotoNext = 3694707i32;
                    } else {
                        _gotoNext = 3694951i32;
                    };
                } else if (__value__ == (3694707i32)) {
                    _pv_3694711 = _saveData_3689740.addr()?.__copy__();
                    if ((_pv_3694711.canInterface() && _pv_3694711.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3694801i32;
                    } else {
                        _gotoNext = 3694951i32;
                    };
                } else if (__value__ == (3694801i32)) {
                    {
                        _err_3694809 = (stdgo.Go.typeAssert((_pv_3694711.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText(_data_3689718);
                        if (_err_3694809 != null) {
                            _gotoNext = 3694890i32;
                        } else {
                            _gotoNext = 3694915i32;
                        };
                    };
                } else if (__value__ == (3694890i32)) {
                    return _err_3694809;
                    _gotoNext = 3694915i32;
                } else if (__value__ == (3694915i32)) {
                    _saveData_3689740 = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
                    _gotoNext = 3694951i32;
                } else if (__value__ == (3694951i32)) {
                    {
                        _err_3694954 = stdgo._internal.encoding.xml.Xml__copyValue._copyValue(_saveData_3689740?.__copy__(), _data_3689718);
                        if (_err_3694954 != null) {
                            _gotoNext = 3694999i32;
                        } else {
                            _gotoNext = 3695019i32;
                        };
                    };
                } else if (__value__ == (3694999i32)) {
                    return _err_3694954;
                    _gotoNext = 3695019i32;
                } else if (__value__ == (3695019i32)) {
                    _gotoNext = 3695019i32;
                    {
                        _t_3695026 = _saveComment_3689791?.__copy__();
                        {
                            final __value__ = _t_3695026.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3695056i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3695109i32;
                            } else {
                                _gotoNext = 3695168i32;
                            };
                        };
                    };
                } else if (__value__ == (3695056i32)) {
                    _t_3695026.setString((_comment_3689769 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3695168i32;
                } else if (__value__ == (3695109i32)) {
                    _t_3695026.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_comment_3689769))?.__copy__());
                    _gotoNext = 3695168i32;
                } else if (__value__ == (3695168i32)) {
                    _gotoNext = 3695168i32;
                    {
                        _t_3695175 = _saveXML_3689820?.__copy__();
                        {
                            final __value__ = _t_3695175.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3695201i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _gotoNext = 3695258i32;
                            } else {
                                _gotoNext = 3695373i32;
                            };
                        };
                    };
                } else if (__value__ == (3695201i32)) {
                    _t_3695175.setString((_saveXMLData_3689868 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3695373i32;
                } else if (__value__ == (3695258i32)) {
                    if (_t_3695175.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 3695323i32;
                    } else {
                        _gotoNext = 3695373i32;
                    };
                } else if (__value__ == (3695323i32)) {
                    _t_3695175.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_saveXMLData_3689868))?.__copy__());
                    _gotoNext = 3695373i32;
                } else if (__value__ == (3695373i32)) {
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
