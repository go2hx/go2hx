package stdgo._internal.crypto.elliptic;
function _matchesSpecificCurve(_params:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>):{ var _0 : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve; var _1 : Bool; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L328"
        for (__1 => _c in (new stdgo.Slice<stdgo._internal.crypto.elliptic.Elliptic_curve.Curve>(4, 4, ...[stdgo.Go.asInterface(stdgo._internal.crypto.elliptic.Elliptic__p224._p224), stdgo.Go.asInterface(stdgo._internal.crypto.elliptic.Elliptic__p256._p256), stdgo.Go.asInterface(stdgo._internal.crypto.elliptic.Elliptic__p384._p384), stdgo.Go.asInterface(stdgo._internal.crypto.elliptic.Elliptic__p521._p521)]) : stdgo.Slice<stdgo._internal.crypto.elliptic.Elliptic_curve.Curve>)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L329"
            if (_params == (_c.params())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L330"
                return { _0 : _c, _1 : true };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L333"
        return { _0 : (null : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve), _1 : false };
    }
