package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.net.url.Url;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
function _alreadyInChain(_candidate:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _chain:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>):Bool {
        {};
        var _candidateSAN:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        for (__1 => _ext in (@:checkr _candidate ?? throw "null pointer dereference").extensions) {
            if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName)) {
                _candidateSAN = (stdgo.Go.setRef(_ext) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
                break;
            };
        };
        for (__2 => _cert in _chain) {
            if (!stdgo._internal.bytes.Bytes_equal.equal((@:checkr _candidate ?? throw "null pointer dereference").rawSubject, (@:checkr _cert ?? throw "null pointer dereference").rawSubject)) {
                continue;
            };
            if (!(stdgo.Go.typeAssert(((@:checkr _candidate ?? throw "null pointer dereference").publicKey : stdgo._internal.crypto.x509.X509_T__alreadyInChain___localname___pubKeyEqual_27559.T__alreadyInChain___localname___pubKeyEqual_27559)) : stdgo._internal.crypto.x509.X509_T__alreadyInChain___localname___pubKeyEqual_27559.T__alreadyInChain___localname___pubKeyEqual_27559).equal(stdgo.Go.toInterface((@:checkr _cert ?? throw "null pointer dereference").publicKey))) {
                continue;
            };
            var _certSAN:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension> = (null : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
            for (__3 => _ext in (@:checkr _cert ?? throw "null pointer dereference").extensions) {
                if (_ext.id.equal(stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName)) {
                    _certSAN = (stdgo.Go.setRef(_ext) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
                    break;
                };
            };
            if (((_candidateSAN == null || (_candidateSAN : Dynamic).__nil__) && (_certSAN == null || (_certSAN : Dynamic).__nil__) : Bool)) {
                return true;
            } else if (((_candidateSAN == null || (_candidateSAN : Dynamic).__nil__) || (_certSAN == null || (_certSAN : Dynamic).__nil__) : Bool)) {
                return false;
            };
            if (stdgo._internal.bytes.Bytes_equal.equal((@:checkr _candidateSAN ?? throw "null pointer dereference").value, (@:checkr _certSAN ?? throw "null pointer dereference").value)) {
                return true;
            };
        };
        return false;
    }
