package stdgo._internal.crypto.elliptic;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _matchesSpecificCurve(_params:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>):{ var _0 : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve; var _1 : Bool; } {
        for (__1 => _c in (new stdgo.Slice<stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve>(4, 4, ...[stdgo.Go.asInterface(stdgo._internal.crypto.elliptic.Elliptic__p224._p224), stdgo.Go.asInterface(stdgo._internal.crypto.elliptic.Elliptic__p256._p256), stdgo.Go.asInterface(stdgo._internal.crypto.elliptic.Elliptic__p384._p384), stdgo.Go.asInterface(stdgo._internal.crypto.elliptic.Elliptic__p521._p521)]) : stdgo.Slice<stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve>)) {
            if (_params == (_c.params())) {
                return { _0 : _c, _1 : true };
            };
        };
        return { _0 : (null : stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve), _1 : false };
    }
