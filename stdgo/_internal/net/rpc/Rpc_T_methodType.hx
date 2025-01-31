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
@:structInit @:using(stdgo._internal.net.rpc.Rpc_T_methodType_static_extension.T_methodType_static_extension) class T_methodType {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _method : stdgo._internal.reflect.Reflect_Method.Method = ({} : stdgo._internal.reflect.Reflect_Method.Method);
    public var argType : stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
    public var replyType : stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
    public var _numCalls : stdgo.GoUInt = 0;
    public function new(?mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_method:stdgo._internal.reflect.Reflect_Method.Method, ?argType:stdgo._internal.reflect.Reflect_Type_.Type_, ?replyType:stdgo._internal.reflect.Reflect_Type_.Type_, ?_numCalls:stdgo.GoUInt) {
        if (mutex != null) this.mutex = mutex;
        if (_method != null) this._method = _method;
        if (argType != null) this.argType = argType;
        if (replyType != null) this.replyType = replyType;
        if (_numCalls != null) this._numCalls = _numCalls;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var lock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_lock():() -> Void return @:check32 this.mutex.lock;
    public var tryLock(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_tryLock():() -> Bool return @:check32 this.mutex.tryLock;
    public var unlock(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_unlock():() -> Void return @:check32 this.mutex.unlock;
    public var _lockSlow(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__lockSlow():() -> Void return @:check32 this.mutex._lockSlow;
    public var _unlockSlow(get, never) : stdgo.GoInt32 -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__unlockSlow():stdgo.GoInt32 -> Void return @:check32 this.mutex._unlockSlow;
    public function __copy__() {
        return new T_methodType(mutex, _method, argType, replyType, _numCalls);
    }
}
