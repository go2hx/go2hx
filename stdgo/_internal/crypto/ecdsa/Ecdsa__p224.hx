package stdgo._internal.crypto.ecdsa;
function _p224():stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>>> {
        @:check2 stdgo._internal.crypto.ecdsa.Ecdsa__p224once._p224Once.do_(function():Void {
            stdgo._internal.crypto.ecdsa.Ecdsa___p224.__p224 = (stdgo.Go.setRef(({ _newPoint : function():stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point> {
                return stdgo._internal.crypto.internal.nistec.Nistec_newp224point.newP224Point();
            } } : stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>>)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve.T_nistCurve<stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>>>);
            stdgo._internal.crypto.ecdsa.Ecdsa__precomputeparams._precomputeParams(stdgo._internal.crypto.ecdsa.Ecdsa___p224.__p224, stdgo._internal.crypto.elliptic.Elliptic_p224.p224());
        });
        return stdgo._internal.crypto.ecdsa.Ecdsa___p224.__p224;
    }
