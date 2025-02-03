package stdgo.image.jpeg;
@:structInit @:using(stdgo.image.jpeg.Jpeg.T_encoder_static_extension) abstract T_encoder(stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder) from stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder to stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder {
    public var _w(get, set) : T_writer;
    function get__w():T_writer return this._w;
    function set__w(v:T_writer):T_writer {
        this._w = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _bits(get, set) : std.UInt;
    function get__bits():std.UInt return this._bits;
    function set__bits(v:std.UInt):std.UInt {
        this._bits = (v : stdgo.GoUInt32);
        return v;
    }
    public var _nBits(get, set) : std.UInt;
    function get__nBits():std.UInt return this._nBits;
    function set__nBits(v:std.UInt):std.UInt {
        this._nBits = (v : stdgo.GoUInt32);
        return v;
    }
    public var _quant(get, set) : haxe.ds.Vector<haxe.ds.Vector<std.UInt>>;
    function get__quant():haxe.ds.Vector<haxe.ds.Vector<std.UInt>> return haxe.ds.Vector.fromArrayCopy([for (i in this._quant) haxe.ds.Vector.fromArrayCopy([for (i in i) i])]);
    function set__quant(v:haxe.ds.Vector<haxe.ds.Vector<std.UInt>>):haxe.ds.Vector<haxe.ds.Vector<std.UInt>> {
        this._quant = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>);
        return v;
    }
    public function new(?_w:T_writer, ?_err:stdgo.Error, ?_buf:haxe.ds.Vector<std.UInt>, ?_bits:std.UInt, ?_nBits:std.UInt, ?_quant:haxe.ds.Vector<haxe.ds.Vector<std.UInt>>) this = new stdgo._internal.image.jpeg.Jpeg_T_encoder.T_encoder(_w, (_err : stdgo.Error), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_bits : stdgo.GoUInt32), (_nBits : stdgo.GoUInt32), ([for (i in _quant) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt8>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
