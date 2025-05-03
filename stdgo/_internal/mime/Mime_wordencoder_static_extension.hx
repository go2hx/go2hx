package stdgo._internal.mime;
@:keep @:allow(stdgo._internal.mime.Mime.WordEncoder_asInterface) class WordEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _splitWord( _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder, _buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _charset:stdgo.GoString):Void {
        @:recv var _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder = _e;
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L175"
        stdgo._internal.mime.Mime__closeword._closeWord(_buf);
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L176"
        _buf.writeByte((32 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L177"
        _e._openWord(_buf, _charset?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _openWord( _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder, _buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _charset:stdgo.GoString):Void {
        @:recv var _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder = _e;
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L161"
        _buf.writeString(("=?" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L162"
        _buf.writeString(_charset?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L163"
        _buf.writeByte((63 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L164"
        _buf.writeByte((_e : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L165"
        _buf.writeByte((63 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function _qEncode( _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder, _buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _charset:stdgo.GoString, _s:stdgo.GoString):Void {
        @:recv var _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder = _e;
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L116"
        if (!stdgo._internal.mime.Mime__isutf8._isUTF8(_charset?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L117"
            stdgo._internal.mime.Mime__writeqstring._writeQString(_buf, _s?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L118"
            return;
        };
        var _currentLen:stdgo.GoInt = (0 : stdgo.GoInt), _runeLen:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L122"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _b = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
var _encLen:stdgo.GoInt = (0 : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L127"
                if ((((((_b >= (32 : stdgo.GoUInt8) : Bool) && (_b <= (126 : stdgo.GoUInt8) : Bool) : Bool) && _b != ((61 : stdgo.GoUInt8)) : Bool) && _b != ((63 : stdgo.GoUInt8)) : Bool) && (_b != (95 : stdgo.GoUInt8)) : Bool)) {
                    {
                        final __tmp__0 = (1 : stdgo.GoInt);
                        final __tmp__1 = (1 : stdgo.GoInt);
                        _runeLen = @:binopAssign __tmp__0;
                        _encLen = @:binopAssign __tmp__1;
                    };
                } else {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString).__copy__());
                        _runeLen = @:tmpset0 __tmp__._1;
                    };
                    _encLen = ((3 : stdgo.GoInt) * _runeLen : stdgo.GoInt);
                };
//"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L134"
                if (((_currentLen + _encLen : stdgo.GoInt) > (63 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L135"
                    _e._splitWord(_buf, _charset.__copy__());
                    _currentLen = (0 : stdgo.GoInt);
                };
//"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L138"
                stdgo._internal.mime.Mime__writeqstring._writeQString(_buf, (_s.__slice__(_i, (_i + _runeLen : stdgo.GoInt)) : stdgo.GoString).__copy__());
_currentLen = (_currentLen + (_encLen) : stdgo.GoInt);
                _i = (_i + (_runeLen) : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _bEncode( _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder, _buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _charset:stdgo.GoString, _s:stdgo.GoString):Void {
        @:recv var _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder = _e;
        var _w = (stdgo._internal.encoding.base64.Base64_newencoder.newEncoder(stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, stdgo.Go.asInterface(_buf)) : stdgo._internal.io.Io_writecloser.WriteCloser);
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L86"
        if ((!stdgo._internal.mime.Mime__isutf8._isUTF8(_charset?.__copy__()) || (stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.encodedLen((_s.length)) <= (63 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L87"
            stdgo._internal.io.Io_writestring.writeString(_w, _s?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L88"
            _w.close();
            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L89"
            return;
        };
        var _currentLen:stdgo.GoInt = (0 : stdgo.GoInt), _last:stdgo.GoInt = (0 : stdgo.GoInt), _runeLen:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L93"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString).__copy__());
                    _runeLen = @:tmpset0 __tmp__._1;
                };
//"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L98"
                if (((_currentLen + _runeLen : stdgo.GoInt) <= stdgo._internal.mime.Mime__maxbase64len._maxBase64Len : Bool)) {
                    _currentLen = (_currentLen + (_runeLen) : stdgo.GoInt);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L101"
                    stdgo._internal.io.Io_writestring.writeString(_w, (_s.__slice__(_last, _i) : stdgo.GoString).__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L102"
                    _w.close();
                    //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L103"
                    _e._splitWord(_buf, _charset.__copy__());
                    _last = _i;
                    _currentLen = _runeLen;
                };
                _i = (_i + (_runeLen) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L108"
        stdgo._internal.io.Io_writestring.writeString(_w, (_s.__slice__(_last) : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L109"
        _w.close();
    }
    @:keep
    @:tdfield
    static public function _encodeWord( _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder, _charset:stdgo.GoString, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder = _e;
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L57"
        _buf.grow((48 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L59"
        _e._openWord((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _charset?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L60"
        if (_e == ((98 : stdgo._internal.mime.Mime_wordencoder.WordEncoder))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L61"
            _e._bEncode((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _charset?.__copy__(), _s?.__copy__());
        } else {
            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L63"
            _e._qEncode((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _charset?.__copy__(), _s?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L65"
        stdgo._internal.mime.Mime__closeword._closeWord((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L67"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function encode( _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder, _charset:stdgo.GoString, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder = _e;
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L36"
        if (!stdgo._internal.mime.Mime__needsencoding._needsEncoding(_s?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L37"
            return _s?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/encodedword.go#L39"
        return _e._encodeWord(_charset?.__copy__(), _s?.__copy__())?.__copy__();
    }
}
