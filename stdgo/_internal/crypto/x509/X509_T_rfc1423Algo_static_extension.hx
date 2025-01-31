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
@:keep @:allow(stdgo._internal.crypto.x509.X509.T_rfc1423Algo_asInterface) class T_rfc1423Algo_static_extension {
    @:keep
    @:tdfield
    static public function _deriveKey( _c:stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo, _password:stdgo.Slice<stdgo.GoUInt8>, _salt:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo = _c?.__copy__();
        var _hash = (stdgo._internal.crypto.md5.Md5_new_.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_c._keySize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _digest:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_out.length) : Bool)) {
                _hash.reset();
_hash.write(_digest);
_hash.write(_password);
_hash.write(_salt);
_digest = _hash.sum((_digest.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
(_out.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_digest);
                _i = (_i + ((_digest.length)) : stdgo.GoInt);
            };
        };
        return _out;
    }
}
