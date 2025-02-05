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
        var _size_3704078:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_3700928:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b1_3700874:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _buf_3704041:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _data_3703927:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ent_3703516:stdgo.GoString = ("" : stdgo.GoString);
        var _r_3703170:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _base_3702206:stdgo.GoInt = (0 : stdgo.GoInt);
        var _before_3701950:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3702691:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _text_3702018:stdgo.GoString = ("" : stdgo.GoString);
        var _r_3704075:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _ok_3703173:Bool = false;
        var _name_3703055:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_3700931:Bool = false;
        var _trunc_3700887:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3702625:stdgo.GoString = ("" : stdgo.GoString);
        var _start_3702344:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3702003:Bool = false;
        var inputBreak = false;
        var _b0_3700870:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _s_3703143:stdgo.GoString = ("" : stdgo.GoString);
        var _err_3702694:stdgo.Error = (null : stdgo.Error);
        var _haveText_3702037:Bool = false;
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
        var _b1_3694230:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _name_3696662:stdgo._internal.encoding.xml.Xml_name.Name = ({} : stdgo._internal.encoding.xml.Xml_name.Name);
        var _depth_3695267:stdgo.GoInt = (0 : stdgo.GoInt);
        var _data_3694936:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b_3691812:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _data_3694545:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b0_3694226:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _ok_3691815:Bool = false;
        var _empty_3696675:Bool = false;
        var _j_3695866:stdgo.GoInt = (0 : stdgo.GoInt);
        var _newr_3693495:stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
        var _name_3692122:stdgo._internal.encoding.xml.Xml_name.Name = ({} : stdgo._internal.encoding.xml.Xml_name.Name);
        var _err_3693501:stdgo.Error = (null : stdgo.Error);
        var _attr_3696688:stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_attr.Attr>);
        var _inquote_3695245:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _data_3691914:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _b0_3696084:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3695743:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ver_3693022:stdgo.GoString = ("" : stdgo.GoString);
        var _content_3692995:stdgo.GoString = ("" : stdgo.GoString);
        var _target_3692552:stdgo.GoString = ("" : stdgo.GoString);
        var _b0_3692744:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _b1_3696088:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _s_3695724:stdgo.GoString = ("" : stdgo.GoString);
        var _data_3692904:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _enc_3693212:stdgo.GoString = ("" : stdgo.GoString);
        var _data_3697611:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _a_3697185:stdgo._internal.encoding.xml.Xml_attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_attr.Attr);
        var _i_3694693:stdgo.GoInt = (0 : stdgo.GoInt);
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
        var _t_3757148:stdgo._internal.encoding.xml.Xml_endelement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement);
        var _t_3756775:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _j_3755692:stdgo.GoInt = (0 : stdgo.GoInt);
        var _recurse_3755462:Bool = false;
        var _consumed2_3756932:Bool = false;
        var _tok_3756654:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _finfo_3755518:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _i_3755490:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3757068:stdgo.Error = (null : stdgo.Error);
        var _err_3756943:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3756775;
                    _gotoNext = 3756642i32;
                    _recurse_3755462 = false;
                    _gotoNext = 3755479i32;
                } else if (__value__ == (3755479i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3756385i32;
                    } else {
                        _gotoNext = 3756389i32;
                    };
                } else if (__value__ == (3755490i32)) {
                    _i_3755490++;
                    _gotoNext = 3756386i32;
                } else if (__value__ == (3755514i32)) {
                    _finfo_3755518 = (stdgo.Go.setRef((@:checkr _tinfo ?? throw "null pointer dereference")._fields[(_i_3755490 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    if (((((@:checkr _finfo_3755518 ?? throw "null pointer dereference")._flags & (1 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags)) || (((@:checkr _finfo_3755518 ?? throw "null pointer dereference")._parents.length) < (_parents.length) : Bool) : Bool) || ((@:checkr _finfo_3755518 ?? throw "null pointer dereference")._xmlns != ((stdgo.Go.str() : stdgo.GoString)) && (@:checkr _finfo_3755518 ?? throw "null pointer dereference")._xmlns != ((@:checkr _start ?? throw "null pointer dereference").name.space) : Bool) : Bool)) {
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
                    if (_parents[(_j_3755692 : stdgo.GoInt)] != ((@:checkr _finfo_3755518 ?? throw "null pointer dereference")._parents[(_j_3755692 : stdgo.GoInt)])) {
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
                    if ((((@:checkr _finfo_3755518 ?? throw "null pointer dereference")._parents.length == (_parents.length)) && ((@:checkr _finfo_3755518 ?? throw "null pointer dereference")._name == (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3755853i32;
                    } else {
                        _gotoNext = 3755988i32;
                    };
                } else if (__value__ == (3755853i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : @:check2r _d._unmarshal(@:check2r _finfo_3755518._value(_sv?.__copy__(), true)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3755988i32;
                } else if (__value__ == (3755988i32)) {
                    if (((((@:checkr _finfo_3755518 ?? throw "null pointer dereference")._parents.length) > (_parents.length) : Bool) && ((@:checkr _finfo_3755518 ?? throw "null pointer dereference")._parents[(_parents.length : stdgo.GoInt)] == (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3756076i32;
                    } else {
                        _gotoNext = 3755490i32;
                    };
                } else if (__value__ == (3756076i32)) {
                    _recurse_3755462 = true;
                    _parents = ((@:checkr _finfo_3755518 ?? throw "null pointer dereference")._parents.__slice__(0, ((_parents.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _gotoNext = 3756389i32;
                } else if (__value__ == (3756385i32)) {
                    _i_3755490 = 0i32;
                    _gotoNext = 3756386i32;
                } else if (__value__ == (3756386i32)) {
                    if (_i_3755490 < ((@:checkr _tinfo ?? throw "null pointer dereference")._fields.length)) {
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
                        _tok_3756654 = @:tmpset0 __tmp__._0;
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
                        final __type__ = _tok_3756654;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value;
                            _t_3756775 = _t;
                            _gotoNext = 3756758i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value;
                            _t_3757148 = _t;
                            _gotoNext = 3757133i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_token.Token = __type__?.__underlying__();
                            _gotoNext = 3756642i32;
                        };
                    };
                    _gotoNext = 3756642i32;
                } else if (__value__ == (3756758i32)) {
                    {
                        var __tmp__ = @:check2r _d._unmarshalPath(_tinfo, _sv?.__copy__(), _parents, (stdgo.Go.setRef(_t_3756775) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), _depth);
                        _consumed2_3756932 = @:tmpset0 __tmp__._0;
                        _err_3756943 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3756943 != null) {
                        _gotoNext = 3757014i32;
                    } else {
                        _gotoNext = 3757045i32;
                    };
                } else if (__value__ == (3757014i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_3756943 };
                        _consumed = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3757045i32;
                } else if (__value__ == (3757045i32)) {
                    if (!_consumed2_3756932) {
                        _gotoNext = 3757059i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (3757059i32)) {
                    {
                        _err_3757068 = @:check2r _d.skip();
                        if (_err_3757068 != null) {
                            _gotoNext = 3757096i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (3757096i32)) {
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : true, _1 : _err_3757068 };
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
                    var __blank__ = _t_3757148;
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
        var _err_3748016:stdgo.Error = (null : stdgo.Error);
        var _saveData_3747783:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _i_3750624:stdgo.GoInt = (0 : stdgo.GoInt);
        var _saveXML_3747863:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _comment_3747812:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _t_3752122:stdgo._internal.encoding.xml.Xml_endelement.EndElement = ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement);
        var _t_3751565:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _err_3751466:stdgo.Error = (null : stdgo.Error);
        var _strv_3750043:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _e_3749474:stdgo.GoString = ("" : stdgo.GoString);
        var _pv_3747245:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _ok_3746541:Bool = false;
        var _consumed_3751570:Bool = false;
        var _err_3750184:stdgo.Error = (null : stdgo.Error);
        var _v_3748047:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _fv_3749704:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _e_3746754:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _t_3752297:stdgo._internal.encoding.xml.Xml_chardata.CharData = new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0);
        var _a_3749869:stdgo._internal.encoding.xml.Xml_attr.Attr = ({} : stdgo._internal.encoding.xml.Xml_attr.Attr);
        var _err_3748591:stdgo.Error = (null : stdgo.Error);
        var _err_3751932:stdgo.Error = (null : stdgo.Error);
        var _err_3750473:stdgo.Error = (null : stdgo.Error);
        var _finfo_3749963:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _typ_3748353:stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
        var _pv_3747579:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _finfo_3749214:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _typ_3748975:stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
        var _err_3752047:stdgo.Error = (null : stdgo.Error);
        var _saveXMLIndex_3747892:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3752565:stdgo.Error = (null : stdgo.Error);
        var _n_3748503:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tok_3746471:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _t_3753218:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _pv_3752754:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _strv_3750425:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _finfo_3750393:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _handled_3749896:Bool = false;
        var _sv_3747962:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _finfo_3750653:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
        var _i_3749874_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_3753069:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _err_3752852:stdgo.Error = (null : stdgo.Error);
        var loopBreak = false;
        var _saveXMLData_3747911:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _saveComment_3747834:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _err_3752997:stdgo.Error = (null : stdgo.Error);
        var _t_3746538:stdgo._internal.encoding.xml.Xml_startelement.StartElement = ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement);
        var _err_3746476:stdgo.Error = (null : stdgo.Error);
        var _savedOffset_3751381:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3749933:stdgo.GoInt = (0 : stdgo.GoInt);
        var _any_3749916:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tinfo_3747991:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_typeinfo.T_typeInfo>);
        var _saveAny_3747933:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _data_3747761:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _tok_3751461:stdgo._internal.encoding.xml.Xml_token.Token = (null : stdgo._internal.encoding.xml.Xml_token.Token);
        var _ok_3749752:Bool = false;
        var _t_3752376:stdgo._internal.encoding.xml.Xml_comment.Comment = new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _t_3751565;
                    _gotoNext = 3751369i32;
                    var __blank__ = _t_3752297;
                    _gotoNext = 3751369i32;
                    var __blank__ = _t_3752376;
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
                        _tok_3746471 = @:tmpset0 __tmp__._0;
                        _err_3746476 = @:tmpset0 __tmp__._1;
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
                                { _0 : (stdgo.Go.typeAssert((_tok_3746471 : stdgo._internal.encoding.xml.Xml_startelement.StartElement)) : stdgo._internal.encoding.xml.Xml_startelement.StartElement), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement), _1 : false };
                            };
                            _t_3746538 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_3746541 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3746541) {
                            _gotoNext = 3746570i32;
                        } else {
                            _gotoNext = 3746462i32;
                        };
                    };
                } else if (__value__ == (3746570i32)) {
                    _start = (stdgo.Go.setRef(_t_3746538) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>);
                    _gotoNext = 3746699i32;
                } else if (__value__ == (3746699i32)) {
                    if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_val.isNil() : Bool)) {
                        _gotoNext = 3746750i32;
                    } else {
                        _gotoNext = 3746839i32;
                    };
                } else if (__value__ == (3746750i32)) {
                    _e_3746754 = _val.elem()?.__copy__();
                    if (((_e_3746754.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && !_e_3746754.isNil() : Bool)) {
                        _gotoNext = 3746817i32;
                    } else {
                        _gotoNext = 3746839i32;
                    };
                } else if (__value__ == (3746817i32)) {
                    _val = _e_3746754?.__copy__();
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
                    _pv_3747245 = _val.addr()?.__copy__();
                    if ((_pv_3747245.canInterface() && _pv_3747245.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalertype._unmarshalerType) : Bool)) {
                        _gotoNext = 3747326i32;
                    } else {
                        _gotoNext = 3747405i32;
                    };
                } else if (__value__ == (3747326i32)) {
                    return @:check2r _d._unmarshalInterface((stdgo.Go.typeAssert((_pv_3747245.interface_() : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_unmarshaler.Unmarshaler), _start);
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
                    _pv_3747579 = _val.addr()?.__copy__();
                    if ((_pv_3747579.canInterface() && _pv_3747579.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3747664i32;
                    } else {
                        _gotoNext = 3747753i32;
                    };
                } else if (__value__ == (3747664i32)) {
                    return @:check2r _d._unmarshalTextInterface((stdgo.Go.typeAssert((_pv_3747579.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler));
                    _gotoNext = 3747753i32;
                } else if (__value__ == (3747753i32)) {
                    _gotoNext = 3748040i32;
                } else if (__value__ == (3748040i32)) {
                    {
                        _v_3748047 = _val?.__copy__();
                        {
                            final __value__ = _v_3748047.kind();
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
                    return stdgo._internal.errors.Errors_new_.new_((("unknown type " : stdgo.GoString) + (_v_3748047.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3748137i32)) {
                    return @:check2r _d.skip();
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3748331i32)) {
                    _typ_3748353 = _v_3748047.type();
                    if (_typ_3748353.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
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
                        _err_3748591 = @:check2r _d._unmarshal(_v_3748047.index(_n_3748503)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
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
                    if ((_typ_3748975.string() : String) == (stdgo._internal.encoding.xml.Xml__nametype._nameType.string() : String)) {
                        _gotoNext = 3749012i32;
                    } else {
                        _gotoNext = 3749068i32;
                    };
                } else if (__value__ == (3749012i32)) {
                    _v_3748047.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _start ?? throw "null pointer dereference").name)))?.__copy__());
                    _gotoNext = 3751362i32;
                } else if (__value__ == (3749068i32)) {
                    _sv_3747962 = _v_3748047?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.encoding.xml.Xml__gettypeinfo._getTypeInfo(_typ_3748975);
                        _tinfo_3747991 = @:tmpset0 __tmp__._0;
                        _err_3748016 = @:tmpset0 __tmp__._1;
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
                    if (((@:checkr _tinfo_3747991 ?? throw "null pointer dereference")._xmlname != null && (((@:checkr _tinfo_3747991 ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__ == null || !((@:checkr _tinfo_3747991 ?? throw "null pointer dereference")._xmlname : Dynamic).__nil__))) {
                        _gotoNext = 3749209i32;
                    } else {
                        _gotoNext = 3749862i32;
                    };
                } else if (__value__ == (3749209i32)) {
                    _finfo_3749214 = (@:checkr _tinfo_3747991 ?? throw "null pointer dereference")._xmlname;
                    if ((((@:checkr _finfo_3749214 ?? throw "null pointer dereference")._name != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _finfo_3749214 ?? throw "null pointer dereference")._name != (@:checkr _start ?? throw "null pointer dereference").name.local) : Bool)) {
                        _gotoNext = 3749294i32;
                    } else {
                        _gotoNext = 3749412i32;
                    };
                } else if (__value__ == (3749294i32)) {
                    return stdgo.Go.asInterface((((((("expected element type <" : stdgo.GoString) + (@:checkr _finfo_3749214 ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString) + ("> but have <" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _start ?? throw "null pointer dereference").name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.encoding.xml.Xml_unmarshalerror.UnmarshalError));
                    _gotoNext = 3749412i32;
                } else if (__value__ == (3749412i32)) {
                    if ((((@:checkr _finfo_3749214 ?? throw "null pointer dereference")._xmlns != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _finfo_3749214 ?? throw "null pointer dereference")._xmlns != (@:checkr _start ?? throw "null pointer dereference").name.space) : Bool)) {
                        _gotoNext = 3749468i32;
                    } else {
                        _gotoNext = 3749704i32;
                    };
                } else if (__value__ == (3749468i32)) {
                    _e_3749474 = ((((("expected element <" : stdgo.GoString) + (@:checkr _finfo_3749214 ?? throw "null pointer dereference")._name?.__copy__() : stdgo.GoString) + ("> in name space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _finfo_3749214 ?? throw "null pointer dereference")._xmlns?.__copy__() : stdgo.GoString) + (" but have " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    if ((@:checkr _start ?? throw "null pointer dereference").name.space == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3749593i32;
                    } else {
                        _gotoNext = 3749632i32;
                    };
                } else if (__value__ == (3749593i32)) {
                    _e_3749474 = (_e_3749474 + (("no name space" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _gotoNext = 3749671i32;
                } else if (__value__ == (3749632i32)) {
                    _gotoNext = 3749632i32;
                    _e_3749474 = (_e_3749474 + ((@:checkr _start ?? throw "null pointer dereference").name.space)?.__copy__() : stdgo.GoString);
                    var __blank__ = 0i32;
                    _gotoNext = 3749671i32;
                } else if (__value__ == (3749671i32)) {
                    return stdgo.Go.asInterface((_e_3749474 : stdgo._internal.encoding.xml.Xml_unmarshalerror.UnmarshalError));
                    _gotoNext = 3749704i32;
                } else if (__value__ == (3749704i32)) {
                    _fv_3749704 = @:check2r _finfo_3749214._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_fv_3749704.interface_() : stdgo._internal.encoding.xml.Xml_name.Name)) : stdgo._internal.encoding.xml.Xml_name.Name), _1 : true };
                            } catch(_) {
                                { _0 : ({} : stdgo._internal.encoding.xml.Xml_name.Name), _1 : false };
                            };
                            _ok_3749752 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_3749752) {
                            _gotoNext = 3749784i32;
                        } else {
                            _gotoNext = 3749862i32;
                        };
                    };
                } else if (__value__ == (3749784i32)) {
                    _fv_3749704.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _start ?? throw "null pointer dereference").name)))?.__copy__());
                    _gotoNext = 3749862i32;
                } else if (__value__ == (3749862i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _start ?? throw "null pointer dereference").attr.length)) {
                        _gotoNext = 3750547i32;
                    } else {
                        _gotoNext = 3750620i32;
                    };
                } else if (__value__ == (3749866i32)) {
                    _i_3749874_0++;
                    _gotoNext = 3750548i32;
                } else if (__value__ == (3749891i32)) {
                    _a_3749869 = (@:checkr _start ?? throw "null pointer dereference").attr[(_i_3749874_0 : stdgo.GoInt)];
                    _handled_3749896 = false;
                    _any_3749916 = (-1 : stdgo.GoInt);
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo_3747991 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3750357i32;
                    } else {
                        _gotoNext = 3750363i32;
                    };
                } else if (__value__ == (3749933i32)) {
                    _i_3749933++;
                    _gotoNext = 3750358i32;
                } else if (__value__ == (3749957i32)) {
                    _finfo_3749963 = (stdgo.Go.setRef((@:checkr _tinfo_3747991 ?? throw "null pointer dereference")._fields[(_i_3749933 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _gotoNext = 3749993i32;
                } else if (__value__ == (3749993i32)) {
                    {
                        final __value__ = ((@:checkr _finfo_3749963 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
                        if (__value__ == ((2 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3750026i32;
                        } else if (__value__ == ((66 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags))) {
                            _gotoNext = 3750289i32;
                        } else {
                            _gotoNext = 3749933i32;
                        };
                    };
                } else if (__value__ == (3750026i32)) {
                    _strv_3750043 = @:check2r _finfo_3749963._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    if (((_a_3749869.name.local == (@:checkr _finfo_3749963 ?? throw "null pointer dereference")._name) && ((((@:checkr _finfo_3749963 ?? throw "null pointer dereference")._xmlns == (stdgo.Go.str() : stdgo.GoString)) || ((@:checkr _finfo_3749963 ?? throw "null pointer dereference")._xmlns == _a_3749869.name.space) : Bool)) : Bool)) {
                        _gotoNext = 3750173i32;
                    } else {
                        _gotoNext = 3749933i32;
                    };
                } else if (__value__ == (3750173i32)) {
                    {
                        _err_3750184 = @:check2r _d._unmarshalAttr(_strv_3750043?.__copy__(), _a_3749869?.__copy__());
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
                    if (_i_3749933 < ((@:checkr _tinfo_3747991 ?? throw "null pointer dereference")._fields.length)) {
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
                    _finfo_3750393 = (stdgo.Go.setRef((@:checkr _tinfo_3747991 ?? throw "null pointer dereference")._fields[(_any_3749916 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _strv_3750425 = @:check2r _finfo_3750393._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    {
                        _err_3750473 = @:check2r _d._unmarshalAttr(_strv_3750425?.__copy__(), _a_3749869?.__copy__());
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
                        final __tmp__1 = (@:checkr _start ?? throw "null pointer dereference").attr[(0i32 : stdgo.GoInt)];
                        _i_3749874_0 = __tmp__0;
                        _a_3749869 = __tmp__1;
                    };
                    _gotoNext = 3750548i32;
                } else if (__value__ == (3750548i32)) {
                    if (_i_3749874_0 < ((@:checkr _start ?? throw "null pointer dereference").attr.length)) {
                        _gotoNext = 3749891i32;
                    } else {
                        _gotoNext = 3750620i32;
                    };
                } else if (__value__ == (3750620i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _tinfo_3747991 ?? throw "null pointer dereference")._fields.length)) {
                        _gotoNext = 3751293i32;
                    } else {
                        _gotoNext = 3751362i32;
                    };
                } else if (__value__ == (3750624i32)) {
                    _i_3750624++;
                    _gotoNext = 3751294i32;
                } else if (__value__ == (3750648i32)) {
                    _finfo_3750653 = (stdgo.Go.setRef((@:checkr _tinfo_3747991 ?? throw "null pointer dereference")._fields[(_i_3750624 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_fieldinfo.T_fieldInfo>);
                    _gotoNext = 3750682i32;
                } else if (__value__ == (3750682i32)) {
                    {
                        final __value__ = ((@:checkr _finfo_3750653 ?? throw "null pointer dereference")._flags & (127 : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_t_fieldflags.T_fieldFlags);
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
                    if (!_saveData_3747783.isValid()) {
                        _gotoNext = 3750765i32;
                    } else {
                        _gotoNext = 3750624i32;
                    };
                } else if (__value__ == (3750765i32)) {
                    _saveData_3747783 = @:check2r _finfo_3750653._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3750826i32)) {
                    if (!_saveComment_3747834.isValid()) {
                        _gotoNext = 3750871i32;
                    } else {
                        _gotoNext = 3750624i32;
                    };
                } else if (__value__ == (3750871i32)) {
                    _saveComment_3747834 = @:check2r _finfo_3750653._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3750935i32)) {
                    if (!_saveAny_3747933.isValid()) {
                        _gotoNext = 3750989i32;
                    } else {
                        _gotoNext = 3750624i32;
                    };
                } else if (__value__ == (3750989i32)) {
                    _saveAny_3747933 = @:check2r _finfo_3750653._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3751049i32)) {
                    if (!_saveXML_3747863.isValid()) {
                        _gotoNext = 3751091i32;
                    } else {
                        _gotoNext = 3750624i32;
                    };
                } else if (__value__ == (3751091i32)) {
                    _saveXML_3747863 = @:check2r _finfo_3750653._value(_sv_3747962?.__copy__(), true)?.__copy__();
                    if (((@:checkr _d ?? throw "null pointer dereference")._saved == null || ((@:checkr _d ?? throw "null pointer dereference")._saved : Dynamic).__nil__)) {
                        _gotoNext = 3751164i32;
                    } else {
                        _gotoNext = 3751235i32;
                    };
                } else if (__value__ == (3751164i32)) {
                    _saveXMLIndex_3747892 = (0 : stdgo.GoInt);
                    (@:checkr _d ?? throw "null pointer dereference")._saved = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3751235i32)) {
                    _gotoNext = 3751235i32;
                    _saveXMLIndex_3747892 = @:check2r _d._savedOffset();
                    var __blank__ = 0i32;
                    _gotoNext = 3750624i32;
                } else if (__value__ == (3751293i32)) {
                    _i_3750624 = 0i32;
                    _gotoNext = 3751294i32;
                } else if (__value__ == (3751294i32)) {
                    if (_i_3750624 < ((@:checkr _tinfo_3747991 ?? throw "null pointer dereference")._fields.length)) {
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
                    _savedOffset_3751381 = @:check2r _d._savedOffset();
                    _gotoNext = 3751461i32;
                } else if (__value__ == (3751461i32)) {
                    {
                        var __tmp__ = @:check2r _d.token();
                        _tok_3751461 = @:tmpset0 __tmp__._0;
                        _err_3751466 = @:tmpset0 __tmp__._1;
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
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_startelement.StartElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_startelement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_startelement.StartElement) : __type__.__underlying__().value;
                            _t_3751565 = _t;
                            _gotoNext = 3751548i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_endelement.EndElement))) {
                            var _t:stdgo._internal.encoding.xml.Xml_endelement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_endelement.EndElement) : __type__.__underlying__().value;
                            _t_3752122 = _t;
                            _gotoNext = 3752107i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_chardata.CharData))) {
                            var _t:stdgo._internal.encoding.xml.Xml_chardata.CharData = __type__ == null ? new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_chardata.CharData(0, 0) : __type__.__underlying__().value;
                            _t_3752297 = _t;
                            _gotoNext = 3752284i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_comment.Comment))) {
                            var _t:stdgo._internal.encoding.xml.Xml_comment.Comment = __type__ == null ? new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_comment.Comment(0, 0) : __type__.__underlying__().value;
                            _t_3752376 = _t;
                            _gotoNext = 3752364i32;
                        } else {
                            var _t:stdgo._internal.encoding.xml.Xml_token.Token = __type__?.__underlying__();
                            _gotoNext = 3751369i32;
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
                        var __tmp__ = @:check2r _d._unmarshalPath(_tinfo_3747991, _sv_3747962?.__copy__(), (null : stdgo.Slice<stdgo.GoString>), (stdgo.Go.setRef(_t_3751565) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), _depth);
                        _consumed_3751570 = @:tmpset0 __tmp__._0;
                        _err_3751466 = @:tmpset0 __tmp__._1;
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
                        _err_3751932 = @:check2r _d._unmarshal(_saveAny_3747933?.__copy__(), (stdgo.Go.setRef(_t_3751565) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
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
                        _err_3752047 = @:check2r _d.skip();
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
                    _saveXMLData_3747911 = (@:check2r (@:checkr _d ?? throw "null pointer dereference")._saved.bytes().__slice__(_saveXMLIndex_3747892, _savedOffset_3751381) : stdgo.Slice<stdgo.GoUInt8>);
                    if (_saveXMLIndex_3747892 == ((0 : stdgo.GoInt))) {
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
                    if (((_saveData_3747783.isValid() && _saveData_3747783.canInterface() : Bool) && _saveData_3747783.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3752558i32;
                    } else {
                        _gotoNext = 3752706i32;
                    };
                } else if (__value__ == (3752558i32)) {
                    {
                        _err_3752565 = (stdgo.Go.typeAssert((_saveData_3747783.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText(_data_3747761);
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
                    _saveData_3747783 = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
                    _gotoNext = 3752706i32;
                } else if (__value__ == (3752706i32)) {
                    if ((_saveData_3747783.isValid() && _saveData_3747783.canAddr() : Bool)) {
                        _gotoNext = 3752750i32;
                    } else {
                        _gotoNext = 3752994i32;
                    };
                } else if (__value__ == (3752750i32)) {
                    _pv_3752754 = _saveData_3747783.addr()?.__copy__();
                    if ((_pv_3752754.canInterface() && _pv_3752754.type().implements_(stdgo._internal.encoding.xml.Xml__textunmarshalertype._textUnmarshalerType) : Bool)) {
                        _gotoNext = 3752844i32;
                    } else {
                        _gotoNext = 3752994i32;
                    };
                } else if (__value__ == (3752844i32)) {
                    {
                        _err_3752852 = (stdgo.Go.typeAssert((_pv_3752754.interface_() : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler).unmarshalText(_data_3747761);
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
                    _saveData_3747783 = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
                    _gotoNext = 3752994i32;
                } else if (__value__ == (3752994i32)) {
                    {
                        _err_3752997 = stdgo._internal.encoding.xml.Xml__copyvalue._copyValue(_saveData_3747783?.__copy__(), _data_3747761);
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
                    _t_3753069.setString((_comment_3747812 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3753211i32;
                } else if (__value__ == (3753152i32)) {
                    _t_3753069.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_comment_3747812))?.__copy__());
                    _gotoNext = 3753211i32;
                } else if (__value__ == (3753211i32)) {
                    _gotoNext = 3753211i32;
                    {
                        _t_3753218 = _saveXML_3747863?.__copy__();
                        {
                            final __value__ = _t_3753218.kind();
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
                    _t_3753218.setString((_saveXMLData_3747911 : stdgo.GoString)?.__copy__());
                    _gotoNext = 3753416i32;
                } else if (__value__ == (3753301i32)) {
                    if (_t_3753218.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 3753366i32;
                    } else {
                        _gotoNext = 3753416i32;
                    };
                } else if (__value__ == (3753366i32)) {
                    _t_3753218.set(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_saveXMLData_3747911))?.__copy__());
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
