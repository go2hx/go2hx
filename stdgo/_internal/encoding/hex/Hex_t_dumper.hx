package stdgo._internal.encoding.hex;
@:structInit @:using(stdgo._internal.encoding.hex.Hex_t_dumper_static_extension.T_dumper_static_extension) class T_dumper {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _rightChars : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(18, 18).__setNumber32__();
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(14, 14).__setNumber32__();
    public var _used : stdgo.GoInt = 0;
    public var _n : stdgo.GoUInt = 0;
    public var _closed : Bool = false;
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_rightChars:stdgo.GoArray<stdgo.GoUInt8>, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_used:stdgo.GoInt, ?_n:stdgo.GoUInt, ?_closed:Bool) {
        if (_w != null) this._w = _w;
        if (_rightChars != null) this._rightChars = _rightChars;
        if (_buf != null) this._buf = _buf;
        if (_used != null) this._used = _used;
        if (_n != null) this._n = _n;
        if (_closed != null) this._closed = _closed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dumper(_w, _rightChars, _buf, _used, _n, _closed);
    }
}
