package stdgo._internal.encoding.gob;
function _float32FromBits(_u:stdgo.GoUInt64, _ovfl:stdgo.Error):stdgo.GoFloat64 {
        var _v = (stdgo._internal.encoding.gob.Gob__float64frombits._float64FromBits(_u) : stdgo.GoFloat64);
        var _av = (_v : stdgo.GoFloat64);
        if ((_av < (0 : stdgo.GoFloat64) : Bool)) {
            _av = -_av;
        };
        if ((((3.4028234663852886e+38 : stdgo.GoFloat64) < _av : Bool) && (_av <= (1.7976931348623157e+308 : stdgo.GoFloat64) : Bool) : Bool)) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_ovfl);
        };
        return _v;
    }
