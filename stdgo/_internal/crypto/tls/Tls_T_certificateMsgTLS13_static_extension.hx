package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateMsgTLS13_asInterface) class T_certificateMsgTLS13_static_extension {
    @:keep
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13);
            (_m : stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13)._raw = __tmp__._raw;
            (_m : stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13)._certificate = __tmp__._certificate;
            (_m : stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13)._ocspStapling = __tmp__._ocspStapling;
            (_m : stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13)._scts = __tmp__._scts;
        };
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        var _s__pointer__ = (stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        var _context:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _context__pointer__ = (stdgo.Go.setRef(_context) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (((((!_s.skip((4 : stdgo.GoInt)) || !_s.readUint8LengthPrefixed(_context__pointer__) : Bool) || !_context.empty() : Bool) || !stdgo._internal.crypto.tls.Tls__unmarshalCertificate._unmarshalCertificate(_s__pointer__, (stdgo.Go.setRef(_m._certificate) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>)) : Bool) || !_s.empty() : Bool)) {
            return false;
        };
        _m._scts = _m._certificate.signedCertificateTimestamps != null;
        _m._ocspStapling = _m._certificate.ocspstaple != null;
        return true;
    }
    @:keep
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13> = _m;
        if (_m._raw != null) {
            return { _0 : _m._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        _b.addUint8((11 : stdgo.GoUInt8));
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            _b.addUint8((0 : stdgo.GoUInt8));
            var _certificate = (_m._certificate?.__copy__() : stdgo._internal.crypto.tls.Tls_Certificate.Certificate);
            if (!_m._ocspStapling) {
                _certificate.ocspstaple = (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            if (!_m._scts) {
                _certificate.signedCertificateTimestamps = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            };
            stdgo._internal.crypto.tls.Tls__marshalCertificate._marshalCertificate(_b, _certificate?.__copy__());
        });
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _b.bytes();
            _m._raw = __tmp__._0;
            _err = __tmp__._1;
        };
        return { _0 : _m._raw, _1 : _err };
    }
}
