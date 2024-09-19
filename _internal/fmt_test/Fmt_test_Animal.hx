package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.fmt_test.Fmt_test_Animal_static_extension.Animal_static_extension) class Animal {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoUInt = 0;
    public function new(?name:stdgo.GoString, ?age:stdgo.GoUInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Animal(name, age);
    }
}
