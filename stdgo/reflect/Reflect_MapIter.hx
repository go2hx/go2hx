package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.MapIter_static_extension) abstract MapIter(stdgo._internal.reflect.Reflect_MapIter.MapIter) from stdgo._internal.reflect.Reflect_MapIter.MapIter to stdgo._internal.reflect.Reflect_MapIter.MapIter {
    public function new(?map:haxe.Constraints<Dynamic, Dynamic>, ?keys:Array<Dynamic>, ?values:Array<Dynamic>, ?t:stdgo._internal.internal.reflect.Reflect._Type, ?index:Int) this = new stdgo._internal.reflect.Reflect_MapIter.MapIter(map, keys, values, t, index);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
