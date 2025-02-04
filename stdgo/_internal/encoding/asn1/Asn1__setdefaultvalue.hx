package stdgo._internal.encoding.asn1;
function _setDefaultValue(_v:stdgo._internal.reflect.Reflect_value.Value, _params:stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters):Bool {
        var _ok = false;
        if (!_params._optional) {
            return _ok;
        };
        _ok = true;
        if (_params._defaultValue == null) {
            return _ok;
        };
        if (stdgo._internal.encoding.asn1.Asn1__canhavedefaultvalue._canHaveDefaultValue(_v.kind())) {
            _v.setInt(_params._defaultValue.value);
        };
        return _ok;
    }
