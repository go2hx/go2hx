package stdgo._internal.crypto.tls;
import stdgo._internal.internal.cpu.Cpu;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.rc4.Rc4;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305;
import stdgo._internal.container.list.List;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.runtime.Runtime;
import _internal.golang_dot_org.x.crypto.hkdf.Hkdf;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.time.Time;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
import _internal.golang_dot_org.x.crypto.cryptobyte.Cryptobyte;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_certificateMsgTLS13_asInterface) class T_certificateMsgTLS13_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13);
            var x = (_m : stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13);
            x._raw = __tmp__?._raw;
            x._certificate = __tmp__?._certificate;
            x._ocspStapling = __tmp__?._ocspStapling;
            x._scts = __tmp__?._scts;
        };
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        var _context:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (((((!@:check2 _s.skip((4 : stdgo.GoInt)) || !@:check2 _s.readUint8LengthPrefixed((stdgo.Go.setRef(_context) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool) || !_context.empty() : Bool) || !stdgo._internal.crypto.tls.Tls__unmarshalCertificate._unmarshalCertificate((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._certificate) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>)) : Bool) || !_s.empty() : Bool)) {
            return false;
        };
        (@:checkr _m ?? throw "null pointer dereference")._scts = (@:checkr _m ?? throw "null pointer dereference")._certificate.signedCertificateTimestamps != null;
        (@:checkr _m ?? throw "null pointer dereference")._ocspStapling = (@:checkr _m ?? throw "null pointer dereference")._certificate.oCSPStaple != null;
        return true;
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        @:check2 _b.addUint8((11 : stdgo.GoUInt8));
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            @:check2r _b.addUint8((0 : stdgo.GoUInt8));
            var _certificate = ((@:checkr _m ?? throw "null pointer dereference")._certificate?.__copy__() : stdgo._internal.crypto.tls.Tls_Certificate.Certificate);
            if (!(@:checkr _m ?? throw "null pointer dereference")._ocspStapling) {
                _certificate.oCSPStaple = (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            if (!(@:checkr _m ?? throw "null pointer dereference")._scts) {
                _certificate.signedCertificateTimestamps = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
            };
            stdgo._internal.crypto.tls.Tls__marshalCertificate._marshalCertificate(_b, _certificate?.__copy__());
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
