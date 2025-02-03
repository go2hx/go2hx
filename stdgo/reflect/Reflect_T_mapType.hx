package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.T_mapType_static_extension) abstract T_mapType(stdgo._internal.reflect.Reflect_T_mapType.T_mapType) from stdgo._internal.reflect.Reflect_T_mapType.T_mapType to stdgo._internal.reflect.Reflect_T_mapType.T_mapType {
    public var mapType(get, set) : stdgo._internal.internal.abi.Abi_MapType.MapType;
    function get_mapType():stdgo._internal.internal.abi.Abi_MapType.MapType return this.mapType;
    function set_mapType(v:stdgo._internal.internal.abi.Abi_MapType.MapType):stdgo._internal.internal.abi.Abi_MapType.MapType {
        this.mapType = v;
        return v;
    }
    public function new(?mapType:stdgo._internal.internal.abi.Abi_MapType.MapType) this = new stdgo._internal.reflect.Reflect_T_mapType.T_mapType(mapType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
