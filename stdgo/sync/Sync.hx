package stdgo.sync;
var runtime_Semacquire(get, set) : stdgo.Pointer<stdgo.GoUInt32> -> Void;
private function get_runtime_Semacquire():stdgo.Pointer<stdgo.GoUInt32> -> Void return _0 -> stdgo._internal.sync.Sync.runtime_Semacquire(_0);
private function set_runtime_Semacquire(v:stdgo.Pointer<stdgo.GoUInt32> -> Void):stdgo.Pointer<stdgo.GoUInt32> -> Void {
        stdgo._internal.sync.Sync.runtime_Semacquire = v;
        return v;
    }
var runtime_Semrelease(get, set) : (stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void;
private function get_runtime_Semrelease():(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void return (_0, _1, _2) -> stdgo._internal.sync.Sync.runtime_Semrelease(_0, _1, _2);
private function set_runtime_Semrelease(v:(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void):(stdgo.Pointer<stdgo.GoUInt32>, Bool, stdgo.GoInt) -> Void {
        stdgo._internal.sync.Sync.runtime_Semrelease = v;
        return v;
    }
var runtime_procPin(get, set) : () -> stdgo.GoInt;
private function get_runtime_procPin():() -> stdgo.GoInt return () -> stdgo._internal.sync.Sync.runtime_procPin();
private function set_runtime_procPin(v:() -> stdgo.GoInt):() -> stdgo.GoInt {
        stdgo._internal.sync.Sync.runtime_procPin = v;
        return v;
    }
var runtime_procUnpin(get, set) : () -> Void;
private function get_runtime_procUnpin():() -> Void return () -> stdgo._internal.sync.Sync.runtime_procUnpin();
private function set_runtime_procUnpin(v:() -> Void):() -> Void {
        stdgo._internal.sync.Sync.runtime_procUnpin = v;
        return v;
    }
class PoolDequeue_static_extension {
    static public function popTail(t:PoolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.PoolDequeue_static_extension.popTail(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popHead(t:PoolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.PoolDequeue_static_extension.popHead(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pushHead(t:PoolDequeue, val:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.PoolDequeue_static_extension.pushHead(t, val);
    }
}
typedef PoolDequeue = stdgo._internal.sync.Sync.PoolDequeue;
class Locker_static_extension {
    static public function unlock(t:Locker):Void {
        stdgo._internal.sync.Sync.Locker_static_extension.unlock(t);
    }
    static public function lock(t:Locker):Void {
        stdgo._internal.sync.Sync.Locker_static_extension.lock(t);
    }
}
typedef Locker = stdgo._internal.sync.Sync.Locker;
@:structInit @:using(stdgo.sync.Sync.Cond_static_extension) abstract Cond(stdgo._internal.sync.Sync.Cond) from stdgo._internal.sync.Sync.Cond to stdgo._internal.sync.Sync.Cond {
    public var _noCopy(get, set) : stdgo._internal.sync.Sync.T_noCopy;
    function get__noCopy():stdgo._internal.sync.Sync.T_noCopy return this._noCopy;
    function set__noCopy(v:stdgo._internal.sync.Sync.T_noCopy):stdgo._internal.sync.Sync.T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var l(get, set) : stdgo._internal.sync.Sync.Locker;
    function get_l():stdgo._internal.sync.Sync.Locker return this.l;
    function set_l(v:stdgo._internal.sync.Sync.Locker):stdgo._internal.sync.Sync.Locker {
        this.l = v;
        return v;
    }
    public var _notify(get, set) : stdgo._internal.sync.Sync.T_notifyList;
    function get__notify():stdgo._internal.sync.Sync.T_notifyList return this._notify;
    function set__notify(v:stdgo._internal.sync.Sync.T_notifyList):stdgo._internal.sync.Sync.T_notifyList {
        this._notify = v;
        return v;
    }
    public var _checker(get, set) : stdgo._internal.sync.Sync.T_copyChecker;
    function get__checker():stdgo._internal.sync.Sync.T_copyChecker return this._checker;
    function set__checker(v:stdgo._internal.sync.Sync.T_copyChecker):stdgo._internal.sync.Sync.T_copyChecker {
        this._checker = v;
        return v;
    }
    public function new(?_noCopy:stdgo._internal.sync.Sync.T_noCopy, ?l:stdgo._internal.sync.Sync.Locker, ?_notify:stdgo._internal.sync.Sync.T_notifyList, ?_checker:stdgo._internal.sync.Sync.T_copyChecker) this = new stdgo._internal.sync.Sync.Cond(_noCopy, l, _notify, _checker);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.sync.Sync.T_noCopy_static_extension) abstract T_noCopy(stdgo._internal.sync.Sync.T_noCopy) from stdgo._internal.sync.Sync.T_noCopy to stdgo._internal.sync.Sync.T_noCopy {
    public function new() this = new stdgo._internal.sync.Sync.T_noCopy();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.Map__static_extension) abstract Map_(stdgo._internal.sync.Sync.Map_) from stdgo._internal.sync.Sync.Map_ to stdgo._internal.sync.Sync.Map_ {
    public var _mu(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get__mu():stdgo._internal.sync.Sync.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this._mu = v;
        return v;
    }
    public var _read(get, set) : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.sync.Sync.T_readOnly>;
    function get__read():stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.sync.Sync.T_readOnly> return this._read;
    function set__read(v:stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.sync.Sync.T_readOnly>):stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.sync.Sync.T_readOnly> {
        this._read = v;
        return v;
    }
    public var _dirty(get, set) : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync.T_entry>>;
    function get__dirty():stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync.T_entry>> return this._dirty;
    function set__dirty(v:stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync.T_entry>>):stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync.T_entry>> {
        this._dirty = v;
        return v;
    }
    public var _misses(get, set) : StdTypes.Int;
    function get__misses():StdTypes.Int return this._misses;
    function set__misses(v:StdTypes.Int):StdTypes.Int {
        this._misses = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync.Mutex, ?_read:stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.sync.Sync.T_readOnly>, ?_dirty:stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync.T_entry>>, ?_misses:StdTypes.Int) this = new stdgo._internal.sync.Sync.Map_(_mu, _read, _dirty, _misses);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_readOnly(stdgo._internal.sync.Sync.T_readOnly) from stdgo._internal.sync.Sync.T_readOnly to stdgo._internal.sync.Sync.T_readOnly {
    public var _m(get, set) : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync.T_entry>>;
    function get__m():stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync.T_entry>> return this._m;
    function set__m(v:stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync.T_entry>>):stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync.T_entry>> {
        this._m = v;
        return v;
    }
    public var _amended(get, set) : Bool;
    function get__amended():Bool return this._amended;
    function set__amended(v:Bool):Bool {
        this._amended = v;
        return v;
    }
    public function new(?_m:stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync.T_entry>>, ?_amended:Bool) this = new stdgo._internal.sync.Sync.T_readOnly(_m, _amended);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.sync.Sync.T_entry_static_extension) abstract T_entry(stdgo._internal.sync.Sync.T_entry) from stdgo._internal.sync.Sync.T_entry to stdgo._internal.sync.Sync.T_entry {
    public var _p(get, set) : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.AnyInterface>;
    function get__p():stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.AnyInterface> return this._p;
    function set__p(v:stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.AnyInterface>):stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.AnyInterface> {
        this._p = v;
        return v;
    }
    public function new(?_p:stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo.AnyInterface>) this = new stdgo._internal.sync.Sync.T_entry(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.Mutex_static_extension) abstract Mutex(stdgo._internal.sync.Sync.Mutex) from stdgo._internal.sync.Sync.Mutex to stdgo._internal.sync.Sync.Mutex {
    public var _state(get, set) : StdTypes.Int;
    function get__state():StdTypes.Int return this._state;
    function set__state(v:StdTypes.Int):StdTypes.Int {
        this._state = v;
        return v;
    }
    public var _sema(get, set) : std.UInt;
    function get__sema():std.UInt return this._sema;
    function set__sema(v:std.UInt):std.UInt {
        this._sema = v;
        return v;
    }
    public function new(?_state:StdTypes.Int, ?_sema:std.UInt, ?mutex) this = new stdgo._internal.sync.Sync.Mutex(_state, _sema, mutex);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.Once_static_extension) abstract Once(stdgo._internal.sync.Sync.Once) from stdgo._internal.sync.Sync.Once to stdgo._internal.sync.Sync.Once {
    public var _done(get, set) : std.UInt;
    function get__done():std.UInt return this._done;
    function set__done(v:std.UInt):std.UInt {
        this._done = v;
        return v;
    }
    public var _m(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get__m():stdgo._internal.sync.Sync.Mutex return this._m;
    function set__m(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this._m = v;
        return v;
    }
    public function new(?_done:std.UInt, ?_m:stdgo._internal.sync.Sync.Mutex) this = new stdgo._internal.sync.Sync.Once(_done, _m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.Pool_static_extension) abstract Pool(stdgo._internal.sync.Sync.Pool) from stdgo._internal.sync.Sync.Pool to stdgo._internal.sync.Sync.Pool {
    public var _noCopy(get, set) : stdgo._internal.sync.Sync.T_noCopy;
    function get__noCopy():stdgo._internal.sync.Sync.T_noCopy return this._noCopy;
    function set__noCopy(v:stdgo._internal.sync.Sync.T_noCopy):stdgo._internal.sync.Sync.T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _local(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__local():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._local;
    function set__local(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._local = v;
        return v;
    }
    public var _localSize(get, set) : stdgo.GoUIntptr;
    function get__localSize():stdgo.GoUIntptr return this._localSize;
    function set__localSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._localSize = v;
        return v;
    }
    public var _victim(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__victim():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._victim;
    function set__victim(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._victim = v;
        return v;
    }
    public var _victimSize(get, set) : stdgo.GoUIntptr;
    function get__victimSize():stdgo.GoUIntptr return this._victimSize;
    function set__victimSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._victimSize = v;
        return v;
    }
    public var new_(get, set) : () -> stdgo.AnyInterface;
    function get_new_():() -> stdgo.AnyInterface return () -> this.new_();
    function set_new_(v:() -> stdgo.AnyInterface):() -> stdgo.AnyInterface {
        this.new_ = v;
        return v;
    }
    public function new(?_noCopy:stdgo._internal.sync.Sync.T_noCopy, ?_local:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_localSize:stdgo.GoUIntptr, ?_victim:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_victimSize:stdgo.GoUIntptr, ?new_:() -> stdgo.AnyInterface, ?pool) this = new stdgo._internal.sync.Sync.Pool(_noCopy, _local, _localSize, _victim, _victimSize, new_, pool);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_poolLocalInternal(stdgo._internal.sync.Sync.T_poolLocalInternal) from stdgo._internal.sync.Sync.T_poolLocalInternal to stdgo._internal.sync.Sync.T_poolLocalInternal {
    public var _private(get, set) : stdgo.AnyInterface;
    function get__private():stdgo.AnyInterface return this._private;
    function set__private(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._private = v;
        return v;
    }
    public var _shared(get, set) : stdgo._internal.sync.Sync.T_poolChain;
    function get__shared():stdgo._internal.sync.Sync.T_poolChain return this._shared;
    function set__shared(v:stdgo._internal.sync.Sync.T_poolChain):stdgo._internal.sync.Sync.T_poolChain {
        this._shared = v;
        return v;
    }
    public function new(?_private:stdgo.AnyInterface, ?_shared:stdgo._internal.sync.Sync.T_poolChain) this = new stdgo._internal.sync.Sync.T_poolLocalInternal(_private, _shared);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.sync.Sync.T_poolLocal_static_extension) abstract T_poolLocal(stdgo._internal.sync.Sync.T_poolLocal) from stdgo._internal.sync.Sync.T_poolLocal to stdgo._internal.sync.Sync.T_poolLocal {
    public var _poolLocalInternal(get, set) : stdgo._internal.sync.Sync.T_poolLocalInternal;
    function get__poolLocalInternal():stdgo._internal.sync.Sync.T_poolLocalInternal return this._poolLocalInternal;
    function set__poolLocalInternal(v:stdgo._internal.sync.Sync.T_poolLocalInternal):stdgo._internal.sync.Sync.T_poolLocalInternal {
        this._poolLocalInternal = v;
        return v;
    }
    public var _pad(get, set) : haxe.ds.Vector<std.UInt>;
    function get__pad():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._pad) i]);
    function set__pad(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._pad = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_poolLocalInternal:stdgo._internal.sync.Sync.T_poolLocalInternal, ?_pad:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.sync.Sync.T_poolLocal(_poolLocalInternal, ([for (i in _pad) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.sync.Sync.T_poolDequeue_static_extension) abstract T_poolDequeue(stdgo._internal.sync.Sync.T_poolDequeue) from stdgo._internal.sync.Sync.T_poolDequeue to stdgo._internal.sync.Sync.T_poolDequeue {
    public var _headTail(get, set) : haxe.UInt64;
    function get__headTail():haxe.UInt64 return this._headTail;
    function set__headTail(v:haxe.UInt64):haxe.UInt64 {
        this._headTail = v;
        return v;
    }
    public var _vals(get, set) : Array<stdgo._internal.sync.Sync.T_eface>;
    function get__vals():Array<stdgo._internal.sync.Sync.T_eface> return [for (i in this._vals) i];
    function set__vals(v:Array<stdgo._internal.sync.Sync.T_eface>):Array<stdgo._internal.sync.Sync.T_eface> {
        this._vals = ([for (i in v) i] : stdgo.Slice<stdgo._internal.sync.Sync.T_eface>);
        return v;
    }
    public function new(?_headTail:haxe.UInt64, ?_vals:Array<stdgo._internal.sync.Sync.T_eface>) this = new stdgo._internal.sync.Sync.T_poolDequeue(_headTail, ([for (i in _vals) i] : stdgo.Slice<stdgo._internal.sync.Sync.T_eface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_eface(stdgo._internal.sync.Sync.T_eface) from stdgo._internal.sync.Sync.T_eface to stdgo._internal.sync.Sync.T_eface {
    public var _typ(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__typ():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._typ;
    function set__typ(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._typ = v;
        return v;
    }
    public var _val(get, set) : stdgo._internal.unsafe.Unsafe.UnsafePointer;
    function get__val():stdgo._internal.unsafe.Unsafe.UnsafePointer return this._val;
    function set__val(v:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        this._val = v;
        return v;
    }
    public function new(?_typ:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_val:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.Sync.T_eface(_typ, _val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.sync.Sync.T_poolChain_static_extension) abstract T_poolChain(stdgo._internal.sync.Sync.T_poolChain) from stdgo._internal.sync.Sync.T_poolChain to stdgo._internal.sync.Sync.T_poolChain {
    public var _head(get, set) : stdgo._internal.sync.Sync.T_poolChainElt;
    function get__head():stdgo._internal.sync.Sync.T_poolChainElt return this._head;
    function set__head(v:stdgo._internal.sync.Sync.T_poolChainElt):stdgo._internal.sync.Sync.T_poolChainElt {
        this._head = v;
        return v;
    }
    public var _tail(get, set) : stdgo._internal.sync.Sync.T_poolChainElt;
    function get__tail():stdgo._internal.sync.Sync.T_poolChainElt return this._tail;
    function set__tail(v:stdgo._internal.sync.Sync.T_poolChainElt):stdgo._internal.sync.Sync.T_poolChainElt {
        this._tail = v;
        return v;
    }
    public function new(?_head:stdgo._internal.sync.Sync.T_poolChainElt, ?_tail:stdgo._internal.sync.Sync.T_poolChainElt) this = new stdgo._internal.sync.Sync.T_poolChain(_head, _tail);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.sync.Sync.T_poolChainElt_static_extension) abstract T_poolChainElt(stdgo._internal.sync.Sync.T_poolChainElt) from stdgo._internal.sync.Sync.T_poolChainElt to stdgo._internal.sync.Sync.T_poolChainElt {
    public var _poolDequeue(get, set) : stdgo._internal.sync.Sync.T_poolDequeue;
    function get__poolDequeue():stdgo._internal.sync.Sync.T_poolDequeue return this._poolDequeue;
    function set__poolDequeue(v:stdgo._internal.sync.Sync.T_poolDequeue):stdgo._internal.sync.Sync.T_poolDequeue {
        this._poolDequeue = v;
        return v;
    }
    public var _next(get, set) : stdgo._internal.sync.Sync.T_poolChainElt;
    function get__next():stdgo._internal.sync.Sync.T_poolChainElt return this._next;
    function set__next(v:stdgo._internal.sync.Sync.T_poolChainElt):stdgo._internal.sync.Sync.T_poolChainElt {
        this._next = v;
        return v;
    }
    public var _prev(get, set) : stdgo._internal.sync.Sync.T_poolChainElt;
    function get__prev():stdgo._internal.sync.Sync.T_poolChainElt return this._prev;
    function set__prev(v:stdgo._internal.sync.Sync.T_poolChainElt):stdgo._internal.sync.Sync.T_poolChainElt {
        this._prev = v;
        return v;
    }
    public function new(?_poolDequeue:stdgo._internal.sync.Sync.T_poolDequeue, ?_next:stdgo._internal.sync.Sync.T_poolChainElt, ?_prev:stdgo._internal.sync.Sync.T_poolChainElt) this = new stdgo._internal.sync.Sync.T_poolChainElt(_poolDequeue, _next, _prev);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_notifyList(stdgo._internal.sync.Sync.T_notifyList) from stdgo._internal.sync.Sync.T_notifyList to stdgo._internal.sync.Sync.T_notifyList {
    public var _wait(get, set) : std.UInt;
    function get__wait():std.UInt return this._wait;
    function set__wait(v:std.UInt):std.UInt {
        this._wait = v;
        return v;
    }
    public var _notify(get, set) : std.UInt;
    function get__notify():std.UInt return this._notify;
    function set__notify(v:std.UInt):std.UInt {
        this._notify = v;
        return v;
    }
    public var _lock(get, set) : stdgo.GoUIntptr;
    function get__lock():stdgo.GoUIntptr return this._lock;
    function set__lock(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._lock = v;
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
    public function new(?_wait:std.UInt, ?_notify:std.UInt, ?_lock:stdgo.GoUIntptr, ?_head:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_tail:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.Sync.T_notifyList(_wait, _notify, _lock, _head, _tail);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.RWMutex_static_extension) abstract RWMutex(stdgo._internal.sync.Sync.RWMutex) from stdgo._internal.sync.Sync.RWMutex to stdgo._internal.sync.Sync.RWMutex {
    public var _w(get, set) : stdgo._internal.sync.Sync.Mutex;
    function get__w():stdgo._internal.sync.Sync.Mutex return this._w;
    function set__w(v:stdgo._internal.sync.Sync.Mutex):stdgo._internal.sync.Sync.Mutex {
        this._w = v;
        return v;
    }
    public var _writerSem(get, set) : std.UInt;
    function get__writerSem():std.UInt return this._writerSem;
    function set__writerSem(v:std.UInt):std.UInt {
        this._writerSem = v;
        return v;
    }
    public var _readerSem(get, set) : std.UInt;
    function get__readerSem():std.UInt return this._readerSem;
    function set__readerSem(v:std.UInt):std.UInt {
        this._readerSem = v;
        return v;
    }
    public var _readerCount(get, set) : stdgo._internal.sync.atomic_.Atomic_.Int32;
    function get__readerCount():stdgo._internal.sync.atomic_.Atomic_.Int32 return this._readerCount;
    function set__readerCount(v:stdgo._internal.sync.atomic_.Atomic_.Int32):stdgo._internal.sync.atomic_.Atomic_.Int32 {
        this._readerCount = v;
        return v;
    }
    public var _readerWait(get, set) : stdgo._internal.sync.atomic_.Atomic_.Int32;
    function get__readerWait():stdgo._internal.sync.atomic_.Atomic_.Int32 return this._readerWait;
    function set__readerWait(v:stdgo._internal.sync.atomic_.Atomic_.Int32):stdgo._internal.sync.atomic_.Atomic_.Int32 {
        this._readerWait = v;
        return v;
    }
    public function new(?_w:stdgo._internal.sync.Sync.Mutex, ?_writerSem:std.UInt, ?_readerSem:std.UInt, ?_readerCount:stdgo._internal.sync.atomic_.Atomic_.Int32, ?_readerWait:stdgo._internal.sync.atomic_.Atomic_.Int32, ?mutex) this = new stdgo._internal.sync.Sync.RWMutex(_w, _writerSem, _readerSem, _readerCount, _readerWait, mutex);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.WaitGroup_static_extension) abstract WaitGroup(stdgo._internal.sync.Sync.WaitGroup) from stdgo._internal.sync.Sync.WaitGroup to stdgo._internal.sync.Sync.WaitGroup {
    public var _noCopy(get, set) : stdgo._internal.sync.Sync.T_noCopy;
    function get__noCopy():stdgo._internal.sync.Sync.T_noCopy return this._noCopy;
    function set__noCopy(v:stdgo._internal.sync.Sync.T_noCopy):stdgo._internal.sync.Sync.T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _state(get, set) : stdgo._internal.sync.atomic_.Atomic_.Uint64;
    function get__state():stdgo._internal.sync.atomic_.Atomic_.Uint64 return this._state;
    function set__state(v:stdgo._internal.sync.atomic_.Atomic_.Uint64):stdgo._internal.sync.atomic_.Atomic_.Uint64 {
        this._state = v;
        return v;
    }
    public var _sema(get, set) : std.UInt;
    function get__sema():std.UInt return this._sema;
    function set__sema(v:std.UInt):std.UInt {
        this._sema = v;
        return v;
    }
    public function new(?_noCopy:stdgo._internal.sync.Sync.T_noCopy, ?_state:stdgo._internal.sync.atomic_.Atomic_.Uint64, ?_sema:std.UInt, ?lock, ?counter:std.UInt) this = new stdgo._internal.sync.Sync.WaitGroup(_noCopy, _state, _sema, lock, counter);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.sync.Sync.T__struct_0;
typedef T_copyChecker = stdgo._internal.sync.Sync.T_copyChecker;
typedef T_dequeueNil = stdgo._internal.sync.Sync.T_dequeueNil;
typedef T_rlocker = stdgo._internal.sync.Sync.T_rlocker;
class Cond_static_extension {
    static public function broadcast(c:Cond):Void {
        stdgo._internal.sync.Sync.Cond_static_extension.broadcast(c);
    }
    static public function signal(c:Cond):Void {
        stdgo._internal.sync.Sync.Cond_static_extension.signal(c);
    }
    static public function wait_(c:Cond):Void {
        stdgo._internal.sync.Sync.Cond_static_extension.wait_(c);
    }
}
class T_noCopy_static_extension {
    static public function unlock(:T_noCopy):Void {
        stdgo._internal.sync.Sync.T_noCopy_static_extension.unlock();
    }
    static public function lock(:T_noCopy):Void {
        stdgo._internal.sync.Sync.T_noCopy_static_extension.lock();
    }
}
class Map__static_extension {
    static public function _dirtyLocked(m:Map_):Void {
        stdgo._internal.sync.Sync.Map__static_extension._dirtyLocked(m);
    }
    static public function _missLocked(m:Map_):Void {
        stdgo._internal.sync.Sync.Map__static_extension._missLocked(m);
    }
    static public function range(m:Map_, f:(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface) -> Bool):Void {
        final f = f;
        stdgo._internal.sync.Sync.Map__static_extension.range(m, f);
    }
    static public function compareAndDelete(m:Map_, key:stdgo.AnyInterface, old:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.Map__static_extension.compareAndDelete(m, key, old);
    }
    static public function compareAndSwap(m:Map_, key:stdgo.AnyInterface, old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.Map__static_extension.compareAndSwap(m, key, old, _new);
    }
    static public function swap(m:Map_, key:stdgo.AnyInterface, value:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.Map__static_extension.swap(m, key, value);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function delete(m:Map_, key:stdgo.AnyInterface):Void {
        stdgo._internal.sync.Sync.Map__static_extension.delete(m, key);
    }
    static public function loadAndDelete(m:Map_, key:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.Map__static_extension.loadAndDelete(m, key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function loadOrStore(m:Map_, key:stdgo.AnyInterface, value:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.Map__static_extension.loadOrStore(m, key, value);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function store(m:Map_, key:stdgo.AnyInterface, value:stdgo.AnyInterface):Void {
        stdgo._internal.sync.Sync.Map__static_extension.store(m, key, value);
    }
    static public function load(m:Map_, key:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.Map__static_extension.load(m, key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _loadReadOnly(m:Map_):T_readOnly {
        return stdgo._internal.sync.Sync.Map__static_extension._loadReadOnly(m);
    }
}
class T_entry_static_extension {
    static public function _tryExpungeLocked(e:T_entry):Bool {
        return stdgo._internal.sync.Sync.T_entry_static_extension._tryExpungeLocked(e);
    }
    static public function _trySwap(e:T_entry, i:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_entry_static_extension._trySwap(e, i);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _delete(e:T_entry):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_entry_static_extension._delete(e);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _tryLoadOrStore(e:T_entry, i:stdgo.AnyInterface):stdgo.Tuple.Tuple3<stdgo.AnyInterface, Bool, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_entry_static_extension._tryLoadOrStore(e, i);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _swapLocked(e:T_entry, i:stdgo.AnyInterface):stdgo.AnyInterface {
        return stdgo._internal.sync.Sync.T_entry_static_extension._swapLocked(e, i);
    }
    static public function _unexpungeLocked(e:T_entry):Bool {
        return stdgo._internal.sync.Sync.T_entry_static_extension._unexpungeLocked(e);
    }
    static public function _tryCompareAndSwap(e:T_entry, old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.T_entry_static_extension._tryCompareAndSwap(e, old, _new);
    }
    static public function _load(e:T_entry):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_entry_static_extension._load(e);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Mutex_static_extension {
    static public function _unlockSlow(m:Mutex, _new:StdTypes.Int):Void {
        stdgo._internal.sync.Sync.Mutex_static_extension._unlockSlow(m, _new);
    }
    static public function unlock(m:Mutex):Void {
        stdgo._internal.sync.Sync.Mutex_static_extension.unlock(m);
    }
    static public function _lockSlow(m:Mutex):Void {
        stdgo._internal.sync.Sync.Mutex_static_extension._lockSlow(m);
    }
    static public function tryLock(m:Mutex):Bool {
        return stdgo._internal.sync.Sync.Mutex_static_extension.tryLock(m);
    }
    static public function lock(m:Mutex):Void {
        stdgo._internal.sync.Sync.Mutex_static_extension.lock(m);
    }
}
class Once_static_extension {
    static public function _doSlow(o:Once, f:() -> Void):Void {
        final f = f;
        stdgo._internal.sync.Sync.Once_static_extension._doSlow(o, f);
    }
    static public function do_(o:Once, f:() -> Void):Void {
        final f = f;
        stdgo._internal.sync.Sync.Once_static_extension.do_(o, f);
    }
}
class Pool_static_extension {
    static public function _pinSlow(p:Pool):stdgo.Tuple<T_poolLocal, StdTypes.Int> {
        return {
            final obj = stdgo._internal.sync.Sync.Pool_static_extension._pinSlow(p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pin(p:Pool):stdgo.Tuple<T_poolLocal, StdTypes.Int> {
        return {
            final obj = stdgo._internal.sync.Sync.Pool_static_extension._pin(p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _getSlow(p:Pool, pid:StdTypes.Int):stdgo.AnyInterface {
        return stdgo._internal.sync.Sync.Pool_static_extension._getSlow(p, pid);
    }
    static public function get(p:Pool):stdgo.AnyInterface {
        return stdgo._internal.sync.Sync.Pool_static_extension.get(p);
    }
    static public function put(p:Pool, x:stdgo.AnyInterface):Void {
        stdgo._internal.sync.Sync.Pool_static_extension.put(p, x);
    }
}
class T_poolLocal_static_extension {

}
class T_poolDequeue_static_extension {
    static public function _popTail(d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolDequeue_static_extension._popTail(d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _popHead(d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolDequeue_static_extension._popHead(d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pushHead(d:T_poolDequeue, val:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.T_poolDequeue_static_extension._pushHead(d, val);
    }
    static public function _pack(d:T_poolDequeue, head:std.UInt, tail:std.UInt):haxe.UInt64 {
        return stdgo._internal.sync.Sync.T_poolDequeue_static_extension._pack(d, head, tail);
    }
    static public function _unpack(d:T_poolDequeue, ptrs:haxe.UInt64):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolDequeue_static_extension._unpack(d, ptrs);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popTail(d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolDequeue_static_extension.popTail(d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popHead(d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolDequeue_static_extension.popHead(d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pushHead(d:T_poolDequeue, val:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.T_poolDequeue_static_extension.pushHead(d, val);
    }
}
class T_poolChain_static_extension {
    static public function _popTail(c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChain_static_extension._popTail(c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _popHead(c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChain_static_extension._popHead(c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pushHead(c:T_poolChain, val:stdgo.AnyInterface):Void {
        stdgo._internal.sync.Sync.T_poolChain_static_extension._pushHead(c, val);
    }
    static public function popTail(c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChain_static_extension.popTail(c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popHead(c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChain_static_extension.popHead(c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pushHead(c:T_poolChain, val:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.T_poolChain_static_extension.pushHead(c, val);
    }
}
class T_poolChainElt_static_extension {
    public static function _unpack(_self__:T_poolChainElt, _0:haxe.UInt64):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChainElt_static_extension._unpack(_self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pushHead(_self__:T_poolChainElt, val_:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.T_poolChainElt_static_extension._pushHead(_self__, val_);
    }
    public static function _popTail(_self__:T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChainElt_static_extension._popTail(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _popHead(_self__:T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChainElt_static_extension._popHead(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pack(_self__:T_poolChainElt, head:std.UInt, tail:std.UInt):haxe.UInt64 {
        return stdgo._internal.sync.Sync.T_poolChainElt_static_extension._pack(_self__, head, tail);
    }
    public static function pushHead(_self__:T_poolChainElt, val_:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.T_poolChainElt_static_extension.pushHead(_self__, val_);
    }
    public static function popTail(_self__:T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChainElt_static_extension.popTail(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function popHead(_self__:T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChainElt_static_extension.popHead(_self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class RWMutex_static_extension {
    static public function rlocker(rw:RWMutex):Locker {
        return stdgo._internal.sync.Sync.RWMutex_static_extension.rlocker(rw);
    }
    static public function unlock(rw:RWMutex):Void {
        stdgo._internal.sync.Sync.RWMutex_static_extension.unlock(rw);
    }
    static public function tryLock(rw:RWMutex):Bool {
        return stdgo._internal.sync.Sync.RWMutex_static_extension.tryLock(rw);
    }
    static public function lock(rw:RWMutex):Void {
        stdgo._internal.sync.Sync.RWMutex_static_extension.lock(rw);
    }
    static public function _rUnlockSlow(rw:RWMutex, r:StdTypes.Int):Void {
        stdgo._internal.sync.Sync.RWMutex_static_extension._rUnlockSlow(rw, r);
    }
    static public function runlock(rw:RWMutex):Void {
        stdgo._internal.sync.Sync.RWMutex_static_extension.runlock(rw);
    }
    static public function tryRLock(rw:RWMutex):Bool {
        return stdgo._internal.sync.Sync.RWMutex_static_extension.tryRLock(rw);
    }
    static public function rlock(rw:RWMutex):Void {
        stdgo._internal.sync.Sync.RWMutex_static_extension.rlock(rw);
    }
}
class WaitGroup_static_extension {
    static public function wait_(wg:WaitGroup):Void {
        stdgo._internal.sync.Sync.WaitGroup_static_extension.wait_(wg);
    }
    static public function done(wg:WaitGroup):Void {
        stdgo._internal.sync.Sync.WaitGroup_static_extension.done(wg);
    }
    static public function add(wg:WaitGroup, delta:StdTypes.Int):Void {
        stdgo._internal.sync.Sync.WaitGroup_static_extension.add(wg, delta);
    }
}
class T_copyChecker_static_extension {
    static public function _check(___:T_copyChecker, c:stdgo.Pointer<T_copyChecker>):Void {
        stdgo._internal.sync.Sync.T_copyChecker_static_extension._check(___, c);
    }
}
class T_rlocker_static_extension {
    static public function unlock(r:T_rlocker):Void {
        stdgo._internal.sync.Sync.T_rlocker_static_extension.unlock(r);
    }
    static public function lock(r:T_rlocker):Void {
        stdgo._internal.sync.Sync.T_rlocker_static_extension.lock(r);
    }
}
/**
    Package sync provides basic synchronization primitives such as mutual
    exclusion locks. Other than the Once and WaitGroup types, most are intended
    for use by low-level library routines. Higher-level synchronization is
    better done via channels and communication.
    
    Values containing the types defined in this package should not be copied.
**/
class Sync {
    /**
        NewCond returns a new Cond with Locker l.
    **/
    static public function newCond(l:Locker):Cond {
        return stdgo._internal.sync.Sync.newCond(l);
    }
    static public function newPoolDequeue(n:StdTypes.Int):PoolDequeue {
        return stdgo._internal.sync.Sync.newPoolDequeue(n);
    }
    static public function newPoolChain():PoolDequeue {
        return stdgo._internal.sync.Sync.newPoolChain();
    }
    /**
        OnceFunc returns a function that invokes f only once. The returned function
        may be called concurrently.
        
        If f panics, the returned function will panic with the same value on every call.
    **/
    static public function onceFunc(f:() -> Void):() -> Void {
        final f = f;
        return () -> stdgo._internal.sync.Sync.onceFunc(f)();
    }
    static public function onceValue<T_>(_generic__0:haxe.macro.Expr<T_>, f:haxe.macro.Expr<() -> T_>):haxe.macro.Expr<() -> T_> {
        return stdgo._internal.sync.Sync.onceValue(_generic__0, f);
    }
    static public function onceValues<T1, T2>(_generic__0:haxe.macro.Expr<T1>, _generic__1:haxe.macro.Expr<T2>, f:haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }>):haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }> {
        return stdgo._internal.sync.Sync.onceValues(_generic__0, _generic__1, f);
    }
}
