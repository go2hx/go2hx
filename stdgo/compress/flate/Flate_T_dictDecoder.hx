package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.T_dictDecoder_static_extension) abstract T_dictDecoder(stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder) from stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder to stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder {
    public var _hist(get, set) : Array<std.UInt>;
    function get__hist():Array<std.UInt> return [for (i in this._hist) i];
    function set__hist(v:Array<std.UInt>):Array<std.UInt> {
        this._hist = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _wrPos(get, set) : StdTypes.Int;
    function get__wrPos():StdTypes.Int return this._wrPos;
    function set__wrPos(v:StdTypes.Int):StdTypes.Int {
        this._wrPos = (v : stdgo.GoInt);
        return v;
    }
    public var _rdPos(get, set) : StdTypes.Int;
    function get__rdPos():StdTypes.Int return this._rdPos;
    function set__rdPos(v:StdTypes.Int):StdTypes.Int {
        this._rdPos = (v : stdgo.GoInt);
        return v;
    }
    public var _full(get, set) : Bool;
    function get__full():Bool return this._full;
    function set__full(v:Bool):Bool {
        this._full = v;
        return v;
    }
    public function new(?_hist:Array<std.UInt>, ?_wrPos:StdTypes.Int, ?_rdPos:StdTypes.Int, ?_full:Bool) this = new stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder(([for (i in _hist) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_wrPos : stdgo.GoInt), (_rdPos : stdgo.GoInt), _full);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
