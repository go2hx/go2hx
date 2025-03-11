package stdgo._internal.encoding.hex;
@:structInit @:using(stdgo._internal.encoding.hex.Hex_t_encoder_static_extension.T_encoder_static_extension) class T_encoder {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _out : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024).__setNumber32__();
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_err:stdgo.Error, ?_out:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_w, _err, _out);
    }
}
