package stdgo._internal.crypto.ecdsa;
function _p384():stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>>> {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L641"
        stdgo._internal.crypto.ecdsa.Ecdsa__p384once._p384Once.do_(function():Void {
            stdgo._internal.crypto.ecdsa.Ecdsa___p384.__p384 = (stdgo.Go.setRef(({ _newPoint : function():stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point> {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L643"
                return stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point();
            } } : stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>>>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L645"
            stdgo._internal.crypto.ecdsa.Ecdsa__precomputeparams._precomputeParams(stdgo._internal.crypto.ecdsa.Ecdsa___p384.__p384, stdgo._internal.crypto.elliptic.Elliptic_p384.p384());
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L647"
        return stdgo._internal.crypto.ecdsa.Ecdsa___p384.__p384;
    }
