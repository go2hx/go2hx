package stdgo.encoding.hex;
@:structInit @:using(stdgo.encoding.hex.Hex.T_encoder_static_extension) abstract T_encoder(stdgo._internal.encoding.hex.Hex_T_encoder.T_encoder) from stdgo._internal.encoding.hex.Hex_T_encoder.T_encoder to stdgo._internal.encoding.hex.Hex_T_encoder.T_encoder {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _out(get, set) : haxe.ds.Vector<std.UInt>;
    function get__out():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._out) i]);
    function set__out(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._out = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_err:stdgo.Error, ?_out:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.hex.Hex_T_encoder.T_encoder(_w, (_err : stdgo.Error), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
