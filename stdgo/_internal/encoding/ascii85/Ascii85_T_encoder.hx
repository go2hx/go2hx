package stdgo._internal.encoding.ascii85;
@:structInit @:using(stdgo._internal.encoding.ascii85.Ascii85_T_encoder_static_extension.T_encoder_static_extension) class T_encoder {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _w : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
    public var _nbuf : stdgo.GoInt = 0;
    public var _out : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)]);
    public function new(?_err:stdgo.Error, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_err != null) this._err = _err;
        if (_w != null) this._w = _w;
        if (_buf != null) this._buf = _buf;
        if (_nbuf != null) this._nbuf = _nbuf;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_err, _w, _buf, _nbuf, _out);
    }
}