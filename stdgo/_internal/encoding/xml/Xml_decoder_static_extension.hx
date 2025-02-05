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
        var _size_3736898:stdgo.GoInt = (0 : stdgo.GoInt);
        var _buf_3736861:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _text_3734838:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3734823:Bool = false;
        var _ok_3733751:Bool = false;
        var inputBreak = false;
        var _trunc_3733707:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b0_3733690:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _err_3735514:stdgo.Error = (null : stdgo.Error);
        var _n_3735511:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _ok_3735993:Bool = false;
        var _s_3735963:stdgo.GoString = ("" : stdgo.GoString);
        var _s_3735445:stdgo.GoString = ("" : stdgo.GoString);
        var _start_3735164:stdgo.GoInt = (0 : stdgo.GoInt);
        var _haveText_3734857:Bool = false;
        var _before_3734770:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_3736747:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _r_3735990:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _b_3733748:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b1_3733694:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _r_3736895:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _ent_3736336:stdgo.GoString = ("" : stdgo.GoString);
        var _name_3735875:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _base_3735026:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
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
                        var __tmp__ = @:check2r _d._getc();
                        _b_3733748 = @:tmpset0 __tmp__._0;
                        _ok_3733751 = @:tmpset0 __tmp__._1;
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
                    if (stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 3733814i32;
                    } else {
                        _gotoNext = 3733888i32;
                    };
                } else if (__value__ == (3733814i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unexpected EOF in CDATA section" : stdgo.GoString));
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
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unescaped ]]> not in CDATA section" : stdgo.GoString));
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
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unescaped < inside quoted string" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3734359i32;
                } else if (__value__ == (3734359i32)) {
                    @:check2r _d._ungetc((60 : stdgo.GoUInt8));
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
                    _before_3734770 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.len();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((38 : stdgo.GoUInt8));
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3733748 = @:tmpset0 __tmp__._0;
                            _ok_3734823 = @:tmpset0 __tmp__._1;
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
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3733748);
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3733748 = @:tmpset0 __tmp__._0;
                            _ok_3734823 = @:tmpset0 __tmp__._1;
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
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3733748);
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3733748 = @:tmpset0 __tmp__._0;
                            _ok_3734823 = @:tmpset0 __tmp__._1;
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
                    _start_3735164 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.len();
                    var __blank__ = 0i32;
                    _gotoNext = 3735189i32;
                } else if (__value__ == (3735189i32)) {
                    if ((((((48 : stdgo.GoUInt8) <= _b_3733748 : Bool) && (_b_3733748 <= (57 : stdgo.GoUInt8) : Bool) : Bool) || ((_base_3735026 == ((16 : stdgo.GoInt)) && ((97 : stdgo.GoUInt8) <= _b_3733748 : Bool) : Bool) && (_b_3733748 <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || ((_base_3735026 == ((16 : stdgo.GoInt)) && ((65 : stdgo.GoUInt8) <= _b_3733748 : Bool) : Bool) && (_b_3733748 <= (70 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3735300i32;
                    } else {
                        _gotoNext = 3735396i32;
                    };
                } else if (__value__ == (3735300i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3733748);
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3733748 = @:tmpset0 __tmp__._0;
                            _ok_3734823 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3734823) {
                            _gotoNext = 3735360i32;
                        } else {
                            _gotoNext = 3735189i32;
                        };
                    };
                } else if (__value__ == (3735360i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3735189i32;
                } else if (__value__ == (3735396i32)) {
                    if (_b_3733748 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3735408i32;
                    } else {
                        _gotoNext = 3735438i32;
                    };
                } else if (__value__ == (3735408i32)) {
                    @:check2r _d._ungetc(_b_3733748);
                    _gotoNext = 3736162i32;
                } else if (__value__ == (3735438i32)) {
                    _gotoNext = 3735438i32;
                    _s_3735445 = ((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__(_start_3735164) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((59 : stdgo.GoUInt8));
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s_3735445?.__copy__(), _base_3735026, (64 : stdgo.GoInt));
                        _n_3735511 = @:tmpset0 __tmp__._0;
                        _err_3735514 = @:tmpset0 __tmp__._1;
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
                    @:check2r _d._ungetc(_b_3733748);
                    if (!@:check2r _d._readName()) {
                        _gotoNext = 3735710i32;
                    } else {
                        _gotoNext = 3735769i32;
                    };
                } else if (__value__ == (3735710i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
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
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3733748 = @:tmpset0 __tmp__._0;
                            _ok_3734823 = @:tmpset0 __tmp__._1;
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
                    @:check2r _d._ungetc(_b_3733748);
                    _gotoNext = 3736162i32;
                } else if (__value__ == (3735868i32)) {
                    _gotoNext = 3735868i32;
                    _name_3735875 = (@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__((_before_3734770 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((59 : stdgo.GoUInt8));
                    if (stdgo._internal.encoding.xml.Xml__isname._isName(_name_3735875)) {
                        _gotoNext = 3735955i32;
                    } else {
                        _gotoNext = 3736162i32;
                    };
                } else if (__value__ == (3735955i32)) {
                    _s_3735963 = (_name_3735875 : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = (stdgo._internal.encoding.xml.Xml__entity._entity != null && stdgo._internal.encoding.xml.Xml__entity._entity.exists(_s_3735963?.__copy__()) ? { _0 : stdgo._internal.encoding.xml.Xml__entity._entity[_s_3735963?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt32), _1 : false });
                            _r_3735990 = @:tmpset0 __tmp__._0;
                            _ok_3735993 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3735993) {
                            _gotoNext = 3736013i32;
                        } else if ((@:checkr _d ?? throw "null pointer dereference").entity != null) {
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
                        var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference").entity != null && (@:checkr _d ?? throw "null pointer dereference").entity.exists(_s_3735963?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference").entity[_s_3735963?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false });
                        _text_3734838 = @:tmpset0 __tmp__._0?.__copy__();
                        _haveText_3734857 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3736162i32;
                } else if (__value__ == (3736162i32)) {
                    if (_haveText_3734857) {
                        _gotoNext = 3736174i32;
                    } else {
                        _gotoNext = 3736276i32;
                    };
                } else if (__value__ == (3736174i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.truncate(_before_3734770);
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeString(_text_3734838?.__copy__());
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_3733690 = __tmp__0;
                        _b1_3733694 = __tmp__1;
                    };
                    _gotoNext = 3733740i32;
                } else if (__value__ == (3736276i32)) {
                    if (!(@:checkr _d ?? throw "null pointer dereference").strict) {
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
                    _ent_3736336 = ((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__(_before_3734770) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    if (_ent_3736336[((_ent_3736336.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3736403i32;
                    } else {
                        _gotoNext = 3736442i32;
                    };
                } else if (__value__ == (3736403i32)) {
                    _ent_3736336 = (_ent_3736336 + ((" (no semicolon)" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3736442i32;
                } else if (__value__ == (3736442i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError((("invalid character entity " : stdgo.GoString) + _ent_3736336?.__copy__() : stdgo.GoString)?.__copy__());
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
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((10 : stdgo.GoUInt8));
                    _gotoNext = 3736728i32;
                } else if (__value__ == (3736648i32)) {
                    _gotoNext = 3736728i32;
                } else if (__value__ == (3736697i32)) {
                    _gotoNext = 3736697i32;
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3733748);
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
                    _data_3736747 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
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
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_buf_3736861);
                        _r_3736895 = @:tmpset0 __tmp__._0;
                        _size_3736898 = @:tmpset0 __tmp__._1;
                    };
                    if (((_r_3736895 == (65533 : stdgo.GoInt32)) && (_size_3736898 == (1 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3736965i32;
                    } else {
                        _gotoNext = 3737029i32;
                    };
                } else if (__value__ == (3736965i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid UTF-8" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3737029i32;
                } else if (__value__ == (3737029i32)) {
                    _buf_3736861 = (_buf_3736861.__slice__(_size_3736898) : stdgo.Slice<stdgo.GoUInt8>);
                    if (!stdgo._internal.encoding.xml.Xml__isincharacterrange._isInCharacterRange(_r_3736895)) {
                        _gotoNext = 3737074i32;
                    } else {
                        _gotoNext = 3736874i32;
                    };
                } else if (__value__ == (3737074i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("illegal character code %U" : stdgo.GoString), stdgo.Go.toInterface(_r_3736895))?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3736874i32;
                } else if (__value__ == (3737169i32)) {
                    return _data_3736747;
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
        var _a_3730005:stdgo._internal.encoding.xml.Xml_attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_attr.Attr);
        var _b1_3728908:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _s_3728544:stdgo.GoString = ("" : stdgo.GoString);
        var _depth_3728087:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inquote_3728065:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _j_3728686:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_3727365:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b0_3727046:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _err_3726321:stdgo.Error = (null : stdgo.Error);
        var _data_3730431:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _attr_3729508:stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
        var _data_3727756:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _newr_3726315:stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
        var _enc_3726032:stdgo.GoString = ("" : stdgo.GoString);
        var _name_3724942:stdgo._internal.encoding.xml.Xml_name.Name = ({} : stdgo._internal.encoding.xml.Xml_name.Name);
        var _data_3725724:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b_3724632:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3728563:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ver_3725842:stdgo.GoString = ("" : stdgo.GoString);
        var _content_3725815:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3724635:Bool = false;
        var _empty_3729495:Bool = false;
        var _b0_3728904:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3727513:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b1_3727050:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b0_3725564:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _name_3729482:stdgo._internal.encoding.xml.Xml_name.Name = ({} : stdgo._internal.encoding.xml.Xml_name.Name);
        var _target_3725372:stdgo.GoString = ("" : stdgo.GoString);
        var _data_3724734:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._t != null) {
                        _gotoNext = 3724350i32;
                    } else {
                        _gotoNext = 3724377i32;
                    };
                } else if (__value__ == (3724350i32)) {
                    return (@:checkr _d ?? throw "null pointer dereference")._t.token();
                    _gotoNext = 3724377i32;
                } else if (__value__ == (3724377i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 3724393i32;
                    } else {
                        _gotoNext = 3724419i32;
                    };
                } else if (__value__ == (3724393i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3724419i32;
                } else if (__value__ == (3724419i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._needClose) {
                        _gotoNext = 3724434i32;
                    } else {
                        _gotoNext = 3724632i32;
                    };
                } else if (__value__ == (3724434i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._needClose = false;
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_endelement.EndElement((@:checkr _d ?? throw "null pointer dereference")._toClose?.__copy__()) : stdgo._internal.encoding.xml.Xml_endelement.EndElement))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3724632i32;
                } else if (__value__ == (3724632i32)) {
                    {
                        var __tmp__ = @:check2r _d._getc();
                        _b_3724632 = @:tmpset0 __tmp__._0;
                        _ok_3724635 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_3724635) {
                        _gotoNext = 3724658i32;
                    } else {
                        _gotoNext = 3724685i32;
                    };
                } else if (__value__ == (3724658i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3724685i32;
                } else if (__value__ == (3724685i32)) {
                    if (_b_3724632 != ((60 : stdgo.GoUInt8))) {
                        _gotoNext = 3724697i32;
                    } else {
                        _gotoNext = 3724838i32;
                    };
                } else if (__value__ == (3724697i32)) {
                    @:check2r _d._ungetc(_b_3724632);
                    _data_3724734 = @:check2r _d._text((-1 : stdgo.GoInt), false);
                    if (_data_3724734 == null) {
                        _gotoNext = 3724777i32;
                    } else {
                        _gotoNext = 3724806i32;
                    };
                } else if (__value__ == (3724777i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3724806i32;
                } else if (__value__ == (3724806i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3724734 : stdgo._internal.encoding.xml.Xml_chardata.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3724838i32;
                } else if (__value__ == (3724838i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3724632 = @:tmpset0 __tmp__._0;
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3724867i32;
                        } else {
                            _gotoNext = 3724893i32;
                        };
                    };
                } else if (__value__ == (3724867i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
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
                            var __tmp__ = @:check2r _d._nsname();
                            _name_3724942 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3724984i32;
                        } else {
                            _gotoNext = 3725099i32;
                        };
                    };
                } else if (__value__ == (3724984i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3725005i32;
                    } else {
                        _gotoNext = 3725075i32;
                    };
                } else if (__value__ == (3725005i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected element name after </" : stdgo.GoString));
                    _gotoNext = 3725075i32;
                } else if (__value__ == (3725075i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3725099i32;
                } else if (__value__ == (3725099i32)) {
                    @:check2r _d._space();
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3724632 = @:tmpset0 __tmp__._0;
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3725140i32;
                        } else {
                            _gotoNext = 3725169i32;
                        };
                    };
                } else if (__value__ == (3725140i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3725169i32;
                } else if (__value__ == (3725169i32)) {
                    if (_b_3724632 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3725181i32;
                    } else {
                        _gotoNext = 3725292i32;
                    };
                } else if (__value__ == (3725181i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(((("invalid characters between </" : stdgo.GoString) + _name_3724942.local?.__copy__() : stdgo.GoString) + (" and >" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3725292i32;
                } else if (__value__ == (3725292i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_endelement.EndElement(_name_3724942?.__copy__()) : stdgo._internal.encoding.xml.Xml_endelement.EndElement))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3729460i32;
                } else if (__value__ == (3725323i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._name();
                            _target_3725372 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3725418i32;
                        } else {
                            _gotoNext = 3725532i32;
                        };
                    };
                } else if (__value__ == (3725418i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3725439i32;
                    } else {
                        _gotoNext = 3725508i32;
                    };
                } else if (__value__ == (3725439i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected target name after <?" : stdgo.GoString));
                    _gotoNext = 3725508i32;
                } else if (__value__ == (3725508i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3725532i32;
                } else if (__value__ == (3725532i32)) {
                    @:check2r _d._space();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
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
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3724632 = @:tmpset0 __tmp__._0;
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3725612i32;
                        } else {
                            _gotoNext = 3725644i32;
                        };
                    };
                } else if (__value__ == (3725612i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3725644i32;
                } else if (__value__ == (3725644i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3724632);
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
                    _data_3725724 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_3725724 = (_data_3725724.__slice__((0 : stdgo.GoInt), ((_data_3725724.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_target_3725372 == (("xml" : stdgo.GoString))) {
                        _gotoNext = 3725810i32;
                    } else {
                        _gotoNext = 3726614i32;
                    };
                } else if (__value__ == (3725810i32)) {
                    _content_3725815 = (_data_3725724 : stdgo.GoString)?.__copy__();
                    _ver_3725842 = stdgo._internal.encoding.xml.Xml__procinst._procInst(("version" : stdgo.GoString), _content_3725815?.__copy__())?.__copy__();
                    if (((_ver_3725842 != (stdgo.Go.str() : stdgo.GoString)) && (_ver_3725842 != ("1.0" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3725910i32;
                    } else {
                        _gotoNext = 3726032i32;
                    };
                } else if (__value__ == (3725910i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: unsupported version %q; only version 1.0 is supported" : stdgo.GoString), stdgo.Go.toInterface(_ver_3725842));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3726032i32;
                } else if (__value__ == (3726032i32)) {
                    _enc_3726032 = stdgo._internal.encoding.xml.Xml__procinst._procInst(("encoding" : stdgo.GoString), _content_3725815?.__copy__())?.__copy__();
                    if ((((_enc_3726032 != ((stdgo.Go.str() : stdgo.GoString)) && _enc_3726032 != (("utf-8" : stdgo.GoString)) : Bool) && _enc_3726032 != (("UTF-8" : stdgo.GoString)) : Bool) && !stdgo._internal.strings.Strings_equalfold.equalFold(_enc_3726032?.__copy__(), ("utf-8" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3726157i32;
                    } else {
                        _gotoNext = 3726614i32;
                    };
                } else if (__value__ == (3726157i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference").charsetReader == null) {
                        _gotoNext = 3726189i32;
                    } else {
                        _gotoNext = 3726315i32;
                    };
                } else if (__value__ == (3726189i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: encoding %q declared but Decoder.CharsetReader is nil" : stdgo.GoString), stdgo.Go.toInterface(_enc_3726032));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3726315i32;
                } else if (__value__ == (3726315i32)) {
                    {
                        var __tmp__ = (@:checkr _d ?? throw "null pointer dereference").charsetReader(_enc_3726032?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._r) : stdgo._internal.io.Io_reader.Reader)) : stdgo._internal.io.Io_reader.Reader));
                        _newr_3726315 = @:tmpset0 __tmp__._0;
                        _err_3726321 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3726321 != null) {
                        _gotoNext = 3726384i32;
                    } else {
                        _gotoNext = 3726484i32;
                    };
                } else if (__value__ == (3726384i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: opening charset %q: %w" : stdgo.GoString), stdgo.Go.toInterface(_enc_3726032), stdgo.Go.toInterface(_err_3726321));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
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
                    @:check2r _d._switchToReader(_newr_3726315);
                    _gotoNext = 3726614i32;
                } else if (__value__ == (3726614i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_procinst.ProcInst(_target_3725372?.__copy__(), _data_3725724) : stdgo._internal.encoding.xml.Xml_procinst.ProcInst))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3729460i32;
                } else if (__value__ == (3726651i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3724632 = @:tmpset0 __tmp__._0;
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3726729i32;
                        } else {
                            _gotoNext = 3726758i32;
                        };
                    };
                } else if (__value__ == (3726729i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
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
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3724632 = @:tmpset0 __tmp__._0;
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3726855i32;
                        } else {
                            _gotoNext = 3726887i32;
                        };
                    };
                } else if (__value__ == (3726855i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3726887i32;
                } else if (__value__ == (3726887i32)) {
                    if (_b_3724632 != ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 3726899i32;
                    } else {
                        _gotoNext = 3727025i32;
                    };
                } else if (__value__ == (3726899i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid sequence <!- not part of <!--" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3727025i32;
                } else if (__value__ == (3727025i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
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
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3724632 = @:tmpset0 __tmp__._0;
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3727100i32;
                        } else {
                            _gotoNext = 3727135i32;
                        };
                    };
                } else if (__value__ == (3727100i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3727135i32;
                } else if (__value__ == (3727135i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3724632);
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
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid sequence \"--\" not allowed in comments" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
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
                    _data_3727365 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_3727365 = (_data_3727365.__slice__((0 : stdgo.GoInt), ((_data_3727365.length) - (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3727365 : stdgo._internal.encoding.xml.Xml_comment.Comment))), _1 : (null : stdgo.Error) };
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
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3724632 = @:tmpset0 __tmp__._0;
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3727567i32;
                        } else {
                            _gotoNext = 3727602i32;
                        };
                    };
                } else if (__value__ == (3727567i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3727602i32;
                } else if (__value__ == (3727602i32)) {
                    if (_b_3724632 != ((("CDATA[" : stdgo.GoString) : stdgo.GoString)[(_i_3727513 : stdgo.GoInt)])) {
                        _gotoNext = 3727622i32;
                    } else {
                        _gotoNext = 3727528i32;
                    };
                } else if (__value__ == (3727622i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid <![ sequence" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3727528i32;
                } else if (__value__ == (3727756i32)) {
                    _data_3727756 = @:check2r _d._text((-1 : stdgo.GoInt), true);
                    if (_data_3727756 == null) {
                        _gotoNext = 3727799i32;
                    } else {
                        _gotoNext = 3727831i32;
                    };
                } else if (__value__ == (3727799i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3727831i32;
                } else if (__value__ == (3727831i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3727756 : stdgo._internal.encoding.xml.Xml_chardata.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3728028i32;
                } else if (__value__ == (3728028i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3724632);
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
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3724632 = @:tmpset0 __tmp__._0;
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3728138i32;
                        } else {
                            _gotoNext = 3728170i32;
                        };
                    };
                } else if (__value__ == (3728138i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
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
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3724632);
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
                        _gotoNext = 3728100i32;
                    };
                } else if (__value__ == (3728277i32)) {
                    _inquote_3728065 = (0 : stdgo.GoUInt8);
                    _gotoNext = 3728100i32;
                } else if (__value__ == (3728316i32)) {
                    _gotoNext = 3728100i32;
                } else if (__value__ == (3728375i32)) {
                    _inquote_3728065 = _b_3724632;
                    _gotoNext = 3728100i32;
                } else if (__value__ == (3728423i32)) {
                    _depth_3728087--;
                    _gotoNext = 3728100i32;
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
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3724632 = @:tmpset0 __tmp__._0;
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3728623i32;
                        } else {
                            _gotoNext = 3728661i32;
                        };
                    };
                } else if (__value__ == (3728623i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
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
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_s_3728544[(_j_3728686 : stdgo.GoInt)]);
                    _j_3728686++;
                    _gotoNext = 3728682i32;
                } else if (__value__ == (3728750i32)) {
                    _depth_3728087++;
                    _gotoNext = 3728231i32;
                } else if (__value__ == (3728835i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.truncate((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
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
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3724632 = @:tmpset0 __tmp__._0;
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3728960i32;
                        } else {
                            _gotoNext = 3728998i32;
                        };
                    };
                } else if (__value__ == (3728960i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
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
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((32 : stdgo.GoUInt8));
                    _gotoNext = 3728100i32;
                } else if (__value__ == (3729370i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes() : stdgo._internal.encoding.xml.Xml_directive.Directive))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3729460i32;
                } else if (__value__ == (3729460i32)) {
                    @:check2r _d._ungetc(_b_3724632);
                    {
                        {
                            var __tmp__ = @:check2r _d._nsname();
                            _name_3729482 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3729555i32;
                        } else {
                            _gotoNext = 3729664i32;
                        };
                    };
                } else if (__value__ == (3729555i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3729575i32;
                    } else {
                        _gotoNext = 3729641i32;
                    };
                } else if (__value__ == (3729575i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected element name after <" : stdgo.GoString));
                    _gotoNext = 3729641i32;
                } else if (__value__ == (3729641i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3729664i32;
                } else if (__value__ == (3729664i32)) {
                    _attr_3729508 = (new stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.xml.Xml_attr.Attr)])) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
                    var __blank__ = 0i32;
                    _gotoNext = 3729681i32;
                } else if (__value__ == (3729681i32)) {
                    if (true) {
                        _gotoNext = 3729685i32;
                    } else {
                        _gotoNext = 3730557i32;
                    };
                } else if (__value__ == (3729685i32)) {
                    @:check2r _d._space();
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3724632 = @:tmpset0 __tmp__._0;
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3729730i32;
                        } else {
                            _gotoNext = 3729759i32;
                        };
                    };
                } else if (__value__ == (3729730i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
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
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3724632 = @:tmpset0 __tmp__._0;
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3729821i32;
                        } else {
                            _gotoNext = 3729853i32;
                        };
                    };
                } else if (__value__ == (3729821i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3729853i32;
                } else if (__value__ == (3729853i32)) {
                    if (_b_3724632 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3729865i32;
                    } else {
                        _gotoNext = 3729949i32;
                    };
                } else if (__value__ == (3729865i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected /> in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
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
                    @:check2r _d._ungetc(_b_3724632);
                    _a_3730005 = (new stdgo._internal.encoding.xml.Xml_attr.Attr() : stdgo._internal.encoding.xml.Xml_attr.Attr);
                    {
                        {
                            var __tmp__ = @:check2r _d._nsname();
                            _a_3730005.name = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3730051i32;
                        } else {
                            _gotoNext = 3730170i32;
                        };
                    };
                } else if (__value__ == (3730051i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3730072i32;
                    } else {
                        _gotoNext = 3730146i32;
                    };
                } else if (__value__ == (3730072i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected attribute name in element" : stdgo.GoString));
                    _gotoNext = 3730146i32;
                } else if (__value__ == (3730146i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3730170i32;
                } else if (__value__ == (3730170i32)) {
                    @:check2r _d._space();
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3724632 = @:tmpset0 __tmp__._0;
                            _ok_3724635 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3724635) {
                            _gotoNext = 3730211i32;
                        } else {
                            _gotoNext = 3730240i32;
                        };
                    };
                } else if (__value__ == (3730211i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3730240i32;
                } else if (__value__ == (3730240i32)) {
                    if (_b_3724632 != ((61 : stdgo.GoUInt8))) {
                        _gotoNext = 3730252i32;
                    } else {
                        _gotoNext = 3730413i32;
                    };
                } else if (__value__ == (3730252i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference").strict) {
                        _gotoNext = 3730269i32;
                    } else {
                        _gotoNext = 3730366i32;
                    };
                } else if (__value__ == (3730269i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("attribute name without = in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3730366i32;
                } else if (__value__ == (3730366i32)) {
                    @:check2r _d._ungetc(_b_3724632);
                    _a_3730005.value = _a_3730005.name.local?.__copy__();
                    _gotoNext = 3730530i32;
                } else if (__value__ == (3730413i32)) {
                    _gotoNext = 3730413i32;
                    @:check2r _d._space();
                    _data_3730431 = @:check2r _d._attrval();
                    if (_data_3730431 == null) {
                        _gotoNext = 3730469i32;
                    } else {
                        _gotoNext = 3730501i32;
                    };
                } else if (__value__ == (3730469i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
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
                    (@:checkr _d ?? throw "null pointer dereference")._needClose = true;
                    (@:checkr _d ?? throw "null pointer dereference")._toClose = _name_3729482?.__copy__();
                    _gotoNext = 3730612i32;
                } else if (__value__ == (3730612i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_startelement.StartElement(_name_3729482?.__copy__(), _attr_3729508) : stdgo._internal.encoding.xml.Xml_startelement.StartElement))), _1 : (null : stdgo.Error) };
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
                if ((@:checkr _d ?? throw "null pointer dereference")._ns != null) (@:checkr _d ?? throw "null pointer dereference")._ns.remove((@:checkr _s ?? throw "null pointer dereference")._name.local);
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
            var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._ns != null && (@:checkr _d ?? throw "null pointer dereference")._ns.exists((@:checkr _n ?? throw "null pointer dereference").space?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._ns[(@:checkr _n ?? throw "null pointer dereference").space?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
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
                        var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._ns != null && (@:checkr _d ?? throw "null pointer dereference")._ns.exists(_a.name.local?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._ns[_a.name.local?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        @:check2r _d._pushNs(_a.name.local?.__copy__(), _v?.__copy__(), _ok);
                        (@:checkr _d ?? throw "null pointer dereference")._ns[_a.name.local] = _a.value?.__copy__();
                    };
                    if (((_a.name.space == (stdgo.Go.str() : stdgo.GoString)) && (_a.name.local == ("xmlns" : stdgo.GoString)) : Bool)) {
                        var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._ns != null && (@:checkr _d ?? throw "null pointer dereference")._ns.exists((stdgo.Go.str() : stdgo.GoString)?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._ns[(stdgo.Go.str() : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
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
        var _err_3666974:stdgo.Error = (null : stdgo.Error);
        var _err_3666849:stdgo.Error = (null : stdgo.Error);
        var _consumed2_3666838:Bool = false;
        var _tok_3666560:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _j_3665598:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3665396:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_3667054:stdgo._internal.encoding.xml.Xml_endelement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement);
        var _t_3666681:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _finfo_3665424:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _recurse_3665368:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3666681;
                    _gotoNext = 3666548i32;
                    _recurse_3665368 = false;
                    _gotoNext = 3665385i32;
                } else if (__value__ == (3665385i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3666291i32;
                    } else {
                        _gotoNext = 3666295i32;
                    };
                } else if (__value__ == (3665396i32)) {
                    _i_3665396++;
                    _gotoNext = 3666292i32;
                } else if (__value__ == (3665420i32)) {
                    _finfo_3665424 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3665396 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    if (((((@:checkr _finfo_3665424 ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || (((@:checkr _finfo_3665424 ?? throw "null pointer dereference")._parents.length) < (_parents.length) : Bool) : Bool) || ((@:checkr _finfo_3665424 ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) && (@:checkr _finfo_3665424 ?? throw "null pointer dereference")._xmlns != ((@:checkr _start ?? throw "null pointer dereference").name.space) : Bool) : Bool)) {
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
                    if (_parents[(_j_3665598 : stdgo.GoInt)] != ((@:checkr _finfo_3665424 ?? throw "null pointer dereference")._parents[(_j_3665598 : stdgo.GoInt)])) {
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
                    if ((((@:checkr _finfo_3665424 ?? throw "null pointer dereference")._parents.length == (_parents.length)) && ((@:checkr _finfo_3665424 ?? throw "null pointer dereference")._name == (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3665759i32;
                    } else {
                        _gotoNext = 3665894i32;
                    };
                } else if (__value__ == (3665759i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : @:check2r _d._unmarshal(@:check2r _finfo_3665424._value(_sv?.__copy__(), true)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3665894i32;
                } else if (__value__ == (3665894i32)) {
                    if (((((@:checkr _finfo_3665424 ?? throw "null pointer dereference")._parents.length) > (_parents.length) : Bool) && ((@:checkr _finfo_3665424 ?? throw "null pointer dereference")._parents[(_parents.length : stdgo.GoInt)] == (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3665982i32;
                    } else {
                        _gotoNext = 3665396i32;
                    };
                } else if (__value__ == (3665982i32)) {
                    _recurse_3665368 = true;
                    _parents = ((@:checkr _finfo_3665424 ?? throw "null pointer dereference")._parents.__slice__(0, ((_parents.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 3666295i32;
                } else if (__value__ == (3666291i32)) {
                    _i_3665396 = 0i32;
                    _gotoNext = 3666292i32;
                } else if (__value__ == (3666292i32)) {
                    if (_i_3665396 < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
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
                        var __tmp__ = @:check2r _d.token();
                        _tok_3666560 = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
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
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value;
                            _t_3666681 = _t;
                            _gotoNext = 3666664i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value;
                            _t_3667054 = _t;
                            _gotoNext = 3667039i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_token.Token = __type__?.__underlying__();
                            _gotoNext = 3666548i32;
                        };
                    };
                    _gotoNext = 3666548i32;
                } else if (__value__ == (3666664i32)) {
                    {
                        var __tmp__ = @:check2r _d._unmarshalPath(_tinfo, _sv?.__copy__(), _parents, (stdgo.Go.setRef(_t_3666681) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), _depth);
                        _consumed2_3666838 = @:tmpset0 __tmp__._0;
                        _err_3666849 = @:tmpset0 __tmp__._1;
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
                        _err_3666974 = @:check2r _d.skip();
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
                    _gotoNext = 3666548i32;
                } else if (__value__ == (3667083i32)) {
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
        var _t_3663124:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _ok_3656447:Bool = false;
        var _err_3661372:stdgo.Error = (null : stdgo.Error);
        var _saveComment_3657740:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _pv_3657151:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _savedOffset_3661287:stdgo.GoInt = (0 : stdgo.GoInt);
        var _a_3659775:stdgo._internal.encoding.xml.Xml_attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_attr.Attr);
        var _pv_3657485:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _consumed_3661476:Bool = false;
        var _data_3657667:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _t_3662282:stdgo._internal.encoding.xml.Xml_comment.Comment = new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0);
        var _finfo_3659869:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _e_3659380:stdgo.GoString = ("" : stdgo.GoString);
        var _saveData_3657689:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _err_3661838:stdgo.Error = (null : stdgo.Error);
        var _t_3661471:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _fv_3659610:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _saveXMLData_3657817:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _tok_3656377:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _err_3660379:stdgo.Error = (null : stdgo.Error);
        var _any_3659822:stdgo.GoInt = (0 : stdgo.GoInt);
        var _v_3657953:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _e_3656660:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _saveXMLIndex_3657798:stdgo.GoInt = (0 : stdgo.GoInt);
        var _comment_3657718:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _t_3662203:stdgo._internal.encoding.xml.Xml_chardata.CharData = new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0);
        var _t_3662028:stdgo._internal.encoding.xml.Xml_endelement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement);
        var _typ_3658259:stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
        var _i_3659780_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3657922:stdgo.Error = (null : stdgo.Error);
        var _sv_3657868:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _t_3656444:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _finfo_3660299:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _tok_3661367:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _strv_3659949:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _tinfo_3657897:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>);
        var _saveAny_3657839:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _saveXML_3657769:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _err_3656382:stdgo.Error = (null : stdgo.Error);
        var _err_3662471:stdgo.Error = (null : stdgo.Error);
        var _err_3661953:stdgo.Error = (null : stdgo.Error);
        var _finfo_3660559:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _ok_3659658:Bool = false;
        var _i_3660530:stdgo.GoInt = (0 : stdgo.GoInt);
        var _strv_3660331:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _finfo_3659120:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _err_3660090:stdgo.Error = (null : stdgo.Error);
        var _i_3659839:stdgo.GoInt = (0 : stdgo.GoInt);
        var _handled_3659802:Bool = false;
        var _n_3658409:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3662903:stdgo.Error = (null : stdgo.Error);
        var _pv_3662660:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var loopBreak = false;
        var _t_3662975:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _err_3662758:stdgo.Error = (null : stdgo.Error);
        var _typ_3658881:stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
        var _err_3658497:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3661471;
                    _gotoNext = 3661275i32;
                    var __blank__ = _t_3662203;
                    _gotoNext = 3661275i32;
                    var __blank__ = _t_3662282;
                    _gotoNext = 3661275i32;
                    if (((_depth >= (10000 : stdgo.GoInt) : Bool) || (true && (_depth >= (5000 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3656277i32;
                    } else {
                        _gotoNext = 3656348i32;
                    };
                } else if (__value__ == (3656277i32)) {
                    return stdgo._internal.encoding.xml.Xml__errunmarshaldepth._errUnmarshalDepth;
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
                        var __tmp__ = @:check2r _d.token();
                        _tok_3656377 = @:tmpset0 __tmp__._0;
                        _err_3656382 = @:tmpset0 __tmp__._1;
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
                                { _0 : (stdgo.Go.typeAssert((_tok_3656377 : stdgo._internal.encoding.xml.Xml_startelement.StartElement)) : stdgo._internal.encoding.xml.Xml_startelement.StartElement), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement), _1 : false };
                            };
                            _t_3656444 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3656447 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3656447) {
                            _gotoNext = 3656476i32;
                        } else {
                            _gotoNext = 3656368i32;
                        };
                    };
                } else if (__value__ == (3656476i32)) {
                    _start = (stdgo.Go.setRef(_t_3656444) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>);
                    _gotoNext = 3656605i32;
                } else if (__value__ == (3656605i32)) {
                    if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_val.isNil() : Bool)) {
                        _gotoNext = 3656656i32;
                    } else {
                        _gotoNext = 3656745i32;
                    };
                } else if (__value__ == (3656656i32)) {
                    _e_3656660 = _val.elem()?.__copy__();
                    if (((_e_3656660.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_e_3656660.isNil() : Bool)) {
                        _gotoNext = 3656723i32;
                    } else {
                        _gotoNext = 3656745i32;
                    };
                } else if (__value__ == (3656723i32)) {
                    _val = _e_3656660?.__copy__();
                    _gotoNext = 3656745i32;
                } else if (__value__ == (3656745i32)) {
                    if (_val.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
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
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalertype._unmarshalerType) : Bool)) {
                        _gotoNext = 3656934i32;
                    } else {
                        _gotoNext = 3657130i32;
                    };
                } else if (__value__ == (3656934i32)) {
                    return @:check2r _d._unmarshalInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3657130i32;
                } else if (__value__ == (3657130i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3657147i32;
                    } else {
                        _gotoNext = 3657311i32;
                    };
                } else if (__value__ == (3657147i32)) {
                    _pv_3657151 = _val.addr()?.__copy__();
                    if ((_pv_3657151.canInterface() && _pv_3657151.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalertype._unmarshalerType) : Bool)) {
                        _gotoNext = 3657232i32;
                    } else {
                        _gotoNext = 3657311i32;
                    };
                } else if (__value__ == (3657232i32)) {
                    return @:check2r _d._unmarshalInterface((stdgo.Go.typeAssert((_pv_3657151.interface_() : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3657311i32;
                } else if (__value__ == (3657311i32)) {
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3657379i32;
                    } else {
                        _gotoNext = 3657464i32;
                    };
                } else if (__value__ == (3657379i32)) {
                    return @:check2r _d._unmarshalTextInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler));
                    _gotoNext = 3657464i32;
                } else if (__value__ == (3657464i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3657481i32;
                    } else {
                        _gotoNext = 3657659i32;
                    };
                } else if (__value__ == (3657481i32)) {
                    _pv_3657485 = _val.addr()?.__copy__();
                    if ((_pv_3657485.canInterface() && _pv_3657485.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3657570i32;
                    } else {
                        _gotoNext = 3657659i32;
                    };
                } else if (__value__ == (3657570i32)) {
                    return @:check2r _d._unmarshalTextInterface((stdgo.Go.typeAssert((_pv_3657485.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler));
                    _gotoNext = 3657659i32;
                } else if (__value__ == (3657659i32)) {
                    _gotoNext = 3657946i32;
                } else if (__value__ == (3657946i32)) {
                    {
                        _v_3657953 = _val?.__copy__();
                        {
                            final __value__ = _v_3657953.kind();
                            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3658043i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3658237i32;
                            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3658606i32;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
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
                    return @:check2r _d.skip();
                    _gotoNext = 3661268i32;
                } else if (__value__ == (3658237i32)) {
                    _typ_3658259 = _v_3657953.type();
                    if (_typ_3658259.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
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
                        _err_3658497 = @:check2r _d._unmarshal(_v_3657953.index(_n_3658409)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
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
                    if ((_typ_3658881.string() : String) == (stdgo._internal.encoding.xml.Xml__nametype._nameType.string() : String)) {
                        _gotoNext = 3658918i32;
                    } else {
                        _gotoNext = 3658974i32;
                    };
                } else if (__value__ == (3658918i32)) {
                    _v_3657953.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _start ?? throw "null pointer dereference").name)))?.__copy__());
                    _gotoNext = 3661268i32;
                } else if (__value__ == (3658974i32)) {
                    _sv_3657868 = _v_3657953?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.encoding.xml.Xml__gettypeinfo._getTypeInfo(_typ_3658881);
                        _tinfo_3657897 = @:tmpset0 __tmp__._0;
                        _err_3657922 = @:tmpset0 __tmp__._1;
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
                    if (((@:checkr _tinfo_3657897 ?? throw "null pointer dereference")._xmlname != null && (((@:checkr _tinfo_3657897 ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__ == null || !((@:checkr _tinfo_3657897 ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__))) {
                        _gotoNext = 3659115i32;
                    } else {
                        _gotoNext = 3659768i32;
                    };
                } else if (__value__ == (3659115i32)) {
                    _finfo_3659120 = (@:checkr _tinfo_3657897 ?? throw "null pointer dereference")._xmlname;
                    if ((((@:checkr _finfo_3659120 ?? throw "null pointer dereference")._name != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _finfo_3659120 ?? throw "null pointer dereference")._name != (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3659200i32;
                    } else {
                        _gotoNext = 3659318i32;
                    };
                } else if (__value__ == (3659200i32)) {
                    return stdgo.Go.asInterface((((((("expected element type <" : stdgo.GoString) + (@:checkr _finfo_3659120 ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString) + ("> but have <" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _start ?? throw "null pointer dereference").name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.encoding.xml.Xml_unmarshalerror.UnmarshalError));
                    _gotoNext = 3659318i32;
                } else if (__value__ == (3659318i32)) {
                    if ((((@:checkr _finfo_3659120 ?? throw "null pointer dereference")._xmlns != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _finfo_3659120 ?? throw "null pointer dereference")._xmlns != (@:checkr _start ?? throw "null pointer dereference").name.space) : Bool)) {
                        _gotoNext = 3659374i32;
                    } else {
                        _gotoNext = 3659610i32;
                    };
                } else if (__value__ == (3659374i32)) {
                    _e_3659380 = ((((("expected element <" : stdgo.GoString) + (@:checkr _finfo_3659120 ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString) + ("> in name space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _finfo_3659120 ?? throw "null pointer dereference")._xmlns?.__copy__() : stdgo.GoString) + (" but have " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    if ((@:checkr _start ?? throw "null pointer dereference").name.space == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3659499i32;
                    } else {
                        _gotoNext = 3659538i32;
                    };
                } else if (__value__ == (3659499i32)) {
                    _e_3659380 = (_e_3659380 + (("no name space" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3659577i32;
                } else if (__value__ == (3659538i32)) {
                    _gotoNext = 3659538i32;
                    _e_3659380 = (_e_3659380 + ((@:checkr _start ?? throw "null pointer dereference").name.space)?.__copy__() : stdgo.GoString);
                    var __blank__ = 0i32;
                    _gotoNext = 3659577i32;
                } else if (__value__ == (3659577i32)) {
                    return stdgo.Go.asInterface((_e_3659380 : stdgo._internal.encoding.xml.Xml_unmarshalerror.UnmarshalError));
                    _gotoNext = 3659610i32;
                } else if (__value__ == (3659610i32)) {
                    _fv_3659610 = @:check2r _finfo_3659120._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_fv_3659610.interface_() : stdgo._internal.encoding.xml.Xml_name.Name)) : stdgo._internal.encoding.xml.Xml_name.Name), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_name.Name), _1 : false };
                            };
                            _ok_3659658 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3659658) {
                            _gotoNext = 3659690i32;
                        } else {
                            _gotoNext = 3659768i32;
                        };
                    };
                } else if (__value__ == (3659690i32)) {
                    _fv_3659610.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _start ?? throw "null pointer dereference").name)))?.__copy__());
                    _gotoNext = 3659768i32;
                } else if (__value__ == (3659768i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _start ?? throw "null pointer dereference").attr.length)) {
                        _gotoNext = 3660453i32;
                    } else {
                        _gotoNext = 3660526i32;
                    };
                } else if (__value__ == (3659772i32)) {
                    _i_3659780_0++;
                    _gotoNext = 3660454i32;
                } else if (__value__ == (3659797i32)) {
                    _a_3659775 = (@:checkr _start ?? throw "null pointer dereference").attr[(_i_3659780_0 : stdgo.GoInt)];
                    _handled_3659802 = false;
                    _any_3659822 = (-1 : stdgo.GoInt);
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo_3657897 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3660263i32;
                    } else {
                        _gotoNext = 3660269i32;
                    };
                } else if (__value__ == (3659839i32)) {
                    _i_3659839++;
                    _gotoNext = 3660264i32;
                } else if (__value__ == (3659863i32)) {
                    _finfo_3659869 = (stdgo.Go.setRef((@:checkr _tinfo_3657897 ?? throw "null pointer dereference")._fields[(_i_3659839 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _gotoNext = 3659899i32;
                } else if (__value__ == (3659899i32)) {
                    {
                        final __value__ = ((@:checkr _finfo_3659869 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                        if (__value__ == ((2 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3659932i32;
                        } else if (__value__ == ((66 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3660195i32;
                        } else {
                            _gotoNext = 3659839i32;
                        };
                    };
                } else if (__value__ == (3659932i32)) {
                    _strv_3659949 = @:check2r _finfo_3659869._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    if (((_a_3659775.name.local == (@:checkr _finfo_3659869 ?? throw "null pointer dereference")._name) && ((((@:checkr _finfo_3659869 ?? throw "null pointer dereference")._xmlns == (stdgo.Go.str() : stdgo.GoString)) || ((@:checkr _finfo_3659869 ?? throw "null pointer dereference")._xmlns == _a_3659775.name.space) : Bool)) : Bool)) {
                        _gotoNext = 3660079i32;
                    } else {
                        _gotoNext = 3659839i32;
                    };
                } else if (__value__ == (3660079i32)) {
                    {
                        _err_3660090 = @:check2r _d._unmarshalAttr(_strv_3659949?.__copy__(), _a_3659775?.__copy__());
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
                    if (_i_3659839 < ((@:checkr _tinfo_3657897 ?? throw "null pointer dereference")._fields.length)) {
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
                    _finfo_3660299 = (stdgo.Go.setRef((@:checkr _tinfo_3657897 ?? throw "null pointer dereference")._fields[(_any_3659822 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _strv_3660331 = @:check2r _finfo_3660299._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    {
                        _err_3660379 = @:check2r _d._unmarshalAttr(_strv_3660331?.__copy__(), _a_3659775?.__copy__());
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
                        final __tmp__1 = (@:checkr _start ?? throw "null pointer dereference").attr[(0i32 : stdgo.GoInt)];
                        _i_3659780_0 = __tmp__0;
                        _a_3659775 = __tmp__1;
                    };
                    _gotoNext = 3660454i32;
                } else if (__value__ == (3660454i32)) {
                    if (_i_3659780_0 < ((@:checkr _start ?? throw "null pointer dereference").attr.length)) {
                        _gotoNext = 3659797i32;
                    } else {
                        _gotoNext = 3660526i32;
                    };
                } else if (__value__ == (3660526i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo_3657897 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3661199i32;
                    } else {
                        _gotoNext = 3661268i32;
                    };
                } else if (__value__ == (3660530i32)) {
                    _i_3660530++;
                    _gotoNext = 3661200i32;
                } else if (__value__ == (3660554i32)) {
                    _finfo_3660559 = (stdgo.Go.setRef((@:checkr _tinfo_3657897 ?? throw "null pointer dereference")._fields[(_i_3660530 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _gotoNext = 3660588i32;
                } else if (__value__ == (3660588i32)) {
                    {
                        final __value__ = ((@:checkr _finfo_3660559 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                        if (__value__ == ((4 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3660620i32;
                        } else if (__value__ == ((32 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3660732i32;
                        } else if (__value__ == ((64 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((65 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3660841i32;
                        } else if (__value__ == ((16 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
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
                    _saveData_3657689 = @:check2r _finfo_3660559._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    _gotoNext = 3660530i32;
                } else if (__value__ == (3660732i32)) {
                    if (!_saveComment_3657740.isValid()) {
                        _gotoNext = 3660777i32;
                    } else {
                        _gotoNext = 3660530i32;
                    };
                } else if (__value__ == (3660777i32)) {
                    _saveComment_3657740 = @:check2r _finfo_3660559._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    _gotoNext = 3660530i32;
                } else if (__value__ == (3660841i32)) {
                    if (!_saveAny_3657839.isValid()) {
                        _gotoNext = 3660895i32;
                    } else {
                        _gotoNext = 3660530i32;
                    };
                } else if (__value__ == (3660895i32)) {
                    _saveAny_3657839 = @:check2r _finfo_3660559._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    _gotoNext = 3660530i32;
                } else if (__value__ == (3660955i32)) {
                    if (!_saveXML_3657769.isValid()) {
                        _gotoNext = 3660997i32;
                    } else {
                        _gotoNext = 3660530i32;
                    };
                } else if (__value__ == (3660997i32)) {
                    _saveXML_3657769 = @:check2r _finfo_3660559._value(_sv_3657868?.__copy__(), true)?.__copy__();
                    if (((@:checkr _d ?? throw "null pointer dereference")._saved == null || ((@:checkr _d ?? throw "null pointer dereference")._saved : Dynamic).__nil__)) {
                        _gotoNext = 3661070i32;
                    } else {
                        _gotoNext = 3661141i32;
                    };
                } else if (__value__ == (3661070i32)) {
                    _saveXMLIndex_3657798 = (0 : stdgo.GoInt);
                    (@:checkr _d ?? throw "null pointer dereference")._saved = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
                    _gotoNext = 3660530i32;
                } else if (__value__ == (3661141i32)) {
                    _gotoNext = 3661141i32;
                    _saveXMLIndex_3657798 = @:check2r _d._savedOffset();
                    var __blank__ = 0i32;
                    _gotoNext = 3660530i32;
                } else if (__value__ == (3661199i32)) {
                    _i_3660530 = 0i32;
                    _gotoNext = 3661200i32;
                } else if (__value__ == (3661200i32)) {
                    if (_i_3660530 < ((@:checkr _tinfo_3657897 ?? throw "null pointer dereference")._fields.length)) {
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
                    _savedOffset_3661287 = @:check2r _d._savedOffset();
                    _gotoNext = 3661367i32;
                } else if (__value__ == (3661367i32)) {
                    {
                        var __tmp__ = @:check2r _d.token();
                        _tok_3661367 = @:tmpset0 __tmp__._0;
                        _err_3661372 = @:tmpset0 __tmp__._1;
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
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value;
                            _t_3661471 = _t;
                            _gotoNext = 3661454i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value;
                            _t_3662028 = _t;
                            _gotoNext = 3662013i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_chardata.CharData))) {
                            var _t:stdgo._internal.encoding.xml.Xml_chardata.CharData = __type__ == null ? new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : __type__.__underlying__().value;
                            _t_3662203 = _t;
                            _gotoNext = 3662190i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_comment.Comment))) {
                            var _t:stdgo._internal.encoding.xml.Xml_comment.Comment = __type__ == null ? new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : __type__.__underlying__().value;
                            _t_3662282 = _t;
                            _gotoNext = 3662270i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_token.Token = __type__?.__underlying__();
                            _gotoNext = 3661275i32;
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
                        var __tmp__ = @:check2r _d._unmarshalPath(_tinfo_3657897, _sv_3657868?.__copy__(), (null : stdgo.Slice<stdgo.GoString>), (stdgo.Go.setRef(_t_3661471) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), _depth);
                        _consumed_3661476 = @:tmpset0 __tmp__._0;
                        _err_3661372 = @:tmpset0 __tmp__._1;
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
                        _err_3661838 = @:check2r _d._unmarshal(_saveAny_3657839?.__copy__(), (stdgo.Go.setRef(_t_3661471) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
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
                        _err_3661953 = @:check2r _d.skip();
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
                    _saveXMLData_3657817 = (@:check2r (@:checkr _d ?? throw "null pointer dereference")._saved.bytes().__slice__(_saveXMLIndex_3657798, _savedOffset_3661287) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_saveXMLIndex_3657798 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3662141i32;
                    } else {
                        _gotoNext = 3662176i32;
                    };
                } else if (__value__ == (3662141i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._saved = null;
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
                    if (((_saveData_3657689.isValid() && _saveData_3657689.canInterface() : Bool) && _saveData_3657689.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3662464i32;
                    } else {
                        _gotoNext = 3662612i32;
                    };
                } else if (__value__ == (3662464i32)) {
                    {
                        _err_3662471 = (stdgo.Go.typeAssert((_saveData_3657689.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText(_data_3657667);
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
                    _saveData_3657689 = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
                    _gotoNext = 3662612i32;
                } else if (__value__ == (3662612i32)) {
                    if ((_saveData_3657689.isValid() && _saveData_3657689.canAddr() : Bool)) {
                        _gotoNext = 3662656i32;
                    } else {
                        _gotoNext = 3662900i32;
                    };
                } else if (__value__ == (3662656i32)) {
                    _pv_3662660 = _saveData_3657689.addr()?.__copy__();
                    if ((_pv_3662660.canInterface() && _pv_3662660.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3662750i32;
                    } else {
                        _gotoNext = 3662900i32;
                    };
                } else if (__value__ == (3662750i32)) {
                    {
                        _err_3662758 = (stdgo.Go.typeAssert((_pv_3662660.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText(_data_3657667);
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
                    _saveData_3657689 = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
                    _gotoNext = 3662900i32;
                } else if (__value__ == (3662900i32)) {
                    {
                        _err_3662903 = stdgo._internal.encoding.xml.Xml__copyvalue._copyValue(_saveData_3657689?.__copy__(), _data_3657667);
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
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3663005i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
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
                    _t_3662975.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_comment_3657718))?.__copy__());
                    _gotoNext = 3663117i32;
                } else if (__value__ == (3663117i32)) {
                    _gotoNext = 3663117i32;
                    {
                        _t_3663124 = _saveXML_3657769?.__copy__();
                        {
                            final __value__ = _t_3663124.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3663150i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
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
                    if (_t_3663124.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 3663272i32;
                    } else {
                        _gotoNext = 3663322i32;
                    };
                } else if (__value__ == (3663272i32)) {
                    _t_3663124.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_saveXMLData_3657817))?.__copy__());
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
                    var _t:stdgo._internal.encoding.xml.Xml_chardata.CharData = __type__ == null ? new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : __type__.__underlying__().value;
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
