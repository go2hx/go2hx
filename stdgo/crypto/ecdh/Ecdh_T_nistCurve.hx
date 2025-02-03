package stdgo.crypto.ecdh;
@:structInit @:using(stdgo.crypto.ecdh.Ecdh.T_nistCurve_static_extension) abstract T_nistCurve(stdgo._internal.crypto.ecdh.Ecdh_T_nistCurve.T_nistCurve) from stdgo._internal.crypto.ecdh.Ecdh_T_nistCurve.T_nistCurve to stdgo._internal.crypto.ecdh.Ecdh_T_nistCurve.T_nistCurve {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _newPoint(get, set) : () -> Dynamic;
    function get__newPoint():() -> Dynamic return () -> this._newPoint();
    function set__newPoint(v:() -> Dynamic):() -> Dynamic {
        this._newPoint = v;
        return v;
    }
    public var _scalarOrder(get, set) : Array<std.UInt>;
    function get__scalarOrder():Array<std.UInt> return [for (i in this._scalarOrder) i];
    function set__scalarOrder(v:Array<std.UInt>):Array<std.UInt> {
        this._scalarOrder = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_name:String, ?_newPoint:() -> Dynamic, ?_scalarOrder:Array<std.UInt>) this = new stdgo._internal.crypto.ecdh.Ecdh_T_nistCurve.T_nistCurve((_name : stdgo.GoString), _newPoint, ([for (i in _scalarOrder) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
