package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateMsgTLS13_asInterface) class T_certificateMsgTLS13_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13);
            var x = (_m : stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13);
            x._raw = __tmp__?._raw;
            x._certificate = __tmp__?._certificate;
            x._ocspStapling = __tmp__?._ocspStapling;
            x._scts = __tmp__?._scts;
        };
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _context:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (((((!@:check2 _s.skip((4 : stdgo.GoInt)) || !@:check2 _s.readUint8LengthPrefixed((stdgo.Go.setRef(_context) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool) || !_context.empty() : Bool) || !stdgo._internal.crypto.tls.Tls__unmarshalcertificate._unmarshalCertificate((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._certificate) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>)) : Bool) || !_s.empty() : Bool)) {
            return false;
        };
        (@:checkr _m ?? throw "null pointer dereference")._scts = (@:checkr _m ?? throw "null pointer dereference")._certificate.signedCertificateTimestamps != null;
        (@:checkr _m ?? throw "null pointer dereference")._ocspStapling = (@:checkr _m ?? throw "null pointer dereference")._certificate.oCSPStaple != null;
        return true;
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13.T_certificateMsgTLS13> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        @:check2 _b.addUint8((11 : stdgo.GoUInt8));
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            @:check2r _b.addUint8((0 : stdgo.GoUInt8));
            var _certificate = ((@:checkr _m ?? throw "null pointer dereference")._certificate?.__copy__() : stdgo._internal.crypto.tls.Tls_certificate.Certificate);
            if (!(@:checkr _m ?? throw "null pointer dereference")._ocspStapling) {
                _certificate.oCSPStaple = (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            if (!(@:checkr _m ?? throw "null pointer dereference")._scts) {
                _certificate.signedCertificateTimestamps = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            };
            stdgo._internal.crypto.tls.Tls__marshalcertificate._marshalCertificate(_b, _certificate?.__copy__());
        });
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = @:check2 _b.bytes();
            (@:checkr _m ?? throw "null pointer dereference")._raw = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : _err };
    }
}
