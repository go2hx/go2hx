package stdgo._internal.crypto.tls;
function _supportsECDHE(_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, _supportedCurves:stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID>, _supportedPoints:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _supportsCurve = (false : Bool);
        for (__65 => _curve in _supportedCurves) {
            if (@:check2r _c._supportsCurve(_curve)) {
                _supportsCurve = true;
                break;
            };
        };
        var _supportsPointFormat = (false : Bool);
        for (__66 => _pointFormat in _supportedPoints) {
            if (_pointFormat == ((0 : stdgo.GoUInt8))) {
                _supportsPointFormat = true;
                break;
            };
        };
        if ((_supportedPoints.length) == ((0 : stdgo.GoInt))) {
            _supportsPointFormat = true;
        };
        return (_supportsCurve && _supportsPointFormat : Bool);
    }
