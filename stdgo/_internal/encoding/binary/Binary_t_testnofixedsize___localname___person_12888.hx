package stdgo._internal.encoding.binary;
@:structInit @:using(stdgo._internal.encoding.binary.Binary_t_testnofixedsize___localname___person_12888_static_extension.T_testNoFixedSize___localname___Person_12888_static_extension) class T_testNoFixedSize___localname___Person_12888 {
    public var age : stdgo.GoInt = 0;
    public var weight : stdgo.GoFloat64 = 0;
    public var height : stdgo.GoFloat64 = 0;
    public function new(?age:stdgo.GoInt, ?weight:stdgo.GoFloat64, ?height:stdgo.GoFloat64) {
        if (age != null) this.age = age;
        if (weight != null) this.weight = weight;
        if (height != null) this.height = height;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testNoFixedSize___localname___Person_12888(age, weight, height);
    }
}
