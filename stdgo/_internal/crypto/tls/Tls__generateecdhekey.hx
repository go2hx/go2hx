package stdgo._internal.crypto.tls;
function _generateECDHEKey(_rand:stdgo._internal.io.Io_reader.Reader, _curveID:stdgo._internal.crypto.tls.Tls_curveid.CurveID):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.crypto.tls.Tls__curveforcurveid._curveForCurveID(_curveID), _curve:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: internal error: unsupported curve" : stdgo.GoString)) };
        };
        return _curve.generateKey(_rand);
    }
