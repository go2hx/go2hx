package stdgo.encoding.hex;
@:structInit @:using(stdgo.encoding.hex.Hex.T_decoder_static_extension) abstract T_decoder(stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder) from stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder to stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _in(get, set) : Array<std.UInt>;
    function get__in():Array<std.UInt> return [for (i in this._in) i];
    function set__in(v:Array<std.UInt>):Array<std.UInt> {
        this._in = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _arr(get, set) : haxe.ds.Vector<std.UInt>;
    function get__arr():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._arr) i]);
    function set__arr(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._arr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_err:stdgo.Error, ?_in:Array<std.UInt>, ?_arr:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.encoding.hex.Hex_T_decoder.T_decoder(_r, (_err : stdgo.Error), ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _arr) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
