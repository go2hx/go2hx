package stdgo.crypto.ecdsa;
class T_nistCurve_static_extension {
    static public function _pointToAffine(_curve:T_nistCurve<Dynamic>, _p:Dynamic):stdgo.Tuple.Tuple3<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_, stdgo.Error> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<Dynamic>>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve_static_extension.T_nistCurve_static_extension._pointToAffine(_curve, _p);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _pointFromAffine(_curve:T_nistCurve<Dynamic>, _x:stdgo._internal.math.big.Big_Int_.Int_, _y:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<Dynamic>>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve_static_extension.T_nistCurve_static_extension._pointFromAffine(_curve, _x, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
