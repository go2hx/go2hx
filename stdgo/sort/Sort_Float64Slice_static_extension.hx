package stdgo.sort;
class Float64Slice_static_extension {
    static public function sort(_x:Float64Slice):Void {
        stdgo._internal.sort.Sort_Float64Slice_static_extension.Float64Slice_static_extension.sort(_x);
    }
    static public function swap(_x:Float64Slice, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.sort.Sort_Float64Slice_static_extension.Float64Slice_static_extension.swap(_x, _i, _j);
    }
    static public function less(_x:Float64Slice, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.sort.Sort_Float64Slice_static_extension.Float64Slice_static_extension.less(_x, _i, _j);
    }
    static public function len(_x:Float64Slice):StdTypes.Int {
        return stdgo._internal.sort.Sort_Float64Slice_static_extension.Float64Slice_static_extension.len(_x);
    }
    static public function search(_p:Float64Slice, _x:StdTypes.Float):StdTypes.Int {
        final _x = (_x : stdgo.GoFloat64);
        return stdgo._internal.sort.Sort_Float64Slice_static_extension.Float64Slice_static_extension.search(_p, _x);
    }
}
