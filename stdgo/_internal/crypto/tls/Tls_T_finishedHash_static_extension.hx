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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_finishedHash_asInterface) class T_finishedHash_static_extension {
    @:keep
    @:tdfield
    static public function _discardHandshakeBuffer( _h:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash> = _h;
        (@:checkr _h ?? throw "null pointer dereference")._buffer = (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _hashForClientCertificate( _h:stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash, _sigType:stdgo.GoUInt8, _hashAlg:stdgo._internal.crypto.Crypto_Hash.Hash):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash = _h?.__copy__();
        if (((((_h._version >= (771 : stdgo.GoUInt16) : Bool) || (_sigType == (228 : stdgo.GoUInt8)) : Bool)) && (_h._buffer == null) : Bool)) {
            throw stdgo.Go.toInterface(("tls: handshake hash for a client certificate requested after discarding the handshake buffer" : stdgo.GoString));
        };
        if (_sigType == ((228 : stdgo.GoUInt8))) {
            return _h._buffer;
        };
        if ((_h._version >= (771 : stdgo.GoUInt16) : Bool)) {
            var _hash = (_hashAlg.new_() : stdgo._internal.hash.Hash_Hash.Hash);
            _hash.write(_h._buffer);
            return _hash.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        if (_sigType == ((227 : stdgo.GoUInt8))) {
            return _h._server.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        return _h.sum();
    }
    @:keep
    @:tdfield
    static public function _serverSum( _h:stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash, _masterSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash = _h?.__copy__();
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((12 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _h._prf(_out, _masterSecret, stdgo._internal.crypto.tls.Tls__serverFinishedLabel._serverFinishedLabel, _h.sum());
        return _out;
    }
    @:keep
    @:tdfield
    static public function _clientSum( _h:stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash, _masterSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash = _h?.__copy__();
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((12 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _h._prf(_out, _masterSecret, stdgo._internal.crypto.tls.Tls__clientFinishedLabel._clientFinishedLabel, _h.sum());
        return _out;
    }
    @:keep
    @:tdfield
    static public function sum( _h:stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash = _h?.__copy__();
        if ((_h._version >= (771 : stdgo.GoUInt16) : Bool)) {
            return _h._client.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (36 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _out = _h._clientMD5.sum(_out);
        return _h._client.sum(_out);
    }
    @:keep
    @:tdfield
    static public function write( _h:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash>, _msg:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_finishedHash.T_finishedHash> = _h;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        (@:checkr _h ?? throw "null pointer dereference")._client.write(_msg);
        (@:checkr _h ?? throw "null pointer dereference")._server.write(_msg);
        if (((@:checkr _h ?? throw "null pointer dereference")._version < (771 : stdgo.GoUInt16) : Bool)) {
            (@:checkr _h ?? throw "null pointer dereference")._clientMD5.write(_msg);
            (@:checkr _h ?? throw "null pointer dereference")._serverMD5.write(_msg);
        };
        if ((@:checkr _h ?? throw "null pointer dereference")._buffer != null) {
            (@:checkr _h ?? throw "null pointer dereference")._buffer = ((@:checkr _h ?? throw "null pointer dereference")._buffer.__append__(...(_msg : Array<stdgo.GoUInt8>)));
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_msg.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
