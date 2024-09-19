package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.Person_asInterface) class Person_static_extension {
    @:keep
    static public function goString( _p:_internal.fmt_test.Fmt_test_Person.Person):stdgo.GoString {
        @:recv var _p:_internal.fmt_test.Fmt_test_Person.Person = _p?.__copy__();
        if (_p.addr != null && ((_p.addr : Dynamic).__nil__ == null || !(_p.addr : Dynamic).__nil__)) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("Person{Name: %q, Age: %d, Addr: &Address{City: %q, State: %q, Country: %q}}" : stdgo.GoString), stdgo.Go.toInterface(_p.name), stdgo.Go.toInterface((_p.age : stdgo.GoInt)), stdgo.Go.toInterface(_p.addr.city), stdgo.Go.toInterface(_p.addr.state), stdgo.Go.toInterface(_p.addr.country))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("Person{Name: %q, Age: %d}" : stdgo.GoString), stdgo.Go.toInterface(_p.name), stdgo.Go.toInterface((_p.age : stdgo.GoInt)))?.__copy__();
    }
}
