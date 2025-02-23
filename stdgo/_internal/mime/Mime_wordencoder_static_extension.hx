package stdgo._internal.mime;
@:keep @:allow(stdgo._internal.mime.Mime.WordEncoder_asInterface) class WordEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _splitWord( _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder, _buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _charset:stdgo.GoString):Void {
        @:recv var _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder = _e;
        stdgo._internal.mime.Mime__closeword._closeWord(_buf);
        @:check2r _buf.writeByte((32 : stdgo.GoUInt8));
        _e._openWord(_buf, _charset?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _openWord( _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder, _buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _charset:stdgo.GoString):Void {
        @:recv var _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder = _e;
        @:check2r _buf.writeString(("=?" : stdgo.GoString));
        @:check2r _buf.writeString(_charset?.__copy__());
        @:check2r _buf.writeByte((63 : stdgo.GoUInt8));
        @:check2r _buf.writeByte((_e : stdgo.GoUInt8));
        @:check2r _buf.writeByte((63 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function _qEncode( _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder, _buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _charset:stdgo.GoString, _s:stdgo.GoString):Void {
        @:recv var _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder = _e;
        if (!stdgo._internal.mime.Mime__isutf8._isUTF8(_charset?.__copy__())) {
            stdgo._internal.mime.Mime__writeqstring._writeQString(_buf, _s?.__copy__());
            return;
        };
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _runeLen = __1, _currentLen = __0;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _b = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
var _encLen:stdgo.GoInt = (0 : stdgo.GoInt);
if ((((((_b >= (32 : stdgo.GoUInt8) : Bool) && (_b <= (126 : stdgo.GoUInt8) : Bool) : Bool) && _b != ((61 : stdgo.GoUInt8)) : Bool) && _b != ((63 : stdgo.GoUInt8)) : Bool) && (_b != (95 : stdgo.GoUInt8)) : Bool)) {
                    {
                        final __tmp__0 = (1 : stdgo.GoInt);
                        final __tmp__1 = (1 : stdgo.GoInt);
                        _runeLen = __tmp__0;
                        _encLen = __tmp__1;
                    };
                } else {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString).__copy__());
                        _runeLen = @:tmpset0 __tmp__._1;
                    };
                    _encLen = ((3 : stdgo.GoInt) * _runeLen : stdgo.GoInt);
                };
if (((_currentLen + _encLen : stdgo.GoInt) > (63 : stdgo.GoInt) : Bool)) {
                    _e._splitWord(_buf, _charset.__copy__());
                    _currentLen = (0 : stdgo.GoInt);
                };
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
        if ((!stdgo._internal.mime.Mime__isutf8._isUTF8(_charset?.__copy__()) || (@:check2r stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.encodedLen((_s.length)) <= (63 : stdgo.GoInt) : Bool) : Bool)) {
            stdgo._internal.io.Io_writestring.writeString(_w, _s?.__copy__());
            _w.close();
            return;
        };
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt);
var _runeLen = __2, _last = __1, _currentLen = __0;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString).__copy__());
                    _runeLen = @:tmpset0 __tmp__._1;
                };
if (((_currentLen + _runeLen : stdgo.GoInt) <= stdgo._internal.mime.Mime__maxbase64len._maxBase64Len : Bool)) {
                    _currentLen = (_currentLen + (_runeLen) : stdgo.GoInt);
                } else {
                    stdgo._internal.io.Io_writestring.writeString(_w, (_s.__slice__(_last, _i) : stdgo.GoString).__copy__());
                    _w.close();
                    _e._splitWord(_buf, _charset.__copy__());
                    _last = _i;
                    _currentLen = _runeLen;
                };
                _i = (_i + (_runeLen) : stdgo.GoInt);
            };
        };
        stdgo._internal.io.Io_writestring.writeString(_w, (_s.__slice__(_last) : stdgo.GoString)?.__copy__());
        _w.close();
    }
    @:keep
    @:tdfield
    static public function _encodeWord( _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder, _charset:stdgo.GoString, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder = _e;
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        @:check2 _buf.grow((48 : stdgo.GoInt));
        _e._openWord((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _charset?.__copy__());
        if (_e == ((98 : stdgo._internal.mime.Mime_wordencoder.WordEncoder))) {
            _e._bEncode((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _charset?.__copy__(), _s?.__copy__());
        } else {
            _e._qEncode((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _charset?.__copy__(), _s?.__copy__());
        };
        stdgo._internal.mime.Mime__closeword._closeWord((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function encode( _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder, _charset:stdgo.GoString, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _e:stdgo._internal.mime.Mime_wordencoder.WordEncoder = _e;
        if (!stdgo._internal.mime.Mime__needsencoding._needsEncoding(_s?.__copy__())) {
            return _s?.__copy__();
        };
        return _e._encodeWord(_charset?.__copy__(), _s?.__copy__())?.__copy__();
    }
}
