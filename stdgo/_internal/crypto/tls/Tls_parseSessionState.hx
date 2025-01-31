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
function parseSessionState(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; } {
        var _ss = (stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_SessionState.SessionState() : stdgo._internal.crypto.tls.Tls_SessionState.SessionState)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        var __0:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), __1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), __2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
var _earlyData = __2, _extMasterSecret = __1, _typ = __0;
        var _earlyData__pointer__ = stdgo.Go.pointer(_earlyData);
        var _extMasterSecret__pointer__ = stdgo.Go.pointer(_extMasterSecret);
        var _typ__pointer__ = stdgo.Go.pointer(_typ);
        var _cert:stdgo._internal.crypto.tls.Tls_Certificate.Certificate = ({} : stdgo._internal.crypto.tls.Tls_Certificate.Certificate);
        var _extra:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (((((((((((!@:check2 _s.readUint16(stdgo.Go.pointer((@:checkr _ss ?? throw "null pointer dereference")._version)) || !@:check2 _s.readUint8(_typ__pointer__) : Bool) || (((_typ != (1 : stdgo.GoUInt8)) && (_typ != (2 : stdgo.GoUInt8)) : Bool)) : Bool) || !@:check2 _s.readUint16(stdgo.Go.pointer((@:checkr _ss ?? throw "null pointer dereference")._cipherSuite)) : Bool) || !stdgo._internal.crypto.tls.Tls__readUint64._readUint64((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), stdgo.Go.pointer((@:checkr _ss ?? throw "null pointer dereference")._createdAt)) : Bool) || !stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef((@:checkr _ss ?? throw "null pointer dereference")._secret) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || !@:check2 _s.readUint24LengthPrefixed((stdgo.Go.setRef(_extra) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool) || !@:check2 _s.readUint8(_extMasterSecret__pointer__) : Bool) || !@:check2 _s.readUint8(_earlyData__pointer__) : Bool) || ((@:checkr _ss ?? throw "null pointer dereference")._secret.length) == ((0 : stdgo.GoInt)) : Bool) || !stdgo._internal.crypto.tls.Tls__unmarshalCertificate._unmarshalCertificate((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_cert) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>)) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
        };
        while (!_extra.empty()) {
            var _e:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (!stdgo._internal.crypto.tls.Tls__readUint24LengthPrefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_extra) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_e) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            (@:checkr _ss ?? throw "null pointer dereference").extra = ((@:checkr _ss ?? throw "null pointer dereference").extra.__append__(_e));
        };
        {
            final __value__ = _extMasterSecret;
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                (@:checkr _ss ?? throw "null pointer dereference")._extMasterSecret = false;
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                (@:checkr _ss ?? throw "null pointer dereference")._extMasterSecret = true;
            } else {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
        };
        {
            final __value__ = _earlyData;
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                (@:checkr _ss ?? throw "null pointer dereference").earlyData = false;
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                (@:checkr _ss ?? throw "null pointer dereference").earlyData = true;
            } else {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
        };
        for (__65 => _cert in _cert.certificate) {
            var __tmp__ = @:check2r stdgo._internal.crypto.tls.Tls__globalCertCache._globalCertCache._newCert(_cert), _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            (@:checkr _ss ?? throw "null pointer dereference")._activeCertHandles = ((@:checkr _ss ?? throw "null pointer dereference")._activeCertHandles.__append__(_c));
            (@:checkr _ss ?? throw "null pointer dereference")._peerCertificates = ((@:checkr _ss ?? throw "null pointer dereference")._peerCertificates.__append__((@:checkr _c ?? throw "null pointer dereference")._cert));
        };
        (@:checkr _ss ?? throw "null pointer dereference")._ocspResponse = _cert.oCSPStaple;
        (@:checkr _ss ?? throw "null pointer dereference")._scts = _cert.signedCertificateTimestamps;
        var _chainList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (!@:check2 _s.readUint24LengthPrefixed((stdgo.Go.setRef(_chainList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
        };
        while (!_chainList.empty()) {
            var _certList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
            if (!@:check2 _chainList.readUint24LengthPrefixed((stdgo.Go.setRef(_certList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            var _chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
            if (((@:checkr _ss ?? throw "null pointer dereference")._peerCertificates.length) == ((0 : stdgo.GoInt))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            _chain = (_chain.__append__((@:checkr _ss ?? throw "null pointer dereference")._peerCertificates[(0 : stdgo.GoInt)]));
            while (!_certList.empty()) {
                var _cert:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                if (!stdgo._internal.crypto.tls.Tls__readUint24LengthPrefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_certList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_cert) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
                };
                var __tmp__ = @:check2r stdgo._internal.crypto.tls.Tls__globalCertCache._globalCertCache._newCert(_cert), _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                (@:checkr _ss ?? throw "null pointer dereference")._activeCertHandles = ((@:checkr _ss ?? throw "null pointer dereference")._activeCertHandles.__append__(_c));
                _chain = (_chain.__append__((@:checkr _c ?? throw "null pointer dereference")._cert));
            };
            (@:checkr _ss ?? throw "null pointer dereference")._verifiedChains = ((@:checkr _ss ?? throw "null pointer dereference")._verifiedChains.__append__(_chain));
        };
        if ((@:checkr _ss ?? throw "null pointer dereference").earlyData) {
            var _alpn:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (!stdgo._internal.crypto.tls.Tls__readUint8LengthPrefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_alpn) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            (@:checkr _ss ?? throw "null pointer dereference")._alpnProtocol = (_alpn : stdgo.GoString)?.__copy__();
        };
        {
            var _isClient = (_typ == ((2 : stdgo.GoUInt8)) : Bool);
            if (!_isClient) {
                if (!_s.empty()) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
                };
                return { _0 : _ss, _1 : (null : stdgo.Error) };
            };
        };
        (@:checkr _ss ?? throw "null pointer dereference")._isClient = true;
        if (((@:checkr _ss ?? throw "null pointer dereference")._peerCertificates.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: no server certificates in client session" : stdgo.GoString)) };
        };
        if (((@:checkr _ss ?? throw "null pointer dereference")._version < (772 : stdgo.GoUInt16) : Bool)) {
            if (!_s.empty()) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
            };
            return { _0 : _ss, _1 : (null : stdgo.Error) };
        };
        if (((!@:check2 _s.readUint64(stdgo.Go.pointer((@:checkr _ss ?? throw "null pointer dereference")._useBy)) || !@:check2 _s.readUint32(stdgo.Go.pointer((@:checkr _ss ?? throw "null pointer dereference")._ageAdd)) : Bool) || !_s.empty() : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("tls: invalid session encoding" : stdgo.GoString)) };
        };
        return { _0 : _ss, _1 : (null : stdgo.Error) };
    }
