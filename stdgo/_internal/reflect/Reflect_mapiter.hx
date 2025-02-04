package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_mapiter_static_extension.MapIter_static_extension) class MapIter {
    @:local
    var map : haxe.Constraints.IMap<Dynamic, Dynamic>;
    @:local
    var keys : Array<Dynamic>;
    @:local
    var values : Array<Dynamic>;
    @:local
    var t : stdgo._internal.internal.reflect.Reflect._Type;
    @:local
    var index : Int = 0;
    public function new(?map:haxe.Constraints.IMap<Dynamic, Dynamic>, ?keys:Array<Dynamic>, ?values:Array<Dynamic>, ?t:stdgo._internal.internal.reflect.Reflect._Type, ?index:Int) {
        if (map != null) this.map = map;
        if (keys != null) this.keys = keys;
        if (values != null) this.values = values;
        if (t != null) this.t = t;
        if (index != null) this.index = index;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MapIter(map, keys, values, t, index);
    }
}
