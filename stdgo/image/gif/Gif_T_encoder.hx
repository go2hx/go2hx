package stdgo.image.gif;
@:structInit @:using(stdgo.image.gif.Gif.T_encoder_static_extension) abstract T_encoder(stdgo._internal.image.gif.Gif_T_encoder.T_encoder) from stdgo._internal.image.gif.Gif_T_encoder.T_encoder to stdgo._internal.image.gif.Gif_T_encoder.T_encoder {
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
    public var _g(get, set) : GIF;
    function get__g():GIF return this._g;
    function set__g(v:GIF):GIF {
        this._g = v;
        return v;
    }
    public var _globalCT(get, set) : StdTypes.Int;
    function get__globalCT():StdTypes.Int return this._globalCT;
    function set__globalCT(v:StdTypes.Int):StdTypes.Int {
        this._globalCT = (v : stdgo.GoInt);
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _globalColorTable(get, set) : haxe.ds.Vector<std.UInt>;
    function get__globalColorTable():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._globalColorTable) i]);
    function set__globalColorTable(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._globalColorTable = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _localColorTable(get, set) : haxe.ds.Vector<std.UInt>;
    function get__localColorTable():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._localColorTable) i]);
    function set__localColorTable(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._localColorTable = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_w:T_writer, ?_err:stdgo.Error, ?_g:GIF, ?_globalCT:StdTypes.Int, ?_buf:haxe.ds.Vector<std.UInt>, ?_globalColorTable:haxe.ds.Vector<std.UInt>, ?_localColorTable:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.image.gif.Gif_T_encoder.T_encoder(_w, (_err : stdgo.Error), _g, (_globalCT : stdgo.GoInt), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _globalColorTable) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _localColorTable) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
