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
function _toLowerCaseASCII(_in:stdgo.GoString):stdgo.GoString {
        var _isAlreadyLowerCase = (true : Bool);
        for (__1 => _c in _in) {
            if (_c == ((65533 : stdgo.GoInt32))) {
                _isAlreadyLowerCase = false;
                break;
            };
            if ((((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                _isAlreadyLowerCase = false;
                break;
            };
        };
        if (_isAlreadyLowerCase) {
            return _in?.__copy__();
        };
        var _out = (_in : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _c in _out) {
            if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                _out[(_i : stdgo.GoInt)] = (_out[(_i : stdgo.GoInt)] + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
        };
        return (_out : stdgo.GoString)?.__copy__();
    }
