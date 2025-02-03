package stdgo.sort;
class StringSlice_static_extension {
    static public function sort(_x:StringSlice):Void {
        stdgo._internal.sort.Sort_StringSlice_static_extension.StringSlice_static_extension.sort(_x);
    }
    static public function swap(_x:StringSlice, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.sort.Sort_StringSlice_static_extension.StringSlice_static_extension.swap(_x, _i, _j);
    }
    static public function less(_x:StringSlice, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.sort.Sort_StringSlice_static_extension.StringSlice_static_extension.less(_x, _i, _j);
    }
    static public function len(_x:StringSlice):StdTypes.Int {
        return stdgo._internal.sort.Sort_StringSlice_static_extension.StringSlice_static_extension.len(_x);
    }
    static public function search(_p:StringSlice, _x:String):StdTypes.Int {
        final _x = (_x : stdgo.GoString);
        return stdgo._internal.sort.Sort_StringSlice_static_extension.StringSlice_static_extension.search(_p, _x);
    }
}
