package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.Writer_static_extension) abstract Writer(stdgo._internal.compress.flate.Flate_Writer.Writer) from stdgo._internal.compress.flate.Flate_Writer.Writer to stdgo._internal.compress.flate.Flate_Writer.Writer {
    public var _d(get, set) : T_compressor;
    function get__d():T_compressor return this._d;
    function set__d(v:T_compressor):T_compressor {
        this._d = v;
        return v;
    }
    public var _dict(get, set) : Array<std.UInt>;
    function get__dict():Array<std.UInt> return [for (i in this._dict) i];
    function set__dict(v:Array<std.UInt>):Array<std.UInt> {
        this._dict = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_d:T_compressor, ?_dict:Array<std.UInt>) this = new stdgo._internal.compress.flate.Flate_Writer.Writer(_d, ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
