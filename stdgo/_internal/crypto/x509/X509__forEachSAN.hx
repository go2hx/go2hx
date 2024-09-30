package stdgo._internal.crypto.x509;
function _forEachSAN(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_, _callback:(stdgo.GoInt, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error):stdgo.Error {
        if (!_der.readASN1((stdgo.Go.setRef(_der) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            return stdgo._internal.errors.Errors_new_.new_(("x509: invalid subject alternative names" : stdgo.GoString));
        };
        while (!_der.empty()) {
            var _san:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
            var _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag);
            if (!_der.readAnyASN1((stdgo.Go.setRef(_san) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), stdgo.Go.pointer(_tag))) {
                return stdgo._internal.errors.Errors_new_.new_(("x509: invalid subject alternative name" : stdgo.GoString));
            };
            {
                var _err = (_callback(((_tag ^ (128 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag) : stdgo.GoInt), _san) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
