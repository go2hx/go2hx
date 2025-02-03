package stdgo.internal.fmtsort;
@:structInit @:using(stdgo.internal.fmtsort.Fmtsort.SortedMap_static_extension) abstract SortedMap(stdgo._internal.internal.fmtsort.Fmtsort_SortedMap.SortedMap) from stdgo._internal.internal.fmtsort.Fmtsort_SortedMap.SortedMap to stdgo._internal.internal.fmtsort.Fmtsort_SortedMap.SortedMap {
    public var key(get, set) : Array<stdgo._internal.reflect.Reflect_Value.Value>;
    function get_key():Array<stdgo._internal.reflect.Reflect_Value.Value> return [for (i in this.key) i];
    function set_key(v:Array<stdgo._internal.reflect.Reflect_Value.Value>):Array<stdgo._internal.reflect.Reflect_Value.Value> {
        this.key = ([for (i in v) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        return v;
    }
    public var value(get, set) : Array<stdgo._internal.reflect.Reflect_Value.Value>;
    function get_value():Array<stdgo._internal.reflect.Reflect_Value.Value> return [for (i in this.value) i];
    function set_value(v:Array<stdgo._internal.reflect.Reflect_Value.Value>):Array<stdgo._internal.reflect.Reflect_Value.Value> {
        this.value = ([for (i in v) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
        return v;
    }
    public function new(?key:Array<stdgo._internal.reflect.Reflect_Value.Value>, ?value:Array<stdgo._internal.reflect.Reflect_Value.Value>) this = new stdgo._internal.internal.fmtsort.Fmtsort_SortedMap.SortedMap(([for (i in key) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>), ([for (i in value) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
