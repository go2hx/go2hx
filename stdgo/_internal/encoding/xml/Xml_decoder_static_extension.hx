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
        var _b0_3700870:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _s_3703143:stdgo.GoString = ("" : stdgo.GoString);
        var _name_3703055:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _start_3702344:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base_3702206:stdgo.GoInt = (0 : stdgo.GoInt);
        var _before_3701950:stdgo.GoInt = (0 : stdgo.GoInt);
        var inputBreak = false;
        var _n_3702691:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _size_3704078:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_3703927:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b1_3700874:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ent_3703516:stdgo.GoString = ("" : stdgo.GoString);
        var _r_3703170:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _err_3702694:stdgo.Error = (null : stdgo.Error);
        var _s_3702625:stdgo.GoString = ("" : stdgo.GoString);
        var _b_3700928:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _trunc_3700887:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3700931:Bool = false;
        var _r_3704075:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _buf_3704041:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_3703173:Bool = false;
        var _haveText_3702037:Bool = false;
        var _text_3702018:stdgo.GoString = ("" : stdgo.GoString);
        var _ok_3702003:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    _gotoNext = 3700912i32;
                } else if (__value__ == (3700912i32)) {
                    var __blank__ = 0i32;
                    inputBreak = false;
                    _gotoNext = 3700920i32;
                } else if (__value__ == (3700920i32)) {
                    if (!inputBreak) {
                        _gotoNext = 3700924i32;
                    } else {
                        _gotoNext = 3703927i32;
                    };
                } else if (__value__ == (3700924i32)) {
                    {
                        var __tmp__ = @:check2r _d._getc();
                        _b_3700928 = @:tmpset0 __tmp__._0;
                        _ok_3700931 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_3700931) {
                        _gotoNext = 3700955i32;
                    } else {
                        _gotoNext = 3701200i32;
                    };
                } else if (__value__ == (3700955i32)) {
                    if (_cdata) {
                        _gotoNext = 3700969i32;
                    } else {
                        _gotoNext = 3701087i32;
                    };
                } else if (__value__ == (3700969i32)) {
                    if (stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 3700994i32;
                    } else {
                        _gotoNext = 3701068i32;
                    };
                } else if (__value__ == (3700994i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unexpected EOF in CDATA section" : stdgo.GoString));
                    _gotoNext = 3701068i32;
                } else if (__value__ == (3701068i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3701087i32;
                } else if (__value__ == (3701087i32)) {
                    inputBreak = true;
                    _gotoNext = 3700920i32;
                } else if (__value__ == (3701200i32)) {
                    if (((_b0_3700870 == ((93 : stdgo.GoUInt8)) && _b1_3700874 == ((93 : stdgo.GoUInt8)) : Bool) && (_b_3700928 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3701238i32;
                    } else {
                        _gotoNext = 3701411i32;
                    };
                } else if (__value__ == (3701238i32)) {
                    if (_cdata) {
                        _gotoNext = 3701252i32;
                    } else {
                        _gotoNext = 3701292i32;
                    };
                } else if (__value__ == (3701252i32)) {
                    _trunc_3700887 = (2 : stdgo.GoInt);
                    inputBreak = true;
                    _gotoNext = 3700920i32;
                } else if (__value__ == (3701292i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unescaped ]]> not in CDATA section" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3701411i32;
                } else if (__value__ == (3701411i32)) {
                    if (((_b_3700928 == (60 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                        _gotoNext = 3701433i32;
                    } else {
                        _gotoNext = 3701574i32;
                    };
                } else if (__value__ == (3701433i32)) {
                    if ((_quote >= (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3701452i32;
                    } else {
                        _gotoNext = 3701539i32;
                    };
                } else if (__value__ == (3701452i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("unescaped < inside quoted string" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3701539i32;
                } else if (__value__ == (3701539i32)) {
                    @:check2r _d._ungetc((60 : stdgo.GoUInt8));
                    inputBreak = true;
                    _gotoNext = 3700920i32;
                } else if (__value__ == (3701574i32)) {
                    if (((_quote >= (0 : stdgo.GoInt) : Bool) && (_b_3700928 == (_quote : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3701608i32;
                    } else {
                        _gotoNext = 3701631i32;
                    };
                } else if (__value__ == (3701608i32)) {
                    inputBreak = true;
                    _gotoNext = 3700920i32;
                } else if (__value__ == (3701631i32)) {
                    if (((_b_3700928 == (38 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                        _gotoNext = 3701653i32;
                    } else {
                        _gotoNext = 3703752i32;
                    };
                } else if (__value__ == (3701653i32)) {
                    _before_3701950 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.len();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((38 : stdgo.GoUInt8));
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3700928 = @:tmpset0 __tmp__._0;
                            _ok_3702003 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3702003) {
                            _gotoNext = 3702083i32;
                        } else {
                            _gotoNext = 3702108i32;
                        };
                    };
                } else if (__value__ == (3702083i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3702108i32;
                } else if (__value__ == (3702108i32)) {
                    if (_b_3700928 == ((35 : stdgo.GoUInt8))) {
                        _gotoNext = 3702120i32;
                    } else {
                        _gotoNext = 3702851i32;
                    };
                } else if (__value__ == (3702120i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3700928);
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3700928 = @:tmpset0 __tmp__._0;
                            _ok_3702003 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3702003) {
                            _gotoNext = 3702178i32;
                        } else {
                            _gotoNext = 3702206i32;
                        };
                    };
                } else if (__value__ == (3702178i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3702206i32;
                } else if (__value__ == (3702206i32)) {
                    _base_3702206 = (10 : stdgo.GoInt);
                    if (_b_3700928 == ((120 : stdgo.GoUInt8))) {
                        _gotoNext = 3702233i32;
                    } else {
                        _gotoNext = 3702344i32;
                    };
                } else if (__value__ == (3702233i32)) {
                    _base_3702206 = (16 : stdgo.GoInt);
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3700928);
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3700928 = @:tmpset0 __tmp__._0;
                            _ok_3702003 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3702003) {
                            _gotoNext = 3702308i32;
                        } else {
                            _gotoNext = 3702344i32;
                        };
                    };
                } else if (__value__ == (3702308i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3702344i32;
                } else if (__value__ == (3702344i32)) {
                    _start_3702344 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.len();
                    var __blank__ = 0i32;
                    _gotoNext = 3702369i32;
                } else if (__value__ == (3702369i32)) {
                    if ((((((48 : stdgo.GoUInt8) <= _b_3700928 : Bool) && (_b_3700928 <= (57 : stdgo.GoUInt8) : Bool) : Bool) || ((_base_3702206 == ((16 : stdgo.GoInt)) && ((97 : stdgo.GoUInt8) <= _b_3700928 : Bool) : Bool) && (_b_3700928 <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || ((_base_3702206 == ((16 : stdgo.GoInt)) && ((65 : stdgo.GoUInt8) <= _b_3700928 : Bool) : Bool) && (_b_3700928 <= (70 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3702480i32;
                    } else {
                        _gotoNext = 3702576i32;
                    };
                } else if (__value__ == (3702480i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3700928);
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3700928 = @:tmpset0 __tmp__._0;
                            _ok_3702003 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3702003) {
                            _gotoNext = 3702540i32;
                        } else {
                            _gotoNext = 3702369i32;
                        };
                    };
                } else if (__value__ == (3702540i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3702369i32;
                } else if (__value__ == (3702576i32)) {
                    if (_b_3700928 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3702588i32;
                    } else {
                        _gotoNext = 3702618i32;
                    };
                } else if (__value__ == (3702588i32)) {
                    @:check2r _d._ungetc(_b_3700928);
                    _gotoNext = 3703342i32;
                } else if (__value__ == (3702618i32)) {
                    _gotoNext = 3702618i32;
                    _s_3702625 = ((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__(_start_3702344) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((59 : stdgo.GoUInt8));
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_s_3702625?.__copy__(), _base_3702206, (64 : stdgo.GoInt));
                        _n_3702691 = @:tmpset0 __tmp__._0;
                        _err_3702694 = @:tmpset0 __tmp__._1;
                    };
                    if (((_err_3702694 == null) && (_n_3702691 <= (1114111i64 : stdgo.GoUInt64) : Bool) : Bool)) {
                        _gotoNext = 3702775i32;
                    } else {
                        _gotoNext = 3703342i32;
                    };
                } else if (__value__ == (3702775i32)) {
                    _text_3702018 = ((_n_3702691 : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
                    _haveText_3702037 = true;
                    _gotoNext = 3703342i32;
                } else if (__value__ == (3702851i32)) {
                    _gotoNext = 3702851i32;
                    @:check2r _d._ungetc(_b_3700928);
                    if (!@:check2r _d._readName()) {
                        _gotoNext = 3702890i32;
                    } else {
                        _gotoNext = 3702949i32;
                    };
                } else if (__value__ == (3702890i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 3702913i32;
                    } else {
                        _gotoNext = 3702949i32;
                    };
                } else if (__value__ == (3702913i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3702949i32;
                } else if (__value__ == (3702949i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3700928 = @:tmpset0 __tmp__._0;
                            _ok_3702003 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3702003) {
                            _gotoNext = 3702978i32;
                        } else {
                            _gotoNext = 3703006i32;
                        };
                    };
                } else if (__value__ == (3702978i32)) {
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3703006i32;
                } else if (__value__ == (3703006i32)) {
                    if (_b_3700928 != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3703018i32;
                    } else {
                        _gotoNext = 3703048i32;
                    };
                } else if (__value__ == (3703018i32)) {
                    @:check2r _d._ungetc(_b_3700928);
                    _gotoNext = 3703342i32;
                } else if (__value__ == (3703048i32)) {
                    _gotoNext = 3703048i32;
                    _name_3703055 = (@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__((_before_3701950 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((59 : stdgo.GoUInt8));
                    if (stdgo._internal.encoding.xml.Xml__isname._isName(_name_3703055)) {
                        _gotoNext = 3703135i32;
                    } else {
                        _gotoNext = 3703342i32;
                    };
                } else if (__value__ == (3703135i32)) {
                    _s_3703143 = (_name_3703055 : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = (stdgo._internal.encoding.xml.Xml__entity._entity != null && stdgo._internal.encoding.xml.Xml__entity._entity.exists(_s_3703143?.__copy__()) ? { _0 : stdgo._internal.encoding.xml.Xml__entity._entity[_s_3703143?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt32), _1 : false });
                            _r_3703170 = @:tmpset0 __tmp__._0;
                            _ok_3703173 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3703173) {
                            _gotoNext = 3703193i32;
                        } else if ((@:checkr _d ?? throw "null pointer dereference").entity != null) {
                            _gotoNext = 3703274i32;
                        } else {
                            _gotoNext = 3703342i32;
                        };
                    };
                } else if (__value__ == (3703193i32)) {
                    _text_3702018 = (_r_3703170 : stdgo.GoString)?.__copy__();
                    _haveText_3702037 = true;
                    _gotoNext = 3703342i32;
                } else if (__value__ == (3703274i32)) {
                    {
                        var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference").entity != null && (@:checkr _d ?? throw "null pointer dereference").entity.exists(_s_3703143?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference").entity[_s_3703143?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false });
                        _text_3702018 = @:tmpset0 __tmp__._0?.__copy__();
                        _haveText_3702037 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3703342i32;
                } else if (__value__ == (3703342i32)) {
                    if (_haveText_3702037) {
                        _gotoNext = 3703354i32;
                    } else {
                        _gotoNext = 3703456i32;
                    };
                } else if (__value__ == (3703354i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.truncate(_before_3701950);
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeString(_text_3702018?.__copy__());
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_3700870 = __tmp__0;
                        _b1_3700874 = __tmp__1;
                    };
                    _gotoNext = 3700920i32;
                } else if (__value__ == (3703456i32)) {
                    if (!(@:checkr _d ?? throw "null pointer dereference").strict) {
                        _gotoNext = 3703469i32;
                    } else {
                        _gotoNext = 3703516i32;
                    };
                } else if (__value__ == (3703469i32)) {
                    {
                        final __tmp__0 = (0 : stdgo.GoUInt8);
                        final __tmp__1 = (0 : stdgo.GoUInt8);
                        _b0_3700870 = __tmp__0;
                        _b1_3700874 = __tmp__1;
                    };
                    _gotoNext = 3700920i32;
                } else if (__value__ == (3703516i32)) {
                    _ent_3703516 = ((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes().__slice__(_before_3701950) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    if (_ent_3703516[((_ent_3703516.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((59 : stdgo.GoUInt8))) {
                        _gotoNext = 3703583i32;
                    } else {
                        _gotoNext = 3703622i32;
                    };
                } else if (__value__ == (3703583i32)) {
                    _ent_3703516 = (_ent_3703516 + ((" (no semicolon)" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3703622i32;
                } else if (__value__ == (3703622i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError((("invalid character entity " : stdgo.GoString) + _ent_3703516?.__copy__() : stdgo.GoString)?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3703752i32;
                } else if (__value__ == (3703752i32)) {
                    if (_b_3700928 == ((13 : stdgo.GoUInt8))) {
                        _gotoNext = 3703765i32;
                    } else if (((_b1_3700874 == (13 : stdgo.GoUInt8)) && (_b_3700928 == (10 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3703828i32;
                    } else {
                        _gotoNext = 3703877i32;
                    };
                } else if (__value__ == (3703765i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((10 : stdgo.GoUInt8));
                    _gotoNext = 3703908i32;
                } else if (__value__ == (3703828i32)) {
                    _gotoNext = 3703908i32;
                } else if (__value__ == (3703877i32)) {
                    _gotoNext = 3703877i32;
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3700928);
                    var __blank__ = 0i32;
                    _gotoNext = 3703908i32;
                } else if (__value__ == (3703908i32)) {
                    {
                        final __tmp__0 = _b1_3700874;
                        final __tmp__1 = _b_3700928;
                        _b0_3700870 = __tmp__0;
                        _b1_3700874 = __tmp__1;
                    };
                    _gotoNext = 3700920i32;
                } else if (__value__ == (3703927i32)) {
                    _data_3703927 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_3703927 = (_data_3703927.__slice__((0 : stdgo.GoInt), ((_data_3703927.length) - _trunc_3700887 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _buf_3704041 = _data_3703927;
                    var __blank__ = 0i32;
                    _gotoNext = 3704054i32;
                } else if (__value__ == (3704054i32)) {
                    if (((_buf_3704041.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3704071i32;
                    } else {
                        _gotoNext = 3704349i32;
                    };
                } else if (__value__ == (3704071i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_buf_3704041);
                        _r_3704075 = @:tmpset0 __tmp__._0;
                        _size_3704078 = @:tmpset0 __tmp__._1;
                    };
                    if (((_r_3704075 == (65533 : stdgo.GoInt32)) && (_size_3704078 == (1 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3704145i32;
                    } else {
                        _gotoNext = 3704209i32;
                    };
                } else if (__value__ == (3704145i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid UTF-8" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3704209i32;
                } else if (__value__ == (3704209i32)) {
                    _buf_3704041 = (_buf_3704041.__slice__(_size_3704078) : stdgo.Slice<stdgo.GoUInt8>);
                    if (!stdgo._internal.encoding.xml.Xml__isincharacterrange._isInCharacterRange(_r_3704075)) {
                        _gotoNext = 3704254i32;
                    } else {
                        _gotoNext = 3704054i32;
                    };
                } else if (__value__ == (3704254i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("illegal character code %U" : stdgo.GoString), stdgo.Go.toInterface(_r_3704075))?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3704054i32;
                } else if (__value__ == (3704349i32)) {
                    return _data_3703927;
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
        var _attr_3696688:stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
        var _b0_3696084:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ok_3691815:Bool = false;
        var _empty_3696675:Bool = false;
        var _target_3692552:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3695743:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b1_3694230:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _a_3697185:stdgo._internal.encoding.xml.Xml_attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_attr.Attr);
        var _b1_3696088:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _depth_3695267:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inquote_3695245:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3694693:stdgo.GoInt = (0 : stdgo.GoInt);
        var _newr_3693495:stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
        var _name_3696662:stdgo._internal.encoding.xml.Xml_name.Name = ({} : stdgo._internal.encoding.xml.Xml_name.Name);
        var _err_3693501:stdgo.Error = (null : stdgo.Error);
        var _ver_3693022:stdgo.GoString = ("" : stdgo.GoString);
        var _b_3691812:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _s_3695724:stdgo.GoString = ("" : stdgo.GoString);
        var _data_3694545:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b0_3694226:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _enc_3693212:stdgo.GoString = ("" : stdgo.GoString);
        var _data_3692904:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _name_3692122:stdgo._internal.encoding.xml.Xml_name.Name = ({} : stdgo._internal.encoding.xml.Xml_name.Name);
        var _j_3695866:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b0_3692744:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _data_3691914:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _data_3697611:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _data_3694936:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _content_3692995:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._t != null) {
                        _gotoNext = 3691530i32;
                    } else {
                        _gotoNext = 3691557i32;
                    };
                } else if (__value__ == (3691530i32)) {
                    return (@:checkr _d ?? throw "null pointer dereference")._t.token();
                    _gotoNext = 3691557i32;
                } else if (__value__ == (3691557i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 3691573i32;
                    } else {
                        _gotoNext = 3691599i32;
                    };
                } else if (__value__ == (3691573i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3691599i32;
                } else if (__value__ == (3691599i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._needClose) {
                        _gotoNext = 3691614i32;
                    } else {
                        _gotoNext = 3691812i32;
                    };
                } else if (__value__ == (3691614i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._needClose = false;
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_endelement.EndElement((@:checkr _d ?? throw "null pointer dereference")._toClose?.__copy__()) : stdgo._internal.encoding.xml.Xml_endelement.EndElement))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3691812i32;
                } else if (__value__ == (3691812i32)) {
                    {
                        var __tmp__ = @:check2r _d._getc();
                        _b_3691812 = @:tmpset0 __tmp__._0;
                        _ok_3691815 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_3691815) {
                        _gotoNext = 3691838i32;
                    } else {
                        _gotoNext = 3691865i32;
                    };
                } else if (__value__ == (3691838i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3691865i32;
                } else if (__value__ == (3691865i32)) {
                    if (_b_3691812 != ((60 : stdgo.GoUInt8))) {
                        _gotoNext = 3691877i32;
                    } else {
                        _gotoNext = 3692018i32;
                    };
                } else if (__value__ == (3691877i32)) {
                    @:check2r _d._ungetc(_b_3691812);
                    _data_3691914 = @:check2r _d._text((-1 : stdgo.GoInt), false);
                    if (_data_3691914 == null) {
                        _gotoNext = 3691957i32;
                    } else {
                        _gotoNext = 3691986i32;
                    };
                } else if (__value__ == (3691957i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3691986i32;
                } else if (__value__ == (3691986i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3691914 : stdgo._internal.encoding.xml.Xml_chardata.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3692018i32;
                } else if (__value__ == (3692018i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3691812 = @:tmpset0 __tmp__._0;
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3692047i32;
                        } else {
                            _gotoNext = 3692073i32;
                        };
                    };
                } else if (__value__ == (3692047i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3692073i32;
                } else if (__value__ == (3692073i32)) {
                    _gotoNext = 3692073i32;
                    {
                        final __value__ = _b_3691812;
                        if (__value__ == ((47 : stdgo.GoUInt8))) {
                            _gotoNext = 3692085i32;
                        } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                            _gotoNext = 3692503i32;
                        } else if (__value__ == ((33 : stdgo.GoUInt8))) {
                            _gotoNext = 3693831i32;
                        } else {
                            _gotoNext = 3696640i32;
                        };
                    };
                } else if (__value__ == (3692085i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._nsname();
                            _name_3692122 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3692164i32;
                        } else {
                            _gotoNext = 3692279i32;
                        };
                    };
                } else if (__value__ == (3692164i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3692185i32;
                    } else {
                        _gotoNext = 3692255i32;
                    };
                } else if (__value__ == (3692185i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected element name after </" : stdgo.GoString));
                    _gotoNext = 3692255i32;
                } else if (__value__ == (3692255i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3692279i32;
                } else if (__value__ == (3692279i32)) {
                    @:check2r _d._space();
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3691812 = @:tmpset0 __tmp__._0;
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3692320i32;
                        } else {
                            _gotoNext = 3692349i32;
                        };
                    };
                } else if (__value__ == (3692320i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3692349i32;
                } else if (__value__ == (3692349i32)) {
                    if (_b_3691812 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3692361i32;
                    } else {
                        _gotoNext = 3692472i32;
                    };
                } else if (__value__ == (3692361i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(((("invalid characters between </" : stdgo.GoString) + _name_3692122.local?.__copy__() : stdgo.GoString) + (" and >" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3692472i32;
                } else if (__value__ == (3692472i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_endelement.EndElement(_name_3692122?.__copy__()) : stdgo._internal.encoding.xml.Xml_endelement.EndElement))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3696640i32;
                } else if (__value__ == (3692503i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._name();
                            _target_3692552 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3692598i32;
                        } else {
                            _gotoNext = 3692712i32;
                        };
                    };
                } else if (__value__ == (3692598i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3692619i32;
                    } else {
                        _gotoNext = 3692688i32;
                    };
                } else if (__value__ == (3692619i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected target name after <?" : stdgo.GoString));
                    _gotoNext = 3692688i32;
                } else if (__value__ == (3692688i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3692712i32;
                } else if (__value__ == (3692712i32)) {
                    @:check2r _d._space();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    var __blank__ = 0i32;
                    _gotoNext = 3692754i32;
                } else if (__value__ == (3692754i32)) {
                    if (true) {
                        _gotoNext = 3692758i32;
                    } else {
                        _gotoNext = 3692904i32;
                    };
                } else if (__value__ == (3692758i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3691812 = @:tmpset0 __tmp__._0;
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3692792i32;
                        } else {
                            _gotoNext = 3692824i32;
                        };
                    };
                } else if (__value__ == (3692792i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3692824i32;
                } else if (__value__ == (3692824i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3691812);
                    if (((_b0_3692744 == (63 : stdgo.GoUInt8)) && (_b_3691812 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3692871i32;
                    } else {
                        _gotoNext = 3692891i32;
                    };
                } else if (__value__ == (3692871i32)) {
                    _gotoNext = 3692904i32;
                } else if (__value__ == (3692891i32)) {
                    _b0_3692744 = _b_3691812;
                    _gotoNext = 3692754i32;
                } else if (__value__ == (3692904i32)) {
                    _data_3692904 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_3692904 = (_data_3692904.__slice__((0 : stdgo.GoInt), ((_data_3692904.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_target_3692552 == (("xml" : stdgo.GoString))) {
                        _gotoNext = 3692990i32;
                    } else {
                        _gotoNext = 3693794i32;
                    };
                } else if (__value__ == (3692990i32)) {
                    _content_3692995 = (_data_3692904 : stdgo.GoString)?.__copy__();
                    _ver_3693022 = stdgo._internal.encoding.xml.Xml__procinst._procInst(("version" : stdgo.GoString), _content_3692995?.__copy__())?.__copy__();
                    if (((_ver_3693022 != (stdgo.Go.str() : stdgo.GoString)) && (_ver_3693022 != ("1.0" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3693090i32;
                    } else {
                        _gotoNext = 3693212i32;
                    };
                } else if (__value__ == (3693090i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: unsupported version %q; only version 1.0 is supported" : stdgo.GoString), stdgo.Go.toInterface(_ver_3693022));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3693212i32;
                } else if (__value__ == (3693212i32)) {
                    _enc_3693212 = stdgo._internal.encoding.xml.Xml__procinst._procInst(("encoding" : stdgo.GoString), _content_3692995?.__copy__())?.__copy__();
                    if ((((_enc_3693212 != ((stdgo.Go.str() : stdgo.GoString)) && _enc_3693212 != (("utf-8" : stdgo.GoString)) : Bool) && _enc_3693212 != (("UTF-8" : stdgo.GoString)) : Bool) && !stdgo._internal.strings.Strings_equalfold.equalFold(_enc_3693212?.__copy__(), ("utf-8" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3693337i32;
                    } else {
                        _gotoNext = 3693794i32;
                    };
                } else if (__value__ == (3693337i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference").charsetReader == null) {
                        _gotoNext = 3693369i32;
                    } else {
                        _gotoNext = 3693495i32;
                    };
                } else if (__value__ == (3693369i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: encoding %q declared but Decoder.CharsetReader is nil" : stdgo.GoString), stdgo.Go.toInterface(_enc_3693212));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3693495i32;
                } else if (__value__ == (3693495i32)) {
                    {
                        var __tmp__ = (@:checkr _d ?? throw "null pointer dereference").charsetReader(_enc_3693212?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference")._r) : stdgo._internal.io.Io_reader.Reader)) : stdgo._internal.io.Io_reader.Reader));
                        _newr_3693495 = @:tmpset0 __tmp__._0;
                        _err_3693501 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3693501 != null) {
                        _gotoNext = 3693564i32;
                    } else {
                        _gotoNext = 3693664i32;
                    };
                } else if (__value__ == (3693564i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: opening charset %q: %w" : stdgo.GoString), stdgo.Go.toInterface(_enc_3693212), stdgo.Go.toInterface(_err_3693501));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3693664i32;
                } else if (__value__ == (3693664i32)) {
                    if (_newr_3693495 == null) {
                        _gotoNext = 3693679i32;
                    } else {
                        _gotoNext = 3693760i32;
                    };
                } else if (__value__ == (3693679i32)) {
                    throw stdgo.Go.toInterface((("CharsetReader returned a nil Reader for charset " : stdgo.GoString) + _enc_3693212?.__copy__() : stdgo.GoString));
                    _gotoNext = 3693760i32;
                } else if (__value__ == (3693760i32)) {
                    @:check2r _d._switchToReader(_newr_3693495);
                    _gotoNext = 3693794i32;
                } else if (__value__ == (3693794i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_procinst.ProcInst(_target_3692552?.__copy__(), _data_3692904) : stdgo._internal.encoding.xml.Xml_procinst.ProcInst))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3696640i32;
                } else if (__value__ == (3693831i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3691812 = @:tmpset0 __tmp__._0;
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3693909i32;
                        } else {
                            _gotoNext = 3693938i32;
                        };
                    };
                } else if (__value__ == (3693909i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3693938i32;
                } else if (__value__ == (3693938i32)) {
                    _gotoNext = 3693938i32;
                    {
                        final __value__ = _b_3691812;
                        if (__value__ == ((45 : stdgo.GoUInt8))) {
                            _gotoNext = 3693951i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3694643i32;
                        } else {
                            _gotoNext = 3695208i32;
                        };
                    };
                } else if (__value__ == (3693951i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3691812 = @:tmpset0 __tmp__._0;
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3694035i32;
                        } else {
                            _gotoNext = 3694067i32;
                        };
                    };
                } else if (__value__ == (3694035i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3694067i32;
                } else if (__value__ == (3694067i32)) {
                    if (_b_3691812 != ((45 : stdgo.GoUInt8))) {
                        _gotoNext = 3694079i32;
                    } else {
                        _gotoNext = 3694205i32;
                    };
                } else if (__value__ == (3694079i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid sequence <!- not part of <!--" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3694205i32;
                } else if (__value__ == (3694205i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    var __blank__ = 0i32;
                    _gotoNext = 3694241i32;
                } else if (__value__ == (3694241i32)) {
                    if (true) {
                        _gotoNext = 3694245i32;
                    } else {
                        _gotoNext = 3694545i32;
                    };
                } else if (__value__ == (3694245i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3691812 = @:tmpset0 __tmp__._0;
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3694280i32;
                        } else {
                            _gotoNext = 3694315i32;
                        };
                    };
                } else if (__value__ == (3694280i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3694315i32;
                } else if (__value__ == (3694315i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3691812);
                    if (((_b0_3694226 == (45 : stdgo.GoUInt8)) && (_b1_3694230 == (45 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3694364i32;
                    } else {
                        _gotoNext = 3694522i32;
                    };
                } else if (__value__ == (3694364i32)) {
                    if (_b_3691812 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3694383i32;
                    } else {
                        _gotoNext = 3694506i32;
                    };
                } else if (__value__ == (3694383i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid sequence \"--\" not allowed in comments" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3694506i32;
                } else if (__value__ == (3694506i32)) {
                    _gotoNext = 3694545i32;
                } else if (__value__ == (3694522i32)) {
                    {
                        final __tmp__0 = _b1_3694230;
                        final __tmp__1 = _b_3691812;
                        _b0_3694226 = __tmp__0;
                        _b1_3694230 = __tmp__1;
                    };
                    _gotoNext = 3694241i32;
                } else if (__value__ == (3694545i32)) {
                    _data_3694545 = @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes();
                    _data_3694545 = (_data_3694545.__slice__((0 : stdgo.GoInt), ((_data_3694545.length) - (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3694545 : stdgo._internal.encoding.xml.Xml_comment.Comment))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3695208i32;
                } else if (__value__ == (3694643i32)) {
                    _i_3694693 = (0 : stdgo.GoInt);
                    _gotoNext = 3694689i32;
                } else if (__value__ == (3694689i32)) {
                    if ((_i_3694693 < (6 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3694712i32;
                    } else {
                        _gotoNext = 3694936i32;
                    };
                } else if (__value__ == (3694708i32)) {
                    _i_3694693++;
                    _gotoNext = 3694689i32;
                } else if (__value__ == (3694712i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3691812 = @:tmpset0 __tmp__._0;
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3694747i32;
                        } else {
                            _gotoNext = 3694782i32;
                        };
                    };
                } else if (__value__ == (3694747i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3694782i32;
                } else if (__value__ == (3694782i32)) {
                    if (_b_3691812 != ((("CDATA[" : stdgo.GoString) : stdgo.GoString)[(_i_3694693 : stdgo.GoInt)])) {
                        _gotoNext = 3694802i32;
                    } else {
                        _gotoNext = 3694708i32;
                    };
                } else if (__value__ == (3694802i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("invalid <![ sequence" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3694708i32;
                } else if (__value__ == (3694936i32)) {
                    _data_3694936 = @:check2r _d._text((-1 : stdgo.GoInt), true);
                    if (_data_3694936 == null) {
                        _gotoNext = 3694979i32;
                    } else {
                        _gotoNext = 3695011i32;
                    };
                } else if (__value__ == (3694979i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3695011i32;
                } else if (__value__ == (3695011i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data_3694936 : stdgo._internal.encoding.xml.Xml_chardata.CharData))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3695208i32;
                } else if (__value__ == (3695208i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.reset();
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3691812);
                    _inquote_3695245 = (0 : stdgo.GoUInt8);
                    _depth_3695267 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3695280i32;
                } else if (__value__ == (3695280i32)) {
                    if (true) {
                        _gotoNext = 3695284i32;
                    } else {
                        _gotoNext = 3696550i32;
                    };
                } else if (__value__ == (3695284i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3691812 = @:tmpset0 __tmp__._0;
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3695318i32;
                        } else {
                            _gotoNext = 3695350i32;
                        };
                    };
                } else if (__value__ == (3695318i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3695350i32;
                } else if (__value__ == (3695350i32)) {
                    if (((_inquote_3695245 == ((0 : stdgo.GoUInt8)) && _b_3691812 == ((62 : stdgo.GoUInt8)) : Bool) && (_depth_3695267 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3695392i32;
                    } else {
                        _gotoNext = 3695411i32;
                    };
                } else if (__value__ == (3695392i32)) {
                    _gotoNext = 3696550i32;
                } else if (__value__ == (3695411i32)) {
                    _gotoNext = 3695411i32;
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_b_3691812);
                    _gotoNext = 3695445i32;
                } else if (__value__ == (3695445i32)) {
                    if (_b_3691812 == (_inquote_3695245)) {
                        _gotoNext = 3695457i32;
                    } else if (_inquote_3695245 != ((0 : stdgo.GoUInt8))) {
                        _gotoNext = 3695496i32;
                    } else if (((_b_3691812 == (39 : stdgo.GoUInt8)) || (_b_3691812 == (34 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3695555i32;
                    } else if (((_b_3691812 == (62 : stdgo.GoUInt8)) && (_inquote_3695245 == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3695603i32;
                    } else if (((_b_3691812 == (60 : stdgo.GoUInt8)) && (_inquote_3695245 == (0 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3695650i32;
                    } else {
                        _gotoNext = 3695280i32;
                    };
                } else if (__value__ == (3695457i32)) {
                    _inquote_3695245 = (0 : stdgo.GoUInt8);
                    _gotoNext = 3695280i32;
                } else if (__value__ == (3695496i32)) {
                    _gotoNext = 3695280i32;
                } else if (__value__ == (3695555i32)) {
                    _inquote_3695245 = _b_3691812;
                    _gotoNext = 3695280i32;
                } else if (__value__ == (3695603i32)) {
                    _depth_3695267--;
                    _gotoNext = 3695280i32;
                } else if (__value__ == (3695650i32)) {
                    _s_3695724 = ("!--" : stdgo.GoString);
                    _i_3695743 = (0 : stdgo.GoInt);
                    _gotoNext = 3695739i32;
                } else if (__value__ == (3695739i32)) {
                    if ((_i_3695743 < (_s_3695724.length) : Bool)) {
                        _gotoNext = 3695767i32;
                    } else {
                        _gotoNext = 3696015i32;
                    };
                } else if (__value__ == (3695763i32)) {
                    _i_3695743++;
                    _gotoNext = 3695739i32;
                } else if (__value__ == (3695767i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3691812 = @:tmpset0 __tmp__._0;
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3695803i32;
                        } else {
                            _gotoNext = 3695841i32;
                        };
                    };
                } else if (__value__ == (3695803i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3695841i32;
                } else if (__value__ == (3695841i32)) {
                    if (_b_3691812 != (_s_3695724[(_i_3695743 : stdgo.GoInt)])) {
                        _gotoNext = 3695854i32;
                    } else {
                        _gotoNext = 3695763i32;
                    };
                } else if (__value__ == (3695854i32)) {
                    _j_3695866 = (0 : stdgo.GoInt);
                    _gotoNext = 3695862i32;
                } else if (__value__ == (3695862i32)) {
                    if ((_j_3695866 < _i_3695743 : Bool)) {
                        _gotoNext = 3695885i32;
                    } else {
                        _gotoNext = 3695930i32;
                    };
                } else if (__value__ == (3695885i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte(_s_3695724[(_j_3695866 : stdgo.GoInt)]);
                    _j_3695866++;
                    _gotoNext = 3695862i32;
                } else if (__value__ == (3695930i32)) {
                    _depth_3695267++;
                    _gotoNext = 3695411i32;
                } else if (__value__ == (3696015i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.truncate((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3696100i32;
                } else if (__value__ == (3696100i32)) {
                    if (true) {
                        _gotoNext = 3696104i32;
                    } else {
                        _gotoNext = 3696518i32;
                    };
                } else if (__value__ == (3696104i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3691812 = @:tmpset0 __tmp__._0;
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3696140i32;
                        } else {
                            _gotoNext = 3696178i32;
                        };
                    };
                } else if (__value__ == (3696140i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3696178i32;
                } else if (__value__ == (3696178i32)) {
                    if (((_b0_3696084 == ((45 : stdgo.GoUInt8)) && _b1_3696088 == ((45 : stdgo.GoUInt8)) : Bool) && (_b_3691812 == (62 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3696216i32;
                    } else {
                        _gotoNext = 3696242i32;
                    };
                } else if (__value__ == (3696216i32)) {
                    _gotoNext = 3696518i32;
                } else if (__value__ == (3696242i32)) {
                    {
                        final __tmp__0 = _b1_3696088;
                        final __tmp__1 = _b_3691812;
                        _b0_3696084 = __tmp__0;
                        _b1_3696088 = __tmp__1;
                    };
                    _gotoNext = 3696100i32;
                } else if (__value__ == (3696518i32)) {
                    @:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.writeByte((32 : stdgo.GoUInt8));
                    _gotoNext = 3695280i32;
                } else if (__value__ == (3696550i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((@:check2 (@:checkr _d ?? throw "null pointer dereference")._buf.bytes() : stdgo._internal.encoding.xml.Xml_directive.Directive))), _1 : (null : stdgo.Error) };
                    _gotoNext = 3696640i32;
                } else if (__value__ == (3696640i32)) {
                    @:check2r _d._ungetc(_b_3691812);
                    {
                        {
                            var __tmp__ = @:check2r _d._nsname();
                            _name_3696662 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3696735i32;
                        } else {
                            _gotoNext = 3696844i32;
                        };
                    };
                } else if (__value__ == (3696735i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3696755i32;
                    } else {
                        _gotoNext = 3696821i32;
                    };
                } else if (__value__ == (3696755i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected element name after <" : stdgo.GoString));
                    _gotoNext = 3696821i32;
                } else if (__value__ == (3696821i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3696844i32;
                } else if (__value__ == (3696844i32)) {
                    _attr_3696688 = (new stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.xml.Xml_attr.Attr)])) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
                    var __blank__ = 0i32;
                    _gotoNext = 3696861i32;
                } else if (__value__ == (3696861i32)) {
                    if (true) {
                        _gotoNext = 3696865i32;
                    } else {
                        _gotoNext = 3697737i32;
                    };
                } else if (__value__ == (3696865i32)) {
                    @:check2r _d._space();
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3691812 = @:tmpset0 __tmp__._0;
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3696910i32;
                        } else {
                            _gotoNext = 3696939i32;
                        };
                    };
                } else if (__value__ == (3696910i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3696939i32;
                } else if (__value__ == (3696939i32)) {
                    if (_b_3691812 == ((47 : stdgo.GoUInt8))) {
                        _gotoNext = 3696951i32;
                    } else {
                        _gotoNext = 3697141i32;
                    };
                } else if (__value__ == (3696951i32)) {
                    _empty_3696675 = true;
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3691812 = @:tmpset0 __tmp__._0;
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3697001i32;
                        } else {
                            _gotoNext = 3697033i32;
                        };
                    };
                } else if (__value__ == (3697001i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3697033i32;
                } else if (__value__ == (3697033i32)) {
                    if (_b_3691812 != ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3697045i32;
                    } else {
                        _gotoNext = 3697129i32;
                    };
                } else if (__value__ == (3697045i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected /> in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3697129i32;
                } else if (__value__ == (3697129i32)) {
                    _gotoNext = 3697737i32;
                } else if (__value__ == (3697141i32)) {
                    if (_b_3691812 == ((62 : stdgo.GoUInt8))) {
                        _gotoNext = 3697153i32;
                    } else {
                        _gotoNext = 3697170i32;
                    };
                } else if (__value__ == (3697153i32)) {
                    _gotoNext = 3697737i32;
                } else if (__value__ == (3697170i32)) {
                    @:check2r _d._ungetc(_b_3691812);
                    _a_3697185 = (new stdgo._internal.encoding.xml.Xml_attr.Attr() : stdgo._internal.encoding.xml.Xml_attr.Attr);
                    {
                        {
                            var __tmp__ = @:check2r _d._nsname();
                            _a_3697185.name = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3697231i32;
                        } else {
                            _gotoNext = 3697350i32;
                        };
                    };
                } else if (__value__ == (3697231i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 3697252i32;
                    } else {
                        _gotoNext = 3697326i32;
                    };
                } else if (__value__ == (3697252i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("expected attribute name in element" : stdgo.GoString));
                    _gotoNext = 3697326i32;
                } else if (__value__ == (3697326i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3697350i32;
                } else if (__value__ == (3697350i32)) {
                    @:check2r _d._space();
                    {
                        {
                            var __tmp__ = @:check2r _d._mustgetc();
                            _b_3691812 = @:tmpset0 __tmp__._0;
                            _ok_3691815 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_3691815) {
                            _gotoNext = 3697391i32;
                        } else {
                            _gotoNext = 3697420i32;
                        };
                    };
                } else if (__value__ == (3697391i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3697420i32;
                } else if (__value__ == (3697420i32)) {
                    if (_b_3691812 != ((61 : stdgo.GoUInt8))) {
                        _gotoNext = 3697432i32;
                    } else {
                        _gotoNext = 3697593i32;
                    };
                } else if (__value__ == (3697432i32)) {
                    if ((@:checkr _d ?? throw "null pointer dereference").strict) {
                        _gotoNext = 3697449i32;
                    } else {
                        _gotoNext = 3697546i32;
                    };
                } else if (__value__ == (3697449i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._err = @:check2r _d._syntaxError(("attribute name without = in element" : stdgo.GoString));
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3697546i32;
                } else if (__value__ == (3697546i32)) {
                    @:check2r _d._ungetc(_b_3691812);
                    _a_3697185.value = _a_3697185.name.local?.__copy__();
                    _gotoNext = 3697710i32;
                } else if (__value__ == (3697593i32)) {
                    _gotoNext = 3697593i32;
                    @:check2r _d._space();
                    _data_3697611 = @:check2r _d._attrval();
                    if (_data_3697611 == null) {
                        _gotoNext = 3697649i32;
                    } else {
                        _gotoNext = 3697681i32;
                    };
                } else if (__value__ == (3697649i32)) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_token.Token), _1 : (@:checkr _d ?? throw "null pointer dereference")._err };
                    _gotoNext = 3697681i32;
                } else if (__value__ == (3697681i32)) {
                    _a_3697185.value = (_data_3697611 : stdgo.GoString)?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 3697710i32;
                } else if (__value__ == (3697710i32)) {
                    _attr_3696688 = (_attr_3696688.__append__(_a_3697185?.__copy__()));
                    _gotoNext = 3696861i32;
                } else if (__value__ == (3697737i32)) {
                    if (_empty_3696675) {
                        _gotoNext = 3697746i32;
                    } else {
                        _gotoNext = 3697792i32;
                    };
                } else if (__value__ == (3697746i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._needClose = true;
                    (@:checkr _d ?? throw "null pointer dereference")._toClose = _name_3696662?.__copy__();
                    _gotoNext = 3697792i32;
                } else if (__value__ == (3697792i32)) {
                    return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_startelement.StartElement(_name_3696662?.__copy__(), _attr_3696688) : stdgo._internal.encoding.xml.Xml_startelement.StartElement))), _1 : (null : stdgo.Error) };
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
        var _err_3747081:stdgo.Error = (null : stdgo.Error);
        var _t_3746913:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _tok_3746792:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _finfo_3745656:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _err_3747206:stdgo.Error = (null : stdgo.Error);
        var _consumed2_3747070:Bool = false;
        var _t_3747286:stdgo._internal.encoding.xml.Xml_endelement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement);
        var _j_3745830:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3745628:stdgo.GoInt = (0 : stdgo.GoInt);
        var _recurse_3745600:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3746913;
                    _gotoNext = 3746780i32;
                    _recurse_3745600 = false;
                    _gotoNext = 3745617i32;
                } else if (__value__ == (3745617i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3746523i32;
                    } else {
                        _gotoNext = 3746527i32;
                    };
                } else if (__value__ == (3745628i32)) {
                    _i_3745628++;
                    _gotoNext = 3746524i32;
                } else if (__value__ == (3745652i32)) {
                    _finfo_3745656 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3745628 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    if (((((@:checkr _finfo_3745656 ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || (((@:checkr _finfo_3745656 ?? throw "null pointer dereference")._parents.length) < (_parents.length) : Bool) : Bool) || ((@:checkr _finfo_3745656 ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) && (@:checkr _finfo_3745656 ?? throw "null pointer dereference")._xmlns != ((@:checkr _start ?? throw "null pointer dereference").name.space) : Bool) : Bool)) {
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
                    if (_parents[(_j_3745830 : stdgo.GoInt)] != ((@:checkr _finfo_3745656 ?? throw "null pointer dereference")._parents[(_j_3745830 : stdgo.GoInt)])) {
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
                    if ((((@:checkr _finfo_3745656 ?? throw "null pointer dereference")._parents.length == (_parents.length)) && ((@:checkr _finfo_3745656 ?? throw "null pointer dereference")._name == (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3745991i32;
                    } else {
                        _gotoNext = 3746126i32;
                    };
                } else if (__value__ == (3745991i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : @:check2r _d._unmarshal(@:check2r _finfo_3745656._value(_sv?.__copy__(), true)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3746126i32;
                } else if (__value__ == (3746126i32)) {
                    if (((((@:checkr _finfo_3745656 ?? throw "null pointer dereference")._parents.length) > (_parents.length) : Bool) && ((@:checkr _finfo_3745656 ?? throw "null pointer dereference")._parents[(_parents.length : stdgo.GoInt)] == (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3746214i32;
                    } else {
                        _gotoNext = 3745628i32;
                    };
                } else if (__value__ == (3746214i32)) {
                    _recurse_3745600 = true;
                    _parents = ((@:checkr _finfo_3745656 ?? throw "null pointer dereference")._parents.__slice__(0, ((_parents.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 3746527i32;
                } else if (__value__ == (3746523i32)) {
                    _i_3745628 = 0i32;
                    _gotoNext = 3746524i32;
                } else if (__value__ == (3746524i32)) {
                    if (_i_3745628 < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
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
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : (null : stdgo.Error) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
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
                        var __tmp__ = @:check2r _d.token();
                        _tok_3746792 = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        _gotoNext = 3746841i32;
                    } else {
                        _gotoNext = 3746869i32;
                    };
                } else if (__value__ == (3746841i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3746869i32;
                } else if (__value__ == (3746869i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3746869i32;
                    {
                        final __type__ = _tok_3746792;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value;
                            _t_3746913 = _t;
                            _gotoNext = 3746896i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value;
                            _t_3747286 = _t;
                            _gotoNext = 3747271i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_token.Token = __type__?.__underlying__();
                            _gotoNext = 3746780i32;
                        };
                    };
                    _gotoNext = 3746780i32;
                } else if (__value__ == (3746896i32)) {
                    {
                        var __tmp__ = @:check2r _d._unmarshalPath(_tinfo, _sv?.__copy__(), _parents, (stdgo.Go.setRef(_t_3746913) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), _depth);
                        _consumed2_3747070 = @:tmpset0 __tmp__._0;
                        _err_3747081 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3747081 != null) {
                        _gotoNext = 3747152i32;
                    } else {
                        _gotoNext = 3747183i32;
                    };
                } else if (__value__ == (3747152i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_3747081 };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3747183i32;
                } else if (__value__ == (3747183i32)) {
                    if (!_consumed2_3747070) {
                        _gotoNext = 3747197i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3747197i32)) {
                    {
                        _err_3747206 = @:check2r _d.skip();
                        if (_err_3747206 != null) {
                            _gotoNext = 3747234i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (3747234i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_3747206 };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 0i32;
                } else if (__value__ == (3747271i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : (null : stdgo.Error) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = _t_3747286;
                    _gotoNext = 3746780i32;
                } else if (__value__ == (3747315i32)) {
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
        var _v_3738185:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _err_3742070:stdgo.Error = (null : stdgo.Error);
        var _finfo_3740531:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _i_3740071:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3740012_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var loopBreak = false;
        var _pv_3737717:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _t_3743356:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _finfo_3740101:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _handled_3740034:Bool = false;
        var _err_3738729:stdgo.Error = (null : stdgo.Error);
        var _t_3742260:stdgo._internal.encoding.xml.Xml_endelement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement);
        var _tok_3741599:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _i_3740762:stdgo.GoInt = (0 : stdgo.GoInt);
        var _finfo_3739352:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _err_3743135:stdgo.Error = (null : stdgo.Error);
        var _err_3742990:stdgo.Error = (null : stdgo.Error);
        var _err_3738154:stdgo.Error = (null : stdgo.Error);
        var _any_3740054:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3739890:Bool = false;
        var _saveXMLIndex_3738030:stdgo.GoInt = (0 : stdgo.GoInt);
        var _consumed_3741708:Bool = false;
        var _a_3740007:stdgo._internal.encoding.xml.Xml_attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_attr.Attr);
        var _fv_3739842:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _n_3738641:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3736892:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _t_3743207:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _strv_3740181:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _saveData_3737921:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _ok_3736679:Bool = false;
        var _err_3740611:stdgo.Error = (null : stdgo.Error);
        var _typ_3739113:stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
        var _t_3736676:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _pv_3742892:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _strv_3740563:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _saveXMLData_3738049:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err_3742703:stdgo.Error = (null : stdgo.Error);
        var _savedOffset_3741519:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3740322:stdgo.Error = (null : stdgo.Error);
        var _tok_3736609:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _t_3742514:stdgo._internal.encoding.xml.Xml_comment.Comment = new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0);
        var _finfo_3740791:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _tinfo_3738129:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>);
        var _saveAny_3738071:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _t_3742435:stdgo._internal.encoding.xml.Xml_chardata.CharData = new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0);
        var _typ_3738491:stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
        var _err_3736614:stdgo.Error = (null : stdgo.Error);
        var _err_3742185:stdgo.Error = (null : stdgo.Error);
        var _err_3741604:stdgo.Error = (null : stdgo.Error);
        var _e_3739612:stdgo.GoString = ("" : stdgo.GoString);
        var _comment_3737950:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _data_3737899:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _pv_3737383:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _t_3741703:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _sv_3738100:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _saveXML_3738001:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _saveComment_3737972:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3741703;
                    _gotoNext = 3741507i32;
                    var __blank__ = _t_3742435;
                    _gotoNext = 3741507i32;
                    var __blank__ = _t_3742514;
                    _gotoNext = 3741507i32;
                    if (((_depth >= (10000 : stdgo.GoInt) : Bool) || (true && (_depth >= (5000 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3736509i32;
                    } else {
                        _gotoNext = 3736580i32;
                    };
                } else if (__value__ == (3736509i32)) {
                    return stdgo._internal.encoding.xml.Xml__errunmarshaldepth._errUnmarshalDepth;
                    _gotoNext = 3736580i32;
                } else if (__value__ == (3736580i32)) {
                    if ((_start == null || (_start : Dynamic).__nil__)) {
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
                        var __tmp__ = @:check2r _d.token();
                        _tok_3736609 = @:tmpset0 __tmp__._0;
                        _err_3736614 = @:tmpset0 __tmp__._1;
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
                                { _0 : (stdgo.Go.typeAssert((_tok_3736609 : stdgo._internal.encoding.xml.Xml_startelement.StartElement)) : stdgo._internal.encoding.xml.Xml_startelement.StartElement), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement), _1 : false };
                            };
                            _t_3736676 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3736679 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3736679) {
                            _gotoNext = 3736708i32;
                        } else {
                            _gotoNext = 3736600i32;
                        };
                    };
                } else if (__value__ == (3736708i32)) {
                    _start = (stdgo.Go.setRef(_t_3736676) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>);
                    _gotoNext = 3736837i32;
                } else if (__value__ == (3736837i32)) {
                    if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_val.isNil() : Bool)) {
                        _gotoNext = 3736888i32;
                    } else {
                        _gotoNext = 3736977i32;
                    };
                } else if (__value__ == (3736888i32)) {
                    _e_3736892 = _val.elem()?.__copy__();
                    if (((_e_3736892.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_e_3736892.isNil() : Bool)) {
                        _gotoNext = 3736955i32;
                    } else {
                        _gotoNext = 3736977i32;
                    };
                } else if (__value__ == (3736955i32)) {
                    _val = _e_3736892?.__copy__();
                    _gotoNext = 3736977i32;
                } else if (__value__ == (3736977i32)) {
                    if (_val.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
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
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalertype._unmarshalerType) : Bool)) {
                        _gotoNext = 3737166i32;
                    } else {
                        _gotoNext = 3737362i32;
                    };
                } else if (__value__ == (3737166i32)) {
                    return @:check2r _d._unmarshalInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3737362i32;
                } else if (__value__ == (3737362i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3737379i32;
                    } else {
                        _gotoNext = 3737543i32;
                    };
                } else if (__value__ == (3737379i32)) {
                    _pv_3737383 = _val.addr()?.__copy__();
                    if ((_pv_3737383.canInterface() && _pv_3737383.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalertype._unmarshalerType) : Bool)) {
                        _gotoNext = 3737464i32;
                    } else {
                        _gotoNext = 3737543i32;
                    };
                } else if (__value__ == (3737464i32)) {
                    return @:check2r _d._unmarshalInterface((stdgo.Go.typeAssert((_pv_3737383.interface_() : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler), _start);
                    _gotoNext = 3737543i32;
                } else if (__value__ == (3737543i32)) {
                    if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3737611i32;
                    } else {
                        _gotoNext = 3737696i32;
                    };
                } else if (__value__ == (3737611i32)) {
                    return @:check2r _d._unmarshalTextInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler));
                    _gotoNext = 3737696i32;
                } else if (__value__ == (3737696i32)) {
                    if (_val.canAddr()) {
                        _gotoNext = 3737713i32;
                    } else {
                        _gotoNext = 3737891i32;
                    };
                } else if (__value__ == (3737713i32)) {
                    _pv_3737717 = _val.addr()?.__copy__();
                    if ((_pv_3737717.canInterface() && _pv_3737717.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3737802i32;
                    } else {
                        _gotoNext = 3737891i32;
                    };
                } else if (__value__ == (3737802i32)) {
                    return @:check2r _d._unmarshalTextInterface((stdgo.Go.typeAssert((_pv_3737717.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler));
                    _gotoNext = 3737891i32;
                } else if (__value__ == (3737891i32)) {
                    _gotoNext = 3738178i32;
                } else if (__value__ == (3738178i32)) {
                    {
                        _v_3738185 = _val?.__copy__();
                        {
                            final __value__ = _v_3738185.kind();
                            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3738275i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3738469i32;
                            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3738838i32;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
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
                    return @:check2r _d.skip();
                    _gotoNext = 3741500i32;
                } else if (__value__ == (3738469i32)) {
                    _typ_3738491 = _v_3738185.type();
                    if (_typ_3738491.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
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
                        _err_3738729 = @:check2r _d._unmarshal(_v_3738185.index(_n_3738641)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
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
                    if ((_typ_3739113.string() : String) == (stdgo._internal.encoding.xml.Xml__nametype._nameType.string() : String)) {
                        _gotoNext = 3739150i32;
                    } else {
                        _gotoNext = 3739206i32;
                    };
                } else if (__value__ == (3739150i32)) {
                    _v_3738185.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _start ?? throw "null pointer dereference").name)))?.__copy__());
                    _gotoNext = 3741500i32;
                } else if (__value__ == (3739206i32)) {
                    _sv_3738100 = _v_3738185?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.encoding.xml.Xml__gettypeinfo._getTypeInfo(_typ_3739113);
                        _tinfo_3738129 = @:tmpset0 __tmp__._0;
                        _err_3738154 = @:tmpset0 __tmp__._1;
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
                    if (((@:checkr _tinfo_3738129 ?? throw "null pointer dereference")._xmlname != null && (((@:checkr _tinfo_3738129 ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__ == null || !((@:checkr _tinfo_3738129 ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__))) {
                        _gotoNext = 3739347i32;
                    } else {
                        _gotoNext = 3740000i32;
                    };
                } else if (__value__ == (3739347i32)) {
                    _finfo_3739352 = (@:checkr _tinfo_3738129 ?? throw "null pointer dereference")._xmlname;
                    if ((((@:checkr _finfo_3739352 ?? throw "null pointer dereference")._name != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _finfo_3739352 ?? throw "null pointer dereference")._name != (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3739432i32;
                    } else {
                        _gotoNext = 3739550i32;
                    };
                } else if (__value__ == (3739432i32)) {
                    return stdgo.Go.asInterface((((((("expected element type <" : stdgo.GoString) + (@:checkr _finfo_3739352 ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString) + ("> but have <" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _start ?? throw "null pointer dereference").name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.encoding.xml.Xml_unmarshalerror.UnmarshalError));
                    _gotoNext = 3739550i32;
                } else if (__value__ == (3739550i32)) {
                    if ((((@:checkr _finfo_3739352 ?? throw "null pointer dereference")._xmlns != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _finfo_3739352 ?? throw "null pointer dereference")._xmlns != (@:checkr _start ?? throw "null pointer dereference").name.space) : Bool)) {
                        _gotoNext = 3739606i32;
                    } else {
                        _gotoNext = 3739842i32;
                    };
                } else if (__value__ == (3739606i32)) {
                    _e_3739612 = ((((("expected element <" : stdgo.GoString) + (@:checkr _finfo_3739352 ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString) + ("> in name space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _finfo_3739352 ?? throw "null pointer dereference")._xmlns?.__copy__() : stdgo.GoString) + (" but have " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    if ((@:checkr _start ?? throw "null pointer dereference").name.space == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3739731i32;
                    } else {
                        _gotoNext = 3739770i32;
                    };
                } else if (__value__ == (3739731i32)) {
                    _e_3739612 = (_e_3739612 + (("no name space" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3739809i32;
                } else if (__value__ == (3739770i32)) {
                    _gotoNext = 3739770i32;
                    _e_3739612 = (_e_3739612 + ((@:checkr _start ?? throw "null pointer dereference").name.space)?.__copy__() : stdgo.GoString);
                    var __blank__ = 0i32;
                    _gotoNext = 3739809i32;
                } else if (__value__ == (3739809i32)) {
                    return stdgo.Go.asInterface((_e_3739612 : stdgo._internal.encoding.xml.Xml_unmarshalerror.UnmarshalError));
                    _gotoNext = 3739842i32;
                } else if (__value__ == (3739842i32)) {
                    _fv_3739842 = @:check2r _finfo_3739352._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_fv_3739842.interface_() : stdgo._internal.encoding.xml.Xml_name.Name)) : stdgo._internal.encoding.xml.Xml_name.Name), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_name.Name), _1 : false };
                            };
                            _ok_3739890 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3739890) {
                            _gotoNext = 3739922i32;
                        } else {
                            _gotoNext = 3740000i32;
                        };
                    };
                } else if (__value__ == (3739922i32)) {
                    _fv_3739842.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _start ?? throw "null pointer dereference").name)))?.__copy__());
                    _gotoNext = 3740000i32;
                } else if (__value__ == (3740000i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _start ?? throw "null pointer dereference").attr.length)) {
                        _gotoNext = 3740685i32;
                    } else {
                        _gotoNext = 3740758i32;
                    };
                } else if (__value__ == (3740004i32)) {
                    _i_3740012_0++;
                    _gotoNext = 3740686i32;
                } else if (__value__ == (3740029i32)) {
                    _a_3740007 = (@:checkr _start ?? throw "null pointer dereference").attr[(_i_3740012_0 : stdgo.GoInt)];
                    _handled_3740034 = false;
                    _any_3740054 = (-1 : stdgo.GoInt);
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo_3738129 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3740495i32;
                    } else {
                        _gotoNext = 3740501i32;
                    };
                } else if (__value__ == (3740071i32)) {
                    _i_3740071++;
                    _gotoNext = 3740496i32;
                } else if (__value__ == (3740095i32)) {
                    _finfo_3740101 = (stdgo.Go.setRef((@:checkr _tinfo_3738129 ?? throw "null pointer dereference")._fields[(_i_3740071 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _gotoNext = 3740131i32;
                } else if (__value__ == (3740131i32)) {
                    {
                        final __value__ = ((@:checkr _finfo_3740101 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                        if (__value__ == ((2 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3740164i32;
                        } else if (__value__ == ((66 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3740427i32;
                        } else {
                            _gotoNext = 3740071i32;
                        };
                    };
                } else if (__value__ == (3740164i32)) {
                    _strv_3740181 = @:check2r _finfo_3740101._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    if (((_a_3740007.name.local == (@:checkr _finfo_3740101 ?? throw "null pointer dereference")._name) && ((((@:checkr _finfo_3740101 ?? throw "null pointer dereference")._xmlns == (stdgo.Go.str() : stdgo.GoString)) || ((@:checkr _finfo_3740101 ?? throw "null pointer dereference")._xmlns == _a_3740007.name.space) : Bool)) : Bool)) {
                        _gotoNext = 3740311i32;
                    } else {
                        _gotoNext = 3740071i32;
                    };
                } else if (__value__ == (3740311i32)) {
                    {
                        _err_3740322 = @:check2r _d._unmarshalAttr(_strv_3740181?.__copy__(), _a_3740007?.__copy__());
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
                    if (_i_3740071 < ((@:checkr _tinfo_3738129 ?? throw "null pointer dereference")._fields.length)) {
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
                    _finfo_3740531 = (stdgo.Go.setRef((@:checkr _tinfo_3738129 ?? throw "null pointer dereference")._fields[(_any_3740054 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _strv_3740563 = @:check2r _finfo_3740531._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    {
                        _err_3740611 = @:check2r _d._unmarshalAttr(_strv_3740563?.__copy__(), _a_3740007?.__copy__());
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
                        final __tmp__1 = (@:checkr _start ?? throw "null pointer dereference").attr[(0i32 : stdgo.GoInt)];
                        _i_3740012_0 = __tmp__0;
                        _a_3740007 = __tmp__1;
                    };
                    _gotoNext = 3740686i32;
                } else if (__value__ == (3740686i32)) {
                    if (_i_3740012_0 < ((@:checkr _start ?? throw "null pointer dereference").attr.length)) {
                        _gotoNext = 3740029i32;
                    } else {
                        _gotoNext = 3740758i32;
                    };
                } else if (__value__ == (3740758i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo_3738129 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3741431i32;
                    } else {
                        _gotoNext = 3741500i32;
                    };
                } else if (__value__ == (3740762i32)) {
                    _i_3740762++;
                    _gotoNext = 3741432i32;
                } else if (__value__ == (3740786i32)) {
                    _finfo_3740791 = (stdgo.Go.setRef((@:checkr _tinfo_3738129 ?? throw "null pointer dereference")._fields[(_i_3740762 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _gotoNext = 3740820i32;
                } else if (__value__ == (3740820i32)) {
                    {
                        final __value__ = ((@:checkr _finfo_3740791 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                        if (__value__ == ((4 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3740852i32;
                        } else if (__value__ == ((32 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3740964i32;
                        } else if (__value__ == ((64 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || __value__ == ((65 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3741073i32;
                        } else if (__value__ == ((16 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
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
                    _saveData_3737921 = @:check2r _finfo_3740791._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    _gotoNext = 3740762i32;
                } else if (__value__ == (3740964i32)) {
                    if (!_saveComment_3737972.isValid()) {
                        _gotoNext = 3741009i32;
                    } else {
                        _gotoNext = 3740762i32;
                    };
                } else if (__value__ == (3741009i32)) {
                    _saveComment_3737972 = @:check2r _finfo_3740791._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    _gotoNext = 3740762i32;
                } else if (__value__ == (3741073i32)) {
                    if (!_saveAny_3738071.isValid()) {
                        _gotoNext = 3741127i32;
                    } else {
                        _gotoNext = 3740762i32;
                    };
                } else if (__value__ == (3741127i32)) {
                    _saveAny_3738071 = @:check2r _finfo_3740791._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    _gotoNext = 3740762i32;
                } else if (__value__ == (3741187i32)) {
                    if (!_saveXML_3738001.isValid()) {
                        _gotoNext = 3741229i32;
                    } else {
                        _gotoNext = 3740762i32;
                    };
                } else if (__value__ == (3741229i32)) {
                    _saveXML_3738001 = @:check2r _finfo_3740791._value(_sv_3738100?.__copy__(), true)?.__copy__();
                    if (((@:checkr _d ?? throw "null pointer dereference")._saved == null || ((@:checkr _d ?? throw "null pointer dereference")._saved : Dynamic).__nil__)) {
                        _gotoNext = 3741302i32;
                    } else {
                        _gotoNext = 3741373i32;
                    };
                } else if (__value__ == (3741302i32)) {
                    _saveXMLIndex_3738030 = (0 : stdgo.GoInt);
                    (@:checkr _d ?? throw "null pointer dereference")._saved = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
                    _gotoNext = 3740762i32;
                } else if (__value__ == (3741373i32)) {
                    _gotoNext = 3741373i32;
                    _saveXMLIndex_3738030 = @:check2r _d._savedOffset();
                    var __blank__ = 0i32;
                    _gotoNext = 3740762i32;
                } else if (__value__ == (3741431i32)) {
                    _i_3740762 = 0i32;
                    _gotoNext = 3741432i32;
                } else if (__value__ == (3741432i32)) {
                    if (_i_3740762 < ((@:checkr _tinfo_3738129 ?? throw "null pointer dereference")._fields.length)) {
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
                    _savedOffset_3741519 = @:check2r _d._savedOffset();
                    _gotoNext = 3741599i32;
                } else if (__value__ == (3741599i32)) {
                    {
                        var __tmp__ = @:check2r _d.token();
                        _tok_3741599 = @:tmpset0 __tmp__._0;
                        _err_3741604 = @:tmpset0 __tmp__._1;
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
                        final __type__ = _tok_3741599;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value;
                            _t_3741703 = _t;
                            _gotoNext = 3741686i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value;
                            _t_3742260 = _t;
                            _gotoNext = 3742245i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_chardata.CharData))) {
                            var _t:stdgo._internal.encoding.xml.Xml_chardata.CharData = __type__ == null ? new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : __type__.__underlying__().value;
                            _t_3742435 = _t;
                            _gotoNext = 3742422i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_comment.Comment))) {
                            var _t:stdgo._internal.encoding.xml.Xml_comment.Comment = __type__ == null ? new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : __type__.__underlying__().value;
                            _t_3742514 = _t;
                            _gotoNext = 3742502i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_token.Token = __type__?.__underlying__();
                            _gotoNext = 3741507i32;
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
                        var __tmp__ = @:check2r _d._unmarshalPath(_tinfo_3738129, _sv_3738100?.__copy__(), (null : stdgo.Slice<stdgo.GoString>), (stdgo.Go.setRef(_t_3741703) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), _depth);
                        _consumed_3741708 = @:tmpset0 __tmp__._0;
                        _err_3741604 = @:tmpset0 __tmp__._1;
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
                        _err_3742070 = @:check2r _d._unmarshal(_saveAny_3738071?.__copy__(), (stdgo.Go.setRef(_t_3741703) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
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
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3742176i32)) {
                    {
                        _err_3742185 = @:check2r _d.skip();
                        if (_err_3742185 != null) {
                            _gotoNext = 3742213i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (3742213i32)) {
                    return _err_3742185;
                    _gotoNext = 0i32;
                } else if (__value__ == (3742245i32)) {
                    if (_saveXML_3738001.isValid()) {
                        _gotoNext = 3742286i32;
                    } else {
                        _gotoNext = 3742408i32;
                    };
                } else if (__value__ == (3742286i32)) {
                    _saveXMLData_3738049 = (@:check2r (@:checkr _d ?? throw "null pointer dereference")._saved.bytes().__slice__(_saveXMLIndex_3738030, _savedOffset_3741519) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_saveXMLIndex_3738030 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3742373i32;
                    } else {
                        _gotoNext = 3742408i32;
                    };
                } else if (__value__ == (3742373i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._saved = null;
                    _gotoNext = 3742408i32;
                } else if (__value__ == (3742408i32)) {
                    loopBreak = true;
                    _gotoNext = 3741507i32;
                } else if (__value__ == (3742422i32)) {
                    if (_saveData_3737921.isValid()) {
                        _gotoNext = 3742462i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3742462i32)) {
                    _data_3737899 = (_data_3737899.__append__(...(_t_3742435 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 0i32;
                } else if (__value__ == (3742502i32)) {
                    if (_saveComment_3737972.isValid()) {
                        _gotoNext = 3742544i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3742544i32)) {
                    _comment_3737950 = (_comment_3737950.__append__(...(_t_3742514 : Array<stdgo.GoUInt8>)));
                    _gotoNext = 0i32;
                } else if (__value__ == (3742596i32)) {
                    if (((_saveData_3737921.isValid() && _saveData_3737921.canInterface() : Bool) && _saveData_3737921.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3742696i32;
                    } else {
                        _gotoNext = 3742844i32;
                    };
                } else if (__value__ == (3742696i32)) {
                    {
                        _err_3742703 = (stdgo.Go.typeAssert((_saveData_3737921.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText(_data_3737899);
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
                    _saveData_3737921 = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
                    _gotoNext = 3742844i32;
                } else if (__value__ == (3742844i32)) {
                    if ((_saveData_3737921.isValid() && _saveData_3737921.canAddr() : Bool)) {
                        _gotoNext = 3742888i32;
                    } else {
                        _gotoNext = 3743132i32;
                    };
                } else if (__value__ == (3742888i32)) {
                    _pv_3742892 = _saveData_3737921.addr()?.__copy__();
                    if ((_pv_3742892.canInterface() && _pv_3742892.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3742982i32;
                    } else {
                        _gotoNext = 3743132i32;
                    };
                } else if (__value__ == (3742982i32)) {
                    {
                        _err_3742990 = (stdgo.Go.typeAssert((_pv_3742892.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText(_data_3737899);
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
                    _saveData_3737921 = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
                    _gotoNext = 3743132i32;
                } else if (__value__ == (3743132i32)) {
                    {
                        _err_3743135 = stdgo._internal.encoding.xml.Xml__copyvalue._copyValue(_saveData_3737921?.__copy__(), _data_3737899);
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
                    _gotoNext = 3743200i32;
                    {
                        _t_3743207 = _saveComment_3737972?.__copy__();
                        {
                            final __value__ = _t_3743207.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3743237i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
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
                    _t_3743207.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_comment_3737950))?.__copy__());
                    _gotoNext = 3743349i32;
                } else if (__value__ == (3743349i32)) {
                    _gotoNext = 3743349i32;
                    {
                        _t_3743356 = _saveXML_3738001?.__copy__();
                        {
                            final __value__ = _t_3743356.kind();
                            if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _gotoNext = 3743382i32;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
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
                    if (_t_3743356.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 3743504i32;
                    } else {
                        _gotoNext = 3743554i32;
                    };
                } else if (__value__ == (3743504i32)) {
                    _t_3743356.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_saveXMLData_3738049))?.__copy__());
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
