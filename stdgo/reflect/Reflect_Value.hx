package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.Value_static_extension) abstract Value(stdgo._internal.reflect.Reflect_Value.Value) from stdgo._internal.reflect.Reflect_Value.Value to stdgo._internal.reflect.Reflect_Value.Value {
    public function new(?value:stdgo.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:StdTypes.Int, ?underlyingKey:Dynamic, ?canAddrBool:Bool, ?notSetBool:Bool, ?string) this = new stdgo._internal.reflect.Reflect_Value.Value((value : stdgo.AnyInterface), underlyingValue, (underlyingIndex : stdgo.GoInt), underlyingKey, canAddrBool, notSetBool, string);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
