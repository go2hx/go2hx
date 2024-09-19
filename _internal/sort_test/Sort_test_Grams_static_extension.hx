package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.sort_test.Sort_test.Grams_asInterface) class Grams_static_extension {
    @:keep
    static public function string( _g:_internal.sort_test.Sort_test_Grams.Grams):stdgo.GoString {
        @:recv var _g:_internal.sort_test.Sort_test_Grams.Grams = _g;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%dg" : stdgo.GoString), stdgo.Go.toInterface((_g : stdgo.GoInt)))?.__copy__();
    }
}
