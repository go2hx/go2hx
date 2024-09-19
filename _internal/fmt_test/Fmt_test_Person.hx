package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.fmt_test.Fmt_test_Person_static_extension.Person_static_extension) class Person {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoUInt = 0;
    public var addr : stdgo.Ref<_internal.fmt_test.Fmt_test_Address.Address> = (null : stdgo.Ref<_internal.fmt_test.Fmt_test_Address.Address>);
    public function new(?name:stdgo.GoString, ?age:stdgo.GoUInt, ?addr:stdgo.Ref<_internal.fmt_test.Fmt_test_Address.Address>) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Person(name, age, addr);
    }
}
