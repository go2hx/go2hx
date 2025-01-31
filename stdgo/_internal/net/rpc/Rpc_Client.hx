package stdgo._internal.net.rpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.html.template.Template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.net.Net;
import stdgo._internal.io.Io;
import stdgo._internal.net.http.Http;
import stdgo._internal.go.token.Token;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_Client_static_extension.Client_static_extension) class Client {
    public var _codec : stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec = (null : stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec);
    public var _reqMutex : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _request : stdgo._internal.net.rpc.Rpc_Request.Request = ({} : stdgo._internal.net.rpc.Rpc_Request.Request);
    public var _mutex : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _seq : stdgo.GoUInt64 = 0;
    public var _pending : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>> = (null : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>);
    public var _closing : Bool = false;
    public var _shutdown : Bool = false;
    public function new(?_codec:stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec, ?_reqMutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_request:stdgo._internal.net.rpc.Rpc_Request.Request, ?_mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_seq:stdgo.GoUInt64, ?_pending:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>, ?_closing:Bool, ?_shutdown:Bool) {
        if (_codec != null) this._codec = _codec;
        if (_reqMutex != null) this._reqMutex = _reqMutex;
        if (_request != null) this._request = _request;
        if (_mutex != null) this._mutex = _mutex;
        if (_seq != null) this._seq = _seq;
        if (_pending != null) this._pending = _pending;
        if (_closing != null) this._closing = _closing;
        if (_shutdown != null) this._shutdown = _shutdown;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Client(_codec, _reqMutex, _request, _mutex, _seq, _pending, _closing, _shutdown);
    }
}
