package stdgo.sort;
class T_reverse_static_extension {
    static public function less(_r:T_reverse, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.sort.Sort_T_reverse_static_extension.T_reverse_static_extension.less(_r, _i, _j);
    }
    public static function swap(__self__:stdgo._internal.sort.Sort_T_reverse.T_reverse, _0:StdTypes.Int, _1:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        stdgo._internal.sort.Sort_T_reverse_static_extension.T_reverse_static_extension.swap(__self__, _0, _1);
    }
    public static function len(__self__:stdgo._internal.sort.Sort_T_reverse.T_reverse):StdTypes.Int {
        return stdgo._internal.sort.Sort_T_reverse_static_extension.T_reverse_static_extension.len(__self__);
    }
}
