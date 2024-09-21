package _internal.slices_test;
@:structInit class T_exampleSortFunc_multiField___localname___Person_5996 {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?age:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_exampleSortFunc_multiField___localname___Person_5996(name, age);
    }
}
