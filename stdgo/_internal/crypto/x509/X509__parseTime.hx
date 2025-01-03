package stdgo._internal.crypto.x509;
function _parseTime(_der:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo.Error; } {
        var _t:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        if ((@:checkr _der ?? throw "null pointer dereference").peekASN1Tag((23 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            if (!@:check2r _der.readASN1UTCTime((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>))) {
                return { _0 : _t?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed UTCTime" : stdgo.GoString)) };
            };
        } else if ((@:checkr _der ?? throw "null pointer dereference").peekASN1Tag((24 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            if (!@:check2r _der.readASN1GeneralizedTime((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>))) {
                return { _0 : _t?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: malformed GeneralizedTime" : stdgo.GoString)) };
            };
        } else {
            return { _0 : _t?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported time format" : stdgo.GoString)) };
        };
        return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
    }
