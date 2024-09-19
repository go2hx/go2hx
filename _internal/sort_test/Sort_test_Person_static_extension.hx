package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.sort_test.Sort_test.Person_asInterface) class Person_static_extension {
    @:keep
    static public function string( _p:_internal.sort_test.Sort_test_Person.Person):stdgo.GoString {
        @:recv var _p:_internal.sort_test.Sort_test_Person.Person = _p?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s: %d" : stdgo.GoString), stdgo.Go.toInterface(_p.name), stdgo.Go.toInterface(_p.age))?.__copy__();
    }
}
