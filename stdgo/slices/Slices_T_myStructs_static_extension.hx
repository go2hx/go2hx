package stdgo.slices;
class T_myStructs_static_extension {
    static public function swap(_s:T_myStructs, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.slices.Slices_T_myStructs_static_extension.T_myStructs_static_extension.swap(_s, _i, _j);
    }
    static public function less(_s:T_myStructs, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.slices.Slices_T_myStructs_static_extension.T_myStructs_static_extension.less(_s, _i, _j);
    }
    static public function len(_s:T_myStructs):StdTypes.Int {
        return stdgo._internal.slices.Slices_T_myStructs_static_extension.T_myStructs_static_extension.len(_s);
    }
}
