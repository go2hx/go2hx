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
@:structInit @:using(stdgo._internal.crypto.x509.X509_T_rfc1423Algo_static_extension.T_rfc1423Algo_static_extension) class T_rfc1423Algo {
    public var _cipher : stdgo._internal.crypto.x509.X509_PEMCipher.PEMCipher = ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_PEMCipher.PEMCipher);
    public var _name : stdgo.GoString = "";
    public var _cipherFunc : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; } = null;
    public var _keySize : stdgo.GoInt = 0;
    public var _blockSize : stdgo.GoInt = 0;
    public function new(?_cipher:stdgo._internal.crypto.x509.X509_PEMCipher.PEMCipher, ?_name:stdgo.GoString, ?_cipherFunc:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; }, ?_keySize:stdgo.GoInt, ?_blockSize:stdgo.GoInt) {
        if (_cipher != null) this._cipher = _cipher;
        if (_name != null) this._name = _name;
        if (_cipherFunc != null) this._cipherFunc = _cipherFunc;
        if (_keySize != null) this._keySize = _keySize;
        if (_blockSize != null) this._blockSize = _blockSize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rfc1423Algo(_cipher, _name, _cipherFunc, _keySize, _blockSize);
    }
}
