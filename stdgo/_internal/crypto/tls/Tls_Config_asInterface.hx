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
class Config_asInterface {
    @:keep
    @:tdfield
    public dynamic function _decryptTicket(_encrypted:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._decryptTicket(_encrypted, _ticketKeys);
    @:keep
    @:tdfield
    public dynamic function decryptTicket(_identity:stdgo.Slice<stdgo.GoUInt8>, _cs:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; } return @:_0 __self__.value.decryptTicket(_identity, _cs);
    @:keep
    @:tdfield
    public dynamic function _encryptTicket(_state:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._encryptTicket(_state, _ticketKeys);
    @:keep
    @:tdfield
    public dynamic function encryptTicket(_cs:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.encryptTicket(_cs, _ss);
    @:keep
    @:tdfield
    public dynamic function _writeKeyLog(_label:stdgo.GoString, _clientRandom:stdgo.Slice<stdgo.GoUInt8>, _secret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._writeKeyLog(_label, _clientRandom, _secret);
    @:keep
    @:tdfield
    public dynamic function buildNameToCertificate():Void @:_0 __self__.value.buildNameToCertificate();
    @:keep
    @:tdfield
    public dynamic function _getCertificate(_clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; } return @:_0 __self__.value._getCertificate(_clientHello);
    @:keep
    @:tdfield
    public dynamic function _mutualVersion(_isClient:Bool, _peerVersions:stdgo.Slice<stdgo.GoUInt16>):{ var _0 : stdgo.GoUInt16; var _1 : Bool; } return @:_0 __self__.value._mutualVersion(_isClient, _peerVersions);
    @:keep
    @:tdfield
    public dynamic function _supportsCurve(_curve:stdgo._internal.crypto.tls.Tls_CurveID.CurveID):Bool return @:_0 __self__.value._supportsCurve(_curve);
    @:keep
    @:tdfield
    public dynamic function _curvePreferences():stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID> return @:_0 __self__.value._curvePreferences();
    @:keep
    @:tdfield
    public dynamic function _maxSupportedVersion(_isClient:Bool):stdgo.GoUInt16 return @:_0 __self__.value._maxSupportedVersion(_isClient);
    @:keep
    @:tdfield
    public dynamic function _supportedVersions(_isClient:Bool):stdgo.Slice<stdgo.GoUInt16> return @:_0 __self__.value._supportedVersions(_isClient);
    @:keep
    @:tdfield
    public dynamic function _cipherSuites():stdgo.Slice<stdgo.GoUInt16> return @:_0 __self__.value._cipherSuites();
    @:keep
    @:tdfield
    public dynamic function _time():stdgo._internal.time.Time_Time.Time return @:_0 __self__.value._time();
    @:keep
    @:tdfield
    public dynamic function _rand():stdgo._internal.io.Io_Reader.Reader return @:_0 __self__.value._rand();
    @:keep
    @:tdfield
    public dynamic function setSessionTicketKeys(_keys:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>):Void @:_0 __self__.value.setSessionTicketKeys(_keys);
    @:keep
    @:tdfield
    public dynamic function _ticketKeys(_configForClient:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey> return @:_0 __self__.value._ticketKeys(_configForClient);
    @:keep
    @:tdfield
    public dynamic function _initLegacySessionTicketKeyRLocked():Void @:_0 __self__.value._initLegacySessionTicketKeyRLocked();
    @:keep
    @:tdfield
    public dynamic function clone():stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> return @:_0 __self__.value.clone();
    @:keep
    @:tdfield
    public dynamic function _ticketKeyFromBytes(_b:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey return @:_0 __self__.value._ticketKeyFromBytes(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_ConfigPointer.ConfigPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
