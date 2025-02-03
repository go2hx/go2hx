package stdgo.sort;
class IntSlice_static_extension {
    static public function sort(_x:IntSlice):Void {
        stdgo._internal.sort.Sort_IntSlice_static_extension.IntSlice_static_extension.sort(_x);
    }
    static public function swap(_x:IntSlice, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.sort.Sort_IntSlice_static_extension.IntSlice_static_extension.swap(_x, _i, _j);
    }
    static public function less(_x:IntSlice, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.sort.Sort_IntSlice_static_extension.IntSlice_static_extension.less(_x, _i, _j);
    }
    static public function len(_x:IntSlice):StdTypes.Int {
        return stdgo._internal.sort.Sort_IntSlice_static_extension.IntSlice_static_extension.len(_x);
    }
    static public function search(_p:IntSlice, _x:StdTypes.Int):StdTypes.Int {
        final _x = (_x : stdgo.GoInt);
        return stdgo._internal.sort.Sort_IntSlice_static_extension.IntSlice_static_extension.search(_p, _x);
    }
}
