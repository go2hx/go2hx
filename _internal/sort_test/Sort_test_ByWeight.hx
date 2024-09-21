package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:structInit @:using(_internal.sort_test.Sort_test_ByWeight_static_extension.ByWeight_static_extension) class ByWeight {
    @:embedded
    public var organs : _internal.sort_test.Sort_test_Organs.Organs = new _internal.sort_test.Sort_test_Organs.Organs(0, 0);
    public function new(?organs:_internal.sort_test.Sort_test_Organs.Organs) {
        if (organs != null) this.organs = organs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function len():stdgo.GoInt return this.organs.len();
    @:embedded
    public function swap(_i:stdgo.GoInt, _j:stdgo.GoInt) this.organs.swap(_i, _j);
    public function __copy__() {
        return new ByWeight(organs);
    }
}
