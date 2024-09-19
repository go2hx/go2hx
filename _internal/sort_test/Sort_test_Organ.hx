package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:structInit class Organ {
    public var name : stdgo.GoString = "";
    public var weight : _internal.sort_test.Sort_test_Grams.Grams = ((0 : stdgo.GoInt) : _internal.sort_test.Sort_test_Grams.Grams);
    public function new(?name:stdgo.GoString, ?weight:_internal.sort_test.Sort_test_Grams.Grams) {
        if (name != null) this.name = name;
        if (weight != null) this.weight = weight;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Organ(name, weight);
    }
}
