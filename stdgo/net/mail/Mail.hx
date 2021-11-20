package stdgo.net.mail;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class T_debugT {
    public function printf(_format:GoString, _args:haxe.Rest<AnyInterface>):Void {
        var _d = this.__copy__();
        var _args = new Slice<AnyInterface>(..._args);
        if (_d) {
            stdgo.log.Log.printf(_format, ..._args.toArray());
        };
    }
    public var __t__ : Bool;
    public function new(?t:Bool) {
        __t__ = t == null ? false : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_debugT(__t__);
}
@:structInit class Message {
    public var header : Header = ((null : Header));
    public var body : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?header:Header, ?body:stdgo.io.Io.Reader) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(header) + " " + Go.string(body) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Message(header, body);
    }
    public function __set__(__tmp__) {
        this.header = __tmp__.header;
        this.body = __tmp__.body;
        return this;
    }
}
@:named class Header {
    public function addressList(_key:GoString):{ var _0 : Slice<Pointer<Address>>; var _1 : Error; } {
        var _h = this.__copy__();
        var _hdr:GoString = _h.get(_key);
        if (_hdr == (("" : GoString))) {
            return { _0 : new Slice<Pointer<Address>>().nil(), _1 : errHeaderNotPresent };
        };
        return parseAddressList(_hdr);
    }
    public function date():{ var _0 : stdgo.time.Time.Time; var _1 : Error; } {
        var _h = this.__copy__();
        var _hdr:GoString = _h.get("Date");
        if (_hdr == (("" : GoString))) {
            return { _0 : new stdgo.time.Time.Time().__copy__(), _1 : errHeaderNotPresent };
        };
        return parseDate(_hdr);
    }
    public function get(_key:GoString):GoString {
        var _h = this.__copy__();
        return new stdgo.net.textproto.Textproto.MIMEHeader(_h.__copy__().__t__).get(_key);
    }
    public var __t__ : GoMap<GoString, Slice<GoString>>;
    public function new(?t:GoMap<GoString, Slice<GoString>>) {
        __t__ = t == null ? new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new Header(__t__);
}
@:structInit class Address {
    public function toString():GoString {
        var _a = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _at:GoInt = stdgo.strings.Strings.lastIndex(_a.value.address, "@");
        var _local:GoString = (("" : GoString)), _domain:GoString = (("" : GoString));
        if (_at < ((0 : GoInt))) {
            _local = _a.value.address;
        } else {
            {
                final __tmp__0 = _a.value.address.__slice__(0, _at);
                final __tmp__1 = _a.value.address.__slice__(_at + ((1 : GoInt)));
                _local = __tmp__0;
                _domain = __tmp__1;
            };
        };
        var _quoteLocal:Bool = false;
        {
            var _i;
            var _r;
            for (_obj in _local.keyValueIterator()) {
                _i = _obj.key;
                _r = _obj.value;
                if (_isAtext(_r, false, false)) {
                    continue;
                };
                if (_r == ((".".code : GoRune))) {
                    if (_i > ((0 : GoInt)) && _local[_i - ((1 : GoInt))] != ((".".code : GoRune)) && _i < _local.length - ((1 : GoInt))) {
                        continue;
                    };
                };
                _quoteLocal = true;
                break;
            };
        };
        if (_quoteLocal) {
            _local = _quoteString(_local);
        };
        var _s:GoString = (("<" : GoString)) + _local + (("@" : GoString)) + _domain + ((">" : GoString));
        if (_a.value.name == (("" : GoString))) {
            return _s;
        };
        var _allPrintable:Bool = true;
        for (_r in _a.value.name) {
            if (!_isVchar(_r) && !_isWSP(_r) || _isMultibyte(_r)) {
                _allPrintable = false;
                break;
            };
        };
        if (_allPrintable) {
            return _quoteString(_a.value.name) + ((" " : GoString)) + _s;
        };
        if (stdgo.strings.Strings.containsAny(_a.value.name, "\"#$%&\'(),.:;<>@[]^`{|}~")) {
            return stdgo.mime.Mime.bencoding.encode("utf-8", _a.value.name) + ((" " : GoString)) + _s;
        };
        return stdgo.mime.Mime.qencoding.encode("utf-8", _a.value.name) + ((" " : GoString)) + _s;
    }
    public var name : GoString = (("" : GoString));
    public var address : GoString = (("" : GoString));
    public function new(?name:GoString, ?address:GoString) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Address(name, address);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.address = __tmp__.address;
        return this;
    }
}
@:structInit class AddressParser {
    public function parseList(_list:GoString):{ var _0 : Slice<Pointer<Address>>; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (Go.pointer((({ _s : _list, _dec : _p.value.wordDecoder } : T_addrParser)))).value._parseAddressList();
    }
    public function parse(_address:GoString):{ var _0 : Pointer<Address>; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (Go.pointer((({ _s : _address, _dec : _p.value.wordDecoder } : T_addrParser)))).value._parseSingleAddress();
    }
    public var wordDecoder : Pointer<stdgo.mime.Mime.WordDecoder> = new Pointer<stdgo.mime.Mime.WordDecoder>().nil();
    public function new(?wordDecoder:Pointer<stdgo.mime.Mime.WordDecoder>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(wordDecoder) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AddressParser(wordDecoder);
    }
    public function __set__(__tmp__) {
        this.wordDecoder = __tmp__.wordDecoder;
        return this;
    }
}
@:structInit class T_addrParser {
    public function _decodeRFC2047Word(_s:GoString):{ var _0 : GoString; var _1 : Bool; var _2 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _word:GoString = (("" : GoString)), _isEncoded:Bool = false, _err:Error = ((null : stdgo.Error));
        if (_p.value._dec != null && !_p.value._dec.isNil()) {
            {
                var __tmp__ = _p.value._dec.value.decode(_s);
                _word = __tmp__._0;
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = _rfc2047Decoder.decode(_s);
                _word = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err == null) {
            return { _0 : _word, _1 : true, _2 : ((null : stdgo.Error)) };
        };
        {
            var __tmp__ = try {
                { value : new T_charsetError(_err), ok : true };
            } catch(_) {
                { value : new T_charsetError(), ok : false };
            }, _ = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return { _0 : _s, _1 : true, _2 : _err };
            };
        };
        return { _0 : _s, _1 : false, _2 : ((null : stdgo.Error)) };
    }
    public function _consumeComment():{ var _0 : GoString; var _1 : Bool; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _depth:GoInt = ((1 : GoInt));
        var _comment:GoString = (("" : GoString));
        while (true) {
            if (_p.value._empty() || _depth == ((0 : GoInt))) {
                break;
            };
            if (_p.value._peek() == (("\\".code : GoRune)) && _p.value._len() > ((1 : GoInt))) {
                _p.value._s = _p.value._s.__slice__(((1 : GoInt)));
            } else if (_p.value._peek() == (("(".code : GoRune))) {
                _depth++;
            } else if (_p.value._peek() == ((")".code : GoRune))) {
                _depth--;
            };
            if (_depth > ((0 : GoInt))) {
                _comment = _comment + (_p.value._s.__slice__(0, ((1 : GoInt))));
            };
            _p.value._s = _p.value._s.__slice__(((1 : GoInt)));
        };
        return { _0 : _comment, _1 : _depth == ((0 : GoInt)) };
    }
    public function _skipCFWS():Bool {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _p.value._skipSpace();
        while (true) {
            if (!_p.value._consume((("(".code : GoRune)))) {
                break;
            };
            {
                var __tmp__ = _p.value._consumeComment(), _:GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return false;
                };
            };
            _p.value._skipSpace();
        };
        return true;
    }
    public function _len():GoInt {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._s.length;
    }
    public function _empty():Bool {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._len() == ((0 : GoInt));
    }
    public function _peek():GoByte {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _p.value._s[((0 : GoInt))];
    }
    public function _skipSpace():Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _p.value._s = stdgo.strings.Strings.trimLeft(_p.value._s, " \t");
    }
    public function _consume(_c:GoByte):Bool {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_p.value._empty() || _p.value._peek() != _c) {
            return false;
        };
        _p.value._s = _p.value._s.__slice__(((1 : GoInt)));
        return true;
    }
    public function _consumeDisplayNameComment():{ var _0 : GoString; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_p.value._consume((("(".code : GoRune)))) {
            return { _0 : "", _1 : stdgo.errors.Errors.new_("mail: comment does not start with (") };
        };
        var __tmp__ = _p.value._consumeComment(), _comment:GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : "", _1 : stdgo.errors.Errors.new_("mail: misformatted parenthetical comment") };
        };
        var _words:Slice<GoString> = stdgo.strings.Strings.fieldsFunc(_comment, function(_r:GoRune):Bool {
            return _r == ((" ".code : GoRune)) || _r == (("\t".code : GoRune));
        });
        {
            var _idx;
            var _word;
            for (_obj in _words.keyValueIterator()) {
                _idx = _obj.key;
                _word = _obj.value;
                var __tmp__ = _p.value._decodeRFC2047Word(_word), _decoded:GoString = __tmp__._0, _isEncoded:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    return { _0 : "", _1 : _err };
                };
                if (_isEncoded) {
                    _words[_idx] = _decoded;
                };
            };
        };
        return { _0 : stdgo.strings.Strings.join(_words, " "), _1 : ((null : stdgo.Error)) };
    }
    public function _consumeAtom(_dot:Bool, _permissive:Bool):{ var _0 : GoString; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            var _atom:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
            var _i:GoInt = ((0 : GoInt));
            @:label("Loop") while (true) {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_p.value._s.__slice__(_i)), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_size == ((1 : GoInt)) && _r == stdgo.unicode.utf8.Utf8.runeError) {
                            return { _0 : "", _1 : stdgo.fmt.Fmt.errorf("mail: invalid utf-8 in address: %q", Go.toInterface(_p.value._s)) };
                            break;
                        } else if (_size == ((0 : GoInt)) || !_isAtext(_r, _dot, _permissive)) {
                            @:break {
                                ____exit____ = true;
                                ____break____ = true;
                                break;
                            };
                            break;
                        } else {
                            _i = _i + (_size);
                        };
                        break;
                    };
                };
            };
            if (_i == ((0 : GoInt))) {
                return { _0 : "", _1 : stdgo.errors.Errors.new_("mail: invalid string") };
            };
            {
                final __tmp__0 = _p.value._s.__slice__(0, _i);
                final __tmp__1 = _p.value._s.__slice__(_i);
                _atom = __tmp__0;
                _p.value._s = __tmp__1;
            };
            if (!_permissive) {
                if (stdgo.strings.Strings.hasPrefix(_atom, ".")) {
                    return { _0 : "", _1 : stdgo.errors.Errors.new_("mail: leading dot in atom") };
                };
                if (stdgo.strings.Strings.contains(_atom, "..")) {
                    return { _0 : "", _1 : stdgo.errors.Errors.new_("mail: double dot in atom") };
                };
                if (stdgo.strings.Strings.hasSuffix(_atom, ".")) {
                    return { _0 : "", _1 : stdgo.errors.Errors.new_("mail: trailing dot in atom") };
                };
            };
            return { _0 : _atom, _1 : ((null : stdgo.Error)) };
        });
    }
    public function _consumeQuotedString():{ var _0 : GoString; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.internal.Macro.controlFlow({
            var _qs:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
            var _i:GoInt = ((1 : GoInt));
            var _qsb:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]).setCap(((((10 : GoInt)) : GoInt)).toBasic());
            var _escaped:Bool = false;
            @:label("Loop") while (true) {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_p.value._s.__slice__(_i)), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_size == ((0 : GoInt))) {
                            return { _0 : "", _1 : stdgo.errors.Errors.new_("mail: unclosed quoted-string") };
                            break;
                        } else if (_size == ((1 : GoInt)) && _r == stdgo.unicode.utf8.Utf8.runeError) {
                            return { _0 : "", _1 : stdgo.fmt.Fmt.errorf("mail: invalid utf-8 in quoted-string: %q", Go.toInterface(_p.value._s)) };
                            break;
                        } else if (_escaped) {
                            if (!_isVchar(_r) && !_isWSP(_r)) {
                                return { _0 : "", _1 : stdgo.fmt.Fmt.errorf("mail: bad character in quoted-string: %q", Go.toInterface(_r)) };
                            };
                            _qsb = _qsb.__append__(_r);
                            _escaped = false;
                            break;
                        } else if (_isQtext(_r) || _isWSP(_r)) {
                            _qsb = _qsb.__append__(_r);
                            break;
                        } else if (_r == (("\"".code : GoRune))) {
                            @:break {
                                ____exit____ = true;
                                ____break____ = true;
                                break;
                            };
                            break;
                        } else if (_r == (("\\".code : GoRune))) {
                            _escaped = true;
                            break;
                        } else {
                            return { _0 : "", _1 : stdgo.fmt.Fmt.errorf("mail: bad character in quoted-string: %q", Go.toInterface(_r)) };
                        };
                        break;
                    };
                };
                _i = _i + (_size);
            };
            _p.value._s = _p.value._s.__slice__(_i + ((1 : GoInt)));
            return { _0 : ((_qsb : GoString)), _1 : ((null : stdgo.Error)) };
        });
    }
    public function _consumePhrase():{ var _0 : GoString; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _phrase:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        _debug.printf("consumePhrase: [%s]", Go.toInterface(_p.value._s));
        var _words:Slice<GoString> = new Slice<GoString>().nil();
        var _isPrevEncoded:Bool = false;
        while (true) {
            var _word:GoString = (("" : GoString));
            _p.value._skipSpace();
            if (_p.value._empty()) {
                break;
            };
            var _isEncoded:Bool = false;
            if (_p.value._peek() == (("\"".code : GoRune))) {
                {
                    var __tmp__ = _p.value._consumeQuotedString();
                    _word = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = _p.value._consumeAtom(true, true);
                    _word = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err == null) {
                    {
                        var __tmp__ = _p.value._decodeRFC2047Word(_word);
                        _word = __tmp__._0;
                        _isEncoded = __tmp__._1;
                        _err = __tmp__._2;
                    };
                };
            };
            if (_err != null) {
                break;
            };
            _debug.printf("consumePhrase: consumed %q", Go.toInterface(_word));
            if (_isPrevEncoded && _isEncoded) {
                _words[_words.length - ((1 : GoInt))] = _words[_words.length - ((1 : GoInt))] + (_word);
            } else {
                _words = _words.__append__(_word);
            };
            _isPrevEncoded = _isEncoded;
        };
        if (_err != null && _words.length == ((0 : GoInt))) {
            _debug.printf("consumePhrase: hit err: %v", Go.toInterface(_err));
            return { _0 : "", _1 : stdgo.fmt.Fmt.errorf("mail: missing word in phrase: %v", Go.toInterface(_err)) };
        };
        _phrase = stdgo.strings.Strings.join(_words, " ");
        return { _0 : _phrase, _1 : ((null : stdgo.Error)) };
    }
    public function _consumeAddrSpec():{ var _0 : GoString; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _spec:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        _debug.printf("consumeAddrSpec: %q", Go.toInterface(_p.value._s));
        try {
            var _orig:T_addrParser = _p.value.__copy__();
            {
                deferstack.unshift(() -> {
                    var a = function():Void {
                        if (_err != null) {
                            _p.value = _orig.__copy__();
                        };
                    };
                    a();
                });
            };
            var _localPart:GoString = (("" : GoString));
            _p.value._skipSpace();
            if (_p.value._empty()) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : "", _1 : stdgo.errors.Errors.new_("mail: no addr-spec") };
                };
            };
            if (_p.value._peek() == (("\"".code : GoRune))) {
                _debug.printf("consumeAddrSpec: parsing quoted-string");
                {
                    var __tmp__ = _p.value._consumeQuotedString();
                    _localPart = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_localPart == (("" : GoString))) {
                    _err = stdgo.errors.Errors.new_("mail: empty quoted string in addr-spec");
                };
            } else {
                _debug.printf("consumeAddrSpec: parsing dot-atom");
                {
                    var __tmp__ = _p.value._consumeAtom(true, false);
                    _localPart = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            if (_err != null) {
                _debug.printf("consumeAddrSpec: failed: %v", Go.toInterface(_err));
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : "", _1 : _err };
                };
            };
            if (!_p.value._consume((("@".code : GoRune)))) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : "", _1 : stdgo.errors.Errors.new_("mail: missing @ in addr-spec") };
                };
            };
            var _domain:GoString = (("" : GoString));
            _p.value._skipSpace();
            if (_p.value._empty()) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : "", _1 : stdgo.errors.Errors.new_("mail: no domain in addr-spec") };
                };
            };
            {
                var __tmp__ = _p.value._consumeAtom(true, false);
                _domain = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : "", _1 : _err };
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _localPart + (("@" : GoString)) + _domain, _1 : ((null : stdgo.Error)) };
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
                return { _0 : _spec, _1 : _err };
            };
        };
    }
    public function _consumeGroupList():{ var _0 : Slice<Pointer<Address>>; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _group:Slice<Pointer<Address>> = new Slice<Pointer<Address>>().nil();
        _p.value._skipSpace();
        if (_p.value._consume(((";".code : GoRune)))) {
            _p.value._skipCFWS();
            return { _0 : _group, _1 : ((null : stdgo.Error)) };
        };
        while (true) {
            _p.value._skipSpace();
            var __tmp__ = _p.value._parseAddress(false), _addrs:Slice<Pointer<Address>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Slice<Pointer<Address>>().nil(), _1 : _err };
            };
            _group = _group.__append__(..._addrs.toArray());
            if (!_p.value._skipCFWS()) {
                return { _0 : new Slice<Pointer<Address>>().nil(), _1 : stdgo.errors.Errors.new_("mail: misformatted parenthetical comment") };
            };
            if (_p.value._consume(((";".code : GoRune)))) {
                _p.value._skipCFWS();
                break;
            };
            if (!_p.value._consume(((",".code : GoRune)))) {
                return { _0 : new Slice<Pointer<Address>>().nil(), _1 : stdgo.errors.Errors.new_("mail: expected comma") };
            };
        };
        return { _0 : _group, _1 : ((null : stdgo.Error)) };
    }
    public function _parseAddress(_handleGroup:Bool):{ var _0 : Slice<Pointer<Address>>; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _debug.printf("parseAddress: %q", Go.toInterface(_p.value._s));
        _p.value._skipSpace();
        if (_p.value._empty()) {
            return { _0 : new Slice<Pointer<Address>>().nil(), _1 : stdgo.errors.Errors.new_("mail: no address") };
        };
        var __tmp__ = _p.value._consumeAddrSpec(), _spec:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            var _displayName:GoString = (("" : GoString));
            _p.value._skipSpace();
            if (!_p.value._empty() && _p.value._peek() == (("(".code : GoRune))) {
                {
                    var __tmp__ = _p.value._consumeDisplayNameComment();
                    _displayName = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : new Slice<Pointer<Address>>().nil(), _1 : _err };
                };
            };
            return { _0 : new Slice<Pointer<Address>>(Go.pointer((({ name : _displayName, address : _spec } : Address)))), _1 : _err };
        };
        _debug.printf("parseAddress: not an addr-spec: %v", Go.toInterface(_err));
        _debug.printf("parseAddress: state is now %q", Go.toInterface(_p.value._s));
        var _displayName:GoString = (("" : GoString));
        if (_p.value._peek() != (("<".code : GoRune))) {
            {
                var __tmp__ = _p.value._consumePhrase();
                _displayName = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : new Slice<Pointer<Address>>().nil(), _1 : _err };
            };
        };
        _debug.printf("parseAddress: displayName=%q", Go.toInterface(_displayName));
        _p.value._skipSpace();
        if (_handleGroup) {
            if (_p.value._consume(((":".code : GoRune)))) {
                return _p.value._consumeGroupList();
            };
        };
        if (!_p.value._consume((("<".code : GoRune)))) {
            var _atext:Bool = true;
            for (_r in _displayName) {
                if (!_isAtext(_r, true, false)) {
                    _atext = false;
                    break;
                };
            };
            if (_atext) {
                return { _0 : new Slice<Pointer<Address>>().nil(), _1 : stdgo.errors.Errors.new_("mail: missing \'@\' or angle-addr") };
            };
            return { _0 : new Slice<Pointer<Address>>().nil(), _1 : stdgo.errors.Errors.new_("mail: no angle-addr") };
        };
        {
            var __tmp__ = _p.value._consumeAddrSpec();
            _spec = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : new Slice<Pointer<Address>>().nil(), _1 : _err };
        };
        if (!_p.value._consume(((">".code : GoRune)))) {
            return { _0 : new Slice<Pointer<Address>>().nil(), _1 : stdgo.errors.Errors.new_("mail: unclosed angle-addr") };
        };
        _debug.printf("parseAddress: spec=%q", Go.toInterface(_spec));
        return { _0 : new Slice<Pointer<Address>>(Go.pointer((({ name : _displayName, address : _spec } : Address)))), _1 : ((null : stdgo.Error)) };
    }
    public function _parseSingleAddress():{ var _0 : Pointer<Address>; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _p.value._parseAddress(true), _addrs:Slice<Pointer<Address>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Address>().nil(), _1 : _err };
        };
        if (!_p.value._skipCFWS()) {
            return { _0 : new Pointer<Address>().nil(), _1 : stdgo.errors.Errors.new_("mail: misformatted parenthetical comment") };
        };
        if (!_p.value._empty()) {
            return { _0 : new Pointer<Address>().nil(), _1 : stdgo.fmt.Fmt.errorf("mail: expected single address, got %q", Go.toInterface(_p.value._s)) };
        };
        if (_addrs.length == ((0 : GoInt))) {
            return { _0 : new Pointer<Address>().nil(), _1 : stdgo.errors.Errors.new_("mail: empty group") };
        };
        if (_addrs.length > ((1 : GoInt))) {
            return { _0 : new Pointer<Address>().nil(), _1 : stdgo.errors.Errors.new_("mail: group with multiple addresses") };
        };
        return { _0 : _addrs[((0 : GoInt))], _1 : ((null : stdgo.Error)) };
    }
    public function _parseAddressList():{ var _0 : Slice<Pointer<Address>>; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _list:Slice<Pointer<Address>> = new Slice<Pointer<Address>>().nil();
        while (true) {
            _p.value._skipSpace();
            if (_p.value._consume(((",".code : GoRune)))) {
                continue;
            };
            var __tmp__ = _p.value._parseAddress(true), _addrs:Slice<Pointer<Address>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Slice<Pointer<Address>>().nil(), _1 : _err };
            };
            _list = _list.__append__(..._addrs.toArray());
            if (!_p.value._skipCFWS()) {
                return { _0 : new Slice<Pointer<Address>>().nil(), _1 : stdgo.errors.Errors.new_("mail: misformatted parenthetical comment") };
            };
            if (_p.value._empty()) {
                break;
            };
            if (_p.value._peek() != ((",".code : GoRune))) {
                return { _0 : new Slice<Pointer<Address>>().nil(), _1 : stdgo.errors.Errors.new_("mail: expected comma") };
            };
            while (_p.value._consume(((",".code : GoRune)))) {
                _p.value._skipSpace();
            };
            if (_p.value._empty()) {
                break;
            };
        };
        return { _0 : _list, _1 : ((null : stdgo.Error)) };
    }
    public var _s : GoString = (("" : GoString));
    public var _dec : Pointer<stdgo.mime.Mime.WordDecoder> = new Pointer<stdgo.mime.Mime.WordDecoder>().nil();
    public function new(?_s:GoString, ?_dec:Pointer<stdgo.mime.Mime.WordDecoder>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_s) + " " + Go.string(_dec) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_addrParser(_s, _dec);
    }
    public function __set__(__tmp__) {
        this._s = __tmp__._s;
        this._dec = __tmp__._dec;
        return this;
    }
}
@:named class T_charsetError {
    public function error():GoString {
        var _e = this.__copy__();
        return stdgo.fmt.Fmt.sprintf("charset not supported: %q", Go.toInterface(_e.__t__));
    }
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_charsetError(__t__);
}
var _debug : T_debugT = new T_debugT(false);
var _dateLayouts : Slice<GoString> = new Slice<GoString>().nil();
var errHeaderNotPresent : stdgo.Error = stdgo.errors.Errors.new_("mail: header not in message");
var _dateLayoutsBuildOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _rfc2047Decoder : stdgo.mime.Mime.WordDecoder = (({ charsetReader : function(_charset:GoString, _input:stdgo.io.Io.Reader):{ var _0 : stdgo.io.Io.Reader; var _1 : Error; } {
        return { _0 : ((null : stdgo.io.Io.Reader)), _1 : new T_charsetError(_charset) };
    } } : stdgo.mime.Mime.WordDecoder)).__copy__();
/**
    // ReadMessage reads a message from r.
    // The headers are parsed, and the body of the message will be available
    // for reading from msg.Body.
**/
function readMessage(_r:stdgo.io.Io.Reader):{ var _0 : Pointer<Message>; var _1 : Error; } {
        var _msg:Pointer<Message> = new Pointer<Message>().nil(), _err:Error = ((null : stdgo.Error));
        var _tp:Pointer<stdgo.net.textproto.Textproto.Reader> = stdgo.net.textproto.Textproto.newReader(bufio.Bufio.newReader(_r));
        var __tmp__ = _tp.value.readMIMEHeader(), _hdr:stdgo.net.textproto.Textproto.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Message>().nil(), _1 : _err };
        };
        return { _0 : Go.pointer((({ header : new Header(_hdr.__copy__().__t__).__copy__(), body : _tp.value.r.value } : Message))), _1 : ((null : stdgo.Error)) };
    }
function _buildDateLayouts():Void {
        var _dows:GoArray<GoString> = new GoArray<GoString>("", "Mon, ").copy();
        var _days:GoArray<GoString> = new GoArray<GoString>("2", "02").copy();
        var _years:GoArray<GoString> = new GoArray<GoString>("2006", "06").copy();
        var _seconds:GoArray<GoString> = new GoArray<GoString>(":05", "").copy();
        var _zones:GoArray<GoString> = new GoArray<GoString>("-0700", "MST").copy();
        for (_dow in _dows) {
            for (_day in _days) {
                for (_year in _years) {
                    for (_second in _seconds) {
                        for (_zone in _zones) {
                            var _s:GoString = _dow + _day + ((" Jan " : GoString)) + _year + ((" 15:04" : GoString)) + _second + ((" " : GoString)) + _zone;
                            _dateLayouts = _dateLayouts.__append__(_s);
                        };
                    };
                };
            };
        };
    }
/**
    // ParseDate parses an RFC 5322 date string.
**/
function parseDate(_date:GoString):{ var _0 : stdgo.time.Time.Time; var _1 : Error; } {
        _dateLayoutsBuildOnce.do_(_buildDateLayouts);
        _date = stdgo.strings.Strings.replaceAll(_date, "\r\n", "");
        if (stdgo.strings.Strings.index(_date, "\r") != -((1 : GoUnTypedInt))) {
            return { _0 : new stdgo.time.Time.Time().__copy__(), _1 : stdgo.errors.Errors.new_("mail: header has a CR without LF") };
        };
        var _p:T_addrParser = new T_addrParser(_date, new Pointer<stdgo.mime.Mime.WordDecoder>().nil()).__copy__();
        _p._skipSpace();
        {
            var _ind:GoInt = stdgo.strings.Strings.indexAny(_p._s, "+-");
            if (_ind != -((1 : GoUnTypedInt)) && _p._s.length >= _ind + ((5 : GoInt))) {
                _date = _p._s.__slice__(0, _ind + ((5 : GoInt)));
                _p._s = _p._s.__slice__(_ind + ((5 : GoInt)));
            } else {
                var _ind:GoInt = stdgo.strings.Strings.index(_p._s, "T");
                if (_ind == ((0 : GoInt))) {
                    _ind = stdgo.strings.Strings.index(_p._s.__slice__(((1 : GoInt))), "T");
                    if (_ind != -((1 : GoUnTypedInt))) {
                        _ind++;
                    };
                };
                if (_ind != -((1 : GoUnTypedInt)) && _p._s.length >= _ind + ((5 : GoInt))) {
                    _date = _p._s.__slice__(0, _ind + ((1 : GoInt)));
                    _p._s = _p._s.__slice__(_ind + ((1 : GoInt)));
                };
            };
        };
        if (!_p._skipCFWS()) {
            return { _0 : new stdgo.time.Time.Time().__copy__(), _1 : stdgo.errors.Errors.new_("mail: misformatted parenthetical comment") };
        };
        for (_layout in _dateLayouts) {
            var __tmp__ = stdgo.time.Time.parse(_layout, _date), _t:stdgo.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                return { _0 : _t.__copy__(), _1 : ((null : stdgo.Error)) };
            };
        };
        return { _0 : new stdgo.time.Time.Time().__copy__(), _1 : stdgo.errors.Errors.new_("mail: header could not be parsed") };
    }
/**
    // ParseAddress parses a single RFC 5322 address, e.g. "Barry Gibbs <bg@example.com>"
**/
function parseAddress(_address:GoString):{ var _0 : Pointer<Address>; var _1 : Error; } {
        return (Go.pointer((({ _s : _address, _dec : new Pointer<stdgo.mime.Mime.WordDecoder>().nil() } : T_addrParser)))).value._parseSingleAddress();
    }
/**
    // ParseAddressList parses the given string as a list of addresses.
**/
function parseAddressList(_list:GoString):{ var _0 : Slice<Pointer<Address>>; var _1 : Error; } {
        return (Go.pointer((({ _s : _list, _dec : new Pointer<stdgo.mime.Mime.WordDecoder>().nil() } : T_addrParser)))).value._parseAddressList();
    }
/**
    // isAtext reports whether r is an RFC 5322 atext character.
    // If dot is true, period is included.
    // If permissive is true, RFC 5322 3.2.3 specials is included,
    // except '<', '>', ':' and '"'.
**/
function _isAtext(_r:GoRune, _dot:Bool, _permissive:Bool):Bool {
        if (_r == ((".".code : GoRune))) {
            return _dot;
        } else if (_r == (("(".code : GoRune)) || _r == ((")".code : GoRune)) || _r == (("[".code : GoRune)) || _r == (("]".code : GoRune)) || _r == ((";".code : GoRune)) || _r == (("@".code : GoRune)) || _r == (("\\".code : GoRune)) || _r == ((",".code : GoRune))) {
            return _permissive;
        } else if (_r == (("<".code : GoRune)) || _r == ((">".code : GoRune)) || _r == (("\"".code : GoRune)) || _r == ((":".code : GoRune))) {
            return false;
        };
        return _isVchar(_r);
    }
/**
    // isQtext reports whether r is an RFC 5322 qtext character.
**/
function _isQtext(_r:GoRune):Bool {
        if (_r == (("\\".code : GoRune)) || _r == (("\"".code : GoRune))) {
            return false;
        };
        return _isVchar(_r);
    }
/**
    // quoteString renders a string as an RFC 5322 quoted-string.
**/
function _quoteString(_s:GoString):GoString {
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        _buf.writeByte((("\"".code : GoRune)));
        for (_r in _s) {
            if (_isQtext(_r) || _isWSP(_r)) {
                _buf.writeRune(_r);
            } else if (_isVchar(_r)) {
                _buf.writeByte((("\\".code : GoRune)));
                _buf.writeRune(_r);
            };
        };
        _buf.writeByte((("\"".code : GoRune)));
        return _buf.toString();
    }
/**
    // isVchar reports whether r is an RFC 5322 VCHAR character.
**/
function _isVchar(_r:GoRune):Bool {
        return (("!".code : GoRune)) <= _r && _r <= (("~".code : GoRune)) || _isMultibyte(_r);
    }
/**
    // isMultibyte reports whether r is a multi-byte UTF-8 character
    // as supported by RFC 6532
**/
function _isMultibyte(_r:GoRune):Bool {
        return _r >= stdgo.unicode.utf8.Utf8.runeSelf;
    }
/**
    // isWSP reports whether r is a WSP (white space).
    // WSP is a space or horizontal tab (RFC 5234 Appendix B).
**/
function _isWSP(_r:GoRune):Bool {
        return _r == ((" ".code : GoRune)) || _r == (("\t".code : GoRune));
    }
class T_debugT_extension_fields {
    public function printf(__tmp__, _format:GoString, _args:haxe.Rest<AnyInterface>):Void __tmp__.printf(_format, _args);
}
class Header_extension_fields {
    public function get(__tmp__, _key:GoString):GoString return __tmp__.get(_key);
    public function date(__tmp__):{ var _0 : stdgo.time.Time.Time; var _1 : Error; } return __tmp__.date();
    public function addressList(__tmp__, _key:GoString):{ var _0 : Slice<Pointer<Address>>; var _1 : Error; } return __tmp__.addressList(_key);
}
class Address_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class AddressParser_extension_fields {
    public function parse(__tmp__, _address:GoString):{ var _0 : Pointer<Address>; var _1 : Error; } return __tmp__.parse(_address);
    public function parseList(__tmp__, _list:GoString):{ var _0 : Slice<Pointer<Address>>; var _1 : Error; } return __tmp__.parseList(_list);
}
class T_addrParser_extension_fields {
    public function _parseAddressList(__tmp__):{ var _0 : Slice<Pointer<Address>>; var _1 : Error; } return __tmp__._parseAddressList();
    public function _parseSingleAddress(__tmp__):{ var _0 : Pointer<Address>; var _1 : Error; } return __tmp__._parseSingleAddress();
    public function _parseAddress(__tmp__, _handleGroup:Bool):{ var _0 : Slice<Pointer<Address>>; var _1 : Error; } return __tmp__._parseAddress(_handleGroup);
    public function _consumeGroupList(__tmp__):{ var _0 : Slice<Pointer<Address>>; var _1 : Error; } return __tmp__._consumeGroupList();
    public function _consumeAddrSpec(__tmp__):{ var _0 : GoString; var _1 : Error; } return __tmp__._consumeAddrSpec();
    public function _consumePhrase(__tmp__):{ var _0 : GoString; var _1 : Error; } return __tmp__._consumePhrase();
    public function _consumeQuotedString(__tmp__):{ var _0 : GoString; var _1 : Error; } return __tmp__._consumeQuotedString();
    public function _consumeAtom(__tmp__, _dot:Bool, _permissive:Bool):{ var _0 : GoString; var _1 : Error; } return __tmp__._consumeAtom(_dot, _permissive);
    public function _consumeDisplayNameComment(__tmp__):{ var _0 : GoString; var _1 : Error; } return __tmp__._consumeDisplayNameComment();
    public function _consume(__tmp__, _c:GoByte):Bool return __tmp__._consume(_c);
    public function _skipSpace(__tmp__):Void __tmp__._skipSpace();
    public function _peek(__tmp__):GoByte return __tmp__._peek();
    public function _empty(__tmp__):Bool return __tmp__._empty();
    public function _len(__tmp__):GoInt return __tmp__._len();
    public function _skipCFWS(__tmp__):Bool return __tmp__._skipCFWS();
    public function _consumeComment(__tmp__):{ var _0 : GoString; var _1 : Bool; } return __tmp__._consumeComment();
    public function _decodeRFC2047Word(__tmp__, _s:GoString):{ var _0 : GoString; var _1 : Bool; var _2 : Error; } return __tmp__._decodeRFC2047Word(_s);
}
class T_charsetError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
