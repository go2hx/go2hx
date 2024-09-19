package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:structInit @:using(_internal.sort_test.Sort_test_T_multiSorter_static_extension.T_multiSorter_static_extension) class T_multiSorter {
    public var _changes : stdgo.Slice<_internal.sort_test.Sort_test_Change.Change> = (null : stdgo.Slice<_internal.sort_test.Sort_test_Change.Change>);
    public var _less : stdgo.Slice<_internal.sort_test.Sort_test_T_lessFunc.T_lessFunc> = (null : stdgo.Slice<_internal.sort_test.Sort_test_T_lessFunc.T_lessFunc>);
    public function new(?_changes:stdgo.Slice<_internal.sort_test.Sort_test_Change.Change>, ?_less:stdgo.Slice<_internal.sort_test.Sort_test_T_lessFunc.T_lessFunc>) {
        if (_changes != null) this._changes = _changes;
        if (_less != null) this._less = _less;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_multiSorter(_changes, _less);
    }
}
