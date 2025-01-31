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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_finishedHash_static_extension.T_finishedHash_static_extension) class T_finishedHash {
    public var _client : stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash);
    public var _server : stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash);
    public var _clientMD5 : stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash);
    public var _serverMD5 : stdgo._internal.hash.Hash_Hash.Hash = (null : stdgo._internal.hash.Hash_Hash.Hash);
    public var _buffer : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _version : stdgo.GoUInt16 = 0;
    public var _prf : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void = null;
    public function new(?_client:stdgo._internal.hash.Hash_Hash.Hash, ?_server:stdgo._internal.hash.Hash_Hash.Hash, ?_clientMD5:stdgo._internal.hash.Hash_Hash.Hash, ?_serverMD5:stdgo._internal.hash.Hash_Hash.Hash, ?_buffer:stdgo.Slice<stdgo.GoUInt8>, ?_version:stdgo.GoUInt16, ?_prf:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void) {
        if (_client != null) this._client = _client;
        if (_server != null) this._server = _server;
        if (_clientMD5 != null) this._clientMD5 = _clientMD5;
        if (_serverMD5 != null) this._serverMD5 = _serverMD5;
        if (_buffer != null) this._buffer = _buffer;
        if (_version != null) this._version = _version;
        if (_prf != null) this._prf = _prf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_finishedHash(_client, _server, _clientMD5, _serverMD5, _buffer, _version, _prf);
    }
}
