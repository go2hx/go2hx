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
    static public function pushHead(t:PoolDequeue, _val:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.PoolDequeue_static_extension.pushHead(t, _val);
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
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var l(get, set) : Locker;
    function get_l():Locker return this.l;
    function set_l(v:Locker):Locker {
        this.l = v;
        return v;
    }
    public var _notify(get, set) : T_notifyList;
    function get__notify():T_notifyList return this._notify;
    function set__notify(v:T_notifyList):T_notifyList {
        this._notify = v;
        return v;
    }
    public var _checker(get, set) : T_copyChecker;
    function get__checker():T_copyChecker return this._checker;
    function set__checker(v:T_copyChecker):T_copyChecker {
        this._checker = v;
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?l:Locker, ?_notify:T_notifyList, ?_checker:T_copyChecker) this = new stdgo._internal.sync.Sync.Cond(_noCopy, l, _notify, _checker);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.sync.Sync.T_noCopy_static_extension) abstract T_noCopy(stdgo._internal.sync.Sync.T_noCopy) from stdgo._internal.sync.Sync.T_noCopy to stdgo._internal.sync.Sync.T_noCopy {
    public function new() this = new stdgo._internal.sync.Sync.T_noCopy();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.Map__static_extension) abstract Map_(stdgo._internal.sync.Sync.Map_) from stdgo._internal.sync.Sync.Map_ to stdgo._internal.sync.Sync.Map_ {
    public var _mu(get, set) : Mutex;
    function get__mu():Mutex return this._mu;
    function set__mu(v:Mutex):Mutex {
        this._mu = v;
        return v;
    }
    public var _read(get, set) : Pointer_<T_readOnly>;
    function get__read():Pointer_<T_readOnly> return this._read;
    function set__read(v:Pointer_<T_readOnly>):Pointer_<T_readOnly> {
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
    public function new(?_mu:Mutex, ?_read:Pointer_<T_readOnly>, ?_dirty:stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync.T_entry>>, ?_misses:StdTypes.Int) this = new stdgo._internal.sync.Sync.Map_(_mu, _read, _dirty, _misses);
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
    public var _p(get, set) : Pointer_<stdgo.AnyInterface>;
    function get__p():Pointer_<stdgo.AnyInterface> return this._p;
    function set__p(v:Pointer_<stdgo.AnyInterface>):Pointer_<stdgo.AnyInterface> {
        this._p = v;
        return v;
    }
    public function new(?_p:Pointer_<stdgo.AnyInterface>) this = new stdgo._internal.sync.Sync.T_entry(_p);
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
    public var _m(get, set) : Mutex;
    function get__m():Mutex return this._m;
    function set__m(v:Mutex):Mutex {
        this._m = v;
        return v;
    }
    public function new(?_done:std.UInt, ?_m:Mutex) this = new stdgo._internal.sync.Sync.Once(_done, _m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.Pool_static_extension) abstract Pool(stdgo._internal.sync.Sync.Pool) from stdgo._internal.sync.Sync.Pool to stdgo._internal.sync.Sync.Pool {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
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
    public function new(?_noCopy:T_noCopy, ?_local:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_localSize:stdgo.GoUIntptr, ?_victim:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_victimSize:stdgo.GoUIntptr, ?new_:() -> stdgo.AnyInterface, ?pool) this = new stdgo._internal.sync.Sync.Pool(_noCopy, _local, _localSize, _victim, _victimSize, new_, pool);
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
    public var _shared(get, set) : T_poolChain;
    function get__shared():T_poolChain return this._shared;
    function set__shared(v:T_poolChain):T_poolChain {
        this._shared = v;
        return v;
    }
    public function new(?_private:stdgo.AnyInterface, ?_shared:T_poolChain) this = new stdgo._internal.sync.Sync.T_poolLocalInternal(_private, _shared);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.sync.Sync.T_poolLocal_static_extension) abstract T_poolLocal(stdgo._internal.sync.Sync.T_poolLocal) from stdgo._internal.sync.Sync.T_poolLocal to stdgo._internal.sync.Sync.T_poolLocal {
    public var _poolLocalInternal(get, set) : T_poolLocalInternal;
    function get__poolLocalInternal():T_poolLocalInternal return this._poolLocalInternal;
    function set__poolLocalInternal(v:T_poolLocalInternal):T_poolLocalInternal {
        this._poolLocalInternal = v;
        return v;
    }
    public var _pad(get, set) : haxe.ds.Vector<std.UInt>;
    function get__pad():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._pad) i]);
    function set__pad(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._pad = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_poolLocalInternal:T_poolLocalInternal, ?_pad:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.sync.Sync.T_poolLocal(_poolLocalInternal, ([for (i in _pad) i] : stdgo.GoArray<stdgo.GoUInt8>));
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
    public var _vals(get, set) : Array<T_eface>;
    function get__vals():Array<T_eface> return [for (i in this._vals) i];
    function set__vals(v:Array<T_eface>):Array<T_eface> {
        this._vals = ([for (i in v) i] : stdgo.Slice<stdgo._internal.sync.Sync.T_eface>);
        return v;
    }
    public function new(?_headTail:haxe.UInt64, ?_vals:Array<T_eface>) this = new stdgo._internal.sync.Sync.T_poolDequeue(_headTail, ([for (i in _vals) i] : stdgo.Slice<stdgo._internal.sync.Sync.T_eface>));
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
    public var _head(get, set) : T_poolChainElt;
    function get__head():T_poolChainElt return this._head;
    function set__head(v:T_poolChainElt):T_poolChainElt {
        this._head = v;
        return v;
    }
    public var _tail(get, set) : T_poolChainElt;
    function get__tail():T_poolChainElt return this._tail;
    function set__tail(v:T_poolChainElt):T_poolChainElt {
        this._tail = v;
        return v;
    }
    public function new(?_head:T_poolChainElt, ?_tail:T_poolChainElt) this = new stdgo._internal.sync.Sync.T_poolChain(_head, _tail);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.sync.Sync.T_poolChainElt_static_extension) abstract T_poolChainElt(stdgo._internal.sync.Sync.T_poolChainElt) from stdgo._internal.sync.Sync.T_poolChainElt to stdgo._internal.sync.Sync.T_poolChainElt {
    public var _poolDequeue(get, set) : T_poolDequeue;
    function get__poolDequeue():T_poolDequeue return this._poolDequeue;
    function set__poolDequeue(v:T_poolDequeue):T_poolDequeue {
        this._poolDequeue = v;
        return v;
    }
    public var _next(get, set) : T_poolChainElt;
    function get__next():T_poolChainElt return this._next;
    function set__next(v:T_poolChainElt):T_poolChainElt {
        this._next = v;
        return v;
    }
    public var _prev(get, set) : T_poolChainElt;
    function get__prev():T_poolChainElt return this._prev;
    function set__prev(v:T_poolChainElt):T_poolChainElt {
        this._prev = v;
        return v;
    }
    public function new(?_poolDequeue:T_poolDequeue, ?_next:T_poolChainElt, ?_prev:T_poolChainElt) this = new stdgo._internal.sync.Sync.T_poolChainElt(_poolDequeue, _next, _prev);
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
    public var _w(get, set) : Mutex;
    function get__w():Mutex return this._w;
    function set__w(v:Mutex):Mutex {
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
    public var _readerCount(get, set) : Int32;
    function get__readerCount():Int32 return this._readerCount;
    function set__readerCount(v:Int32):Int32 {
        this._readerCount = v;
        return v;
    }
    public var _readerWait(get, set) : Int32;
    function get__readerWait():Int32 return this._readerWait;
    function set__readerWait(v:Int32):Int32 {
        this._readerWait = v;
        return v;
    }
    public function new(?_w:Mutex, ?_writerSem:std.UInt, ?_readerSem:std.UInt, ?_readerCount:Int32, ?_readerWait:Int32, ?mutex) this = new stdgo._internal.sync.Sync.RWMutex(_w, _writerSem, _readerSem, _readerCount, _readerWait, mutex);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.WaitGroup_static_extension) abstract WaitGroup(stdgo._internal.sync.Sync.WaitGroup) from stdgo._internal.sync.Sync.WaitGroup to stdgo._internal.sync.Sync.WaitGroup {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _state(get, set) : Uint64;
    function get__state():Uint64 return this._state;
    function set__state(v:Uint64):Uint64 {
        this._state = v;
        return v;
    }
    public var _sema(get, set) : std.UInt;
    function get__sema():std.UInt return this._sema;
    function set__sema(v:std.UInt):std.UInt {
        this._sema = v;
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?_state:Uint64, ?_sema:std.UInt, ?lock, ?counter:std.UInt) this = new stdgo._internal.sync.Sync.WaitGroup(_noCopy, _state, _sema, lock, counter);
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
    static public function broadcast(_c:Cond):Void {
        stdgo._internal.sync.Sync.Cond_static_extension.broadcast(_c);
    }
    static public function signal(_c:Cond):Void {
        stdgo._internal.sync.Sync.Cond_static_extension.signal(_c);
    }
    static public function wait_(_c:Cond):Void {
        stdgo._internal.sync.Sync.Cond_static_extension.wait_(_c);
    }
}
class T_noCopy_static_extension {
    static public function unlock(_:T_noCopy):Void {
        stdgo._internal.sync.Sync.T_noCopy_static_extension.unlock(_);
    }
    static public function lock(_:T_noCopy):Void {
        stdgo._internal.sync.Sync.T_noCopy_static_extension.lock(_);
    }
}
class Map__static_extension {
    static public function _dirtyLocked(_m:Map_):Void {
        stdgo._internal.sync.Sync.Map__static_extension._dirtyLocked(_m);
    }
    static public function _missLocked(_m:Map_):Void {
        stdgo._internal.sync.Sync.Map__static_extension._missLocked(_m);
    }
    static public function range(_m:Map_, _f:(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface) -> Bool):Void {
        final _f = _f;
        stdgo._internal.sync.Sync.Map__static_extension.range(_m, _f);
    }
    static public function compareAndDelete(_m:Map_, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.Map__static_extension.compareAndDelete(_m, _key, _old);
    }
    static public function compareAndSwap(_m:Map_, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.Map__static_extension.compareAndSwap(_m, _key, _old, _new);
    }
    static public function swap(_m:Map_, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.Map__static_extension.swap(_m, _key, _value);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function delete(_m:Map_, _key:stdgo.AnyInterface):Void {
        stdgo._internal.sync.Sync.Map__static_extension.delete(_m, _key);
    }
    static public function loadAndDelete(_m:Map_, _key:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.Map__static_extension.loadAndDelete(_m, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function loadOrStore(_m:Map_, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.Map__static_extension.loadOrStore(_m, _key, _value);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function store(_m:Map_, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void {
        stdgo._internal.sync.Sync.Map__static_extension.store(_m, _key, _value);
    }
    static public function load(_m:Map_, _key:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.Map__static_extension.load(_m, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _loadReadOnly(_m:Map_):T_readOnly {
        return stdgo._internal.sync.Sync.Map__static_extension._loadReadOnly(_m);
    }
}
class T_entry_static_extension {
    static public function _tryExpungeLocked(_e:T_entry):Bool {
        return stdgo._internal.sync.Sync.T_entry_static_extension._tryExpungeLocked(_e);
    }
    static public function _trySwap(_e:T_entry, _i:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_entry_static_extension._trySwap(_e, _i);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _delete(_e:T_entry):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_entry_static_extension._delete(_e);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _tryLoadOrStore(_e:T_entry, _i:stdgo.AnyInterface):stdgo.Tuple.Tuple3<stdgo.AnyInterface, Bool, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_entry_static_extension._tryLoadOrStore(_e, _i);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _swapLocked(_e:T_entry, _i:stdgo.AnyInterface):stdgo.AnyInterface {
        return stdgo._internal.sync.Sync.T_entry_static_extension._swapLocked(_e, _i);
    }
    static public function _unexpungeLocked(_e:T_entry):Bool {
        return stdgo._internal.sync.Sync.T_entry_static_extension._unexpungeLocked(_e);
    }
    static public function _tryCompareAndSwap(_e:T_entry, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.T_entry_static_extension._tryCompareAndSwap(_e, _old, _new);
    }
    static public function _load(_e:T_entry):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_entry_static_extension._load(_e);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class Mutex_static_extension {
    static public function _unlockSlow(_m:Mutex, _new:StdTypes.Int):Void {
        stdgo._internal.sync.Sync.Mutex_static_extension._unlockSlow(_m, _new);
    }
    static public function unlock(_m:Mutex):Void {
        stdgo._internal.sync.Sync.Mutex_static_extension.unlock(_m);
    }
    static public function _lockSlow(_m:Mutex):Void {
        stdgo._internal.sync.Sync.Mutex_static_extension._lockSlow(_m);
    }
    static public function tryLock(_m:Mutex):Bool {
        return stdgo._internal.sync.Sync.Mutex_static_extension.tryLock(_m);
    }
    static public function lock(_m:Mutex):Void {
        stdgo._internal.sync.Sync.Mutex_static_extension.lock(_m);
    }
}
class Once_static_extension {
    static public function _doSlow(_o:Once, _f:() -> Void):Void {
        final _f = _f;
        stdgo._internal.sync.Sync.Once_static_extension._doSlow(_o, _f);
    }
    static public function do_(_o:Once, _f:() -> Void):Void {
        final _f = _f;
        stdgo._internal.sync.Sync.Once_static_extension.do_(_o, _f);
    }
}
class Pool_static_extension {
    static public function _pinSlow(_p:Pool):stdgo.Tuple<T_poolLocal, StdTypes.Int> {
        return {
            final obj = stdgo._internal.sync.Sync.Pool_static_extension._pinSlow(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pin(_p:Pool):stdgo.Tuple<T_poolLocal, StdTypes.Int> {
        return {
            final obj = stdgo._internal.sync.Sync.Pool_static_extension._pin(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _getSlow(_p:Pool, _pid:StdTypes.Int):stdgo.AnyInterface {
        return stdgo._internal.sync.Sync.Pool_static_extension._getSlow(_p, _pid);
    }
    static public function get(_p:Pool):stdgo.AnyInterface {
        return stdgo._internal.sync.Sync.Pool_static_extension.get(_p);
    }
    static public function put(_p:Pool, _x:stdgo.AnyInterface):Void {
        stdgo._internal.sync.Sync.Pool_static_extension.put(_p, _x);
    }
}
class T_poolLocal_static_extension {

}
class T_poolDequeue_static_extension {
    static public function _popTail(_d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolDequeue_static_extension._popTail(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _popHead(_d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolDequeue_static_extension._popHead(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pushHead(_d:T_poolDequeue, _val:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.T_poolDequeue_static_extension._pushHead(_d, _val);
    }
    static public function _pack(_d:T_poolDequeue, _head:std.UInt, _tail:std.UInt):haxe.UInt64 {
        return stdgo._internal.sync.Sync.T_poolDequeue_static_extension._pack(_d, _head, _tail);
    }
    static public function _unpack(_d:T_poolDequeue, _ptrs:haxe.UInt64):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolDequeue_static_extension._unpack(_d, _ptrs);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popTail(_d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolDequeue_static_extension.popTail(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popHead(_d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolDequeue_static_extension.popHead(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pushHead(_d:T_poolDequeue, _val:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.T_poolDequeue_static_extension.pushHead(_d, _val);
    }
}
class T_poolChain_static_extension {
    static public function _popTail(_c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChain_static_extension._popTail(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _popHead(_c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChain_static_extension._popHead(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pushHead(_c:T_poolChain, _val:stdgo.AnyInterface):Void {
        stdgo._internal.sync.Sync.T_poolChain_static_extension._pushHead(_c, _val);
    }
    static public function popTail(_c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChain_static_extension.popTail(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popHead(_c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChain_static_extension.popHead(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pushHead(_c:T_poolChain, _val:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.T_poolChain_static_extension.pushHead(_c, _val);
    }
}
class T_poolChainElt_static_extension {
    public static function _unpack(__self__:T_poolChainElt, __0:haxe.UInt64):stdgo.Tuple<std.UInt, std.UInt> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChainElt_static_extension._unpack(__self__, __0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pushHead(__self__:T_poolChainElt, _val_:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.T_poolChainElt_static_extension._pushHead(__self__, _val_);
    }
    public static function _popTail(__self__:T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChainElt_static_extension._popTail(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _popHead(__self__:T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChainElt_static_extension._popHead(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pack(__self__:T_poolChainElt, _head:std.UInt, _tail:std.UInt):haxe.UInt64 {
        return stdgo._internal.sync.Sync.T_poolChainElt_static_extension._pack(__self__, _head, _tail);
    }
    public static function pushHead(__self__:T_poolChainElt, _val_:stdgo.AnyInterface):Bool {
        return stdgo._internal.sync.Sync.T_poolChainElt_static_extension.pushHead(__self__, _val_);
    }
    public static function popTail(__self__:T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChainElt_static_extension.popTail(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function popHead(__self__:T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync.T_poolChainElt_static_extension.popHead(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class RWMutex_static_extension {
    static public function rlocker(_rw:RWMutex):Locker {
        return stdgo._internal.sync.Sync.RWMutex_static_extension.rlocker(_rw);
    }
    static public function unlock(_rw:RWMutex):Void {
        stdgo._internal.sync.Sync.RWMutex_static_extension.unlock(_rw);
    }
    static public function tryLock(_rw:RWMutex):Bool {
        return stdgo._internal.sync.Sync.RWMutex_static_extension.tryLock(_rw);
    }
    static public function lock(_rw:RWMutex):Void {
        stdgo._internal.sync.Sync.RWMutex_static_extension.lock(_rw);
    }
    static public function _rUnlockSlow(_rw:RWMutex, _r:StdTypes.Int):Void {
        stdgo._internal.sync.Sync.RWMutex_static_extension._rUnlockSlow(_rw, _r);
    }
    static public function runlock(_rw:RWMutex):Void {
        stdgo._internal.sync.Sync.RWMutex_static_extension.runlock(_rw);
    }
    static public function tryRLock(_rw:RWMutex):Bool {
        return stdgo._internal.sync.Sync.RWMutex_static_extension.tryRLock(_rw);
    }
    static public function rlock(_rw:RWMutex):Void {
        stdgo._internal.sync.Sync.RWMutex_static_extension.rlock(_rw);
    }
}
class WaitGroup_static_extension {
    static public function wait_(_wg:WaitGroup):Void {
        stdgo._internal.sync.Sync.WaitGroup_static_extension.wait_(_wg);
    }
    static public function done(_wg:WaitGroup):Void {
        stdgo._internal.sync.Sync.WaitGroup_static_extension.done(_wg);
    }
    static public function add(_wg:WaitGroup, _delta:StdTypes.Int):Void {
        stdgo._internal.sync.Sync.WaitGroup_static_extension.add(_wg, _delta);
    }
}
class T_copyChecker_static_extension {
    static public function _check(____:T_copyChecker, _c:stdgo.Pointer<T_copyChecker>):Void {
        stdgo._internal.sync.Sync.T_copyChecker_static_extension._check(____, _c);
    }
}
class T_rlocker_static_extension {
    static public function unlock(_r:T_rlocker):Void {
        stdgo._internal.sync.Sync.T_rlocker_static_extension.unlock(_r);
    }
    static public function lock(_r:T_rlocker):Void {
        stdgo._internal.sync.Sync.T_rlocker_static_extension.lock(_r);
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
    static public function newCond(_l:Locker):Cond {
        return stdgo._internal.sync.Sync.newCond(_l);
    }
    static public function newPoolDequeue(_n:StdTypes.Int):PoolDequeue {
        return stdgo._internal.sync.Sync.newPoolDequeue(_n);
    }
    static public function newPoolChain():PoolDequeue {
        return stdgo._internal.sync.Sync.newPoolChain();
    }
    /**
        OnceFunc returns a function that invokes f only once. The returned function
        may be called concurrently.
        
        If f panics, the returned function will panic with the same value on every call.
    **/
    static public function onceFunc(_f:() -> Void):() -> Void {
        final _f = _f;
        return () -> stdgo._internal.sync.Sync.onceFunc(_f)();
    }
    static public function onceValue<T_>(__generic__0:haxe.macro.Expr<T_>, _f:haxe.macro.Expr<() -> T_>):haxe.macro.Expr<() -> T_> {
        return stdgo._internal.sync.Sync.onceValue(__generic__0, _f);
    }
    static public function onceValues<T1, T2>(__generic__0:haxe.macro.Expr<T1>, __generic__1:haxe.macro.Expr<T2>, _f:haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }>):haxe.macro.Expr<() -> { var _0 : T1; var _1 : T2; }> {
        return stdgo._internal.sync.Sync.onceValues(__generic__0, __generic__1, _f);
    }
}
