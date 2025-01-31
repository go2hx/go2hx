package stdgo._internal.internal.fmtsort;
import stdgo._internal.sort.Sort;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(stdgo._internal.internal.fmtsort.Fmtsort_SortedMap_static_extension.SortedMap_static_extension) class SortedMap {
    public var key : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
    public var value : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>);
    public function new(?key:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>, ?value:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SortedMap(key, value);
    }
}
