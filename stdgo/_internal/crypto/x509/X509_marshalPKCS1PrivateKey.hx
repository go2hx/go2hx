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
function marshalPKCS1PrivateKey(_key:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>):stdgo.Slice<stdgo.GoUInt8> {
        @:check2r _key.precompute();
        var _version = (0 : stdgo.GoInt);
        if ((((@:checkr _key ?? throw "null pointer dereference").primes.length) > (2 : stdgo.GoInt) : Bool)) {
            _version = (1 : stdgo.GoInt);
        };
        var _priv = ({ version : _version, n : (@:checkr _key ?? throw "null pointer dereference").publicKey.n, e : (@:checkr _key ?? throw "null pointer dereference").publicKey.e, d : (@:checkr _key ?? throw "null pointer dereference").d, p : (@:checkr _key ?? throw "null pointer dereference").primes[(0 : stdgo.GoInt)], q : (@:checkr _key ?? throw "null pointer dereference").primes[(1 : stdgo.GoInt)], dp : (@:checkr _key ?? throw "null pointer dereference").precomputed.dp, dq : (@:checkr _key ?? throw "null pointer dereference").precomputed.dq, qinv : (@:checkr _key ?? throw "null pointer dereference").precomputed.qinv } : stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey);
        _priv.additionalPrimes = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime>(((@:checkr _key ?? throw "null pointer dereference").precomputed.cRTValues.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _key ?? throw "null pointer dereference").precomputed.cRTValues.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _key ?? throw "null pointer dereference").precomputed.cRTValues.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime)]) : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime>);
        for (_i => _values in (@:checkr _key ?? throw "null pointer dereference").precomputed.cRTValues) {
            _priv.additionalPrimes[(_i : stdgo.GoInt)].prime = (@:checkr _key ?? throw "null pointer dereference").primes[((2 : stdgo.GoInt) + _i : stdgo.GoInt)];
            _priv.additionalPrimes[(_i : stdgo.GoInt)].exp = _values.exp;
            _priv.additionalPrimes[(_i : stdgo.GoInt)].coeff = _values.coeff;
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_priv))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __1:stdgo.Error = __tmp__._1;
        return _b;
    }
