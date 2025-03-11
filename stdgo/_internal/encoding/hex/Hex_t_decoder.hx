package stdgo._internal.encoding.hex;
@:structInit @:using(stdgo._internal.encoding.hex.Hex_t_decoder_static_extension.T_decoder_static_extension) class T_decoder {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _in : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _arr : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024).__setNumber32__();
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_err:stdgo.Error, ?_in:stdgo.Slice<stdgo.GoUInt8>, ?_arr:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_err != null) this._err = _err;
        if (_in != null) this._in = _in;
        if (_arr != null) this._arr = _arr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(_r, _err, _in, _arr);
    }
}
