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
function _isValidIPMask(_mask:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _seenZero = (false : Bool);
        for (__1 => _b in _mask) {
            if (_seenZero) {
                if (_b != ((0 : stdgo.GoUInt8))) {
                    return false;
                };
                continue;
            };
            {
                final __value__ = _b;
                if (__value__ == ((0 : stdgo.GoUInt8)) || __value__ == ((128 : stdgo.GoUInt8)) || __value__ == ((192 : stdgo.GoUInt8)) || __value__ == ((224 : stdgo.GoUInt8)) || __value__ == ((240 : stdgo.GoUInt8)) || __value__ == ((248 : stdgo.GoUInt8)) || __value__ == ((252 : stdgo.GoUInt8)) || __value__ == ((254 : stdgo.GoUInt8))) {
                    _seenZero = true;
                } else if (__value__ == ((255 : stdgo.GoUInt8))) {} else {
                    return false;
                };
            };
        };
        return true;
    }
