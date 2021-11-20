package stdgo.net.http.internal;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class T_chunkedReader {
    public function read(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } {
        var _cr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while (_cr.value._err == null) {
            if (_cr.value._checkEnd) {
                if (_n > ((0 : GoInt)) && _cr.value._r.value.buffered() < ((2 : GoInt))) {
                    break;
                };
                {
                    {
                        var __tmp__ = stdgo.io.Io.readFull(_cr.value._r.value, _cr.value._buf.__slice__(0, ((2 : GoInt))));
                        _cr.value._err = __tmp__._1;
                    };
                    if (_cr.value._err == null) {
                        if (((_cr.value._buf.__slice__(0) : GoString)) != (("\r\n" : GoString))) {
                            _cr.value._err = stdgo.errors.Errors.new_("malformed chunked encoding");
                            break;
                        };
                    };
                };
                _cr.value._checkEnd = false;
            };
            if (_cr.value._n == ((0 : GoUInt64))) {
                if (_n > ((0 : GoInt)) && !_cr.value._chunkHeaderAvailable()) {
                    break;
                };
                _cr.value._beginChunk();
                continue;
            };
            if (_b.length == ((0 : GoInt))) {
                break;
            };
            var _rbuf:Slice<GoUInt8> = _b;
            if (((_rbuf.length : GoUInt64)) > _cr.value._n) {
                _rbuf = _rbuf.__slice__(0, _cr.value._n);
            };
            var _n0:GoInt = ((0 : GoInt));
            {
                var __tmp__ = _cr.value._r.value.read(_rbuf);
                _n0 = __tmp__._0;
                _cr.value._err = __tmp__._1;
            };
            _n = _n + (_n0);
            _b = _b.__slice__(_n0);
            _cr.value._n = _cr.value._n - (((_n0 : GoUInt64)));
            if (_cr.value._n == ((0 : GoUInt64)) && _cr.value._err == null) {
                _cr.value._checkEnd = true;
            };
        };
        return { _0 : _n, _1 : _cr.value._err };
    }
    public function _chunkHeaderAvailable():Bool {
        var _cr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = _cr.value._r.value.buffered();
        if (_n > ((0 : GoInt))) {
            var __tmp__ = _cr.value._r.value.peek(_n), _peek:Slice<GoUInt8> = __tmp__._0, _:stdgo.Error = __tmp__._1;
            return stdgo.bytes.Bytes.indexByte(_peek, (("\n".code : GoRune))) >= ((0 : GoInt));
        };
        return false;
    }
    public function _beginChunk():Void {
        var _cr = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _line:Slice<GoByte> = new Slice<GoUInt8>().nil();
        {
            var __tmp__ = _readChunkLine(_cr.value._r);
            _line = __tmp__._0;
            _cr.value._err = __tmp__._1;
        };
        if (_cr.value._err != null) {
            return;
        };
        {
            var __tmp__ = _parseHexUint(_line);
            _cr.value._n = __tmp__._0;
            _cr.value._err = __tmp__._1;
        };
        if (_cr.value._err != null) {
            return;
        };
        if (_cr.value._n == ((0 : GoUInt64))) {
            _cr.value._err = stdgo.io.Io.eof;
        };
    }
    public var _r : Pointer<bufio.Bufio.Reader> = new Pointer<bufio.Bufio.Reader>().nil();
    public var _n : GoUInt64 = ((0 : GoUInt64));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 2) ((0 : GoUInt8))]);
    public var _checkEnd : Bool = false;
    public function new(?_r:Pointer<bufio.Bufio.Reader>, ?_n:GoUInt64, ?_err:stdgo.Error, ?_buf:GoArray<GoUInt8>, ?_checkEnd:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r) + " " + Go.string(_n) + " " + Go.string(_err) + " " + Go.string(_buf) + " " + Go.string(_checkEnd) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_chunkedReader(_r, _n, _err, _buf, _checkEnd);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this._n = __tmp__._n;
        this._err = __tmp__._err;
        this._buf = __tmp__._buf;
        this._checkEnd = __tmp__._checkEnd;
        return this;
    }
}
@:structInit class T_chunkedWriter {
    public function close():Error {
        var _cw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = stdgo.io.Io.writeString(_cw.value.wire, "0\r\n"), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _cw = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_data.length == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        {
            {
                var __tmp__ = stdgo.fmt.Fmt.fprintf(_cw.value.wire, "%x\r\n", Go.toInterface(_data.length));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : ((0 : GoInt)), _1 : _err };
            };
        };
        {
            {
                var __tmp__ = _cw.value.wire.write(_data);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        if (_n != _data.length) {
            _err = stdgo.io.Io.errShortWrite;
            return { _0 : _n, _1 : _err };
        };
        {
            {
                var __tmp__ = stdgo.io.Io.writeString(_cw.value.wire, "\r\n");
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        {
            var __tmp__ = try {
                { value : ((_cw.value.wire.__underlying__().value : FlushAfterChunkWriter)), ok : true };
            } catch(_) {
                { value : new Pointer<FlushAfterChunkWriter>().nil(), ok : false };
            }, _bw = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _err = _bw.value.flush();
            };
        };
        return { _0 : _n, _1 : _err };
    }
    public var wire : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?wire:stdgo.io.Io.Writer) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(wire) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_chunkedWriter(wire);
    }
    public function __set__(__tmp__) {
        this.wire = __tmp__.wire;
        return this;
    }
}
@:structInit class FlushAfterChunkWriter {
    @:embedded
    public var writer : Pointer<bufio.Bufio.Writer> = new Pointer<bufio.Bufio.Writer>().nil();
    public function new(?writer:Pointer<bufio.Bufio.Writer>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(writer) + "}";
    }
    public function available():GoInt return writer.available();
    public function buffered():GoInt return writer.buffered();
    public function flush():stdgo.Error return writer.flush();
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return writer.readFrom(_0);
    public function reset(_w:stdgo.io.Io.Writer) writer.reset(_0);
    public function size():GoInt return writer.size();
    public function write(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.write(_0);
    public function writeByte(_c:GoUInt8):stdgo.Error return writer.writeByte(_0);
    public function writeRune(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return writer.writeRune(_0);
    public function writeString(_s:GoString):{ var _0 : GoString -> { var _0 : GoInt; var _1 : stdgo.Error; }; var _1 : GoString -> { var _0 : GoInt; var _1 : stdgo.Error; }; } return writer.writeString(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FlushAfterChunkWriter(writer);
    }
    public function __set__(__tmp__) {
        this.writer = __tmp__.writer;
        return this;
    }
}
final _maxLineLength : GoInt64 = ((4096 : GoUnTypedInt));
var errLineTooLong : stdgo.Error = stdgo.errors.Errors.new_("header line too long");
/**
    // NewChunkedReader returns a new chunkedReader that translates the data read from r
    // out of HTTP "chunked" format before returning it.
    // The chunkedReader returns io.EOF when the final 0-length chunk is read.
    //
    // NewChunkedReader is not needed by normal applications. The http package
    // automatically decodes chunking when reading response bodies.
**/
function newChunkedReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        var __tmp__ = try {
            { value : ((_r.__underlying__().value : bufio.Bufio.Reader)), ok : true };
        } catch(_) {
            { value : new Pointer<bufio.Bufio.Reader>().nil(), ok : false };
        }, _br = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _br = bufio.Bufio.newReader(_r);
        };
        return Go.pointer((({ _r : _br, _n : 0, _err : ((null : stdgo.Error)), _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 2) ((0 : GoUInt8))]), _checkEnd : false } : T_chunkedReader))).value;
    }
/**
    // Read a line of bytes (up to \n) from b.
    // Give up if the line exceeds maxLineLength.
    // The returned bytes are owned by the bufio.Reader
    // so they are only valid until the next bufio read.
**/
function _readChunkLine(_b:Pointer<bufio.Bufio.Reader>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var __tmp__ = _b.value.readSlice((("\n".code : GoRune))), _p:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
                _err = stdgo.io.Io.errUnexpectedEOF;
            } else if (Go.toInterface(_err) == Go.toInterface(bufio.Bufio.errBufferFull)) {
                _err = errLineTooLong;
            };
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
        };
        if (_p.length >= _maxLineLength) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : errLineTooLong };
        };
        _p = _trimTrailingWhitespace(_p);
        {
            var __tmp__ = _removeChunkExtension(_p);
            _p = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
        };
        return { _0 : _p, _1 : ((null : stdgo.Error)) };
    }
function _trimTrailingWhitespace(_b:Slice<GoByte>):Slice<GoByte> {
        while (_b.length > ((0 : GoInt)) && _isASCIISpace(_b[_b.length - ((1 : GoInt))])) {
            _b = _b.__slice__(0, _b.length - ((1 : GoInt)));
        };
        return _b;
    }
function _isASCIISpace(_b:GoByte):Bool {
        return _b == ((" ".code : GoRune)) || _b == (("\t".code : GoRune)) || _b == (("\n".code : GoRune)) || _b == (("\r".code : GoRune));
    }
/**
    // removeChunkExtension removes any chunk-extension from p.
    // For example,
    //     "0" => "0"
    //     "0;token" => "0"
    //     "0;token=val" => "0"
    //     `0;token="quoted string"` => "0"
**/
function _removeChunkExtension(_p:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _semi:GoInt = stdgo.bytes.Bytes.indexByte(_p, ((";".code : GoRune)));
        if (_semi == -((1 : GoUnTypedInt))) {
            return { _0 : _p, _1 : ((null : stdgo.Error)) };
        };
        return { _0 : _p.__slice__(0, _semi), _1 : ((null : stdgo.Error)) };
    }
/**
    // NewChunkedWriter returns a new chunkedWriter that translates writes into HTTP
    // "chunked" format before writing them to w. Closing the returned chunkedWriter
    // sends the final 0-length chunk that marks the end of the stream but does
    // not send the final CRLF that appears after trailers; trailers and the last
    // CRLF must be written separately.
    //
    // NewChunkedWriter is not needed by normal applications. The http
    // package adds chunking automatically if handlers don't set a
    // Content-Length header. Using newChunkedWriter inside a handler
    // would result in double chunking or chunking with a Content-Length
    // length, both of which are wrong.
**/
function newChunkedWriter(_w:stdgo.io.Io.Writer):stdgo.io.Io.WriteCloser {
        return Go.pointer(new T_chunkedWriter(_w)).value;
    }
function _parseHexUint(_v:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : Error; } {
        var _n:GoUInt64 = ((0 : GoUInt64)), _err:Error = ((null : stdgo.Error));
        {
            var _i;
            var _b;
            for (_obj in _v.keyValueIterator()) {
                _i = _obj.key;
                _b = _obj.value;
                if ((("0".code : GoRune)) <= _b && _b <= (("9".code : GoRune))) {
                    _b = _b - (("0".code : GoRune));
                } else if ((("a".code : GoRune)) <= _b && _b <= (("f".code : GoRune))) {
                    _b = _b - (("a".code : GoRune)) + ((10 : GoUInt8));
                } else if ((("A".code : GoRune)) <= _b && _b <= (("F".code : GoRune))) {
                    _b = _b - (("A".code : GoRune)) + ((10 : GoUInt8));
                } else {
                    return { _0 : ((0 : GoUInt64)), _1 : stdgo.errors.Errors.new_("invalid byte in chunk length") };
                };
                if (_i == ((16 : GoInt))) {
                    return { _0 : ((0 : GoUInt64)), _1 : stdgo.errors.Errors.new_("http chunk length too large") };
                };
                _n = (_n << (((4 : GoUnTypedInt))));
                _n = _n | (((_b : GoUInt64)));
            };
        };
        return { _0 : _n, _1 : _err };
    }
class T_chunkedReader_extension_fields {
    public function _beginChunk(__tmp__):Void __tmp__._beginChunk();
    public function _chunkHeaderAvailable(__tmp__):Bool return __tmp__._chunkHeaderAvailable();
    public function read(__tmp__, _b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_b);
}
class T_chunkedWriter_extension_fields {
    public function write(__tmp__, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_data);
    public function close(__tmp__):Error return __tmp__.close();
}
