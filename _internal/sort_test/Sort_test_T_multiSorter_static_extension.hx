package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.sort_test.Sort_test.T_multiSorter_asInterface) class T_multiSorter_static_extension {
    @:keep
    static public function less( _ms:stdgo.Ref<_internal.sort_test.Sort_test_T_multiSorter.T_multiSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _ms:stdgo.Ref<_internal.sort_test.Sort_test_T_multiSorter.T_multiSorter> = _ms;
        var __0 = (stdgo.Go.setRef(_ms._changes[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.sort_test.Sort_test_Change.Change>), __1 = (stdgo.Go.setRef(_ms._changes[(_j : stdgo.GoInt)]) : stdgo.Ref<_internal.sort_test.Sort_test_Change.Change>);
var _q = __1, _p = __0;
        var _k:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _k = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_k < ((_ms._less.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _k++, {
                var _less = (_ms._less[(_k : stdgo.GoInt)] : _internal.sort_test.Sort_test_T_lessFunc.T_lessFunc);
                if (_less(_p, _q)) {
                    return true;
                } else if (_less(_q, _p)) {
                    return false;
                };
            });
        };
        return _ms._less[(_k : stdgo.GoInt)](_p, _q);
    }
    @:keep
    static public function swap( _ms:stdgo.Ref<_internal.sort_test.Sort_test_T_multiSorter.T_multiSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _ms:stdgo.Ref<_internal.sort_test.Sort_test_T_multiSorter.T_multiSorter> = _ms;
        {
            final __tmp__0 = _ms._changes[(_j : stdgo.GoInt)];
            final __tmp__1 = _ms._changes[(_i : stdgo.GoInt)];
            final __tmp__2 = _ms._changes;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _ms._changes;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function len( _ms:stdgo.Ref<_internal.sort_test.Sort_test_T_multiSorter.T_multiSorter>):stdgo.GoInt {
        @:recv var _ms:stdgo.Ref<_internal.sort_test.Sort_test_T_multiSorter.T_multiSorter> = _ms;
        return (_ms._changes.length);
    }
    @:keep
    static public function sort( _ms:stdgo.Ref<_internal.sort_test.Sort_test_T_multiSorter.T_multiSorter>, _changes:stdgo.Slice<_internal.sort_test.Sort_test_Change.Change>):Void {
        @:recv var _ms:stdgo.Ref<_internal.sort_test.Sort_test_T_multiSorter.T_multiSorter> = _ms;
        _ms._changes = _changes;
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_ms));
    }
}
