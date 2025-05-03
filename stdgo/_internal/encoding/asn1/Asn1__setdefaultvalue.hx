package stdgo._internal.encoding.asn1;
function _setDefaultValue(_v:stdgo._internal.reflect.Reflect_value.Value, _params:stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters):Bool {
        var _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L1009"
        if (!_params._optional) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L1010"
            return _ok;
        };
        _ok = true;
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L1013"
        if (_params._defaultValue == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L1014"
            return _ok;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L1016"
        if (stdgo._internal.encoding.asn1.Asn1__canhavedefaultvalue._canHaveDefaultValue(_v.kind())) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L1017"
            _v.setInt(_params._defaultValue.value);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L1019"
        return _ok;
    }
