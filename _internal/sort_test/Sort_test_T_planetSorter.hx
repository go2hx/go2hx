package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:structInit @:using(_internal.sort_test.Sort_test_T_planetSorter_static_extension.T_planetSorter_static_extension) class T_planetSorter {
    public var _planets : stdgo.Slice<_internal.sort_test.Sort_test_Planet.Planet> = (null : stdgo.Slice<_internal.sort_test.Sort_test_Planet.Planet>);
    public var _by : (stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>, stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>) -> Bool = null;
    public function new(?_planets:stdgo.Slice<_internal.sort_test.Sort_test_Planet.Planet>, ?_by:(stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>, stdgo.Ref<_internal.sort_test.Sort_test_Planet.Planet>) -> Bool) {
        if (_planets != null) this._planets = _planets;
        if (_by != null) this._by = _by;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_planetSorter(_planets, _by);
    }
}
