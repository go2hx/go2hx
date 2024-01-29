package stdgo.internal.fmtsort;
/**
    // Package fmtsort provides a general stable ordering mechanism
    // for maps, on behalf of the fmt and text/template packages.
    // It is not guaranteed to be efficient and works only for types
    // that are valid map keys.
**/
private var __go2hxdoc__package : Bool;
@:invalid typedef SortedMap = Dynamic;
inline function compare(a:stdgo._internal.reflect.Reflect.Value, b:stdgo._internal.reflect.Reflect.Value):Int throw "not implemented";
/**
    // Sort accepts a map and returns a SortedMap that has the same keys and
    // values but in a stable sorted order according to the keys, modulo issues
    // raised by unorderable key values such as NaNs.
    //
    // The ordering rules are more general than with Go's < operator:
    //
    //   - when applicable, nil compares low
    //   - ints, floats, and strings order by <
    //   - NaN compares less than non-NaN floats
    //   - bool compares false before true
    //   - complex compares real, then imag
    //   - pointers compare by machine address
    //   - channel values compare by machine address
    //   - structs compare each field in turn
    //   - arrays compare each element in turn.
    //     Otherwise identical arrays compare by length.
    //   - interface values compare first by reflect.Type describing the concrete type
    //     and then by concrete value as described in the previous rules.
**/
inline function sort(mapValue:stdgo._internal.reflect.Reflect.Value):SortedMap throw "not implemented";
@:invalid typedef SortedMap_asInterface = Dynamic;
@:invalid typedef SortedMap_static_extension = Dynamic;
