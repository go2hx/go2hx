package stdgo._internal.crypto.x509;
function _parseValidity(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo._internal.time.Time_time.Time; var _2 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.crypto.x509.X509__parsetime._parseTime((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)), _notBefore:stdgo._internal.time.Time_time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _2 : _err };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__parsetime._parseTime((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)), _notAfter:stdgo._internal.time.Time_time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _2 : _err };
        };
        return { _0 : _notBefore?.__copy__(), _1 : _notAfter?.__copy__(), _2 : (null : stdgo.Error) };
    }
