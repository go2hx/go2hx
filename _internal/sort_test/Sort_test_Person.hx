package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:structInit @:using(_internal.sort_test.Sort_test_Person_static_extension.Person_static_extension) class Person {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?age:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Person(name, age);
    }
}
