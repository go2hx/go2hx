package stdgo.internal.coverage.encodemeta;
@:structInit @:using(stdgo.internal.coverage.encodemeta.Encodemeta.T_funcDesc_static_extension) abstract T_funcDesc(stdgo._internal.internal.coverage.encodemeta.Encodemeta_T_funcDesc.T_funcDesc) from stdgo._internal.internal.coverage.encodemeta.Encodemeta_T_funcDesc.T_funcDesc to stdgo._internal.internal.coverage.encodemeta.Encodemeta_T_funcDesc.T_funcDesc {
    public var _encoded(get, set) : Array<std.UInt>;
    function get__encoded():Array<std.UInt> return [for (i in this._encoded) i];
    function set__encoded(v:Array<std.UInt>):Array<std.UInt> {
        this._encoded = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_encoded:Array<std.UInt>) this = new stdgo._internal.internal.coverage.encodemeta.Encodemeta_T_funcDesc.T_funcDesc(([for (i in _encoded) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
