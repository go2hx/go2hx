package stdgo._internal.bufio;
@:structInit @:using(stdgo._internal.bufio.Bufio_reader_static_extension.Reader_static_extension) class Reader {
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _rd : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _r : stdgo.GoInt = 0;
    public var _w : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _lastByte : stdgo.GoInt = 0;
    public var _lastRuneSize : stdgo.GoInt = 0;
    public function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_rd:stdgo._internal.io.Io_reader.Reader, ?_r:stdgo.GoInt, ?_w:stdgo.GoInt, ?_err:stdgo.Error, ?_lastByte:stdgo.GoInt, ?_lastRuneSize:stdgo.GoInt) {
        if (_buf != null) this._buf = _buf;
        if (_rd != null) this._rd = _rd;
        if (_r != null) this._r = _r;
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_lastByte != null) this._lastByte = _lastByte;
        if (_lastRuneSize != null) this._lastRuneSize = _lastRuneSize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(_buf, _rd, _r, _w, _err, _lastByte, _lastRuneSize);
    }
}
