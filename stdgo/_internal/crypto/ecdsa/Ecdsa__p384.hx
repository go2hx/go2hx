package stdgo._internal.crypto.ecdsa;
function _p384():stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P384Point.P384Point>>> {
        stdgo._internal.crypto.ecdsa.Ecdsa__p384Once._p384Once.do_(function():Void {
            stdgo._internal.crypto.ecdsa.Ecdsa___p384.__p384 = (stdgo.Go.setRef(({ _newPoint : function():stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P384Point.P384Point> {
                return _internal.crypto.internal.nistec.Nistec_newP384Point.newP384Point();
            } } : stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P384Point.P384Point>>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P384Point.P384Point>>>);
            stdgo._internal.crypto.ecdsa.Ecdsa__precomputeParams._precomputeParams(stdgo._internal.crypto.ecdsa.Ecdsa___p384.__p384, stdgo._internal.crypto.elliptic.Elliptic_p384.p384());
        });
        return stdgo._internal.crypto.ecdsa.Ecdsa___p384.__p384;
    }
