package stdgo._internal.crypto.ecdsa;
function _p256():stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>>> {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L628"
        stdgo._internal.crypto.ecdsa.Ecdsa__p256once._p256Once.do_(function():Void {
            stdgo._internal.crypto.ecdsa.Ecdsa___p256.__p256 = (stdgo.Go.setRef(({ _newPoint : function():stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point> {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L630"
                return stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point();
            } } : stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>>>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L632"
            stdgo._internal.crypto.ecdsa.Ecdsa__precomputeparams._precomputeParams(stdgo._internal.crypto.ecdsa.Ecdsa___p256.__p256, stdgo._internal.crypto.elliptic.Elliptic_p256.p256());
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L634"
        return stdgo._internal.crypto.ecdsa.Ecdsa___p256.__p256;
    }
