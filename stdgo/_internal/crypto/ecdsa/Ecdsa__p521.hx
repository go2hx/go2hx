package stdgo._internal.crypto.ecdsa;
function _p521():stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>>> {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L654"
        stdgo._internal.crypto.ecdsa.Ecdsa__p521once._p521Once.do_(function():Void {
            stdgo._internal.crypto.ecdsa.Ecdsa___p521.__p521 = (stdgo.Go.setRef(({ _newPoint : function():stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point> {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L656"
                return stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point();
            } } : stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>>>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L658"
            stdgo._internal.crypto.ecdsa.Ecdsa__precomputeparams._precomputeParams(stdgo._internal.crypto.ecdsa.Ecdsa___p521.__p521, stdgo._internal.crypto.elliptic.Elliptic_p521.p521());
        });
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L660"
        return stdgo._internal.crypto.ecdsa.Ecdsa___p521.__p521;
    }
