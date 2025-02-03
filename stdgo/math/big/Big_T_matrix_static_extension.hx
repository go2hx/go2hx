package stdgo.math.big;
class T_matrix_static_extension {
    static public function string(_a:T_matrix):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>);
        return stdgo._internal.math.big.Big_T_matrix_static_extension.T_matrix_static_extension.string(_a);
    }
    static public function _eql(_a:T_matrix, _b:T_matrix):Bool {
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>);
        final _b = (_b : stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>);
        return stdgo._internal.math.big.Big_T_matrix_static_extension.T_matrix_static_extension._eql(_a, _b);
    }
    static public function _mul(_a:T_matrix, _b:T_matrix):T_matrix {
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>);
        final _b = (_b : stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>);
        return stdgo._internal.math.big.Big_T_matrix_static_extension.T_matrix_static_extension._mul(_a, _b);
    }
    static public function _set(_a:T_matrix, _i:StdTypes.Int, _j:StdTypes.Int, _x:Rat):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
        stdgo._internal.math.big.Big_T_matrix_static_extension.T_matrix_static_extension._set(_a, _i, _j, _x);
    }
    static public function _at(_a:T_matrix, _i:StdTypes.Int, _j:StdTypes.Int):Rat {
        final _a = (_a : stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.math.big.Big_T_matrix_static_extension.T_matrix_static_extension._at(_a, _i, _j);
    }
}
