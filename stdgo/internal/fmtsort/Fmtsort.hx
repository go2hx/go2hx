package stdgo.internal.fmtsort;
typedef SortedMap = stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap;
typedef SortedMapPointer = stdgo._internal.internal.fmtsort.Fmtsort_sortedmappointer.SortedMapPointer;
/**
    * Package fmtsort provides a general stable ordering mechanism
    * for maps, on behalf of the fmt and text/template packages.
    * It is not guaranteed to be efficient and works only for types
    * that are valid map keys.
**/
class Fmtsort {
    static public inline function compare(_a:stdgo._internal.reflect.Reflect_value.Value, _b:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoInt return stdgo._internal.internal.fmtsort.Fmtsort_compare.compare(_a, _b);
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
    static public inline function sort(_mapValue:stdgo._internal.reflect.Reflect_value.Value):stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap> return stdgo._internal.internal.fmtsort.Fmtsort_sort.sort(_mapValue);
}
