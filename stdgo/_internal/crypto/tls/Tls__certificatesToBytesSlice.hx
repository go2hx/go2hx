package stdgo._internal.crypto.tls;
function _certificatesToBytesSlice(_certs:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        var _s = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((0 : stdgo.GoInt).toBasic(), (_certs.length)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (__65 => _c in _certs) {
            _s = (_s.__append__(_c.raw));
        };
        return _s;
    }