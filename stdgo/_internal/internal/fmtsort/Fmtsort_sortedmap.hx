package stdgo._internal.internal.fmtsort;
@:structInit @:using(stdgo._internal.internal.fmtsort.Fmtsort_sortedmap_static_extension.SortedMap_static_extension) class SortedMap {
    public var key : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
    public var value : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
    public function new(?key:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>, ?value:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SortedMap(key, value);
    }
}
