package stdgo.internal;
/**
    Package fmtsort provides a general stable ordering mechanism
    for maps, on behalf of the fmt and text/template packages.
    It is not guaranteed to be efficient and works only for types
    that are valid map keys.
**/
private var __go2hxdoc__package : Bool;
@:forward @:forward.new abstract SortedMap(stdgo._internal.internal.fmtsort.Fmtsort.SortedMap) from stdgo._internal.internal.fmtsort.Fmtsort.SortedMap to stdgo._internal.internal.fmtsort.Fmtsort.SortedMap {

}
function compare(a:stdgo._internal.reflect.Reflect.Value, b:stdgo._internal.reflect.Reflect.Value):StdTypes.Int {
        return stdgo._internal.internal.fmtsort.Fmtsort.compare(a, b);
    }
/**
    Sort accepts a map and returns a SortedMap that has the same keys and
    values but in a stable sorted order according to the keys, modulo issues
    raised by unorderable key values such as NaNs.
    
    The ordering rules are more general than with Go's < operator:
    
      - when applicable, nil compares low
      - ints, floats, and strings order by <
      - NaN compares less than non-NaN floats
      - bool compares false before true
      - complex compares real, then imag
      - pointers compare by machine address
      - channel values compare by machine address
      - structs compare each field in turn
      - arrays compare each element in turn.
        Otherwise identical arrays compare by length.
      - interface values compare first by reflect.Type describing the concrete type
        and then by concrete value as described in the previous rules.
**/
function sort(mapValue:stdgo._internal.reflect.Reflect.Value):SortedMap {
        return stdgo._internal.internal.fmtsort.Fmtsort.sort(mapValue);
    }
@:forward @:forward.new abstract SortedMap_asInterface(stdgo._internal.internal.fmtsort.Fmtsort.SortedMap_asInterface) from stdgo._internal.internal.fmtsort.Fmtsort.SortedMap_asInterface to stdgo._internal.internal.fmtsort.Fmtsort.SortedMap_asInterface {

}
@:forward @:forward.new abstract SortedMap_static_extension(stdgo._internal.internal.fmtsort.Fmtsort.SortedMap_static_extension) from stdgo._internal.internal.fmtsort.Fmtsort.SortedMap_static_extension to stdgo._internal.internal.fmtsort.Fmtsort.SortedMap_static_extension {

}
