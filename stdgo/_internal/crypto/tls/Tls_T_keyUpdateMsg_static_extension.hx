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
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_keyUpdateMsg_asInterface) class T_keyUpdateMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg> = _m;
        (@:checkr _m ?? throw "null pointer dereference")._raw = _data;
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        var _updateRequested:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _updateRequested__pointer__ = stdgo.Go.pointer(_updateRequested);
        if (((!@:check2 _s.skip((4 : stdgo.GoInt)) || !@:check2 _s.readUint8(_updateRequested__pointer__) : Bool) || !_s.empty() : Bool)) {
            return false;
        };
        {
            final __value__ = _updateRequested;
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                (@:checkr _m ?? throw "null pointer dereference")._updateRequested = false;
            } else if (__value__ == ((1 : stdgo.GoUInt8))) {
                (@:checkr _m ?? throw "null pointer dereference")._updateRequested = true;
            } else {
                return false;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_keyUpdateMsg.T_keyUpdateMsg> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        @:check2 _b.addUint8((24 : stdgo.GoUInt8));
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            if ((@:checkr _m ?? throw "null pointer dereference")._updateRequested) {
                @:check2r _b.addUint8((1 : stdgo.GoUInt8));
            } else {
                @:check2r _b.addUint8((0 : stdgo.GoUInt8));
            };
        });
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = @:check2 _b.bytes();
            (@:checkr _m ?? throw "null pointer dereference")._raw = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : _err };
    }
}
