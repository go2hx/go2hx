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
        stdgo._internal.internal.Macro.controlFlow({
            var __0:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), __1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
var _b1 = __1, _b0 = __0;
            var _trunc:stdgo.GoInt = (0 : stdgo.GoInt);
            _d._buf.reset();
            @:label("Input") while (true) {
                var __tmp__ = _d._getc(), _b:stdgo.GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    if (_cdata) {
                        if (stdgo.Go.toInterface(_d._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                            _d._err = _d._syntaxError(("unexpected EOF in CDATA section" : stdgo.GoString));
                        };
                        return (null : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    @:jump("Input") break;
                };
                if (((_b0 == ((93 : stdgo.GoUInt8)) && _b1 == ((93 : stdgo.GoUInt8)) : Bool) && (_b == (62 : stdgo.GoUInt8)) : Bool)) {
                    if (_cdata) {
                        _trunc = (2 : stdgo.GoInt);
                        @:jump("Input") break;
                    };
                    _d._err = _d._syntaxError(("unescaped ]]> not in CDATA section" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                };
                if (((_b == (60 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                    if ((_quote >= (0 : stdgo.GoInt) : Bool)) {
                        _d._err = _d._syntaxError(("unescaped < inside quoted string" : stdgo.GoString));
                        return (null : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    _d._ungetc((60 : stdgo.GoUInt8));
                    @:jump("Input") break;
                };
                if (((_quote >= (0 : stdgo.GoInt) : Bool) && (_b == (_quote : stdgo.GoUInt8)) : Bool)) {
                    @:jump("Input") break;
                };
                if (((_b == (38 : stdgo.GoUInt8)) && !_cdata : Bool)) {
                    var _before = (_d._buf.len() : stdgo.GoInt);
                    _d._buf.writeByte((38 : stdgo.GoUInt8));
                    var _ok:Bool = false;
                    var _text:stdgo.GoString = ("" : stdgo.GoString);
                    var _haveText:Bool = false;
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b = __tmp__._0;
                            _ok = __tmp__._1;
                        };
                        if (!_ok) {
                            return (null : stdgo.Slice<stdgo.GoUInt8>);
                        };
                    };
                    if (_b == ((35 : stdgo.GoUInt8))) {
                        _d._buf.writeByte(_b);
                        {
                            {
                                var __tmp__ = _d._mustgetc();
                                _b = __tmp__._0;
                                _ok = __tmp__._1;
                            };
                            if (!_ok) {
                                return (null : stdgo.Slice<stdgo.GoUInt8>);
                            };
                        };
                        var _base = (10 : stdgo.GoInt);
                        if (_b == ((120 : stdgo.GoUInt8))) {
                            _base = (16 : stdgo.GoInt);
                            _d._buf.writeByte(_b);
                            {
                                {
                                    var __tmp__ = _d._mustgetc();
                                    _b = __tmp__._0;
                                    _ok = __tmp__._1;
                                };
                                if (!_ok) {
                                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                                };
                            };
                        };
                        var _start = (_d._buf.len() : stdgo.GoInt);
                        while ((((((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) || ((_base == ((16 : stdgo.GoInt)) && ((97 : stdgo.GoUInt8) <= _b : Bool) : Bool) && (_b <= (102 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || ((_base == ((16 : stdgo.GoInt)) && ((65 : stdgo.GoUInt8) <= _b : Bool) : Bool) && (_b <= (70 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                            _d._buf.writeByte(_b);
                            {
                                {
                                    var __tmp__ = _d._mustgetc();
                                    _b = __tmp__._0;
                                    _ok = __tmp__._1;
                                };
                                if (!_ok) {
                                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                                };
                            };
                        };
                        if (_b != ((59 : stdgo.GoUInt8))) {
                            _d._ungetc(_b);
                        } else {
                            var _s = (((_d._buf.bytes().__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            _d._buf.writeByte((59 : stdgo.GoUInt8));
                            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_s?.__copy__(), _base, (64 : stdgo.GoInt)), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (((_err == null) && (_n <= (1114111i64 : stdgo.GoUInt64) : Bool) : Bool)) {
                                _text = ((_n : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
                                _haveText = true;
                            };
                        };
                    } else {
                        _d._ungetc(_b);
                        if (!_d._readName()) {
                            if (_d._err != null) {
                                return (null : stdgo.Slice<stdgo.GoUInt8>);
                            };
                        };
                        {
                            {
                                var __tmp__ = _d._mustgetc();
                                _b = __tmp__._0;
                                _ok = __tmp__._1;
                            };
                            if (!_ok) {
                                return (null : stdgo.Slice<stdgo.GoUInt8>);
                            };
                        };
                        if (_b != ((59 : stdgo.GoUInt8))) {
                            _d._ungetc(_b);
                        } else {
                            var _name = (_d._buf.bytes().__slice__((_before + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            _d._buf.writeByte((59 : stdgo.GoUInt8));
                            if (stdgo._internal.encoding.xml.Xml__isName._isName(_name)) {
                                var _s = ((_name : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                {
                                    var __tmp__ = (stdgo._internal.encoding.xml.Xml__entity._entity != null && stdgo._internal.encoding.xml.Xml__entity._entity.exists(_s?.__copy__()) ? { _0 : stdgo._internal.encoding.xml.Xml__entity._entity[_s?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt32), _1 : false }), _r:stdgo.GoInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                                    if (_ok) {
                                        _text = (_r : stdgo.GoString)?.__copy__();
                                        _haveText = true;
                                    } else if (_d.entity != null) {
                                        {
                                            var __tmp__ = (_d.entity != null && _d.entity.exists(_s?.__copy__()) ? { _0 : _d.entity[_s?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false });
                                            _text = __tmp__._0?.__copy__();
                                            _haveText = __tmp__._1;
                                        };
                                    };
                                };
                            };
                        };
                    };
                    if (_haveText) {
                        _d._buf.truncate(_before);
                        _d._buf.writeString(_text?.__copy__());
                        {
                            final __tmp__0 = (0 : stdgo.GoUInt8);
                            final __tmp__1 = (0 : stdgo.GoUInt8);
                            _b0 = __tmp__0;
                            _b1 = __tmp__1;
                        };
                        @:jump("Input") continue;
                    };
                    if (!_d.strict) {
                        {
                            final __tmp__0 = (0 : stdgo.GoUInt8);
                            final __tmp__1 = (0 : stdgo.GoUInt8);
                            _b0 = __tmp__0;
                            _b1 = __tmp__1;
                        };
                        @:jump("Input") continue;
                    };
                    var _ent = (((_d._buf.bytes().__slice__(_before) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_ent[((_ent.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((59 : stdgo.GoUInt8))) {
                        _ent = (_ent + ((" (no semicolon)" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                    _d._err = _d._syntaxError((("invalid character entity " : stdgo.GoString) + _ent?.__copy__() : stdgo.GoString)?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                };
                if (_b == ((13 : stdgo.GoUInt8))) {
                    _d._buf.writeByte((10 : stdgo.GoUInt8));
                } else if (((_b1 == (13 : stdgo.GoUInt8)) && (_b == (10 : stdgo.GoUInt8)) : Bool)) {} else {
                    _d._buf.writeByte(_b);
                };
                {
                    final __tmp__0 = _b1;
                    final __tmp__1 = _b;
                    _b0 = __tmp__0;
                    _b1 = __tmp__1;
                };
            };
            var _data = _d._buf.bytes();
            _data = (_data.__slice__((0 : stdgo.GoInt), ((_data.length) - _trunc : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _buf = _data;
            while (((_buf.length) > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune(_buf), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                if (((_r == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) {
                    _d._err = _d._syntaxError(("invalid UTF-8" : stdgo.GoString));
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                };
                _buf = (_buf.__slice__(_size) : stdgo.Slice<stdgo.GoUInt8>);
                if (!stdgo._internal.encoding.xml.Xml__isInCharacterRange._isInCharacterRange(_r)) {
                    _d._err = _d._syntaxError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("illegal character code %U" : stdgo.GoString), stdgo.Go.toInterface(_r))?.__copy__());
                    return (null : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
            return _data;
        });
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
        stdgo._internal.internal.Macro.controlFlow({
            if (_d._t != null) {
                return _d._t.token();
            };
            if (_d._err != null) {
                return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
            };
            if (_d._needClose) {
                _d._needClose = false;
                return { _0 : stdgo.Go.toInterface((new stdgo._internal.encoding.xml.Xml_EndElement.EndElement(_d._toClose?.__copy__()) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement)), _1 : (null : stdgo.Error) };
            };
            var __tmp__ = _d._getc(), _b:stdgo.GoUInt8 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
            };
            if (_b != ((60 : stdgo.GoUInt8))) {
                _d._ungetc(_b);
                var _data = _d._text((-1 : stdgo.GoInt), false);
                if (_data == null) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                };
                return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data : stdgo._internal.encoding.xml.Xml_CharData.CharData))), _1 : (null : stdgo.Error) };
            };
            {
                {
                    var __tmp__ = _d._mustgetc();
                    _b = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                };
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _b;
                        if (__value__ == ((47 : stdgo.GoUInt8))) {
                            var _name:stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
                            {
                                {
                                    var __tmp__ = _d._nsname();
                                    _name = __tmp__._0?.__copy__();
                                    _ok = __tmp__._1;
                                };
                                if (!_ok) {
                                    if (_d._err == null) {
                                        _d._err = _d._syntaxError(("expected element name after </" : stdgo.GoString));
                                    };
                                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                };
                            };
                            _d._space();
                            {
                                {
                                    var __tmp__ = _d._mustgetc();
                                    _b = __tmp__._0;
                                    _ok = __tmp__._1;
                                };
                                if (!_ok) {
                                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                };
                            };
                            if (_b != ((62 : stdgo.GoUInt8))) {
                                _d._err = _d._syntaxError(((("invalid characters between </" : stdgo.GoString) + _name.local?.__copy__() : stdgo.GoString) + (" and >" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                                return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                            };
                            return { _0 : stdgo.Go.toInterface((new stdgo._internal.encoding.xml.Xml_EndElement.EndElement(_name?.__copy__()) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement)), _1 : (null : stdgo.Error) };
                            break;
                        } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                            var _target:stdgo.GoString = ("" : stdgo.GoString);
                            {
                                {
                                    var __tmp__ = _d._name();
                                    _target = __tmp__._0?.__copy__();
                                    _ok = __tmp__._1;
                                };
                                if (!_ok) {
                                    if (_d._err == null) {
                                        _d._err = _d._syntaxError(("expected target name after <?" : stdgo.GoString));
                                    };
                                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                };
                            };
                            _d._space();
                            _d._buf.reset();
                            var _b0:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                            while (true) {
                                {
                                    {
                                        var __tmp__ = _d._mustgetc();
                                        _b = __tmp__._0;
                                        _ok = __tmp__._1;
                                    };
                                    if (!_ok) {
                                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                    };
                                };
                                _d._buf.writeByte(_b);
                                if (((_b0 == (63 : stdgo.GoUInt8)) && (_b == (62 : stdgo.GoUInt8)) : Bool)) {
                                    break;
                                };
                                _b0 = _b;
                            };
                            var _data = _d._buf.bytes();
                            _data = (_data.__slice__((0 : stdgo.GoInt), ((_data.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            if (_target == (("xml" : stdgo.GoString))) {
                                var _content = ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                var _ver = (stdgo._internal.encoding.xml.Xml__procInst._procInst(("version" : stdgo.GoString), _content?.__copy__())?.__copy__() : stdgo.GoString);
                                if (((_ver != stdgo.Go.str()) && (_ver != ("1.0" : stdgo.GoString)) : Bool)) {
                                    _d._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: unsupported version %q; only version 1.0 is supported" : stdgo.GoString), stdgo.Go.toInterface(_ver));
                                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                };
                                var _enc = (stdgo._internal.encoding.xml.Xml__procInst._procInst(("encoding" : stdgo.GoString), _content?.__copy__())?.__copy__() : stdgo.GoString);
                                if ((((_enc != (stdgo.Go.str()) && _enc != (("utf-8" : stdgo.GoString)) : Bool) && _enc != (("UTF-8" : stdgo.GoString)) : Bool) && !stdgo._internal.strings.Strings_equalFold.equalFold(_enc?.__copy__(), ("utf-8" : stdgo.GoString)) : Bool)) {
                                    if (_d.charsetReader == null) {
                                        _d._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: encoding %q declared but Decoder.CharsetReader is nil" : stdgo.GoString), stdgo.Go.toInterface(_enc));
                                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                    };
                                    var __tmp__ = _d.charsetReader(_enc?.__copy__(), (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d._r) : stdgo._internal.io.Io_Reader.Reader)) : stdgo._internal.io.Io_Reader.Reader)), _newr:stdgo._internal.io.Io_Reader.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    if (_err != null) {
                                        _d._err = stdgo._internal.fmt.Fmt_errorf.errorf(("xml: opening charset %q: %w" : stdgo.GoString), stdgo.Go.toInterface(_enc), stdgo.Go.toInterface(_err));
                                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                    };
                                    if (_newr == null) {
                                        throw stdgo.Go.toInterface((("CharsetReader returned a nil Reader for charset " : stdgo.GoString) + _enc?.__copy__() : stdgo.GoString));
                                    };
                                    _d._switchToReader(_newr);
                                };
                            };
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst(_target?.__copy__(), _data) : stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst))), _1 : (null : stdgo.Error) };
                            break;
                        } else if (__value__ == ((33 : stdgo.GoUInt8))) {
                            {
                                {
                                    var __tmp__ = _d._mustgetc();
                                    _b = __tmp__._0;
                                    _ok = __tmp__._1;
                                };
                                if (!_ok) {
                                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                };
                            };
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _b;
                                        if (__value__ == ((45 : stdgo.GoUInt8))) {
                                            {
                                                {
                                                    var __tmp__ = _d._mustgetc();
                                                    _b = __tmp__._0;
                                                    _ok = __tmp__._1;
                                                };
                                                if (!_ok) {
                                                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                                };
                                            };
                                            if (_b != ((45 : stdgo.GoUInt8))) {
                                                _d._err = _d._syntaxError(("invalid sequence <!- not part of <!--" : stdgo.GoString));
                                                return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                            };
                                            _d._buf.reset();
                                            var __0:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), __1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
var _b1 = __1, _b0 = __0;
                                            while (true) {
                                                {
                                                    {
                                                        var __tmp__ = _d._mustgetc();
                                                        _b = __tmp__._0;
                                                        _ok = __tmp__._1;
                                                    };
                                                    if (!_ok) {
                                                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                                    };
                                                };
                                                _d._buf.writeByte(_b);
                                                if (((_b0 == (45 : stdgo.GoUInt8)) && (_b1 == (45 : stdgo.GoUInt8)) : Bool)) {
                                                    if (_b != ((62 : stdgo.GoUInt8))) {
                                                        _d._err = _d._syntaxError(("invalid sequence \"--\" not allowed in comments" : stdgo.GoString));
                                                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                                    };
                                                    break;
                                                };
                                                {
                                                    final __tmp__0 = _b1;
                                                    final __tmp__1 = _b;
                                                    _b0 = __tmp__0;
                                                    _b1 = __tmp__1;
                                                };
                                            };
                                            var _data = _d._buf.bytes();
                                            _data = (_data.__slice__((0 : stdgo.GoInt), ((_data.length) - (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data : stdgo._internal.encoding.xml.Xml_Comment.Comment))), _1 : (null : stdgo.Error) };
                                            break;
                                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < (6 : stdgo.GoInt) : Bool), _i++, {
                                                    {
                                                        {
                                                            var __tmp__ = _d._mustgetc();
                                                            _b = __tmp__._0;
                                                            _ok = __tmp__._1;
                                                        };
                                                        if (!_ok) {
                                                            return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                                        };
                                                    };
                                                    if (_b != (("CDATA[" : stdgo.GoString)[(_i : stdgo.GoInt)])) {
                                                        _d._err = _d._syntaxError(("invalid <![ sequence" : stdgo.GoString));
                                                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                                    };
                                                });
                                            };
                                            var _data = _d._text((-1 : stdgo.GoInt), true);
                                            if (_data == null) {
                                                return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                            };
                                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_data : stdgo._internal.encoding.xml.Xml_CharData.CharData))), _1 : (null : stdgo.Error) };
                                            break;
                                        };
                                    };
                                    break;
                                };
                            };
                            _d._buf.reset();
                            _d._buf.writeByte(_b);
                            var _inquote = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
                            var _depth = (0 : stdgo.GoInt);
                            while (true) {
                                {
                                    {
                                        var __tmp__ = _d._mustgetc();
                                        _b = __tmp__._0;
                                        _ok = __tmp__._1;
                                    };
                                    if (!_ok) {
                                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                    };
                                };
                                if (((_inquote == ((0 : stdgo.GoUInt8)) && _b == ((62 : stdgo.GoUInt8)) : Bool) && (_depth == (0 : stdgo.GoInt)) : Bool)) {
                                    break;
                                };
                                @:label("HandleB") _d._buf.writeByte(_b);
                                {
                                    var __switchIndex__ = -1;
                                    var __run__ = true;
                                    while (__run__) {
                                        __run__ = false;
                                        if (_b == (_inquote)) {
                                            _inquote = (0 : stdgo.GoUInt8);
                                            break;
                                        } else if (_inquote != ((0 : stdgo.GoUInt8))) {
                                            break;
                                        } else if (((_b == (39 : stdgo.GoUInt8)) || (_b == (34 : stdgo.GoUInt8)) : Bool)) {
                                            _inquote = _b;
                                            break;
                                        } else if (((_b == (62 : stdgo.GoUInt8)) && (_inquote == (0 : stdgo.GoUInt8)) : Bool)) {
                                            _depth--;
                                            break;
                                        } else if (((_b == (60 : stdgo.GoUInt8)) && (_inquote == (0 : stdgo.GoUInt8)) : Bool)) {
                                            var _s = ("!--" : stdgo.GoString);
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                                                    {
                                                        {
                                                            var __tmp__ = _d._mustgetc();
                                                            _b = __tmp__._0;
                                                            _ok = __tmp__._1;
                                                        };
                                                        if (!_ok) {
                                                            return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                                        };
                                                    };
                                                    if (_b != (_s[(_i : stdgo.GoInt)])) {
                                                        {
                                                            var _j = (0 : stdgo.GoInt);
                                                            stdgo.Go.cfor((_j < _i : Bool), _j++, {
                                                                _d._buf.writeByte(_s[(_j : stdgo.GoInt)]);
                                                            });
                                                        };
                                                        _depth++;
                                                        @:goto "HandleB";
                                                    };
                                                });
                                            };
                                            _d._buf.truncate((_d._buf.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
                                            var __0:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), __1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
var _b1 = __1, _b0 = __0;
                                            while (true) {
                                                {
                                                    {
                                                        var __tmp__ = _d._mustgetc();
                                                        _b = __tmp__._0;
                                                        _ok = __tmp__._1;
                                                    };
                                                    if (!_ok) {
                                                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                                                    };
                                                };
                                                if (((_b0 == ((45 : stdgo.GoUInt8)) && _b1 == ((45 : stdgo.GoUInt8)) : Bool) && (_b == (62 : stdgo.GoUInt8)) : Bool)) {
                                                    break;
                                                };
                                                {
                                                    final __tmp__0 = _b1;
                                                    final __tmp__1 = _b;
                                                    _b0 = __tmp__0;
                                                    _b1 = __tmp__1;
                                                };
                                            };
                                            _d._buf.writeByte((32 : stdgo.GoUInt8));
                                            break;
                                        };
                                        break;
                                    };
                                };
                            };
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_d._buf.bytes() : stdgo._internal.encoding.xml.Xml_Directive.Directive))), _1 : (null : stdgo.Error) };
                            break;
                        };
                    };
                    break;
                };
            };
            _d._ungetc(_b);
            var __0:stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name), __1:Bool = false, __2:stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr> = (null : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
var _attr = __2, _empty = __1, _name = __0;
            {
                {
                    var __tmp__ = _d._nsname();
                    _name = __tmp__._0?.__copy__();
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    if (_d._err == null) {
                        _d._err = _d._syntaxError(("expected element name after <" : stdgo.GoString));
                    };
                    return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                };
            };
            _attr = (new stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr)])) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
            while (true) {
                _d._space();
                {
                    {
                        var __tmp__ = _d._mustgetc();
                        _b = __tmp__._0;
                        _ok = __tmp__._1;
                    };
                    if (!_ok) {
                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    };
                };
                if (_b == ((47 : stdgo.GoUInt8))) {
                    _empty = true;
                    {
                        {
                            var __tmp__ = _d._mustgetc();
                            _b = __tmp__._0;
                            _ok = __tmp__._1;
                        };
                        if (!_ok) {
                            return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                        };
                    };
                    if (_b != ((62 : stdgo.GoUInt8))) {
                        _d._err = _d._syntaxError(("expected /> in element" : stdgo.GoString));
                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    };
                    break;
                };
                if (_b == ((62 : stdgo.GoUInt8))) {
                    break;
                };
                _d._ungetc(_b);
                var _a = (new stdgo._internal.encoding.xml.Xml_Attr.Attr() : stdgo._internal.encoding.xml.Xml_Attr.Attr);
                {
                    {
                        var __tmp__ = _d._nsname();
                        _a.name = __tmp__._0?.__copy__();
                        _ok = __tmp__._1;
                    };
                    if (!_ok) {
                        if (_d._err == null) {
                            _d._err = _d._syntaxError(("expected attribute name in element" : stdgo.GoString));
                        };
                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    };
                };
                _d._space();
                {
                    {
                        var __tmp__ = _d._mustgetc();
                        _b = __tmp__._0;
                        _ok = __tmp__._1;
                    };
                    if (!_ok) {
                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    };
                };
                if (_b != ((61 : stdgo.GoUInt8))) {
                    if (_d.strict) {
                        _d._err = _d._syntaxError(("attribute name without = in element" : stdgo.GoString));
                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    };
                    _d._ungetc(_b);
                    _a.value = _a.name.local?.__copy__();
                } else {
                    _d._space();
                    var _data = _d._attrval();
                    if (_data == null) {
                        return { _0 : (null : stdgo._internal.encoding.xml.Xml_Token.Token), _1 : _d._err };
                    };
                    _a.value = (_data : stdgo.GoString)?.__copy__();
                };
                _attr = (_attr.__append__(_a?.__copy__()));
            };
            if (_empty) {
                _d._needClose = true;
                _d._toClose = _name?.__copy__();
            };
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.xml.Xml_StartElement.StartElement(_name?.__copy__(), _attr) : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))), _1 : (null : stdgo.Error) };
        });
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
        stdgo._internal.internal.Macro.controlFlow({
            var _consumed = false, _err = (null : stdgo.Error);
            var _recurse = (false : Bool);
            @:label("Loop") for (_i => _ in _tinfo._fields) {
                var _finfo = (stdgo.Go.setRef(_tinfo._fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                if ((((_finfo._flags & (1 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) == ((0 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || ((_finfo._parents.length) < (_parents.length) : Bool) : Bool) || (_finfo._xmlns != (stdgo.Go.str()) && _finfo._xmlns != (_start.name.space) : Bool) : Bool)) {
                    continue;
                };
                for (_j => _ in _parents) {
                    if (_parents[(_j : stdgo.GoInt)] != (_finfo._parents[(_j : stdgo.GoInt)])) {
                        @:jump("Loop") continue;
                    };
                };
                if (((_finfo._parents.length == (_parents.length)) && (_finfo._name == _start.name.local) : Bool)) {
                    return { _0 : true, _1 : _d._unmarshal(_finfo._value(_sv?.__copy__(), true)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                };
                if ((((_finfo._parents.length) > (_parents.length) : Bool) && (_finfo._parents[(_parents.length : stdgo.GoInt)] == _start.name.local) : Bool)) {
                    _recurse = true;
                    _parents = (_finfo._parents.__slice__(0, ((_parents.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    break;
                };
            };
            if (!_recurse) {
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
            while (true) {
                var _tok:stdgo._internal.encoding.xml.Xml_Token.Token = (null : stdgo._internal.encoding.xml.Xml_Token.Token);
                {
                    var __tmp__ = _d.token();
                    _tok = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : true, _1 : _err };
                };
                {
                    final __type__ = _tok;
                    if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                        var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                        var __tmp__ = _d._unmarshalPath(_tinfo, _sv?.__copy__(), _parents, (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), _depth), _consumed2:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : true, _1 : _err };
                        };
                        if (!_consumed2) {
                            {
                                var _err = (_d.skip() : stdgo.Error);
                                if (_err != null) {
                                    return { _0 : true, _1 : _err };
                                };
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                        var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                        return { _0 : true, _1 : (null : stdgo.Error) };
                    };
                };
            };
        });
    }
    @:keep
    static public function _unmarshal( _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _val:stdgo._internal.reflect.Reflect_Value.Value, _start:stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>, _depth:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder> = _d;
        stdgo._internal.internal.Macro.controlFlow({
            if (((_depth >= (10000 : stdgo.GoInt) : Bool) || (true && (_depth >= (5000 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                return stdgo._internal.encoding.xml.Xml__errUnmarshalDepth._errUnmarshalDepth;
            };
            if (_start == null || (_start : Dynamic).__nil__) {
                while (true) {
                    var __tmp__ = _d.token(), _tok:stdgo._internal.encoding.xml.Xml_Token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_tok : stdgo._internal.encoding.xml.Xml_StartElement.StartElement)) : stdgo._internal.encoding.xml.Xml_StartElement.StartElement), _1 : true };
                        } catch(_) {
                            { _0 : ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement), _1 : false };
                        }, _t = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _start = (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>);
                            break;
                        };
                    };
                };
            };
            if (((_val.kind() == (20u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_val.isNil() : Bool)) {
                var _e = (_val.elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                if (((_e.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && !_e.isNil() : Bool)) {
                    _val = _e?.__copy__();
                };
            };
            if (_val.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                if (_val.isNil()) {
                    _val.set(stdgo._internal.reflect.Reflect_new_.new_(_val.type().elem())?.__copy__());
                };
                _val = _val.elem()?.__copy__();
            };
            if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerType._unmarshalerType) : Bool)) {
                return _d._unmarshalInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler), _start);
            };
            if (_val.canAddr()) {
                var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__unmarshalerType._unmarshalerType) : Bool)) {
                    return _d._unmarshalInterface((stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler)) : stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler), _start);
                };
            };
            if ((_val.canInterface() && _val.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                return _d._unmarshalTextInterface((stdgo.Go.typeAssert((_val.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler));
            };
            if (_val.canAddr()) {
                var _pv = (_val.addr()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                    return _d._unmarshalTextInterface((stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler));
                };
            };
            var __0:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), __1:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value), __2:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), __3:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value), __4:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value), __5:stdgo.GoInt = (0 : stdgo.GoInt), __6:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), __7:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value), __8:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value), __9:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo> = (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_typeInfo.T_typeInfo>), __10:stdgo.Error = (null : stdgo.Error);
var _err = __10, _tinfo = __9, _sv = __8, _saveAny = __7, _saveXMLData = __6, _saveXMLIndex = __5, _saveXML = __4, _saveComment = __3, _comment = __2, _saveData = __1, _data = __0;
            {
                var _v = (_val?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _v.kind();
                            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                return _d.skip();
                                break;
                            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                var _typ = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                                if (_typ.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                    _saveData = _v?.__copy__();
                                    break;
                                };
                                var _n = (_v.len() : stdgo.GoInt);
                                _v.grow((1 : stdgo.GoInt));
                                _v.setLen((_n + (1 : stdgo.GoInt) : stdgo.GoInt));
                                {
                                    var _err = (_d._unmarshal(_v.index(_n)?.__copy__(), _start, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Error);
                                    if (_err != null) {
                                        _v.setLen(_n);
                                        return _err;
                                    };
                                };
                                return (null : stdgo.Error);
                                break;
                            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((7u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                _saveData = _v?.__copy__();
                                break;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                var _typ = (_v.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                                if ((_typ.string() : String) == (stdgo._internal.encoding.xml.Xml__nameType._nameType.string() : String)) {
                                    _v.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_start.name))?.__copy__());
                                    break;
                                };
                                _sv = _v?.__copy__();
                                {
                                    var __tmp__ = stdgo._internal.encoding.xml.Xml__getTypeInfo._getTypeInfo(_typ);
                                    _tinfo = __tmp__._0;
                                    _err = __tmp__._1;
                                };
                                if (_err != null) {
                                    return _err;
                                };
                                if (_tinfo._xmlname != null && ((_tinfo._xmlname : Dynamic).__nil__ == null || !(_tinfo._xmlname : Dynamic).__nil__)) {
                                    var _finfo = _tinfo._xmlname;
                                    if (((_finfo._name != stdgo.Go.str()) && (_finfo._name != _start.name.local) : Bool)) {
                                        return stdgo.Go.asInterface((((((("expected element type <" : stdgo.GoString) + _finfo._name?.__copy__() : stdgo.GoString) + ("> but have <" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _start.name.local?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError));
                                    };
                                    if (((_finfo._xmlns != stdgo.Go.str()) && (_finfo._xmlns != _start.name.space) : Bool)) {
                                        var _e = (((((("expected element <" : stdgo.GoString) + _finfo._name?.__copy__() : stdgo.GoString) + ("> in name space " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _finfo._xmlns?.__copy__() : stdgo.GoString) + (" but have " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                                        if (_start.name.space == (stdgo.Go.str())) {
                                            _e = (_e + (("no name space" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                                        } else {
                                            _e = (_e + (_start.name.space)?.__copy__() : stdgo.GoString);
                                        };
                                        return stdgo.Go.asInterface((_e : stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError));
                                    };
                                    var _fv = (_finfo._value(_sv?.__copy__(), true)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                                    {
                                        var __tmp__ = try {
                                            { _0 : (stdgo.Go.typeAssert((_fv.interface_() : stdgo._internal.encoding.xml.Xml_Name.Name)) : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : true };
                                        } catch(_) {
                                            { _0 : ({} : stdgo._internal.encoding.xml.Xml_Name.Name), _1 : false };
                                        }, __0 = __tmp__._0, _ok = __tmp__._1;
                                        if (_ok) {
                                            _fv.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_start.name))?.__copy__());
                                        };
                                    };
                                };
                                for (__0 => _a in _start.attr) {
                                    var _handled = (false : Bool);
                                    var _any = (-1 : stdgo.GoInt);
                                    for (_i => _ in _tinfo._fields) {
                                        var _finfo = (stdgo.Go.setRef(_tinfo._fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                                        {
                                            final __value__ = (_finfo._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                                            if (__value__ == ((2 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                                                var _strv = (_finfo._value(_sv?.__copy__(), true)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                                                if (((_a.name.local == _finfo._name) && (((_finfo._xmlns == stdgo.Go.str()) || (_finfo._xmlns == _a.name.space) : Bool)) : Bool)) {
                                                    {
                                                        var _err = (_d._unmarshalAttr(_strv?.__copy__(), _a?.__copy__()) : stdgo.Error);
                                                        if (_err != null) {
                                                            return _err;
                                                        };
                                                    };
                                                    _handled = true;
                                                };
                                            } else if (__value__ == ((66 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                                                if (_any == ((-1 : stdgo.GoInt))) {
                                                    _any = _i;
                                                };
                                            };
                                        };
                                    };
                                    if ((!_handled && (_any >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                                        var _finfo = (stdgo.Go.setRef(_tinfo._fields[(_any : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                                        var _strv = (_finfo._value(_sv?.__copy__(), true)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                                        {
                                            var _err = (_d._unmarshalAttr(_strv?.__copy__(), _a?.__copy__()) : stdgo.Error);
                                            if (_err != null) {
                                                return _err;
                                            };
                                        };
                                    };
                                };
                                for (_i => _ in _tinfo._fields) {
                                    var _finfo = (stdgo.Go.setRef(_tinfo._fields[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_fieldInfo.T_fieldInfo>);
                                    {
                                        final __value__ = (_finfo._flags & (127 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags) : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags);
                                        if (__value__ == ((4 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((8 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                                            if (!_saveData.isValid()) {
                                                _saveData = _finfo._value(_sv?.__copy__(), true)?.__copy__();
                                            };
                                        } else if (__value__ == ((32 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                                            if (!_saveComment.isValid()) {
                                                _saveComment = _finfo._value(_sv?.__copy__(), true)?.__copy__();
                                            };
                                        } else if (__value__ == ((64 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags)) || __value__ == ((65 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                                            if (!_saveAny.isValid()) {
                                                _saveAny = _finfo._value(_sv?.__copy__(), true)?.__copy__();
                                            };
                                        } else if (__value__ == ((16 : stdgo._internal.encoding.xml.Xml_T_fieldFlags.T_fieldFlags))) {
                                            if (!_saveXML.isValid()) {
                                                _saveXML = _finfo._value(_sv?.__copy__(), true)?.__copy__();
                                                if (_d._saved == null || (_d._saved : Dynamic).__nil__) {
                                                    _saveXMLIndex = (0 : stdgo.GoInt);
                                                    _d._saved = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                                                } else {
                                                    _saveXMLIndex = _d._savedOffset();
                                                };
                                            };
                                        };
                                    };
                                };
                                break;
                            } else {
                                return stdgo._internal.errors.Errors_new_.new_((("unknown type " : stdgo.GoString) + (_v.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                            };
                        };
                        break;
                    };
                };
            };
            @:label("Loop") while (true) {
                var _savedOffset:stdgo.GoInt = (0 : stdgo.GoInt);
                if (_saveXML.isValid()) {
                    _savedOffset = _d._savedOffset();
                };
                var __tmp__ = _d.token(), _tok:stdgo._internal.encoding.xml.Xml_Token.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                {
                    final __type__ = _tok;
                    {
                        var __bool__ = true;
                        while (__bool__) {
                            __bool__ = false;
                            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_StartElement.StartElement))) {
                                var _t:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_StartElement.StartElement) : __type__.__underlying__().value;
                                var _consumed = (false : Bool);
                                if (_sv.isValid()) {
                                    {
                                        var __tmp__ = _d._unmarshalPath(_tinfo, _sv?.__copy__(), (null : stdgo.Slice<stdgo.GoString>), (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), _depth);
                                        _consumed = __tmp__._0;
                                        _err = __tmp__._1;
                                    };
                                    if (_err != null) {
                                        return _err;
                                    };
                                    if ((!_consumed && _saveAny.isValid() : Bool)) {
                                        _consumed = true;
                                        {
                                            var _err = (_d._unmarshal(_saveAny?.__copy__(), (stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Error);
                                            if (_err != null) {
                                                return _err;
                                            };
                                        };
                                    };
                                };
                                if (!_consumed) {
                                    {
                                        var _err = (_d.skip() : stdgo.Error);
                                        if (_err != null) {
                                            return _err;
                                        };
                                    };
                                };
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_EndElement.EndElement))) {
                                var _t:stdgo._internal.encoding.xml.Xml_EndElement.EndElement = __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__() == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__ == null ? ({} : stdgo._internal.encoding.xml.Xml_EndElement.EndElement) : __type__.__underlying__().value;
                                if (_saveXML.isValid()) {
                                    _saveXMLData = (_d._saved.bytes().__slice__(_saveXMLIndex, _savedOffset) : stdgo.Slice<stdgo.GoUInt8>);
                                    if (_saveXMLIndex == ((0 : stdgo.GoInt))) {
                                        _d._saved = null;
                                    };
                                };
                                @:jump("Loop") break;
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_CharData.CharData))) {
                                var _t:stdgo._internal.encoding.xml.Xml_CharData.CharData = __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_CharData.CharData(0, 0) : __type__.__underlying__().value;
                                if (_saveData.isValid()) {
                                    _data = (_data.__append__(...(_t : Array<stdgo.GoUInt8>)));
                                };
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.encoding.xml.Xml_Comment.Comment))) {
                                var _t:stdgo._internal.encoding.xml.Xml_Comment.Comment = __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__() == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__ == null ? new stdgo._internal.encoding.xml.Xml_Comment.Comment(0, 0) : __type__.__underlying__().value;
                                if (_saveComment.isValid()) {
                                    _comment = (_comment.__append__(...(_t : Array<stdgo.GoUInt8>)));
                                };
                            };
                            break;
                        };
                    };
                };
            };
            if (((_saveData.isValid() && _saveData.canInterface() : Bool) && _saveData.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                {
                    var _err = ((stdgo.Go.typeAssert((_saveData.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText(_data) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                _saveData = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
            };
            if ((_saveData.isValid() && _saveData.canAddr() : Bool)) {
                var _pv = (_saveData.addr()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                if ((_pv.canInterface() && _pv.type().implements_(stdgo._internal.encoding.xml.Xml__textUnmarshalerType._textUnmarshalerType) : Bool)) {
                    {
                        var _err = ((stdgo.Go.typeAssert((_pv.interface_() : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler)) : stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler).unmarshalText(_data) : stdgo.Error);
                        if (_err != null) {
                            return _err;
                        };
                    };
                    _saveData = (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value);
                };
            };
            {
                var _err = (stdgo._internal.encoding.xml.Xml__copyValue._copyValue(_saveData?.__copy__(), _data) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _t = (_saveComment?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                {
                    final __value__ = _t.kind();
                    if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _t.setString((_comment : stdgo.GoString)?.__copy__());
                    } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _t.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_comment))?.__copy__());
                    };
                };
            };
            {
                var _t = (_saveXML?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                {
                    final __value__ = _t.kind();
                    if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _t.setString((_saveXMLData : stdgo.GoString)?.__copy__());
                    } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        if (_t.type().elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            _t.set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_saveXMLData))?.__copy__());
                        };
                    };
                };
            };
            return (null : stdgo.Error);
        });
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
