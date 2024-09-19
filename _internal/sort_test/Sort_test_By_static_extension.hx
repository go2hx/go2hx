package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.sort_test.Sort_test.By_asInterface) class By_static_extension {
    @:keep
    static public function sort( _by:_internal.sort_test.Sort_test_By.By, _planets:stdgo.Slice<_internal.sort_test.Sort_test_Planet.Planet>):Void {
        @:recv var _by:_internal.sort_test.Sort_test_By.By = _by;
        var _ps = (stdgo.Go.setRef(({ _planets : _planets, _by : _by } : _internal.sort_test.Sort_test_T_planetSorter.T_planetSorter)) : stdgo.Ref<_internal.sort_test.Sort_test_T_planetSorter.T_planetSorter>);
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_ps));
    }
}
