package stdgo._internal.crypto.ecdsa;
function _p256():stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P256Point.P256Point>>> {
        stdgo._internal.crypto.ecdsa.Ecdsa__p256Once._p256Once.do_(function():Void {
            stdgo._internal.crypto.ecdsa.Ecdsa___p256.__p256 = (stdgo.Go.setRef(({ _newPoint : function():stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P256Point.P256Point> {
                return _internal.crypto.internal.nistec.Nistec_newP256Point.newP256Point();
            } } : stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P256Point.P256Point>>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_T_nistCurve.T_nistCurve<stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P256Point.P256Point>>>);
            stdgo._internal.crypto.ecdsa.Ecdsa__precomputeParams._precomputeParams(stdgo._internal.crypto.ecdsa.Ecdsa___p256.__p256, stdgo._internal.crypto.elliptic.Elliptic_p256.p256());
        });
        return stdgo._internal.crypto.ecdsa.Ecdsa___p256.__p256;
    }
