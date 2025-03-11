package stdgo._internal.fmt;
@:structInit @:using(stdgo._internal.fmt.Fmt_t_readrune_static_extension.T_readRune_static_extension) class T_readRune {
    public var _reader : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
    public var _pending : stdgo.GoInt = 0;
    public var _pendBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
    public var _peekRune : stdgo.GoInt32 = 0;
    public function new(?_reader:stdgo._internal.io.Io_reader.Reader, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_pending:stdgo.GoInt, ?_pendBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_peekRune:stdgo.GoInt32) {
        if (_reader != null) this._reader = _reader;
        if (_buf != null) this._buf = _buf;
        if (_pending != null) this._pending = _pending;
        if (_pendBuf != null) this._pendBuf = _pendBuf;
        if (_peekRune != null) this._peekRune = _peekRune;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readRune(_reader, _buf, _pending, _pendBuf, _peekRune);
    }
}
