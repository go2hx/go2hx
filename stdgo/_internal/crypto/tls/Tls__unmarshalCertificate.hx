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
function _unmarshalCertificate(_s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _certificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>):Bool {
        var _certList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (!@:check2r _s.readUint24LengthPrefixed((stdgo.Go.setRef(_certList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>))) {
            return false;
        };
        while (!_certList.empty()) {
            var _cert:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _extensions:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
            if ((!stdgo._internal.crypto.tls.Tls__readUint24LengthPrefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_certList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_cert) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || !@:check2 _certList.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool)) {
                return false;
            };
            (@:checkr _certificate ?? throw "null pointer dereference").certificate = ((@:checkr _certificate ?? throw "null pointer dereference").certificate.__append__(_cert));
            while (!_extensions.empty()) {
                var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                var _extension__pointer__ = stdgo.Go.pointer(_extension);
                var _extData:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                if ((!@:check2 _extensions.readUint16(_extension__pointer__) || !@:check2 _extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool)) {
                    return false;
                };
                if ((((@:checkr _certificate ?? throw "null pointer dereference").certificate.length) > (1 : stdgo.GoInt) : Bool)) {
                    continue;
                };
                {
                    final __value__ = _extension;
                    if (__value__ == ((5 : stdgo.GoUInt16))) {
                        var _statusType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                        var _statusType__pointer__ = stdgo.Go.pointer(_statusType);
                        if ((((!@:check2 _extData.readUint8(_statusType__pointer__) || _statusType != ((1 : stdgo.GoUInt8)) : Bool) || !stdgo._internal.crypto.tls.Tls__readUint24LengthPrefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef((@:checkr _certificate ?? throw "null pointer dereference").oCSPStaple) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || ((@:checkr _certificate ?? throw "null pointer dereference").oCSPStaple.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                    } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                        var _sctList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                        if ((!@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sctList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _sctList.empty() : Bool)) {
                            return false;
                        };
                        while (!_sctList.empty()) {
                            var _sct:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                            if ((!stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_sctList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_sct) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_sct.length == (0 : stdgo.GoInt)) : Bool)) {
                                return false;
                            };
                            (@:checkr _certificate ?? throw "null pointer dereference").signedCertificateTimestamps = ((@:checkr _certificate ?? throw "null pointer dereference").signedCertificateTimestamps.__append__(_sct));
                        };
                    } else {
                        continue;
                    };
                };
                if (!_extData.empty()) {
                    return false;
                };
            };
        };
        return true;
    }
