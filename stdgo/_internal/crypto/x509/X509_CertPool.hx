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
@:structInit @:using(stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension) class CertPool {
    public var _byName : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>);
    public var _lazyCerts : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert>);
    public var _haveSum : stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool> = (null : stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>);
    public var _systemPool : Bool = false;
    public function new(?_byName:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>, ?_lazyCerts:stdgo.Slice<stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert>, ?_haveSum:stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>, ?_systemPool:Bool) {
        if (_byName != null) this._byName = _byName;
        if (_lazyCerts != null) this._lazyCerts = _lazyCerts;
        if (_haveSum != null) this._haveSum = _haveSum;
        if (_systemPool != null) this._systemPool = _systemPool;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CertPool(_byName, _lazyCerts, _haveSum, _systemPool);
    }
}
