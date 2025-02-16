package stdgo;
@:structInit @:using(stdgo.internal.fmtsort.Fmtsort.SortedMap_static_extension) abstract SortedMap(stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap) from stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap to stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap {
    public var key(get, set) : Array<stdgo._internal.reflect.Reflect_value.Value>;
    function get_key():Array<stdgo._internal.reflect.Reflect_value.Value> return [for (i in this.key) i];
    function set_key(v:Array<stdgo._internal.reflect.Reflect_value.Value>):Array<stdgo._internal.reflect.Reflect_value.Value> {
        this.key = ([for (i in v) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        return v;
    }
    public var value(get, set) : Array<stdgo._internal.reflect.Reflect_value.Value>;
    function get_value():Array<stdgo._internal.reflect.Reflect_value.Value> return [for (i in this.value) i];
    function set_value(v:Array<stdgo._internal.reflect.Reflect_value.Value>):Array<stdgo._internal.reflect.Reflect_value.Value> {
        this.value = ([for (i in v) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        return v;
    }
    public function new(?key:Array<stdgo._internal.reflect.Reflect_value.Value>, ?value:Array<stdgo._internal.reflect.Reflect_value.Value>) this = new stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap(([for (i in key) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>), ([for (i in value) i] : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef SortedMapPointer = stdgo._internal.internal.fmtsort.Fmtsort_sortedmappointer.SortedMapPointer;
class SortedMap_static_extension {
    static public function swap(_o:SortedMap, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _o = (_o : stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.internal.fmtsort.Fmtsort_sortedmap_static_extension.SortedMap_static_extension.swap(_o, _i, _j);
    }
    static public function less(_o:SortedMap, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _o = (_o : stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.internal.fmtsort.Fmtsort_sortedmap_static_extension.SortedMap_static_extension.less(_o, _i, _j);
    }
    static public function len(_o:SortedMap):StdTypes.Int {
        final _o = (_o : stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap>);
        return stdgo._internal.internal.fmtsort.Fmtsort_sortedmap_static_extension.SortedMap_static_extension.len(_o);
    }
}
/**
    * Package fmtsort provides a general stable ordering mechanism
    * for maps, on behalf of the fmt and text/template packages.
    * It is not guaranteed to be efficient and works only for types
    * that are valid map keys.
**/
class Fmtsort {
    static public inline function compare(_a:stdgo._internal.reflect.Reflect_value.Value, _b:stdgo._internal.reflect.Reflect_value.Value):StdTypes.Int {
        return stdgo._internal.internal.fmtsort.Fmtsort_compare.compare(_a, _b);
    }
    /**
        * Sort accepts a map and returns a SortedMap that has the same keys and
        * values but in a stable sorted order according to the keys, modulo issues
        * raised by unorderable key values such as NaNs.
        * 
        * The ordering rules are more general than with Go's < operator:
        * 
        *   - when applicable, nil compares low
        *   - ints, floats, and strings order by <
        *   - NaN compares less than non-NaN floats
        *   - bool compares false before true
        *   - complex compares real, then imag
        *   - pointers compare by machine address
        *   - channel values compare by machine address
        *   - structs compare each field in turn
        *   - arrays compare each element in turn.
        *     Otherwise identical arrays compare by length.
        *   - interface values compare first by reflect.Type describing the concrete type
        *     and then by concrete value as described in the previous rules.
    **/
    static public inline function sort(_mapValue:stdgo._internal.reflect.Reflect_value.Value):SortedMap {
        return stdgo._internal.internal.fmtsort.Fmtsort_sort.sort(_mapValue);
    }
}
