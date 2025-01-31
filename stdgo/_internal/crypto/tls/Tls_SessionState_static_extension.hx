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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.SessionState_asInterface) class SessionState_static_extension {
    @:keep
    @:tdfield
    static public function bytes( _s:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = _s;
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        @:check2 _b.addUint16((@:checkr _s ?? throw "null pointer dereference")._version);
        if ((@:checkr _s ?? throw "null pointer dereference")._isClient) {
            @:check2 _b.addUint8((2 : stdgo.GoUInt8));
        } else {
            @:check2 _b.addUint8((1 : stdgo.GoUInt8));
        };
        @:check2 _b.addUint16((@:checkr _s ?? throw "null pointer dereference")._cipherSuite);
        stdgo._internal.crypto.tls.Tls__addUint64._addUint64((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>), (@:checkr _s ?? throw "null pointer dereference")._createdAt);
        @:check2 _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            @:check2r _b.addBytes((@:checkr _s ?? throw "null pointer dereference")._secret);
        });
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            for (__65 => _extra in (@:checkr _s ?? throw "null pointer dereference").extra) {
                @:check2r _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    @:check2r _b.addBytes(_extra);
                });
            };
        });
        if ((@:checkr _s ?? throw "null pointer dereference")._extMasterSecret) {
            @:check2 _b.addUint8((1 : stdgo.GoUInt8));
        } else {
            @:check2 _b.addUint8((0 : stdgo.GoUInt8));
        };
        if ((@:checkr _s ?? throw "null pointer dereference").earlyData) {
            @:check2 _b.addUint8((1 : stdgo.GoUInt8));
        } else {
            @:check2 _b.addUint8((0 : stdgo.GoUInt8));
        };
        stdgo._internal.crypto.tls.Tls__marshalCertificate._marshalCertificate((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>), ({ certificate : stdgo._internal.crypto.tls.Tls__certificatesToBytesSlice._certificatesToBytesSlice((@:checkr _s ?? throw "null pointer dereference")._peerCertificates), oCSPStaple : (@:checkr _s ?? throw "null pointer dereference")._ocspResponse, signedCertificateTimestamps : (@:checkr _s ?? throw "null pointer dereference")._scts } : stdgo._internal.crypto.tls.Tls_Certificate.Certificate));
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            for (__65 => _chain in (@:checkr _s ?? throw "null pointer dereference")._verifiedChains) {
                @:check2r _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        @:check2r _b.setError(stdgo._internal.errors.Errors_new_.new_(("tls: internal error: empty verified chain" : stdgo.GoString)));
                        return;
                    };
                    for (__66 => _cert in (_chain.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)) {
                        @:check2r _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            @:check2r _b.addBytes((@:checkr _cert ?? throw "null pointer dereference").raw);
                        });
                    };
                });
            };
        });
        if ((@:checkr _s ?? throw "null pointer dereference").earlyData) {
            @:check2 _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                @:check2r _b.addBytes(((@:checkr _s ?? throw "null pointer dereference")._alpnProtocol : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._isClient) {
            if (((@:checkr _s ?? throw "null pointer dereference")._version >= (772 : stdgo.GoUInt16) : Bool)) {
                stdgo._internal.crypto.tls.Tls__addUint64._addUint64((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>), (@:checkr _s ?? throw "null pointer dereference")._useBy);
                @:check2 _b.addUint32((@:checkr _s ?? throw "null pointer dereference")._ageAdd);
            };
        };
        return @:check2 _b.bytes();
    }
}
