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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_quicState_static_extension.T_quicState_static_extension) class T_quicState {
    public var _events : stdgo.Slice<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>);
    public var _nextEvent : stdgo.GoInt = 0;
    public var _eventArr : stdgo.GoArray<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent> = new stdgo.GoArray<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>(8, 8, ...[for (i in 0 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent)]);
    public var _started : Bool = false;
    public var _signalc : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg> = (null : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>);
    public var _blockedc : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg> = (null : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>);
    public var _cancelc : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg> = (null : stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>);
    public var _cancel : stdgo._internal.context.Context_CancelFunc.CancelFunc = (null : stdgo._internal.context.Context_CancelFunc.CancelFunc);
    public var _readbuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _transportParams : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_events:stdgo.Slice<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>, ?_nextEvent:stdgo.GoInt, ?_eventArr:stdgo.GoArray<stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent>, ?_started:Bool, ?_signalc:stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>, ?_blockedc:stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>, ?_cancelc:stdgo.Chan<stdgo._internal.crypto.tls.Tls_T_endOfEarlyDataMsg.T_endOfEarlyDataMsg>, ?_cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc, ?_readbuf:stdgo.Slice<stdgo.GoUInt8>, ?_transportParams:stdgo.Slice<stdgo.GoUInt8>) {
        if (_events != null) this._events = _events;
        if (_nextEvent != null) this._nextEvent = _nextEvent;
        if (_eventArr != null) this._eventArr = _eventArr;
        if (_started != null) this._started = _started;
        if (_signalc != null) this._signalc = _signalc;
        if (_blockedc != null) this._blockedc = _blockedc;
        if (_cancelc != null) this._cancelc = _cancelc;
        if (_cancel != null) this._cancel = _cancel;
        if (_readbuf != null) this._readbuf = _readbuf;
        if (_transportParams != null) this._transportParams = _transportParams;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_quicState(_events, _nextEvent, _eventArr, _started, _signalc, _blockedc, _cancelc, _cancel, _readbuf, _transportParams);
    }
}
