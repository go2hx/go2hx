package stdgo.image.jpeg;
@:structInit @:using(stdgo.image.jpeg.Jpeg.T_huffman_static_extension) abstract T_huffman(stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman) from stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman to stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman {
    public var _nCodes(get, set) : StdTypes.Int;
    function get__nCodes():StdTypes.Int return this._nCodes;
    function set__nCodes(v:StdTypes.Int):StdTypes.Int {
        this._nCodes = (v : stdgo.GoInt32);
        return v;
    }
    public var _lut(get, set) : haxe.ds.Vector<std.UInt>;
    function get__lut():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._lut) i]);
    function set__lut(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._lut = ([for (i in v) (i : stdgo.GoUInt16)] : stdgo.GoArray<stdgo.GoUInt16>);
        return v;
    }
    public var _vals(get, set) : haxe.ds.Vector<std.UInt>;
    function get__vals():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._vals) i]);
    function set__vals(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._vals = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _minCodes(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__minCodes():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._minCodes) i]);
    function set__minCodes(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._minCodes = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public var _maxCodes(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__maxCodes():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._maxCodes) i]);
    function set__maxCodes(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._maxCodes = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public var _valsIndices(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__valsIndices():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._valsIndices) i]);
    function set__valsIndices(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._valsIndices = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public function new(?_nCodes:StdTypes.Int, ?_lut:haxe.ds.Vector<std.UInt>, ?_vals:haxe.ds.Vector<std.UInt>, ?_minCodes:haxe.ds.Vector<StdTypes.Int>, ?_maxCodes:haxe.ds.Vector<StdTypes.Int>, ?_valsIndices:haxe.ds.Vector<StdTypes.Int>) this = new stdgo._internal.image.jpeg.Jpeg_T_huffman.T_huffman((_nCodes : stdgo.GoInt32), ([for (i in _lut) (i : stdgo.GoUInt16)] : stdgo.GoArray<stdgo.GoUInt16>), ([for (i in _vals) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), ([for (i in _minCodes) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>), ([for (i in _maxCodes) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>), ([for (i in _valsIndices) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
