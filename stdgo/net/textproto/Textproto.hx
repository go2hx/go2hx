package stdgo.net.textproto;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class MIMEHeader {
    public function del(_key:GoString):Void {
        var _h = this.__copy__();
        _h.remove(canonicalMIMEHeaderKey(_key));
    }
    public function values(_key:GoString):Slice<GoString> {
        var _h = this.__copy__();
        if (_h.__t__ == null || _h.__t__.isNil()) {
            return new Slice<GoString>().nil();
        };
        return _h.__t__[canonicalMIMEHeaderKey(_key)];
    }
    public function get(_key:GoString):GoString {
        var _h = this.__copy__();
        if (_h.__t__ == null || _h.__t__.isNil()) {
            return "";
        };
        var _v:Slice<GoString> = _h.__t__[canonicalMIMEHeaderKey(_key)];
        if (_v.length == ((0 : GoInt))) {
            return "";
        };
        return _v[((0 : GoInt))];
    }
    public function set(_key:GoString, _value:GoString):Void {
        var _h = this.__copy__();
        _h.__t__[canonicalMIMEHeaderKey(_key)] = new Slice<GoString>(_value);
    }
    public function add(_key:GoString, _value:GoString):Void {
        var _h = this.__copy__();
        _key = canonicalMIMEHeaderKey(_key);
        _h.__t__[_key] = _h.__t__[_key].__append__(_value);
    }
    public var __t__ : GoMap<GoString, Slice<GoString>>;
    public function new(?t:GoMap<GoString, Slice<GoString>>) {
        __t__ = t == null ? new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new MIMEHeader(__t__);
}
@:structInit class Pipeline {
    public function endResponse(_id:GoUInt):Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _p.value._response.end(_id);
    }
    public function startResponse(_id:GoUInt):Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _p.value._response.start(_id);
    }
    public function endRequest(_id:GoUInt):Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _p.value._request.end(_id);
    }
    public function startRequest(_id:GoUInt):Void {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _p.value._request.start(_id);
    }
    public function next():GoUInt {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _p.value._mu.lock();
        var _id:GoUInt = _p.value._id;
        _p.value._id++;
        _p.value._mu.unlock();
        return _id;
    }
    public var _mu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _id : GoUInt = ((0 : GoUInt));
    public var _request : T_sequencer = new T_sequencer();
    public var _response : T_sequencer = new T_sequencer();
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_id:GoUInt, ?_request:T_sequencer, ?_response:T_sequencer) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_mu) + " " + Go.string(_id) + " " + Go.string(_request) + " " + Go.string(_response) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Pipeline(_mu, _id, _request, _response);
    }
    public function __set__(__tmp__) {
        this._mu = __tmp__._mu;
        this._id = __tmp__._id;
        this._request = __tmp__._request;
        this._response = __tmp__._response;
        return this;
    }
}
@:structInit class T_sequencer {
    public function end(_id:GoUInt):Void {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _s.value._mu.lock();
        if (_s.value._id != _id) {
            _s.value._mu.unlock();
            throw "out of sync";
        };
        _id++;
        _s.value._id = _id;
        if (_s.value._wait == null || _s.value._wait.isNil()) {
            _s.value._wait = new GoMap<GoUInt, Chan<T__struct_50>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("net/textproto._struct_50", [], stdgo.reflect.Reflect.GoType.structType([]))))));
        };
        var __tmp__ = _s.value._wait.exists(_id) ? { value : _s.value._wait[_id], ok : true } : { value : _s.value._wait.defaultValue(), ok : false }, _c:Chan<T__struct_50> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (_ok) {
            _s.value._wait.remove(_id);
        };
        _s.value._mu.unlock();
        if (_ok) {
            _c.close();
        };
    }
    public function start(_id:GoUInt):Void {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _s.value._mu.lock();
        if (_s.value._id == _id) {
            _s.value._mu.unlock();
            return;
        };
        var _c:Chan<T__struct_50> = new Chan<T__struct_50>(0, () -> new T__struct_50());
        if (_s.value._wait == null || _s.value._wait.isNil()) {
            _s.value._wait = new GoMap<GoUInt, Chan<T__struct_50>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("net/textproto._struct_50", [], stdgo.reflect.Reflect.GoType.structType([]))))));
        };
        _s.value._wait[_id] = _c;
        _s.value._mu.unlock();
        _c.get();
    }
    public var _mu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _id : GoUInt = ((0 : GoUInt));
    public var _wait : GoMap<GoUInt, Chan<{ }>> = new GoMap<GoUInt, Chan<{ }>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(uint_kind), stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.structType([]))))).nil();
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_id:GoUInt, ?_wait:GoMap<GoUInt, Chan<{ }>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_mu) + " " + Go.string(_id) + " " + Go.string(_wait) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sequencer(_mu, _id, _wait);
    }
    public function __set__(__tmp__) {
        this._mu = __tmp__._mu;
        this._id = __tmp__._id;
        this._wait = __tmp__._wait;
        return this;
    }
}
@:structInit class Reader {
    public function _upcomingHeaderNewlines():GoInt {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt));
        _r.value.r.value.peek(((1 : GoInt)));
        var _s:GoInt = _r.value.r.value.buffered();
        if (_s == ((0 : GoInt))) {
            return _n;
        };
        var __tmp__ = _r.value.r.value.peek(_s), _peek:Slice<GoUInt8> = __tmp__._0, _:stdgo.Error = __tmp__._1;
        while (_peek.length > ((0 : GoInt))) {
            var _i:GoInt = stdgo.bytes.Bytes.indexByte(_peek, (("\n".code : GoRune)));
            if (_i < ((3 : GoInt))) {
                return _n;
            };
            _n++;
            _peek = _peek.__slice__(_i + ((1 : GoInt)));
        };
        return _n;
    }
    public function readMIMEHeader():{ var _0 : MIMEHeader; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _strs:Slice<GoString> = new Slice<GoString>().nil();
        var _hint:GoInt = _r.value._upcomingHeaderNewlines();
        if (_hint > ((0 : GoInt))) {
            _strs = new Slice<GoString>(...[for (i in 0 ... ((_hint : GoInt)).toBasic()) (("" : GoString))]);
        };
        var _m:MIMEHeader = new MIMEHeader(new GoMap<GoString, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))))).__copy__();
        {
            var __tmp__ = _r.value.r.value.peek(((1 : GoInt))), _buf:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null && (_buf[((0 : GoInt))] == ((" ".code : GoRune)) || _buf[((0 : GoInt))] == (("\t".code : GoRune)))) {
                var __tmp__ = _r.value._readLineSlice(), _line:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : _m.__copy__(), _1 : _err };
                };
                return { _0 : _m.__copy__(), _1 : new ProtocolError(((("malformed MIME header initial line: " : GoString)) + ((_line : GoString)))) };
            };
        };
        while (true) {
            var __tmp__ = _r.value._readContinuedLineSlice(_mustHaveFieldNameColon), _kv:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_kv.length == ((0 : GoInt))) {
                return { _0 : _m.__copy__(), _1 : _err };
            };
            var _i:GoInt = stdgo.bytes.Bytes.indexByte(_kv, ((":".code : GoRune)));
            if (_i < ((0 : GoInt))) {
                return { _0 : _m.__copy__(), _1 : new ProtocolError(((("malformed MIME header line: " : GoString)) + ((_kv : GoString)))) };
            };
            var _key:GoString = _canonicalMIMEHeaderKey(_kv.__slice__(0, _i));
            if (_key == (("" : GoString))) {
                continue;
            };
            _i++;
            while (_i < _kv.length && (_kv[_i] == ((" ".code : GoRune)) || _kv[_i] == (("\t".code : GoRune)))) {
                _i++;
            };
            var _value:GoString = ((_kv.__slice__(_i) : GoString));
            var _vv:Slice<GoString> = _m.__t__[_key];
            if (_vv == null || _vv.isNil() && _strs.length > ((0 : GoInt))) {
                {
                    final __tmp__0 = _strs.__slice__(0, ((1 : GoInt))).setCap(((((1 : GoInt)) : GoInt)) - ((1 : GoInt)));
                    final __tmp__1 = _strs.__slice__(((1 : GoInt)));
                    _vv = __tmp__0;
                    _strs = __tmp__1;
                };
                _vv[((0 : GoInt))] = _value;
                _m.__t__[_key] = _vv;
            } else {
                _m.__t__[_key] = _vv.__append__(_value);
            };
            if (_err != null) {
                return { _0 : _m.__copy__(), _1 : _err };
            };
        };
    }
    public function readDotLines():{ var _0 : Slice<GoString>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _v:Slice<GoString> = new Slice<GoString>().nil();
        var _err:Error = ((null : stdgo.Error));
        while (true) {
            var _line:GoString = (("" : GoString));
            {
                var __tmp__ = _r.value.readLine();
                _line = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                    _err = stdgo.io.Io.errUnexpectedEOF;
                };
                break;
            };
            if (_line.length > ((0 : GoInt)) && _line[((0 : GoInt))] == ((".".code : GoRune))) {
                if (_line.length == ((1 : GoInt))) {
                    break;
                };
                _line = _line.__slice__(((1 : GoInt)));
            };
            _v = _v.__append__(_line);
        };
        return { _0 : _v, _1 : _err };
    }
    public function readDotBytes():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.io.Io.readAll(_r.value.dotReader());
    }
    public function _closeDot():Void {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_r.value._dot == null || _r.value._dot.isNil()) {
            return;
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((128 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        while (_r.value._dot != null && !_r.value._dot.isNil()) {
            _r.value._dot.value.read(_buf);
        };
    }
    public function dotReader():stdgo.io.Io.Reader {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value._closeDot();
        _r.value._dot = Go.pointer((({ _r : _r, _state : 0 } : T_dotReader)));
        return _r.value._dot.value;
    }
    public function readResponse(_expectCode:GoInt):{ var _0 : GoInt; var _1 : GoString; var _2 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _code:GoInt = ((0 : GoInt)), _message:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _r.value._readCodeLine(_expectCode), _code:GoInt = __tmp__._0, _continued:Bool = __tmp__._1, _message:GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        var _multi:Bool = _continued;
        while (_continued) {
            var __tmp__ = _r.value.readLine(), _line:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((0 : GoInt)), _1 : "", _2 : _err };
            };
            var _code2:GoInt = ((0 : GoInt));
            var _moreMessage:GoString = (("" : GoString));
            {
                var __tmp__ = _parseCodeLine(_line, ((0 : GoInt)));
                _code2 = __tmp__._0;
                _continued = __tmp__._1;
                _moreMessage = __tmp__._2;
                _err = __tmp__._3;
            };
            if (_err != null || _code2 != _code) {
                _message = _message + ((("\n" : GoString)) + stdgo.strings.Strings.trimRight(_line, "\r\n"));
                _continued = true;
                continue;
            };
            _message = _message + ((("\n" : GoString)) + _moreMessage);
        };
        if (_err != null && _multi && _message != (("" : GoString))) {
            _err = Go.pointer(new Error(_code, _message)).value;
        };
        return { _0 : _code, _1 : _message, _2 : _err };
    }
    public function readCodeLine(_expectCode:GoInt):{ var _0 : GoInt; var _1 : GoString; var _2 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _code:GoInt = ((0 : GoInt)), _message:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _r.value._readCodeLine(_expectCode), _code:GoInt = __tmp__._0, _continued:Bool = __tmp__._1, _message:GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err == null && _continued) {
            _err = new ProtocolError(((("unexpected multi-line response: " : GoString)) + _message));
        };
        return { _0 : _code, _1 : _message, _2 : _err };
    }
    public function _readCodeLine(_expectCode:GoInt):{ var _0 : GoInt; var _1 : Bool; var _2 : GoString; var _3 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _code:GoInt = ((0 : GoInt)), _continued:Bool = false, _message:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _r.value.readLine(), _line:GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _code, _1 : _continued, _2 : _message, _3 : _err };
        };
        return _parseCodeLine(_line, _expectCode);
    }
    public function _skipSpace():GoInt {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt));
        while (true) {
            var __tmp__ = _r.value.r.value.readByte(), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                break;
            };
            if (_c != ((" ".code : GoRune)) && _c != (("\t".code : GoRune))) {
                _r.value.r.value.unreadByte();
                break;
            };
            _n++;
        };
        return _n;
    }
    public function _readContinuedLineSlice(_validateFirstLine:Slice<GoByte> -> Error):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_validateFirstLine == null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.fmt.Fmt.errorf("missing validateFirstLine func") };
        };
        var __tmp__ = _r.value._readLineSlice(), _line:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
        };
        if (_line.length == ((0 : GoInt))) {
            return { _0 : _line, _1 : ((null : stdgo.Error)) };
        };
        {
            var _err:stdgo.Error = _validateFirstLine(_line);
            if (_err != null) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
            };
        };
        if (_r.value.r.value.buffered() > ((1 : GoInt))) {
            var __tmp__ = _r.value.r.value.peek(((2 : GoInt))), _peek:Slice<GoUInt8> = __tmp__._0, _:stdgo.Error = __tmp__._1;
            if (_peek.length > ((0 : GoInt)) && (_isASCIILetter(_peek[((0 : GoInt))]) || _peek[((0 : GoInt))] == (("\n".code : GoRune))) || _peek.length == ((2 : GoInt)) && _peek[((0 : GoInt))] == (("\r".code : GoRune)) && _peek[((1 : GoInt))] == (("\n".code : GoRune))) {
                return { _0 : _trim(_line), _1 : ((null : stdgo.Error)) };
            };
        };
        _r.value._buf = _r.value._buf.__slice__(0, ((0 : GoInt))).__append__(..._trim(_line).toArray());
        while (_r.value._skipSpace() > ((0 : GoInt))) {
            var __tmp__ = _r.value._readLineSlice(), _line:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                break;
            };
            _r.value._buf = _r.value._buf.__append__(((" ".code : GoRune)));
            _r.value._buf = _r.value._buf.__append__(..._trim(_line).toArray());
        };
        return { _0 : _r.value._buf, _1 : ((null : stdgo.Error)) };
    }
    public function readContinuedLineBytes():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _r.value._readContinuedLineSlice(_noValidation), _line:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_line != null && !_line.isNil()) {
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_line.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
            Go.copy(_buf, _line);
            _line = _buf;
        };
        return { _0 : _line, _1 : _err };
    }
    public function readContinuedLine():{ var _0 : GoString; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _r.value._readContinuedLineSlice(_noValidation), _line:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : ((_line : GoString)), _1 : _err };
    }
    public function _readLineSlice():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _r.value._closeDot();
        var _line:Slice<GoByte> = new Slice<GoUInt8>().nil();
        while (true) {
            var __tmp__ = _r.value.r.value.readLine(), _l:Slice<GoUInt8> = __tmp__._0, _more:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
            };
            if (_line == null || _line.isNil() && !_more) {
                return { _0 : _l, _1 : ((null : stdgo.Error)) };
            };
            _line = _line.__append__(..._l.toArray());
            if (!_more) {
                break;
            };
        };
        return { _0 : _line, _1 : ((null : stdgo.Error)) };
    }
    public function readLineBytes():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _r.value._readLineSlice(), _line:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_line != null && !_line.isNil()) {
            var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_line.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
            Go.copy(_buf, _line);
            _line = _buf;
        };
        return { _0 : _line, _1 : _err };
    }
    public function readLine():{ var _0 : GoString; var _1 : Error; } {
        var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _r.value._readLineSlice(), _line:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : ((_line : GoString)), _1 : _err };
    }
    public var r : Pointer<bufio.Bufio.Reader> = new Pointer<bufio.Bufio.Reader>().nil();
    public var _dot : Pointer<T_dotReader> = new Pointer<T_dotReader>().nil();
    public var _buf : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?r:Pointer<bufio.Bufio.Reader>, ?_dot:Pointer<T_dotReader>, ?_buf:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(r) + " " + Go.string(_dot) + " " + Go.string(_buf) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(r, _dot, _buf);
    }
    public function __set__(__tmp__) {
        this.r = __tmp__.r;
        this._dot = __tmp__._dot;
        this._buf = __tmp__._buf;
        return this;
    }
}
@:structInit class T_dotReader {
    public function read(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        final _stateBeginLine:GoUnTypedInt = (0 : GoUnTypedInt), _stateDot:GoUnTypedInt = (1 : GoUnTypedInt), _stateDotCR:GoUnTypedInt = (2 : GoUnTypedInt), _stateCR:GoUnTypedInt = (3 : GoUnTypedInt), _stateData:GoUnTypedInt = (4 : GoUnTypedInt), _stateEOF:GoUnTypedInt = (5 : GoUnTypedInt);
        var _br:Pointer<bufio.Bufio.Reader> = _d.value._r.value.r;
        while (_n < _b.length && _d.value._state != _stateEOF) {
            var _c:GoByte = ((0 : GoUInt8));
            {
                var __tmp__ = _br.value.readByte();
                _c = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                    _err = stdgo.io.Io.errUnexpectedEOF;
                };
                break;
            };
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_d.value._state == _stateBeginLine) {
                        if (_c == ((".".code : GoRune))) {
                            _d.value._state = _stateDot;
                            continue;
                        };
                        if (_c == (("\r".code : GoRune))) {
                            _d.value._state = _stateCR;
                            continue;
                        };
                        _d.value._state = _stateData;
                        break;
                    } else if (_d.value._state == _stateDot) {
                        if (_c == (("\r".code : GoRune))) {
                            _d.value._state = _stateDotCR;
                            continue;
                        };
                        if (_c == (("\n".code : GoRune))) {
                            _d.value._state = _stateEOF;
                            continue;
                        };
                        _d.value._state = _stateData;
                        break;
                    } else if (_d.value._state == _stateDotCR) {
                        if (_c == (("\n".code : GoRune))) {
                            _d.value._state = _stateEOF;
                            continue;
                        };
                        _br.value.unreadByte();
                        _c = (("\r".code : GoRune));
                        _d.value._state = _stateData;
                        break;
                    } else if (_d.value._state == _stateCR) {
                        if (_c == (("\n".code : GoRune))) {
                            _d.value._state = _stateBeginLine;
                            break;
                        };
                        _br.value.unreadByte();
                        _c = (("\r".code : GoRune));
                        _d.value._state = _stateData;
                        break;
                    } else if (_d.value._state == _stateData) {
                        if (_c == (("\r".code : GoRune))) {
                            _d.value._state = _stateCR;
                            continue;
                        };
                        if (_c == (("\n".code : GoRune))) {
                            _d.value._state = _stateBeginLine;
                        };
                        break;
                    };
                    break;
                };
            };
            _b[_n] = _c;
            _n++;
        };
        if (_err == null && _d.value._state == _stateEOF) {
            _err = stdgo.io.Io.eof;
        };
        if (_err != null && _d.value._r.value._dot == _d) {
            _d.value._r.value._dot = new Pointer<T_dotReader>().nil();
        };
        return { _0 : _n, _1 : _err };
    }
    public var _r : Pointer<Reader> = new Pointer<Reader>().nil();
    public var _state : GoInt = ((0 : GoInt));
    public function new(?_r:Pointer<Reader>, ?_state:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r) + " " + Go.string(_state) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dotReader(_r, _state);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this._state = __tmp__._state;
        return this;
    }
}
@:structInit class Error {
    public function error():GoString {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.fmt.Fmt.sprintf("%03d %s", Go.toInterface(_e.value.code), Go.toInterface(_e.value.msg));
    }
    public var code : GoInt = ((0 : GoInt));
    public var msg : GoString = (("" : GoString));
    public function new(?code:GoInt, ?msg:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(code) + " " + Go.string(msg) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Error(code, msg);
    }
    public function __set__(__tmp__) {
        this.code = __tmp__.code;
        this.msg = __tmp__.msg;
        return this;
    }
}
@:named class ProtocolError {
    public function error():GoString {
        var _p = this.__copy__();
        return _p.__t__;
    }
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new ProtocolError(__t__);
}
@:structInit class Conn {
    public function cmd(_format:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : GoUInt; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        var _id:GoUInt = ((0 : GoUInt)), _err:Error = ((null : stdgo.Error));
        _id = _c.value.next();
        _c.value.startRequest(_id);
        _err = _c.value.printfLine(_format, ..._args.toArray());
        _c.value.endRequest(_id);
        if (_err != null) {
            return { _0 : ((0 : GoUInt)), _1 : _err };
        };
        return { _0 : _id, _1 : ((null : stdgo.Error)) };
    }
    public function close():Error {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._conn.close();
    }
    @:embedded
    public var reader : Reader = new Reader();
    @:embedded
    public var writer : Writer = new Writer();
    @:embedded
    public var pipeline : Pipeline = new Pipeline();
    public var _conn : stdgo.io.Io.ReadWriteCloser = ((null : stdgo.io.Io.ReadWriteCloser));
    public function new(?reader:Reader, ?writer:Writer, ?pipeline:Pipeline, ?_conn:stdgo.io.Io.ReadWriteCloser) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(reader) + " " + Go.string(writer) + " " + Go.string(pipeline) + " " + Go.string(_conn) + "}";
    }
    public function dotReader():stdgo.io.Io.Reader return reader.dotReader();
    public function dotWriter():stdgo.io.Io.WriteCloser return writer.dotWriter();
    public function endRequest(_id:GoUInt) pipeline.endRequest(_0);
    public function endResponse(_id:GoUInt) pipeline.endResponse(_0);
    public function next():GoUInt return pipeline.next();
    public function printfLine(_format:GoString, _args:Slice<AnyInterface>):stdgo.Error return writer.printfLine(_0, _1);
    public function readCodeLine(_expectCode:GoInt):{ var _0 : GoInt; var _1 : GoString; var _2 : stdgo.Error; } return reader.readCodeLine(_0);
    public function readContinuedLine():{ var _0 : () -> { var _0 : GoString; var _1 : stdgo.Error; }; var _1 : () -> { var _0 : GoString; var _1 : stdgo.Error; }; } return reader.readContinuedLine();
    public function readContinuedLineBytes():{ var _0 : () -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; var _1 : () -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; } return reader.readContinuedLineBytes();
    public function readDotBytes():{ var _0 : () -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; var _1 : () -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; } return reader.readDotBytes();
    public function readDotLines():{ var _0 : () -> { var _0 : Slice<GoString>; var _1 : stdgo.Error; }; var _1 : () -> { var _0 : Slice<GoString>; var _1 : stdgo.Error; }; } return reader.readDotLines();
    public function readLine():{ var _0 : () -> { var _0 : GoString; var _1 : stdgo.Error; }; var _1 : () -> { var _0 : GoString; var _1 : stdgo.Error; }; } return reader.readLine();
    public function readLineBytes():{ var _0 : () -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; var _1 : () -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; } return reader.readLineBytes();
    public function readMIMEHeader():{ var _0 : () -> { var _0 : MIMEHeader; var _1 : stdgo.Error; }; var _1 : () -> { var _0 : MIMEHeader; var _1 : stdgo.Error; }; } return reader.readMIMEHeader();
    public function readResponse(_expectCode:GoInt):{ var _0 : GoInt; var _1 : GoString; var _2 : stdgo.Error; } return reader.readResponse(_0);
    public function startRequest(_id:GoUInt) pipeline.startRequest(_0);
    public function startResponse(_id:GoUInt) pipeline.startResponse(_0);
    public function _readCodeLine(_expectCode:GoInt):{ var _0 : GoInt; var _1 : Bool; var _2 : GoString; var _3 : stdgo.Error; } return reader._readCodeLine(_0);
    public function _readContinuedLineSlice(_validateFirstLine:Slice<GoUInt8> -> stdgo.Error):{ var _0 : (Slice<GoUInt8> -> stdgo.Error) -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; var _1 : (Slice<GoUInt8> -> stdgo.Error) -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; } return reader._readContinuedLineSlice(_0);
    public function _readLineSlice():{ var _0 : () -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; var _1 : () -> { var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; }; } return reader._readLineSlice();
    public function _skipSpace():GoInt return reader._skipSpace();
    public function _upcomingHeaderNewlines():GoInt return reader._upcomingHeaderNewlines();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Conn(reader, writer, pipeline, _conn);
    }
    public function __set__(__tmp__) {
        this.reader = __tmp__.reader;
        this.writer = __tmp__.writer;
        this.pipeline = __tmp__.pipeline;
        this._conn = __tmp__._conn;
        return this;
    }
}
@:structInit class Writer {
    public function _closeDot():Void {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_w.value._dot != null && !_w.value._dot.isNil()) {
            _w.value._dot.value.close();
        };
    }
    public function dotWriter():stdgo.io.Io.WriteCloser {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _w.value._closeDot();
        _w.value._dot = Go.pointer((({ _w : _w, _state : 0 } : T_dotWriter)));
        return _w.value._dot.value;
    }
    public function printfLine(_format:GoString, _args:haxe.Rest<AnyInterface>):Error {
        var _w = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _args = new Slice<AnyInterface>(..._args);
        _w.value._closeDot();
        stdgo.fmt.Fmt.fprintf(_w.value.w.value, _format, ..._args.toArray());
        _w.value.w.value.write(_crnl);
        return _w.value.w.value.flush();
    }
    public var w : Pointer<bufio.Bufio.Writer> = new Pointer<bufio.Bufio.Writer>().nil();
    public var _dot : Pointer<T_dotWriter> = new Pointer<T_dotWriter>().nil();
    public function new(?w:Pointer<bufio.Bufio.Writer>, ?_dot:Pointer<T_dotWriter>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(w) + " " + Go.string(_dot) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(w, _dot);
    }
    public function __set__(__tmp__) {
        this.w = __tmp__.w;
        this._dot = __tmp__._dot;
        return this;
    }
}
@:structInit class T_dotWriter {
    public function close():Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._w.value._dot == _d) {
            _d.value._w.value._dot = new Pointer<T_dotWriter>().nil();
        };
        var _bw:Pointer<bufio.Bufio.Writer> = _d.value._w.value.w;
        {
            var __switchIndex__ = -1;
            while (true) {
                if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _d.value._state == _wstateCR)) {
                    _bw.value.writeByte((("\n".code : GoRune)));
                    @:fallthrough {
                        __switchIndex__ = 2;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _d.value._state == _wstateBeginLine)) {
                    _bw.value.write(_dotcrnl);
                    break;
                    break;
                };
                break;
            };
        };
        return _bw.value.flush();
    }
    public function write(_b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _bw:Pointer<bufio.Bufio.Writer> = _d.value._w.value.w;
        while (_n < _b.length) {
            var _c:GoUInt8 = _b[_n];
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _d.value._state == _wstateBegin || _d.value._state == _wstateBeginLine)) {
                        _d.value._state = _wstateData;
                        if (_c == ((".".code : GoRune))) {
                            _bw.value.writeByte(((".".code : GoRune)));
                        };
                        @:fallthrough {
                            __switchIndex__ = 1;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _d.value._state == _wstateData)) {
                        if (_c == (("\r".code : GoRune))) {
                            _d.value._state = _wstateCR;
                        };
                        if (_c == (("\n".code : GoRune))) {
                            _bw.value.writeByte((("\r".code : GoRune)));
                            _d.value._state = _wstateBeginLine;
                        };
                        break;
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _d.value._state == _wstateCR)) {
                        _d.value._state = _wstateData;
                        if (_c == (("\n".code : GoRune))) {
                            _d.value._state = _wstateBeginLine;
                        };
                        break;
                        break;
                    };
                    break;
                };
            };
            {
                _err = _bw.value.writeByte(_c);
                if (_err != null) {
                    break;
                };
            };
            _n++;
        };
        return { _0 : _n, _1 : _err };
    }
    public var _w : Pointer<Writer> = new Pointer<Writer>().nil();
    public var _state : GoInt = ((0 : GoInt));
    public function new(?_w:Pointer<Writer>, ?_state:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_w) + " " + Go.string(_state) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dotWriter(_w, _state);
    }
    public function __set__(__tmp__) {
        this._w = __tmp__._w;
        this._state = __tmp__._state;
        return this;
    }
}
@:structInit @:local class T__struct_50 {
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_50();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
var _dotcrnl : Slice<GoUInt8> = new Slice<GoUInt8>(((".".code : GoRune)), (("\r".code : GoRune)), (("\n".code : GoRune)));
var _commonHeader : GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
final _toLower : GoInt32 = (("a".code : GoRune)) - (("A".code : GoRune));
final _wstateBegin : GoUnTypedInt = (0 : GoUnTypedInt);
var _crnl : Slice<GoUInt8> = new Slice<GoUInt8>((("\r".code : GoRune)), (("\n".code : GoRune)));
var _commonHeaderOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
final _wstateData = (3 : GoUnTypedInt);
var _isTokenTable : GoArray<Bool> = {
        var s = new GoArray<Bool>(...[for (i in 0 ... 127) false]);
        s[0] = true;
        s[1] = true;
        s[2] = true;
        s[3] = true;
        s[4] = true;
        s[5] = true;
        s[6] = true;
        s[7] = true;
        s[0] = true;
        s[1] = true;
        s[0] = true;
        s[1] = true;
        s[2] = true;
        s[3] = true;
        s[4] = true;
        s[5] = true;
        s[6] = true;
        s[7] = true;
        s[8] = true;
        s[9] = true;
        s[10] = true;
        s[11] = true;
        s[12] = true;
        s[13] = true;
        s[14] = true;
        s[15] = true;
        s[16] = true;
        s[17] = true;
        s[18] = true;
        s[19] = true;
        s[20] = true;
        s[21] = true;
        s[22] = true;
        s[23] = true;
        s[24] = true;
        s[25] = true;
        s[26] = true;
        s[27] = true;
        s[28] = true;
        s[29] = true;
        s[30] = true;
        s[31] = true;
        s[32] = true;
        s[33] = true;
        s[34] = true;
        s[35] = true;
        s[36] = true;
        s[37] = true;
        s[38] = true;
        s[39] = true;
        s[40] = true;
        s[41] = true;
        s[42] = true;
        s[43] = true;
        s[44] = true;
        s[45] = true;
        s[46] = true;
        s[47] = true;
        s[48] = true;
        s[49] = true;
        s[50] = true;
        s[51] = true;
        s[52] = true;
        s[53] = true;
        s[54] = true;
        s[55] = true;
        s[56] = true;
        s[57] = true;
        s[58] = true;
        s[59] = true;
        s[60] = true;
        s[61] = true;
        s[62] = true;
        s[63] = true;
        s[64] = true;
        s[65] = true;
        s[66] = true;
        s;
    };
final _wstateCR = (2 : GoUnTypedInt);
final _wstateBeginLine = (1 : GoUnTypedInt);
/**
    // NewReader returns a new Reader reading from r.
    //
    // To avoid denial of service attacks, the provided bufio.Reader
    // should be reading from an io.LimitReader or similar Reader to bound
    // the size of responses.
**/
function newReader(_r:Pointer<bufio.Bufio.Reader>):Pointer<Reader> {
        _commonHeaderOnce.do_(_initCommonHeader);
        return Go.pointer((({ r : _r, _dot : new Pointer<T_dotReader>().nil(), _buf : new Slice<GoUInt8>().nil() } : Reader)));
    }
/**
    // trim returns s with leading and trailing spaces and tabs removed.
    // It does not assume Unicode or UTF-8.
**/
function _trim(_s:Slice<GoByte>):Slice<GoByte> {
        var _i:GoInt = ((0 : GoInt));
        while (_i < _s.length && (_s[_i] == ((" ".code : GoRune)) || _s[_i] == (("\t".code : GoRune)))) {
            _i++;
        };
        var _n:GoInt = _s.length;
        while (_n > _i && (_s[_n - ((1 : GoInt))] == ((" ".code : GoRune)) || _s[_n - ((1 : GoInt))] == (("\t".code : GoRune)))) {
            _n--;
        };
        return _s.__slice__(_i, _n);
    }
function _parseCodeLine(_line:GoString, _expectCode:GoInt):{ var _0 : GoInt; var _1 : Bool; var _2 : GoString; var _3 : Error; } {
        var _code:GoInt = ((0 : GoInt)), _continued:Bool = false, _message:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        if (_line.length < ((4 : GoInt)) || _line[((3 : GoInt))] != ((" ".code : GoRune)) && _line[((3 : GoInt))] != (("-".code : GoRune))) {
            _err = new ProtocolError(((("short response: " : GoString)) + _line));
            return { _0 : _code, _1 : _continued, _2 : _message, _3 : _err };
        };
        _continued = _line[((3 : GoInt))] == (("-".code : GoRune));
        {
            var __tmp__ = stdgo.strconv.Strconv.atoi(_line.__slice__(((0 : GoInt)), ((3 : GoInt))));
            _code = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null || _code < ((100 : GoInt))) {
            _err = new ProtocolError(((("invalid response code: " : GoString)) + _line));
            return { _0 : _code, _1 : _continued, _2 : _message, _3 : _err };
        };
        _message = _line.__slice__(((4 : GoInt)));
        if (((1 : GoInt)) <= _expectCode && _expectCode < ((10 : GoInt)) && _code / ((100 : GoInt)) != _expectCode || ((10 : GoInt)) <= _expectCode && _expectCode < ((100 : GoInt)) && _code / ((10 : GoInt)) != _expectCode || ((100 : GoInt)) <= _expectCode && _expectCode < ((1000 : GoInt)) && _code != _expectCode) {
            _err = Go.pointer(new Error(_code, _message)).value;
        };
        return { _0 : _code, _1 : _continued, _2 : _message, _3 : _err };
    }
/**
    // noValidation is a no-op validation func for readContinuedLineSlice
    // that permits any lines.
**/
function _noValidation(_:Slice<GoByte>):Error {
        return ((null : stdgo.Error));
    }
/**
    // mustHaveFieldNameColon ensures that, per RFC 7230, the
    // field-name is on a single line, so the first line must
    // contain a colon.
**/
function _mustHaveFieldNameColon(_line:Slice<GoByte>):Error {
        if (stdgo.bytes.Bytes.indexByte(_line, ((":".code : GoRune))) < ((0 : GoInt))) {
            return new ProtocolError(stdgo.fmt.Fmt.sprintf("malformed MIME header: missing colon: %q", Go.toInterface(_line)));
        };
        return ((null : stdgo.Error));
    }
/**
    // CanonicalMIMEHeaderKey returns the canonical format of the
    // MIME header key s. The canonicalization converts the first
    // letter and any letter following a hyphen to upper case;
    // the rest are converted to lowercase. For example, the
    // canonical key for "accept-encoding" is "Accept-Encoding".
    // MIME header keys are assumed to be ASCII only.
    // If s contains a space or invalid header field bytes, it is
    // returned without modifications.
**/
function canonicalMIMEHeaderKey(_s:GoString):GoString {
        _commonHeaderOnce.do_(_initCommonHeader);
        var _upper:Bool = true;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i++, {
                var _c:GoUInt8 = _s[_i];
                if (!_validHeaderFieldByte(_c)) {
                    return _s;
                };
                if (_upper && (("a".code : GoRune)) <= _c && _c <= (("z".code : GoRune))) {
                    return _canonicalMIMEHeaderKey(((_s : Slice<GoByte>)));
                };
                if (!_upper && (("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune))) {
                    return _canonicalMIMEHeaderKey(((_s : Slice<GoByte>)));
                };
                _upper = _c == (("-".code : GoRune));
            });
        };
        return _s;
    }
/**
    // validHeaderFieldByte reports whether b is a valid byte in a header
    // field name. RFC 7230 says:
    //   header-field   = field-name ":" OWS field-value OWS
    //   field-name     = token
    //   tchar = "!" / "#" / "$" / "%" / "&" / "'" / "*" / "+" / "-" / "." /
    //           "^" / "_" / "`" / "|" / "~" / DIGIT / ALPHA
    //   token = 1*tchar
**/
function _validHeaderFieldByte(_b:GoByte):Bool {
        return ((_b : GoInt)) < _isTokenTable.length && _isTokenTable[_b];
    }
/**
    // canonicalMIMEHeaderKey is like CanonicalMIMEHeaderKey but is
    // allowed to mutate the provided byte slice before returning the
    // string.
    //
    // For invalid inputs (if a contains spaces or non-token bytes), a
    // is unchanged and a string copy is returned.
**/
function _canonicalMIMEHeaderKey(_a:Slice<GoByte>):GoString {
        for (_c in _a) {
            if (_validHeaderFieldByte(_c)) {
                continue;
            };
            return ((_a : GoString));
        };
        var _upper:Bool = true;
        {
            var _i;
            var _c;
            for (_obj in _a.keyValueIterator()) {
                _i = _obj.key;
                _c = _obj.value;
                if (_upper && (("a".code : GoRune)) <= _c && _c <= (("z".code : GoRune))) {
                    _c = _c - (_toLower);
                } else if (!_upper && (("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune))) {
                    _c = _c + (_toLower);
                };
                _a[_i] = _c;
                _upper = _c == (("-".code : GoRune));
            };
        };
        {
            var _v:GoString = _commonHeader[((_a : GoString))];
            if (_v != (("" : GoString))) {
                return _v;
            };
        };
        return ((_a : GoString));
    }
function _initCommonHeader():Void {
        _commonHeader = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
        for (_v in new Slice<GoString>(
"Accept",
"Accept-Charset",
"Accept-Encoding",
"Accept-Language",
"Accept-Ranges",
"Cache-Control",
"Cc",
"Connection",
"Content-Id",
"Content-Language",
"Content-Length",
"Content-Transfer-Encoding",
"Content-Type",
"Cookie",
"Date",
"Dkim-Signature",
"Etag",
"Expires",
"From",
"Host",
"If-Modified-Since",
"If-None-Match",
"In-Reply-To",
"Last-Modified",
"Location",
"Message-Id",
"Mime-Version",
"Pragma",
"Received",
"Return-Path",
"Server",
"Set-Cookie",
"Subject",
"To",
"User-Agent",
"Via",
"X-Forwarded-For",
"X-Imforwards",
"X-Powered-By")) {
            _commonHeader[_v] = _v;
        };
    }
/**
    // NewConn returns a new Conn using conn for I/O.
**/
function newConn(_conn:stdgo.io.Io.ReadWriteCloser):Pointer<Conn> {
        return Go.pointer((({ reader : (({ r : bufio.Bufio.newReader(_conn), _dot : new Pointer<T_dotReader>().nil(), _buf : new Slice<GoUInt8>().nil() } : Reader)).__copy__(), writer : (({ w : bufio.Bufio.newWriter(_conn), _dot : new Pointer<T_dotWriter>().nil() } : Writer)).__copy__(), _conn : _conn, pipeline : new Pipeline() } : Conn)));
    }
/**
    // Dial connects to the given address on the given network using net.Dial
    // and then returns a new Conn for the connection.
**/
function dial(_network:GoString, _addr:GoString):{ var _0 : Pointer<Conn>; var _1 : Error; } {
        var __tmp__ = stdgo.net.Net.dial(_network, _addr), _c:stdgo.net.Net.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Conn>().nil(), _1 : _err };
        };
        return { _0 : newConn(_c), _1 : ((null : stdgo.Error)) };
    }
/**
    // TrimString returns s without leading and trailing ASCII space.
**/
function trimString(_s:GoString):GoString {
        while (_s.length > ((0 : GoInt)) && _isASCIISpace(_s[((0 : GoInt))])) {
            _s = _s.__slice__(((1 : GoInt)));
        };
        while (_s.length > ((0 : GoInt)) && _isASCIISpace(_s[_s.length - ((1 : GoInt))])) {
            _s = _s.__slice__(0, _s.length - ((1 : GoInt)));
        };
        return _s;
    }
/**
    // TrimBytes returns b without leading and trailing ASCII space.
**/
function trimBytes(_b:Slice<GoByte>):Slice<GoByte> {
        while (_b.length > ((0 : GoInt)) && _isASCIISpace(_b[((0 : GoInt))])) {
            _b = _b.__slice__(((1 : GoInt)));
        };
        while (_b.length > ((0 : GoInt)) && _isASCIISpace(_b[_b.length - ((1 : GoInt))])) {
            _b = _b.__slice__(0, _b.length - ((1 : GoInt)));
        };
        return _b;
    }
function _isASCIISpace(_b:GoByte):Bool {
        return _b == ((" ".code : GoRune)) || _b == (("\t".code : GoRune)) || _b == (("\n".code : GoRune)) || _b == (("\r".code : GoRune));
    }
function _isASCIILetter(_b:GoByte):Bool {
        _b = _b | (((32 : GoUInt8)));
        return (("a".code : GoRune)) <= _b && _b <= (("z".code : GoRune));
    }
/**
    // NewWriter returns a new Writer writing to w.
**/
function newWriter(_w:Pointer<bufio.Bufio.Writer>):Pointer<Writer> {
        return Go.pointer((({ w : _w, _dot : new Pointer<T_dotWriter>().nil() } : Writer)));
    }
class MIMEHeader_extension_fields {
    public function add(__tmp__, _key:GoString, _value:GoString):Void __tmp__.add(_key, _value);
    public function set(__tmp__, _key:GoString, _value:GoString):Void __tmp__.set(_key, _value);
    public function get(__tmp__, _key:GoString):GoString return __tmp__.get(_key);
    public function values(__tmp__, _key:GoString):Slice<GoString> return __tmp__.values(_key);
    public function del(__tmp__, _key:GoString):Void __tmp__.del(_key);
}
class Pipeline_extension_fields {
    public function next(__tmp__):GoUInt return __tmp__.next();
    public function startRequest(__tmp__, _id:GoUInt):Void __tmp__.startRequest(_id);
    public function endRequest(__tmp__, _id:GoUInt):Void __tmp__.endRequest(_id);
    public function startResponse(__tmp__, _id:GoUInt):Void __tmp__.startResponse(_id);
    public function endResponse(__tmp__, _id:GoUInt):Void __tmp__.endResponse(_id);
}
class T_sequencer_extension_fields {
    public function start(__tmp__, _id:GoUInt):Void __tmp__.start(_id);
    public function end(__tmp__, _id:GoUInt):Void __tmp__.end(_id);
}
class Reader_extension_fields {
    public function readLine(__tmp__):{ var _0 : GoString; var _1 : Error; } return __tmp__.readLine();
    public function readLineBytes(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.readLineBytes();
    public function _readLineSlice(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._readLineSlice();
    public function readContinuedLine(__tmp__):{ var _0 : GoString; var _1 : Error; } return __tmp__.readContinuedLine();
    public function readContinuedLineBytes(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.readContinuedLineBytes();
    public function _readContinuedLineSlice(__tmp__, _validateFirstLine:Slice<GoByte> -> Error):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._readContinuedLineSlice(_validateFirstLine);
    public function _skipSpace(__tmp__):GoInt return __tmp__._skipSpace();
    public function _readCodeLine(__tmp__, _expectCode:GoInt):{ var _0 : GoInt; var _1 : Bool; var _2 : GoString; var _3 : Error; } return __tmp__._readCodeLine(_expectCode);
    public function readCodeLine(__tmp__, _expectCode:GoInt):{ var _0 : GoInt; var _1 : GoString; var _2 : Error; } return __tmp__.readCodeLine(_expectCode);
    public function readResponse(__tmp__, _expectCode:GoInt):{ var _0 : GoInt; var _1 : GoString; var _2 : Error; } return __tmp__.readResponse(_expectCode);
    public function dotReader(__tmp__):stdgo.io.Io.Reader return __tmp__.dotReader();
    public function _closeDot(__tmp__):Void __tmp__._closeDot();
    public function readDotBytes(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.readDotBytes();
    public function readDotLines(__tmp__):{ var _0 : Slice<GoString>; var _1 : Error; } return __tmp__.readDotLines();
    public function readMIMEHeader(__tmp__):{ var _0 : MIMEHeader; var _1 : Error; } return __tmp__.readMIMEHeader();
    public function _upcomingHeaderNewlines(__tmp__):GoInt return __tmp__._upcomingHeaderNewlines();
}
class T_dotReader_extension_fields {
    public function read(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_b);
}
class Error_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class ProtocolError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class Conn_extension_fields {
    public function close(__tmp__):Error return __tmp__.close();
    public function cmd(__tmp__, _format:GoString, _args:haxe.Rest<AnyInterface>):{ var _0 : GoUInt; var _1 : Error; } return __tmp__.cmd(_format, _args);
}
class Writer_extension_fields {
    public function printfLine(__tmp__, _format:GoString, _args:haxe.Rest<AnyInterface>):Error return __tmp__.printfLine(_format, _args);
    public function dotWriter(__tmp__):stdgo.io.Io.WriteCloser return __tmp__.dotWriter();
    public function _closeDot(__tmp__):Void __tmp__._closeDot();
}
class T_dotWriter_extension_fields {
    public function write(__tmp__, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_b);
    public function close(__tmp__):Error return __tmp__.close();
}
