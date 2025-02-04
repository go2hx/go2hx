package stdgo._internal.crypto.x509;
function _parseASN1String(_tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag, _value:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        {
            final __value__ = _tag;
            if (__value__ == ((20 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                return { _0 : (_value : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((19 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                for (__1 => _b in _value) {
                    if (!stdgo._internal.crypto.x509.X509__isprintable._isPrintable(_b)) {
                        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid PrintableString" : stdgo.GoString)) };
                    };
                };
                return { _0 : (_value : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((12 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                if (!stdgo._internal.unicode.utf8.Utf8_valid.valid(_value)) {
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid UTF-8 string" : stdgo.GoString)) };
                };
                return { _0 : (_value : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((30 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                if (((_value.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid BMPString" : stdgo.GoString)) };
                };
                {
                    var _l = (_value.length : stdgo.GoInt);
                    if ((((_l >= (2 : stdgo.GoInt) : Bool) && _value[(_l - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((0 : stdgo.GoUInt8)) : Bool) && (_value[(_l - (2 : stdgo.GoInt) : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
                        _value = (_value.__slice__(0, (_l - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
                var _s = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), ((_value.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
                while (((_value.length) > (0 : stdgo.GoInt) : Bool)) {
                    _s = (_s.__append__((((_value[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) + (_value[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16)));
                    _value = (_value.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                return { _0 : (stdgo._internal.unicode.utf16.Utf16_decode.decode(_s) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((22 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                var _s = ((_value : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_s?.__copy__()) != null) {
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid IA5String" : stdgo.GoString)) };
                };
                return { _0 : _s?.__copy__(), _1 : (null : stdgo.Error) };
            } else if (__value__ == ((18 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                for (__1 => _b in _value) {
                    if (!(((((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) || (_b == (32 : stdgo.GoUInt8)) : Bool))) {
                        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid NumericString" : stdgo.GoString)) };
                    };
                };
                return { _0 : (_value : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unsupported string type: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tag))) };
    }
