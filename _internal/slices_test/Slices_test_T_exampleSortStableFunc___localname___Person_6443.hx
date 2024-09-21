package _internal.slices_test;
@:structInit class T_exampleSortStableFunc___localname___Person_6443 {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?age:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleSortStableFunc___localname___Person_6443(name, age);
    }
}
