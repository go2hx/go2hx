package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.Animal_asInterface) class Animal_static_extension {
    @:keep
    static public function string( _a:_internal.fmt_test.Fmt_test_Animal.Animal):stdgo.GoString {
        @:recv var _a:_internal.fmt_test.Fmt_test_Animal.Animal = _a?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v (%d)" : stdgo.GoString), stdgo.Go.toInterface(_a.name), stdgo.Go.toInterface(_a.age))?.__copy__();
    }
}
