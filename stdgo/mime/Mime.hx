package mime;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class WordEncoder {
    public function _splitWord(_buf:Pointer<stdgo.strings.Strings.Builder>, _charset:GoString):Void {
        var _e = this.__copy__();
        _closeWord(_buf);
        _buf.value.writeByte(((" ".code : GoRune)));
        _e._openWord(_buf, _charset);
    }
    public function _openWord(_buf:Pointer<stdgo.strings.Strings.Builder>, _charset:GoString):Void {
        var _e = this.__copy__();
        _buf.value.writeString("=?");
        _buf.value.writeString(_charset);
        _buf.value.writeByte((("?".code : GoRune)));
        _buf.value.writeByte(_e.__t__);
        _buf.value.writeByte((("?".code : GoRune)));
    }
    public function _qEncode(_buf:Pointer<stdgo.strings.Strings.Builder>, _charset:GoString, _s:GoString):Void {
        var _e = this.__copy__();
        if (!_isUTF8(_charset)) {
            _writeQString(_buf, _s);
            return;
        };
        var _currentLen:GoInt = ((0 : GoInt)), _runeLen:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i = _i + (_runeLen), {
                var _b:GoUInt8 = _s[_i];
                var _encLen:GoInt = ((0 : GoInt));
                if (_b >= ((" ".code : GoRune)) && _b <= (("~".code : GoRune)) && _b != (("=".code : GoRune)) && _b != (("?".code : GoRune)) && _b != (("_".code : GoRune))) {
                    {
                        final __tmp__0 = ((1 : GoInt));
                        final __tmp__1 = ((1 : GoInt));
                        _runeLen = __tmp__0;
                        _encLen = __tmp__1;
                    };
                } else {
                    {
                        var __tmp__ = unicode.utf8.Utf8.decodeRuneInString(_s.__slice__(_i));
                        _runeLen = __tmp__._1;
                    };
                    _encLen = ((3 : GoInt)) * _runeLen;
                };
                if (_currentLen + _encLen > _maxContentLen) {
                    _e._splitWord(_buf, _charset);
                    _currentLen = ((0 : GoInt));
                };
                _writeQString(_buf, _s.__slice__(_i, _i + _runeLen));
                _currentLen = _currentLen + (_encLen);
            });
        };
    }
    public function _bEncode(_buf:Pointer<stdgo.strings.Strings.Builder>, _charset:GoString, _s:GoString):Void {
        var _e = this.__copy__();
        var _w:stdgo.io.Io.WriteCloser = encoding.base64.Base64.newEncoder(encoding.base64.Base64.stdEncoding, _buf.value);
        if (!_isUTF8(_charset) || encoding.base64.Base64.stdEncoding.value.encodedLen(_s.length) <= _maxContentLen) {
            stdgo.io.Io.writeString(_w, _s);
            _w.close();
            return;
        };
        var _currentLen:GoInt = ((0 : GoInt)), _last:GoInt = ((0 : GoInt)), _runeLen:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i = _i + (_runeLen), {
                {
                    var __tmp__ = unicode.utf8.Utf8.decodeRuneInString(_s.__slice__(_i));
                    _runeLen = __tmp__._1;
                };
                if (_currentLen + _runeLen <= _maxBase64Len) {
                    _currentLen = _currentLen + (_runeLen);
                } else {
                    stdgo.io.Io.writeString(_w, _s.__slice__(_last, _i));
                    _w.close();
                    _e._splitWord(_buf, _charset);
                    _last = _i;
                    _currentLen = _runeLen;
                };
            });
        };
        stdgo.io.Io.writeString(_w, _s.__slice__(_last));
        _w.close();
    }
    public function _encodeWord(_charset:GoString, _s:GoString):GoString {
        var _e = this.__copy__();
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        _buf.grow(((48 : GoInt)));
        _e._openWord(Go.pointer(_buf), _charset);
        if (_e.__t__ == bencoding.__t__) {
            _e._bEncode(Go.pointer(_buf), _charset, _s);
        } else {
            _e._qEncode(Go.pointer(_buf), _charset, _s);
        };
        _closeWord(Go.pointer(_buf));
        return _buf.toString();
    }
    public function encode(_charset:GoString, _s:GoString):GoString {
        var _e = this.__copy__();
        if (!_needsEncoding(_s)) {
            return _s;
        };
        return _e._encodeWord(_charset, _s);
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new WordEncoder(__t__);
}
@:structInit class WordDecoder {
    public function _convert(_buf:Pointer<stdgo.strings.Strings.Builder>, _charset:GoString, _content:Slice<GoByte>):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (stdgo.strings.Strings.equalFold("utf-8", _charset)) {
            _buf.value.write(_content);
        } else if (stdgo.strings.Strings.equalFold("iso-8859-1", _charset)) {
            for (_c in _content) {
                _buf.value.writeRune(((_c : GoRune)));
            };
        } else if (stdgo.strings.Strings.equalFold("us-ascii", _charset)) {
            for (_c in _content) {
                if (_c >= unicode.utf8.Utf8.runeSelf) {
                    _buf.value.writeRune(unicode.Unicode.replacementChar);
                } else {
                    _buf.value.writeByte(_c);
                };
            };
        } else {
            if (_d.value.charsetReader == null) {
                return stdgo.fmt.Fmt.errorf("mime: unhandled charset %q", Go.toInterface(_charset));
            };
            var __tmp__ = _d.value.charsetReader(stdgo.strings.Strings.toLower(_charset), stdgo.bytes.Bytes.newReader(_content).value), _r:stdgo.io.Io.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            {
                {
                    var __tmp__ = stdgo.io.Io.copy(_buf.value, _r);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function decodeHeader(_header:GoString):{ var _0 : GoString; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _i:GoInt = stdgo.strings.Strings.index(_header, "=?");
        if (_i == -((1 : GoUnTypedInt))) {
            return { _0 : _header, _1 : ((null : stdgo.Error)) };
        };
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        _buf.writeString(_header.__slice__(0, _i));
        _header = _header.__slice__(_i);
        var _betweenWords:Bool = false;
        while (true) {
            var _start:GoInt = stdgo.strings.Strings.index(_header, "=?");
            if (_start == -((1 : GoUnTypedInt))) {
                break;
            };
            var _cur:GoInt = _start + "=?".length;
            var _i:GoInt = stdgo.strings.Strings.index(_header.__slice__(_cur), "?");
            if (_i == -((1 : GoUnTypedInt))) {
                break;
            };
            var _charset:GoString = _header.__slice__(_cur, _cur + _i);
            _cur = _cur + (_i + "?".length);
            if (_header.length < _cur + "Q??=".length) {
                break;
            };
            var _encoding:GoUInt8 = _header[_cur];
            _cur++;
            if (_header[_cur] != (("?".code : GoRune))) {
                break;
            };
            _cur++;
            var _j:GoInt = stdgo.strings.Strings.index(_header.__slice__(_cur), "?=");
            if (_j == -((1 : GoUnTypedInt))) {
                break;
            };
            var _text:GoString = _header.__slice__(_cur, _cur + _j);
            var _end:GoInt = _cur + _j + "?=".length;
            var __tmp__ = _decode(_encoding, _text), _content:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _betweenWords = false;
                _buf.writeString(_header.__slice__(0, _start + ((2 : GoInt))));
                _header = _header.__slice__(_start + ((2 : GoInt)));
                continue;
            };
            if (_start > ((0 : GoInt)) && (!_betweenWords || _hasNonWhitespace(_header.__slice__(0, _start)))) {
                _buf.writeString(_header.__slice__(0, _start));
            };
            {
                var _err:stdgo.Error = _d.value._convert(Go.pointer(_buf), _charset, _content);
                if (_err != null) {
                    return { _0 : "", _1 : _err };
                };
            };
            _header = _header.__slice__(_end);
            _betweenWords = true;
        };
        if (_header.length > ((0 : GoInt))) {
            _buf.writeString(_header);
        };
        return { _0 : _buf.toString(), _1 : ((null : stdgo.Error)) };
    }
    public function decode(_word:GoString):{ var _0 : GoString; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_word.length < ((8 : GoInt)) || !stdgo.strings.Strings.hasPrefix(_word, "=?") || !stdgo.strings.Strings.hasSuffix(_word, "?=") || stdgo.strings.Strings.count(_word, "?") != ((4 : GoInt))) {
            return { _0 : "", _1 : _errInvalidWord };
        };
        _word = _word.__slice__(((2 : GoInt)), _word.length - ((2 : GoInt)));
        var _split:GoInt = stdgo.strings.Strings.indexByte(_word, (("?".code : GoRune)));
        var _charset:GoString = _word.__slice__(0, _split);
        if (_charset.length == ((0 : GoInt))) {
            return { _0 : "", _1 : _errInvalidWord };
        };
        if (_word.length < _split + ((3 : GoInt))) {
            return { _0 : "", _1 : _errInvalidWord };
        };
        var _encoding:GoUInt8 = _word[_split + ((1 : GoInt))];
        if (_word[_split + ((2 : GoInt))] != (("?".code : GoRune))) {
            return { _0 : "", _1 : _errInvalidWord };
        };
        var _text:GoString = _word.__slice__(_split + ((3 : GoInt)));
        var __tmp__ = _decode(_encoding, _text), _content:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : "", _1 : _err };
        };
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        {
            var _err:stdgo.Error = _d.value._convert(Go.pointer(_buf), _charset, _content);
            if (_err != null) {
                return { _0 : "", _1 : _err };
            };
        };
        return { _0 : _buf.toString(), _1 : ((null : stdgo.Error)) };
    }
    public var charsetReader : (GoString, stdgo.io.Io.Reader) -> { var _0 : stdgo.io.Io.Reader; var _1 : stdgo.Error; } = null;
    public function new(?charsetReader:(GoString, stdgo.io.Io.Reader) -> { var _0 : stdgo.io.Io.Reader; var _1 : stdgo.Error; }) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(charsetReader) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new WordDecoder(charsetReader);
    }
    public function __set__(__tmp__) {
        this.charsetReader = __tmp__.charsetReader;
        return this;
    }
}
final _maxEncodedWordLen : GoInt64 = ((75 : GoUnTypedInt));
final _maxContentLen : GoInt = _maxEncodedWordLen - "=?UTF-8?q?".length - "?=".length;
var _maxBase64Len : GoInt = encoding.base64.Base64.stdEncoding.value.decodedLen(_maxContentLen);
var _typeFiles : Slice<GoString> = new Slice<GoString>("/etc/mime.types", "/etc/apache2/mime.types", "/etc/apache/mime.types", "/etc/httpd/conf/mime.types");
var _extensions : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
var _mimeTypes : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
var _builtinTypesLower : GoMap<GoString, GoString> = new GoMap<GoString, GoString>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))),
{ key : ".avif", value : "image/avif" },
{ key : ".css", value : "text/css; charset=utf-8" },
{ key : ".gif", value : "image/gif" },
{ key : ".htm", value : "text/html; charset=utf-8" },
{ key : ".html", value : "text/html; charset=utf-8" },
{ key : ".jpeg", value : "image/jpeg" },
{ key : ".jpg", value : "image/jpeg" },
{ key : ".js", value : "text/javascript; charset=utf-8" },
{ key : ".json", value : "application/json" },
{ key : ".mjs", value : "text/javascript; charset=utf-8" },
{ key : ".pdf", value : "application/pdf" },
{ key : ".png", value : "image/png" },
{ key : ".svg", value : "image/svg+xml" },
{ key : ".wasm", value : "application/wasm" },
{ key : ".webp", value : "image/webp" },
{ key : ".xml", value : "text/xml; charset=utf-8" });
var _extensionsMu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
final bencoding : WordEncoder = new WordEncoder((("b".code : GoRune)));
var errInvalidMediaParameter : stdgo.Error = stdgo.errors.Errors.new_("mime: invalid media parameter");
final _upperhex : GoString = "0123456789ABCDEF";
var _mimeGlobs : Slice<GoString> = new Slice<GoString>("/usr/local/share/mime/globs2", "/usr/share/mime/globs2");
var _osInitMime : () -> Void = null;
var _testInitMime : () -> Void = null;
var _once : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _mimeTypesLower : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
var _errInvalidWord : stdgo.Error = stdgo.errors.Errors.new_("mime: invalid RFC 2047 encoded-word");
final qencoding : WordEncoder = new WordEncoder((("q".code : GoRune)));
function _needsEncoding(_s:GoString):Bool {
        for (_b in _s) {
            if ((_b < ((" ".code : GoRune)) || _b > (("~".code : GoRune))) && _b != (("\t".code : GoRune))) {
                return true;
            };
        };
        return false;
    }
/**
    // writeQString encodes s using Q encoding and writes it to buf.
**/
function _writeQString(_buf:Pointer<stdgo.strings.Strings.Builder>, _s:GoString):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i++, {
                {
                    var _b:GoUInt8 = _s[_i];
                    if (_b == ((" ".code : GoRune))) {
                        _buf.value.writeByte((("_".code : GoRune)));
                    } else if (_b >= (("!".code : GoRune)) && _b <= (("~".code : GoRune)) && _b != (("=".code : GoRune)) && _b != (("?".code : GoRune)) && _b != (("_".code : GoRune))) {
                        _buf.value.writeByte(_b);
                    } else {
                        _buf.value.writeByte((("=".code : GoRune)));
                        _buf.value.writeByte(_upperhex[(_b >> ((4 : GoUnTypedInt)))]);
                        _buf.value.writeByte(_upperhex[_b & ((15 : GoUInt8))]);
                    };
                };
            });
        };
    }
/**
    // closeWord writes the end of an encoded-word into buf.
**/
function _closeWord(_buf:Pointer<stdgo.strings.Strings.Builder>):Void {
        _buf.value.writeString("?=");
    }
function _isUTF8(_charset:GoString):Bool {
        return stdgo.strings.Strings.equalFold(_charset, "UTF-8");
    }
function _decode(_encoding:GoByte, _text:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        if (_encoding == (("B".code : GoRune)) || _encoding == (("b".code : GoRune))) {
            return encoding.base64.Base64.stdEncoding.value.decodeString(_text);
        } else if (_encoding == (("Q".code : GoRune)) || _encoding == (("q".code : GoRune))) {
            return _qDecode(_text);
        } else {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errInvalidWord };
        };
    }
/**
    // hasNonWhitespace reports whether s (assumed to be ASCII) contains at least
    // one byte of non-whitespace.
**/
function _hasNonWhitespace(_s:GoString):Bool {
        for (_b in _s) {
            if (_b == ((" ".code : GoRune)) || _b == (("\t".code : GoRune)) || _b == (("\n".code : GoRune)) || _b == (("\r".code : GoRune))) {} else {
                return true;
            };
        };
        return false;
    }
/**
    // qDecode decodes a Q encoded string.
**/
function _qDecode(_s:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _dec:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_s.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _n:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i++, {
                {
                    var _c:GoUInt8 = _s[_i];
                    if (_c == (("_".code : GoRune))) {
                        _dec[_n] = ((" ".code : GoRune));
                    } else if (_c == (("=".code : GoRune))) {
                        if (_i + ((2 : GoInt)) >= _s.length) {
                            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errInvalidWord };
                        };
                        var __tmp__ = _readHexByte(_s[_i + ((1 : GoInt))], _s[_i + ((2 : GoInt))]), _b:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
                        };
                        _dec[_n] = _b;
                        _i = _i + (((2 : GoInt)));
                    } else if ((_c <= (("~".code : GoRune)) && _c >= ((" ".code : GoRune))) || _c == (("\n".code : GoRune)) || _c == (("\r".code : GoRune)) || _c == (("\t".code : GoRune))) {
                        _dec[_n] = _c;
                    } else {
                        return { _0 : new Slice<GoUInt8>().nil(), _1 : _errInvalidWord };
                    };
                };
                _n++;
            });
        };
        return { _0 : _dec.__slice__(0, _n), _1 : ((null : stdgo.Error)) };
    }
/**
    // readHexByte returns the byte from its quoted-printable representation.
**/
function _readHexByte(_a:GoByte, _b:GoByte):{ var _0 : GoByte; var _1 : Error; } {
        var _hb:GoByte = ((0 : GoUInt8)), _lb:GoByte = ((0 : GoUInt8));
        var _err:Error = ((null : stdgo.Error));
        {
            {
                var __tmp__ = _fromHex(_a);
                _hb = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((0 : GoUInt8)), _1 : _err };
            };
        };
        {
            {
                var __tmp__ = _fromHex(_b);
                _lb = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((0 : GoUInt8)), _1 : _err };
            };
        };
        return { _0 : (_hb << ((4 : GoUnTypedInt))) | _lb, _1 : ((null : stdgo.Error)) };
    }
function _fromHex(_b:GoByte):{ var _0 : GoByte; var _1 : Error; } {
        if (_b >= (("0".code : GoRune)) && _b <= (("9".code : GoRune))) {
            return { _0 : _b - (("0".code : GoRune)), _1 : ((null : stdgo.Error)) };
        } else if (_b >= (("A".code : GoRune)) && _b <= (("F".code : GoRune))) {
            return { _0 : _b - (("A".code : GoRune)) + ((10 : GoUInt8)), _1 : ((null : stdgo.Error)) };
        } else if (_b >= (("a".code : GoRune)) && _b <= (("f".code : GoRune))) {
            return { _0 : _b - (("a".code : GoRune)) + ((10 : GoUInt8)), _1 : ((null : stdgo.Error)) };
        };
        return { _0 : ((0 : GoUInt8)), _1 : stdgo.fmt.Fmt.errorf("mime: invalid hex byte %#02x", Go.toInterface(_b)) };
    }
/**
    // isTSpecial reports whether rune is in 'tspecials' as defined by RFC
    // 1521 and RFC 2045.
**/
function _isTSpecial(_r:GoRune):Bool {
        return stdgo.strings.Strings.containsRune("()<>@,;:\"/[]?=", _r);
    }
/**
    // isTokenChar reports whether rune is in 'token' as defined by RFC
    // 1521 and RFC 2045.
**/
function _isTokenChar(_r:GoRune):Bool {
        return _r > ((32 : GoInt32)) && _r < ((127 : GoInt32)) && !_isTSpecial(_r);
    }
/**
    // isToken reports whether s is a 'token' as defined by RFC 1521
    // and RFC 2045.
**/
function _isToken(_s:GoString):Bool {
        if (_s == (("" : GoString))) {
            return false;
        };
        return stdgo.strings.Strings.indexFunc(_s, _isNotTokenChar) < ((0 : GoInt));
    }
/**
    // FormatMediaType serializes mediatype t and the parameters
    // param as a media type conforming to RFC 2045 and RFC 2616.
    // The type and parameter names are written in lower-case.
    // When any of the arguments result in a standard violation then
    // FormatMediaType returns the empty string.
**/
function formatMediaType(_t:GoString, _param:GoMap<GoString, GoString>):GoString {
        var _b:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        {
            var _slash:GoInt = stdgo.strings.Strings.indexByte(_t, (("/".code : GoRune)));
            if (_slash == -((1 : GoUnTypedInt))) {
                if (!_isToken(_t)) {
                    return "";
                };
                _b.writeString(stdgo.strings.Strings.toLower(_t));
            } else {
                var _major:GoString = _t.__slice__(0, _slash), _sub:GoString = _t.__slice__(_slash + ((1 : GoInt)));
                if (!_isToken(_major) || !_isToken(_sub)) {
                    return "";
                };
                _b.writeString(stdgo.strings.Strings.toLower(_major));
                _b.writeByte((("/".code : GoRune)));
                _b.writeString(stdgo.strings.Strings.toLower(_sub));
            };
        };
        var _attrs:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).setCap((((_param == null ? 0 : _param.length) : GoInt)).toBasic());
        {
            var _a;
            for (_obj in _param.keyValueIterator()) {
                _a = _obj.key;
                _attrs = _attrs.__append__(_a);
            };
        };
        stdgo.sort.Sort.strings(_attrs);
        for (_attribute in _attrs) {
            var _value:GoString = _param[_attribute];
            _b.writeByte(((";".code : GoRune)));
            _b.writeByte(((" ".code : GoRune)));
            if (!_isToken(_attribute)) {
                return "";
            };
            _b.writeString(stdgo.strings.Strings.toLower(_attribute));
            var _needEnc:Bool = _needsEncoding(_value);
            if (_needEnc) {
                _b.writeByte((("*".code : GoRune)));
            };
            _b.writeByte((("=".code : GoRune)));
            if (_needEnc) {
                _b.writeString("utf-8\'\'");
                var _offset:GoInt = ((0 : GoInt));
                {
                    var _index:GoInt = ((0 : GoInt));
                    Go.cfor(_index < _value.length, _index++, {
                        var _ch:GoUInt8 = _value[_index];
                        if (_ch <= ((" ".code : GoRune)) || _ch >= ((127 : GoUInt8)) || _ch == (("*".code : GoRune)) || _ch == (("\'".code : GoRune)) || _ch == (("%".code : GoRune)) || _isTSpecial(((_ch : GoRune)))) {
                            _b.writeString(_value.__slice__(_offset, _index));
                            _offset = _index + ((1 : GoInt));
                            _b.writeByte((("%".code : GoRune)));
                            _b.writeByte(_upperhex[(_ch >> ((4 : GoUnTypedInt)))]);
                            _b.writeByte(_upperhex[_ch & ((15 : GoUInt8))]);
                        };
                    });
                };
                _b.writeString(_value.__slice__(_offset));
                continue;
            };
            if (_isToken(_value)) {
                _b.writeString(_value);
                continue;
            };
            _b.writeByte((("\"".code : GoRune)));
            var _offset:GoInt = ((0 : GoInt));
            {
                var _index:GoInt = ((0 : GoInt));
                Go.cfor(_index < _value.length, _index++, {
                    var _character:GoUInt8 = _value[_index];
                    if (_character == (("\"".code : GoRune)) || _character == (("\\".code : GoRune))) {
                        _b.writeString(_value.__slice__(_offset, _index));
                        _offset = _index;
                        _b.writeByte((("\\".code : GoRune)));
                    };
                });
            };
            _b.writeString(_value.__slice__(_offset));
            _b.writeByte((("\"".code : GoRune)));
        };
        return _b.toString();
    }
function _checkMediaTypeDisposition(_s:GoString):Error {
        var __tmp__ = _consumeToken(_s), _typ:GoString = __tmp__._0, _rest:GoString = __tmp__._1;
        if (_typ == (("" : GoString))) {
            return stdgo.errors.Errors.new_("mime: no media type");
        };
        if (_rest == (("" : GoString))) {
            return ((null : stdgo.Error));
        };
        if (!stdgo.strings.Strings.hasPrefix(_rest, "/")) {
            return stdgo.errors.Errors.new_("mime: expected slash after first token");
        };
        var __tmp__ = _consumeToken(_rest.__slice__(((1 : GoInt)))), _subtype:GoString = __tmp__._0, _rest:GoString = __tmp__._1;
        if (_subtype == (("" : GoString))) {
            return stdgo.errors.Errors.new_("mime: expected token after slash");
        };
        if (_rest != (("" : GoString))) {
            return stdgo.errors.Errors.new_("mime: unexpected content after media subtype");
        };
        return ((null : stdgo.Error));
    }
/**
    // ParseMediaType parses a media type value and any optional
    // parameters, per RFC 1521.  Media types are the values in
    // Content-Type and Content-Disposition headers (RFC 2183).
    // On success, ParseMediaType returns the media type converted
    // to lowercase and trimmed of white space and a non-nil map.
    // If there is an error parsing the optional parameter,
    // the media type will be returned along with the error
    // ErrInvalidMediaParameter.
    // The returned map, params, maps from the lowercase
    // attribute to the attribute value with its case preserved.
**/
function parseMediaType(_v:GoString):{ var _0 : GoString; var _1 : GoMap<GoString, GoString>; var _2 : Error; } {
        var _mediatype:GoString = (("" : GoString)), _params:GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _err:Error = ((null : stdgo.Error));
        var _i:GoInt = stdgo.strings.Strings.index(_v, ";");
        if (_i == -((1 : GoUnTypedInt))) {
            _i = _v.length;
        };
        _mediatype = stdgo.strings.Strings.trimSpace(stdgo.strings.Strings.toLower(_v.__slice__(((0 : GoInt)), _i)));
        _err = _checkMediaTypeDisposition(_mediatype);
        if (_err != null) {
            return { _0 : "", _1 : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _2 : _err };
        };
        _params = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
        var _continuation:GoMap<GoString, GoMap<GoString, GoString>> = new GoMap<GoString, GoMap<GoString, GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil();
        _v = _v.__slice__(_i);
        while (_v.length > ((0 : GoInt))) {
            _v = stdgo.strings.Strings.trimLeftFunc(_v, unicode.Unicode.isSpace);
            if (_v.length == ((0 : GoInt))) {
                break;
            };
            var __tmp__ = _consumeMediaParam(_v), _key:GoString = __tmp__._0, _value:GoString = __tmp__._1, _rest:GoString = __tmp__._2;
            if (_key == (("" : GoString))) {
                if (stdgo.strings.Strings.trimSpace(_rest) == ((";" : GoString))) {
                    return { _0 : _mediatype, _1 : _params, _2 : _err };
                };
                return { _0 : _mediatype, _1 : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _2 : errInvalidMediaParameter };
            };
            var _pmap:GoMap<GoString, GoString> = _params;
            {
                var _idx:GoInt = stdgo.strings.Strings.index(_key, "*");
                if (_idx != -((1 : GoUnTypedInt))) {
                    var _baseName:GoString = _key.__slice__(0, _idx);
                    if (_continuation == null || _continuation.isNil()) {
                        _continuation = new GoMap<GoString, GoMap<GoString, GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))));
                    };
                    var _ok:Bool = false;
                    {
                        {
                            var __tmp__ = _continuation.exists(_baseName) ? { value : _continuation[_baseName], ok : true } : { value : _continuation.defaultValue(), ok : false };
                            _pmap = __tmp__.value;
                            _ok = __tmp__.ok;
                        };
                        if (!_ok) {
                            _continuation[_baseName] = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
                            _pmap = _continuation[_baseName];
                        };
                    };
                };
            };
            {
                var __tmp__ = _pmap.exists(_key) ? { value : _pmap[_key], ok : true } : { value : _pmap.defaultValue(), ok : false }, _:GoString = __tmp__.value, _exists:Bool = __tmp__.ok;
                if (_exists) {
                    return { _0 : "", _1 : new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil(), _2 : stdgo.errors.Errors.new_("mime: duplicate parameter name") };
                };
            };
            _pmap[_key] = _value;
            _v = _rest;
        };
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        {
            var _key;
            var _pieceMap;
            for (_obj in _continuation.keyValueIterator()) {
                _key = _obj.key;
                _pieceMap = _obj.value;
                var _singlePartKey:GoString = _key + (("*" : GoString));
                {
                    var __tmp__ = _pieceMap.exists(_singlePartKey) ? { value : _pieceMap[_singlePartKey], ok : true } : { value : _pieceMap.defaultValue(), ok : false }, _v:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
                    if (_ok) {
                        {
                            var __tmp__ = _decode2231Enc(_v), _decv:GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                _params[_key] = _decv;
                            };
                        };
                        continue;
                    };
                };
                _buf.reset();
                var _valid:Bool = false;
                {
                    var _n:GoInt = ((0 : GoInt));
                    Go.cfor(true, _n++, {
                        var _simplePart:GoString = stdgo.fmt.Fmt.sprintf("%s*%d", Go.toInterface(_key), Go.toInterface(_n));
                        {
                            var __tmp__ = _pieceMap.exists(_simplePart) ? { value : _pieceMap[_simplePart], ok : true } : { value : _pieceMap.defaultValue(), ok : false }, _v:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
                            if (_ok) {
                                _valid = true;
                                _buf.writeString(_v);
                                continue;
                            };
                        };
                        var _encodedPart:GoString = _simplePart + (("*" : GoString));
                        var __tmp__ = _pieceMap.exists(_encodedPart) ? { value : _pieceMap[_encodedPart], ok : true } : { value : _pieceMap.defaultValue(), ok : false }, _v:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
                        if (!_ok) {
                            break;
                        };
                        _valid = true;
                        if (_n == ((0 : GoInt))) {
                            {
                                var __tmp__ = _decode2231Enc(_v), _decv:GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (_ok) {
                                    _buf.writeString(_decv);
                                };
                            };
                        } else {
                            var __tmp__ = _percentHexUnescape(_v), _decv:GoString = __tmp__._0, _:stdgo.Error = __tmp__._1;
                            _buf.writeString(_decv);
                        };
                    });
                };
                if (_valid) {
                    _params[_key] = _buf.toString();
                };
            };
        };
        return { _0 : _mediatype, _1 : _params, _2 : _err };
    }
function _decode2231Enc(_v:GoString):{ var _0 : GoString; var _1 : Bool; } {
        var _sv:Slice<GoString> = stdgo.strings.Strings.splitN(_v, "\'", ((3 : GoInt)));
        if (_sv.length != ((3 : GoInt))) {
            return { _0 : "", _1 : false };
        };
        var _charset:GoString = stdgo.strings.Strings.toLower(_sv[((0 : GoInt))]);
        if (_charset.length == ((0 : GoInt))) {
            return { _0 : "", _1 : false };
        };
        if (_charset != (("us-ascii" : GoString)) && _charset != (("utf-8" : GoString))) {
            return { _0 : "", _1 : false };
        };
        var __tmp__ = _percentHexUnescape(_sv[((2 : GoInt))]), _encv:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : "", _1 : false };
        };
        return { _0 : _encv, _1 : true };
    }
function _isNotTokenChar(_r:GoRune):Bool {
        return !_isTokenChar(_r);
    }
/**
    // consumeToken consumes a token from the beginning of provided
    // string, per RFC 2045 section 5.1 (referenced from 2183), and return
    // the token consumed and the rest of the string. Returns ("", v) on
    // failure to consume at least one character.
**/
function _consumeToken(_v:GoString):{ var _0 : GoString; var _1 : GoString; } {
        var _token:GoString = (("" : GoString)), _rest:GoString = (("" : GoString));
        var _notPos:GoInt = stdgo.strings.Strings.indexFunc(_v, _isNotTokenChar);
        if (_notPos == -((1 : GoUnTypedInt))) {
            return { _0 : _v, _1 : "" };
        };
        if (_notPos == ((0 : GoInt))) {
            return { _0 : "", _1 : _v };
        };
        return { _0 : _v.__slice__(((0 : GoInt)), _notPos), _1 : _v.__slice__(_notPos) };
    }
/**
    // consumeValue consumes a "value" per RFC 2045, where a value is
    // either a 'token' or a 'quoted-string'.  On success, consumeValue
    // returns the value consumed (and de-quoted/escaped, if a
    // quoted-string) and the rest of the string. On failure, returns
    // ("", v).
**/
function _consumeValue(_v:GoString):{ var _0 : GoString; var _1 : GoString; } {
        var _value:GoString = (("" : GoString)), _rest:GoString = (("" : GoString));
        if (_v == (("" : GoString))) {
            return { _0 : _value, _1 : _rest };
        };
        if (_v[((0 : GoInt))] != (("\"".code : GoRune))) {
            return _consumeToken(_v);
        };
        var _buffer:Pointer<stdgo.strings.Strings.Builder> = Go.pointer(new stdgo.strings.Strings.Builder());
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < _v.length, _i++, {
                var _r:GoUInt8 = _v[_i];
                if (_r == (("\"".code : GoRune))) {
                    return { _0 : _buffer.value.toString(), _1 : _v.__slice__(_i + ((1 : GoInt))) };
                };
                if (_r == (("\\".code : GoRune)) && _i + ((1 : GoInt)) < _v.length && _isTSpecial(((_v[_i + ((1 : GoInt))] : GoRune)))) {
                    _buffer.value.writeByte(_v[_i + ((1 : GoInt))]);
                    _i++;
                    continue;
                };
                if (_r == (("\r".code : GoRune)) || _r == (("\n".code : GoRune))) {
                    return { _0 : "", _1 : _v };
                };
                _buffer.value.writeByte(_v[_i]);
            });
        };
        return { _0 : "", _1 : _v };
    }
function _consumeMediaParam(_v:GoString):{ var _0 : GoString; var _1 : GoString; var _2 : GoString; } {
        var _param:GoString = (("" : GoString)), _value:GoString = (("" : GoString)), _rest:GoString = (("" : GoString));
        _rest = stdgo.strings.Strings.trimLeftFunc(_v, unicode.Unicode.isSpace);
        if (!stdgo.strings.Strings.hasPrefix(_rest, ";")) {
            return { _0 : "", _1 : "", _2 : _v };
        };
        _rest = _rest.__slice__(((1 : GoInt)));
        _rest = stdgo.strings.Strings.trimLeftFunc(_rest, unicode.Unicode.isSpace);
        {
            var __tmp__ = _consumeToken(_rest);
            _param = __tmp__._0;
            _rest = __tmp__._1;
        };
        _param = stdgo.strings.Strings.toLower(_param);
        if (_param == (("" : GoString))) {
            return { _0 : "", _1 : "", _2 : _v };
        };
        _rest = stdgo.strings.Strings.trimLeftFunc(_rest, unicode.Unicode.isSpace);
        if (!stdgo.strings.Strings.hasPrefix(_rest, "=")) {
            return { _0 : "", _1 : "", _2 : _v };
        };
        _rest = _rest.__slice__(((1 : GoInt)));
        _rest = stdgo.strings.Strings.trimLeftFunc(_rest, unicode.Unicode.isSpace);
        var __tmp__ = _consumeValue(_rest), _value:GoString = __tmp__._0, _rest2:GoString = __tmp__._1;
        if (_value == (("" : GoString)) && _rest2 == _rest) {
            return { _0 : "", _1 : "", _2 : _v };
        };
        _rest = _rest2;
        return { _0 : _param, _1 : _value, _2 : _rest };
    }
function _percentHexUnescape(_s:GoString):{ var _0 : GoString; var _1 : Error; } {
        var _percents:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < _s.length) {
                if (_s[_i] != (("%".code : GoRune))) {
                    _i++;
                    continue;
                };
                _percents++;
                if (_i + ((2 : GoInt)) >= _s.length || !_ishex(_s[_i + ((1 : GoInt))]) || !_ishex(_s[_i + ((2 : GoInt))])) {
                    _s = _s.__slice__(_i);
                    if (_s.length > ((3 : GoInt))) {
                        _s = _s.__slice__(((0 : GoInt)), ((3 : GoInt)));
                    };
                    return { _0 : "", _1 : stdgo.fmt.Fmt.errorf("mime: bogus characters after %%: %q", Go.toInterface(_s)) };
                };
                _i = _i + (((3 : GoInt)));
            };
        };
        if (_percents == ((0 : GoInt))) {
            return { _0 : _s, _1 : ((null : stdgo.Error)) };
        };
        var _t:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_s.length - ((2 : GoInt)) * _percents : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _j:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < _s.length) {
                if (_s[_i] == (("%".code : GoRune))) {
                    _t[_j] = (_unhex(_s[_i + ((1 : GoInt))]) << ((4 : GoUnTypedInt))) | _unhex(_s[_i + ((2 : GoInt))]);
                    _j++;
                    _i = _i + (((3 : GoInt)));
                } else {
                    _t[_j] = _s[_i];
                    _j++;
                    _i++;
                };
            };
        };
        return { _0 : ((_t : GoString)), _1 : ((null : stdgo.Error)) };
    }
function _ishex(_c:GoByte):Bool {
        if ((("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune))) {
            return true;
        } else if ((("a".code : GoRune)) <= _c && _c <= (("f".code : GoRune))) {
            return true;
        } else if ((("A".code : GoRune)) <= _c && _c <= (("F".code : GoRune))) {
            return true;
        };
        return false;
    }
function _unhex(_c:GoByte):GoByte {
        if ((("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune))) {
            return _c - (("0".code : GoRune));
        } else if ((("a".code : GoRune)) <= _c && _c <= (("f".code : GoRune))) {
            return _c - (("a".code : GoRune)) + ((10 : GoUInt8));
        } else if ((("A".code : GoRune)) <= _c && _c <= (("F".code : GoRune))) {
            return _c - (("A".code : GoRune)) + ((10 : GoUInt8));
        };
        return ((0 : GoUInt8));
    }
function _clearSyncMap(_m:Pointer<stdgo.sync.Sync.Map_>):Void {
        _m.value.range(function(_k:AnyInterface, _:AnyInterface):Bool {
            _m.value.delete(Go.toInterface(_k));
            return true;
        });
    }
/**
    // setMimeTypes is used by initMime's non-test path, and by tests.
**/
function _setMimeTypes(_lowerExt:GoMap<GoString, GoString>, _mixExt:GoMap<GoString, GoString>):Void {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _clearSyncMap(Go.pointer(_mimeTypes));
            _clearSyncMap(Go.pointer(_mimeTypesLower));
            _clearSyncMap(Go.pointer(_extensions));
            {
                var _k;
                var _v;
                for (_obj in _lowerExt.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    _mimeTypesLower.store(Go.toInterface(_k), Go.toInterface(_v));
                };
            };
            {
                var _k;
                var _v;
                for (_obj in _mixExt.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    _mimeTypes.store(Go.toInterface(_k), Go.toInterface(_v));
                };
            };
            _extensionsMu.lock();
            deferstack.unshift(() -> _extensionsMu.unlock());
            {
                var _k;
                var _v;
                for (_obj in _lowerExt.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    var __tmp__ = parseMediaType(_v), _justType:GoString = __tmp__._0, _:GoMap<GoString, GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        throw _err;
                    };
                    var _exts:Slice<GoString> = new Slice<GoString>().nil();
                    {
                        var __tmp__ = _extensions.load(Go.toInterface(_justType)), _ei:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            _exts = ((_ei.value : Slice<GoString>));
                        };
                    };
                    _extensions.store(Go.toInterface(_justType), Go.toInterface(_exts.__append__(_k)));
                };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
function _initMime():Void {
        {
            var _fn:() -> Void = _testInitMime;
            if (_fn != null) {
                _fn();
            } else {
                _setMimeTypes(_builtinTypesLower, _builtinTypesLower);
                _osInitMime();
            };
        };
    }
/**
    // TypeByExtension returns the MIME type associated with the file extension ext.
    // The extension ext should begin with a leading dot, as in ".html".
    // When ext has no associated type, TypeByExtension returns "".
    //
    // Extensions are looked up first case-sensitively, then case-insensitively.
    //
    // The built-in table is small but on unix it is augmented by the local
    // system's MIME-info database or mime.types file(s) if available under one or
    // more of these names:
    //
    //   /usr/local/share/mime/globs2
    //   /usr/share/mime/globs2
    //   /etc/mime.types
    //   /etc/apache2/mime.types
    //   /etc/apache/mime.types
    //
    // On Windows, MIME types are extracted from the registry.
    //
    // Text types have the charset parameter set to "utf-8" by default.
**/
function typeByExtension(_ext:GoString):GoString {
        _once.do_(_initMime);
        {
            var __tmp__ = _mimeTypes.load(Go.toInterface(_ext)), _v:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return ((_v.value : GoString));
            };
        };
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 10) ((0 : GoUInt8))]);
        var _lower:Slice<GoUInt8> = _buf.__slice__(0, ((0 : GoInt)));
        final _utf8RuneSelf:GoUnTypedInt = ((128 : GoUnTypedInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _ext.length, _i++, {
                var _c:GoUInt8 = _ext[_i];
                if (_c >= _utf8RuneSelf) {
                    var __tmp__ = _mimeTypesLower.load(Go.toInterface(stdgo.strings.Strings.toLower(_ext))), _si:AnyInterface = __tmp__._0, _:Bool = __tmp__._1;
                    var __tmp__ = try {
                        { value : ((_si.value : GoString)), ok : true };
                    } catch(_) {
                        { value : (("" : GoString)), ok : false };
                    }, _s = __tmp__.value, _ = __tmp__.ok;
                    return _s;
                };
                if ((("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune))) {
                    _lower = _lower.__append__(_c + ((("a".code : GoRune)) - (("A".code : GoRune))));
                } else {
                    _lower = _lower.__append__(_c);
                };
            });
        };
        var __tmp__ = _mimeTypesLower.load(Go.toInterface(((_lower : GoString)))), _si:AnyInterface = __tmp__._0, _:Bool = __tmp__._1;
        var __tmp__ = try {
            { value : ((_si.value : GoString)), ok : true };
        } catch(_) {
            { value : (("" : GoString)), ok : false };
        }, _s = __tmp__.value, _ = __tmp__.ok;
        return _s;
    }
/**
    // ExtensionsByType returns the extensions known to be associated with the MIME
    // type typ. The returned extensions will each begin with a leading dot, as in
    // ".html". When typ has no associated extensions, ExtensionsByType returns an
    // nil slice.
**/
function extensionsByType(_typ:GoString):{ var _0 : Slice<GoString>; var _1 : Error; } {
        var __tmp__ = parseMediaType(_typ), _justType:GoString = __tmp__._0, _:GoMap<GoString, GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : new Slice<GoString>().nil(), _1 : _err };
        };
        _once.do_(_initMime);
        var __tmp__ = _extensions.load(Go.toInterface(_justType)), _s:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : new Slice<GoString>().nil(), _1 : ((null : stdgo.Error)) };
        };
        var _ret:Slice<GoString> = ((new Slice<GoString>().nil() : Slice<GoString>)).__append__(...((_s.value : Slice<GoString>)).toArray());
        stdgo.sort.Sort.strings(_ret);
        return { _0 : _ret, _1 : ((null : stdgo.Error)) };
    }
/**
    // AddExtensionType sets the MIME type associated with
    // the extension ext to typ. The extension should begin with
    // a leading dot, as in ".html".
**/
function addExtensionType(_ext:GoString, _typ:GoString):Error {
        if (!stdgo.strings.Strings.hasPrefix(_ext, ".")) {
            return stdgo.fmt.Fmt.errorf("mime: extension %q missing leading dot", Go.toInterface(_ext));
        };
        _once.do_(_initMime);
        return _setExtensionType(_ext, _typ);
    }
function _setExtensionType(_extension:GoString, _mimeType:GoString):Error {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var __tmp__ = parseMediaType(_mimeType), _justType:GoString = __tmp__._0, _param:GoMap<GoString, GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        try {
            if (_err != null) {
                return _err;
            };
            if (stdgo.strings.Strings.hasPrefix(_mimeType, "text/") && _param["charset"] == (("" : GoString))) {
                _param["charset"] = "utf-8";
                _mimeType = formatMediaType(_mimeType, _param);
            };
            var _extLower:GoString = stdgo.strings.Strings.toLower(_extension);
            _mimeTypes.store(Go.toInterface(_extension), Go.toInterface(_mimeType));
            _mimeTypesLower.store(Go.toInterface(_extLower), Go.toInterface(_mimeType));
            _extensionsMu.lock();
            deferstack.unshift(() -> _extensionsMu.unlock());
            var _exts:Slice<GoString> = new Slice<GoString>().nil();
            {
                var __tmp__ = _extensions.load(Go.toInterface(_justType)), _ei:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _exts = ((_ei.value : Slice<GoString>));
                };
            };
            for (_v in _exts) {
                if (_v == _extLower) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return ((null : stdgo.Error));
                    };
                };
            };
            _extensions.store(Go.toInterface(_justType), Go.toInterface(_exts.__append__(_extLower)));
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((null : stdgo.Error));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
function _loadMimeGlobsFile(_filename:GoString):Error {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var __tmp__ = stdgo.os.Os.open(_filename), _f:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        try {
            if (_err != null) {
                return _err;
            };
            deferstack.unshift(() -> _f.value.close());
            var _scanner:Pointer<bufio.Bufio.Scanner> = bufio.Bufio.newScanner(_f.value);
            while (_scanner.value.scan()) {
                var _fields:Slice<GoString> = stdgo.strings.Strings.split(_scanner.value.text(), ":");
                if (_fields.length < ((3 : GoInt)) || _fields[((0 : GoInt))].length < ((1 : GoInt)) || _fields[((2 : GoInt))].length < ((2 : GoInt))) {
                    continue;
                } else if (_fields[((0 : GoInt))][((0 : GoInt))] == (("#".code : GoRune)) || _fields[((2 : GoInt))][((0 : GoInt))] != (("*".code : GoRune))) {
                    continue;
                };
                var _extension:GoString = _fields[((2 : GoInt))].__slice__(((1 : GoInt)));
                {
                    var __tmp__ = _mimeTypes.load(Go.toInterface(_extension)), _:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        continue;
                    };
                };
                _setExtensionType(_extension, _fields[((1 : GoInt))]);
            };
            {
                var _err:stdgo.Error = _scanner.value.err();
                if (_err != null) {
                    throw _err;
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((null : stdgo.Error));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
function _loadMimeFile(_filename:GoString):Void {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo.os.Os.open(_filename), _f:Pointer<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return;
            };
            deferstack.unshift(() -> _f.value.close());
            var _scanner:Pointer<bufio.Bufio.Scanner> = bufio.Bufio.newScanner(_f.value);
            while (_scanner.value.scan()) {
                var _fields:Slice<GoString> = stdgo.strings.Strings.fields(_scanner.value.text());
                if (_fields.length <= ((1 : GoInt)) || _fields[((0 : GoInt))][((0 : GoInt))] == (("#".code : GoRune))) {
                    continue;
                };
                var _mimeType:GoString = _fields[((0 : GoInt))];
                for (_ext in _fields.__slice__(((1 : GoInt)))) {
                    if (_ext[((0 : GoInt))] == (("#".code : GoRune))) {
                        break;
                    };
                    _setExtensionType((("." : GoString)) + _ext, _mimeType);
                };
            };
            {
                var _err:stdgo.Error = _scanner.value.err();
                if (_err != null) {
                    throw _err;
                };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
function _initMimeUnix():Void {
        for (_filename in _mimeGlobs) {
            {
                var _err:stdgo.Error = _loadMimeGlobsFile(_filename);
                if (_err == null) {
                    return;
                };
            };
        };
        for (_filename in _typeFiles) {
            _loadMimeFile(_filename);
        };
    }
function _initMimeForTests():GoMap<GoString, GoString> {
        _mimeGlobs = new Slice<GoString>("");
        _typeFiles = new Slice<GoString>("testdata/test.types");
        return new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))), { key : ".T1", value : "application/test" }, { key : ".t2", value : "text/test; charset=utf-8" }, { key : ".png", value : "image/png" });
    }
@:keep var _ = {
        try {
            _osInitMime = _initMimeUnix;
        } catch(e) if (e.message != "__return__") throw e;
        true;
    };
class WordEncoder_extension_fields {
    public function encode(__tmp__, _charset:GoString, _s:GoString):GoString return __tmp__.encode(_charset, _s);
    public function _encodeWord(__tmp__, _charset:GoString, _s:GoString):GoString return __tmp__._encodeWord(_charset, _s);
    public function _bEncode(__tmp__, _buf:Pointer<stdgo.strings.Strings.Builder>, _charset:GoString, _s:GoString):Void __tmp__._bEncode(_buf, _charset, _s);
    public function _qEncode(__tmp__, _buf:Pointer<stdgo.strings.Strings.Builder>, _charset:GoString, _s:GoString):Void __tmp__._qEncode(_buf, _charset, _s);
    public function _openWord(__tmp__, _buf:Pointer<stdgo.strings.Strings.Builder>, _charset:GoString):Void __tmp__._openWord(_buf, _charset);
    public function _splitWord(__tmp__, _buf:Pointer<stdgo.strings.Strings.Builder>, _charset:GoString):Void __tmp__._splitWord(_buf, _charset);
}
class WordDecoder_extension_fields {
    public function decode(__tmp__, _word:GoString):{ var _0 : GoString; var _1 : Error; } return __tmp__.decode(_word);
    public function decodeHeader(__tmp__, _header:GoString):{ var _0 : GoString; var _1 : Error; } return __tmp__.decodeHeader(_header);
    public function _convert(__tmp__, _buf:Pointer<stdgo.strings.Strings.Builder>, _charset:GoString, _content:Slice<GoByte>):Error return __tmp__._convert(_buf, _charset, _content);
}
