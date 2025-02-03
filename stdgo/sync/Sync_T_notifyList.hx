package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.T_notifyList_static_extension) abstract T_notifyList(stdgo._internal.sync.Sync_T_notifyList.T_notifyList) from stdgo._internal.sync.Sync_T_notifyList.T_notifyList to stdgo._internal.sync.Sync_T_notifyList.T_notifyList {
    public var _wait(get, set) : std.UInt;
    function get__wait():std.UInt return this._wait;
    function set__wait(v:std.UInt):std.UInt {
        this._wait = (v : stdgo.GoUInt32);
        return v;
    }
    public var _notify(get, set) : std.UInt;
    function get__notify():std.UInt return this._notify;
    function set__notify(v:std.UInt):std.UInt {
        this._notify = (v : stdgo.GoUInt32);
        return v;
    }
    public var _lock(get, set) : stdgo.GoUIntptr;
    function get__lock():stdgo.GoUIntptr return this._lock;
    function set__lock(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._lock = (v : stdgo.GoUIntptr);
        return v;
    }
    public var _head(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__head():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._head;
    function set__head(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._head = v;
        return v;
    }
    public var _tail(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__tail():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._tail;
    function set__tail(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._tail = v;
        return v;
    }
    public function new(?_wait:std.UInt, ?_notify:std.UInt, ?_lock:stdgo.GoUIntptr, ?_head:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_tail:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.Sync_T_notifyList.T_notifyList((_wait : stdgo.GoUInt32), (_notify : stdgo.GoUInt32), (_lock : stdgo.GoUIntptr), _head, _tail);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
