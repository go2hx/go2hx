package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
function _setDefaultValue(_v:stdgo._internal.reflect.Reflect_Value.Value, _params:stdgo._internal.encoding.asn1.Asn1_T_fieldParameters.T_fieldParameters):Bool {
        var _ok = false;
        if (!_params._optional) {
            return _ok;
        };
        _ok = true;
        if (_params._defaultValue == null) {
            return _ok;
        };
        if (stdgo._internal.encoding.asn1.Asn1__canHaveDefaultValue._canHaveDefaultValue(_v.kind())) {
            _v.setInt(_params._defaultValue.value);
        };
        return _ok;
    }
