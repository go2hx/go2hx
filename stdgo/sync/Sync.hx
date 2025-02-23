package stdgo.sync;
var runtime_Semacquire(get, set) : stdgo.Pointer<std.UInt> -> Void;
private function get_runtime_Semacquire():stdgo.Pointer<std.UInt> -> Void return _0 -> stdgo._internal.sync.Sync_runtime_semacquire.runtime_Semacquire(_0);
private function set_runtime_Semacquire(v:stdgo.Pointer<std.UInt> -> Void):stdgo.Pointer<std.UInt> -> Void {
        stdgo._internal.sync.Sync_runtime_semacquire.runtime_Semacquire = v;
        return v;
    }
var runtime_Semrelease(get, set) : (stdgo.Pointer<std.UInt>, Bool, StdTypes.Int) -> Void;
private function get_runtime_Semrelease():(stdgo.Pointer<std.UInt>, Bool, StdTypes.Int) -> Void return (_0, _1, _2) -> stdgo._internal.sync.Sync_runtime_semrelease.runtime_Semrelease(_0, _1, _2);
private function set_runtime_Semrelease(v:(stdgo.Pointer<std.UInt>, Bool, StdTypes.Int) -> Void):(stdgo.Pointer<std.UInt>, Bool, StdTypes.Int) -> Void {
        stdgo._internal.sync.Sync_runtime_semrelease.runtime_Semrelease = v;
        return v;
    }
var runtime_procPin(get, set) : () -> StdTypes.Int;
private function get_runtime_procPin():() -> StdTypes.Int return () -> stdgo._internal.sync.Sync_runtime_procpin.runtime_procPin();
private function set_runtime_procPin(v:() -> StdTypes.Int):() -> StdTypes.Int {
        stdgo._internal.sync.Sync_runtime_procpin.runtime_procPin = v;
        return v;
    }
var runtime_procUnpin(get, set) : () -> Void;
private function get_runtime_procUnpin():() -> Void return () -> stdgo._internal.sync.Sync_runtime_procunpin.runtime_procUnpin();
private function set_runtime_procUnpin(v:() -> Void):() -> Void {
        stdgo._internal.sync.Sync_runtime_procunpin.runtime_procUnpin = v;
        return v;
    }
class PoolDequeue_static_extension {
    static public function popTail(t:stdgo._internal.sync.Sync_pooldequeue.PoolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync_pooldequeue_static_extension.PoolDequeue_static_extension.popTail(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popHead(t:stdgo._internal.sync.Sync_pooldequeue.PoolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync_pooldequeue_static_extension.PoolDequeue_static_extension.popHead(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pushHead(t:stdgo._internal.sync.Sync_pooldequeue.PoolDequeue, _val:stdgo.AnyInterface):Bool {
        final _val = (_val : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_pooldequeue_static_extension.PoolDequeue_static_extension.pushHead(t, _val);
    }
}
@:forward abstract PoolDequeue(stdgo._internal.sync.Sync_pooldequeue.PoolDequeue) from stdgo._internal.sync.Sync_pooldequeue.PoolDequeue to stdgo._internal.sync.Sync_pooldequeue.PoolDequeue {
    @:from
    static function fromHaxeInterface(x:{ function pushHead(_val:stdgo.AnyInterface):Bool; function popHead():stdgo.Tuple<stdgo.AnyInterface, Bool>; function popTail():stdgo.Tuple<stdgo.AnyInterface, Bool>; }):PoolDequeue {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:PoolDequeue = { pushHead : _0 -> x.pushHead(_0), popHead : () -> x.popHead(), popTail : () -> x.popTail(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Locker_static_extension {
    static public function unlock(t:stdgo._internal.sync.Sync_locker.Locker):Void {
        stdgo._internal.sync.Sync_locker_static_extension.Locker_static_extension.unlock(t);
    }
    static public function lock(t:stdgo._internal.sync.Sync_locker.Locker):Void {
        stdgo._internal.sync.Sync_locker_static_extension.Locker_static_extension.lock(t);
    }
}
@:forward abstract Locker(stdgo._internal.sync.Sync_locker.Locker) from stdgo._internal.sync.Sync_locker.Locker to stdgo._internal.sync.Sync_locker.Locker {
    @:from
    static function fromHaxeInterface(x:{ function lock():Void; function unlock():Void; }):Locker {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Locker = { lock : () -> x.lock(), unlock : () -> x.unlock(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.sync.Sync.Cond_static_extension) abstract Cond(stdgo._internal.sync.Sync_cond.Cond) from stdgo._internal.sync.Sync_cond.Cond to stdgo._internal.sync.Sync_cond.Cond {
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
    public function new(?_noCopy:T_noCopy, ?l:Locker, ?_notify:T_notifyList, ?_checker:T_copyChecker) this = new stdgo._internal.sync.Sync_cond.Cond(_noCopy, l, _notify, _checker);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.T_noCopy_static_extension) @:dox(hide) abstract T_noCopy(stdgo._internal.sync.Sync_t_nocopy.T_noCopy) from stdgo._internal.sync.Sync_t_nocopy.T_noCopy to stdgo._internal.sync.Sync_t_nocopy.T_noCopy {
    public function new() this = new stdgo._internal.sync.Sync_t_nocopy.T_noCopy();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.Map__static_extension) abstract Map_(stdgo._internal.sync.Sync_map_.Map_) from stdgo._internal.sync.Sync_map_.Map_ to stdgo._internal.sync.Sync_map_.Map_ {
    public var _mu(get, set) : Mutex;
    function get__mu():Mutex return this._mu;
    function set__mu(v:Mutex):Mutex {
        this._mu = v;
        return v;
    }
    public var _read(get, set) : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.sync.Sync_t_readonly.T_readOnly>;
    function get__read():stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.sync.Sync_t_readonly.T_readOnly> return this._read;
    function set__read(v:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.sync.Sync_t_readonly.T_readOnly>):stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.sync.Sync_t_readonly.T_readOnly> {
        this._read = v;
        return v;
    }
    public var _dirty(get, set) : Map<stdgo.AnyInterface, T_entry>;
    function get__dirty():Map<stdgo.AnyInterface, T_entry> return {
        final __obj__:Map<stdgo.AnyInterface, T_entry> = [];
        for (key => value in this._dirty) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__dirty(v:Map<stdgo.AnyInterface, T_entry>):Map<stdgo.AnyInterface, T_entry> {
        this._dirty = {
            final __obj__ = new stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>>();
            for (key => value in v) {
                __obj__[(key : stdgo.AnyInterface)] = (value : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>);
            };
            __obj__;
        };
        return v;
    }
    public var _misses(get, set) : StdTypes.Int;
    function get__misses():StdTypes.Int return this._misses;
    function set__misses(v:StdTypes.Int):StdTypes.Int {
        this._misses = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_mu:Mutex, ?_read:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.sync.Sync_t_readonly.T_readOnly>, ?_dirty:Map<stdgo.AnyInterface, T_entry>, ?_misses:StdTypes.Int) this = new stdgo._internal.sync.Sync_map_.Map_(_mu, _read, {
        final __obj__ = new stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>>();
        for (key => value in _dirty) {
            __obj__[(key : stdgo.AnyInterface)] = (value : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>);
        };
        __obj__;
    }, (_misses : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.T_readOnly_static_extension) @:dox(hide) abstract T_readOnly(stdgo._internal.sync.Sync_t_readonly.T_readOnly) from stdgo._internal.sync.Sync_t_readonly.T_readOnly to stdgo._internal.sync.Sync_t_readonly.T_readOnly {
    public var _m(get, set) : Map<stdgo.AnyInterface, T_entry>;
    function get__m():Map<stdgo.AnyInterface, T_entry> return {
        final __obj__:Map<stdgo.AnyInterface, T_entry> = [];
        for (key => value in this._m) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__m(v:Map<stdgo.AnyInterface, T_entry>):Map<stdgo.AnyInterface, T_entry> {
        this._m = {
            final __obj__ = new stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>>();
            for (key => value in v) {
                __obj__[(key : stdgo.AnyInterface)] = (value : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>);
            };
            __obj__;
        };
        return v;
    }
    public var _amended(get, set) : Bool;
    function get__amended():Bool return this._amended;
    function set__amended(v:Bool):Bool {
        this._amended = v;
        return v;
    }
    public function new(?_m:Map<stdgo.AnyInterface, T_entry>, ?_amended:Bool) this = new stdgo._internal.sync.Sync_t_readonly.T_readOnly({
        final __obj__ = new stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>>();
        for (key => value in _m) {
            __obj__[(key : stdgo.AnyInterface)] = (value : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>);
        };
        __obj__;
    }, _amended);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.T_entry_static_extension) @:dox(hide) abstract T_entry(stdgo._internal.sync.Sync_t_entry.T_entry) from stdgo._internal.sync.Sync_t_entry.T_entry to stdgo._internal.sync.Sync_t_entry.T_entry {
    public var _p(get, set) : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.AnyInterface>;
    function get__p():stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.AnyInterface> return this._p;
    function set__p(v:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.AnyInterface>):stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.AnyInterface> {
        this._p = v;
        return v;
    }
    public function new(?_p:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.AnyInterface>) this = new stdgo._internal.sync.Sync_t_entry.T_entry(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.Mutex_static_extension) abstract Mutex(stdgo._internal.sync.Sync_mutex.Mutex) from stdgo._internal.sync.Sync_mutex.Mutex to stdgo._internal.sync.Sync_mutex.Mutex {
    public var _state(get, set) : StdTypes.Int;
    function get__state():StdTypes.Int return this._state;
    function set__state(v:StdTypes.Int):StdTypes.Int {
        this._state = (v : stdgo.GoInt32);
        return v;
    }
    public var _sema(get, set) : std.UInt;
    function get__sema():std.UInt return this._sema;
    function set__sema(v:std.UInt):std.UInt {
        this._sema = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_state:StdTypes.Int, ?_sema:std.UInt, ?mutex) this = new stdgo._internal.sync.Sync_mutex.Mutex((_state : stdgo.GoInt32), (_sema : stdgo.GoUInt32), mutex);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.Once_static_extension) abstract Once(stdgo._internal.sync.Sync_once.Once) from stdgo._internal.sync.Sync_once.Once to stdgo._internal.sync.Sync_once.Once {
    public var _done(get, set) : std.UInt;
    function get__done():std.UInt return this._done;
    function set__done(v:std.UInt):std.UInt {
        this._done = (v : stdgo.GoUInt32);
        return v;
    }
    public var _m(get, set) : Mutex;
    function get__m():Mutex return this._m;
    function set__m(v:Mutex):Mutex {
        this._m = v;
        return v;
    }
    public function new(?_done:std.UInt, ?_m:Mutex) this = new stdgo._internal.sync.Sync_once.Once((_done : stdgo.GoUInt32), _m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.Pool_static_extension) abstract Pool(stdgo._internal.sync.Sync_pool.Pool) from stdgo._internal.sync.Sync_pool.Pool to stdgo._internal.sync.Sync_pool.Pool {
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
        this._localSize = (v : stdgo.GoUIntptr);
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
        this._victimSize = (v : stdgo.GoUIntptr);
        return v;
    }
    public var new_(get, set) : () -> stdgo.AnyInterface;
    function get_new_():() -> stdgo.AnyInterface return () -> this.new_();
    function set_new_(v:() -> stdgo.AnyInterface):() -> stdgo.AnyInterface {
        this.new_ = v;
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?_local:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_localSize:stdgo.GoUIntptr, ?_victim:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_victimSize:stdgo.GoUIntptr, ?new_:() -> stdgo.AnyInterface, ?pool) this = new stdgo._internal.sync.Sync_pool.Pool(_noCopy, _local, (_localSize : stdgo.GoUIntptr), _victim, (_victimSize : stdgo.GoUIntptr), new_, pool);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.T_poolLocalInternal_static_extension) @:dox(hide) abstract T_poolLocalInternal(stdgo._internal.sync.Sync_t_poollocalinternal.T_poolLocalInternal) from stdgo._internal.sync.Sync_t_poollocalinternal.T_poolLocalInternal to stdgo._internal.sync.Sync_t_poollocalinternal.T_poolLocalInternal {
    public var _private(get, set) : stdgo.AnyInterface;
    function get__private():stdgo.AnyInterface return this._private;
    function set__private(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._private = (v : stdgo.AnyInterface);
        return v;
    }
    public var _shared(get, set) : T_poolChain;
    function get__shared():T_poolChain return this._shared;
    function set__shared(v:T_poolChain):T_poolChain {
        this._shared = v;
        return v;
    }
    public function new(?_private:stdgo.AnyInterface, ?_shared:T_poolChain) this = new stdgo._internal.sync.Sync_t_poollocalinternal.T_poolLocalInternal((_private : stdgo.AnyInterface), _shared);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.T_poolLocal_static_extension) @:dox(hide) abstract T_poolLocal(stdgo._internal.sync.Sync_t_poollocal.T_poolLocal) from stdgo._internal.sync.Sync_t_poollocal.T_poolLocal to stdgo._internal.sync.Sync_t_poollocal.T_poolLocal {
    public var _poolLocalInternal(get, set) : T_poolLocalInternal;
    function get__poolLocalInternal():T_poolLocalInternal return this._poolLocalInternal;
    function set__poolLocalInternal(v:T_poolLocalInternal):T_poolLocalInternal {
        this._poolLocalInternal = v;
        return v;
    }
    public var _pad(get, set) : haxe.ds.Vector<std.UInt>;
    function get__pad():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._pad) i]);
    function set__pad(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._pad = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_poolLocalInternal:T_poolLocalInternal, ?_pad:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.sync.Sync_t_poollocal.T_poolLocal(_poolLocalInternal, ([for (i in _pad) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.T_poolDequeue_static_extension) @:dox(hide) abstract T_poolDequeue(stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue) from stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue to stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue {
    public var _headTail(get, set) : haxe.UInt64;
    function get__headTail():haxe.UInt64 return this._headTail;
    function set__headTail(v:haxe.UInt64):haxe.UInt64 {
        this._headTail = (v : stdgo.GoUInt64);
        return v;
    }
    public var _vals(get, set) : Array<T_eface>;
    function get__vals():Array<T_eface> return [for (i in this._vals) i];
    function set__vals(v:Array<T_eface>):Array<T_eface> {
        this._vals = ([for (i in v) i] : stdgo.Slice<stdgo._internal.sync.Sync_t_eface.T_eface>);
        return v;
    }
    public function new(?_headTail:haxe.UInt64, ?_vals:Array<T_eface>) this = new stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue((_headTail : stdgo.GoUInt64), ([for (i in _vals) i] : stdgo.Slice<stdgo._internal.sync.Sync_t_eface.T_eface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.T_eface_static_extension) @:dox(hide) abstract T_eface(stdgo._internal.sync.Sync_t_eface.T_eface) from stdgo._internal.sync.Sync_t_eface.T_eface to stdgo._internal.sync.Sync_t_eface.T_eface {
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
    public function new(?_typ:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_val:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.Sync_t_eface.T_eface(_typ, _val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.T_poolChain_static_extension) @:dox(hide) abstract T_poolChain(stdgo._internal.sync.Sync_t_poolchain.T_poolChain) from stdgo._internal.sync.Sync_t_poolchain.T_poolChain to stdgo._internal.sync.Sync_t_poolchain.T_poolChain {
    public var _head(get, set) : T_poolChainElt;
    function get__head():T_poolChainElt return this._head;
    function set__head(v:T_poolChainElt):T_poolChainElt {
        this._head = (v : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>);
        return v;
    }
    public var _tail(get, set) : T_poolChainElt;
    function get__tail():T_poolChainElt return this._tail;
    function set__tail(v:T_poolChainElt):T_poolChainElt {
        this._tail = (v : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>);
        return v;
    }
    public function new(?_head:T_poolChainElt, ?_tail:T_poolChainElt) this = new stdgo._internal.sync.Sync_t_poolchain.T_poolChain((_head : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>), (_tail : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.T_poolChainElt_static_extension) @:dox(hide) abstract T_poolChainElt(stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt) from stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt to stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt {
    public var _poolDequeue(get, set) : T_poolDequeue;
    function get__poolDequeue():T_poolDequeue return this._poolDequeue;
    function set__poolDequeue(v:T_poolDequeue):T_poolDequeue {
        this._poolDequeue = v;
        return v;
    }
    public var _next(get, set) : T_poolChainElt;
    function get__next():T_poolChainElt return this._next;
    function set__next(v:T_poolChainElt):T_poolChainElt {
        this._next = (v : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>);
        return v;
    }
    public var _prev(get, set) : T_poolChainElt;
    function get__prev():T_poolChainElt return this._prev;
    function set__prev(v:T_poolChainElt):T_poolChainElt {
        this._prev = (v : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>);
        return v;
    }
    public function new(?_poolDequeue:T_poolDequeue, ?_next:T_poolChainElt, ?_prev:T_poolChainElt) this = new stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt(_poolDequeue, (_next : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>), (_prev : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.T_notifyList_static_extension) @:dox(hide) abstract T_notifyList(stdgo._internal.sync.Sync_t_notifylist.T_notifyList) from stdgo._internal.sync.Sync_t_notifylist.T_notifyList to stdgo._internal.sync.Sync_t_notifylist.T_notifyList {
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
    public function new(?_wait:std.UInt, ?_notify:std.UInt, ?_lock:stdgo.GoUIntptr, ?_head:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_tail:stdgo._internal.unsafe.Unsafe.UnsafePointer) this = new stdgo._internal.sync.Sync_t_notifylist.T_notifyList((_wait : stdgo.GoUInt32), (_notify : stdgo.GoUInt32), (_lock : stdgo.GoUIntptr), _head, _tail);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.RWMutex_static_extension) abstract RWMutex(stdgo._internal.sync.Sync_rwmutex.RWMutex) from stdgo._internal.sync.Sync_rwmutex.RWMutex to stdgo._internal.sync.Sync_rwmutex.RWMutex {
    public var _w(get, set) : Mutex;
    function get__w():Mutex return this._w;
    function set__w(v:Mutex):Mutex {
        this._w = v;
        return v;
    }
    public var _writerSem(get, set) : std.UInt;
    function get__writerSem():std.UInt return this._writerSem;
    function set__writerSem(v:std.UInt):std.UInt {
        this._writerSem = (v : stdgo.GoUInt32);
        return v;
    }
    public var _readerSem(get, set) : std.UInt;
    function get__readerSem():std.UInt return this._readerSem;
    function set__readerSem(v:std.UInt):std.UInt {
        this._readerSem = (v : stdgo.GoUInt32);
        return v;
    }
    public var _readerCount(get, set) : stdgo._internal.sync.atomic_.Atomic__int32.Int32;
    function get__readerCount():stdgo._internal.sync.atomic_.Atomic__int32.Int32 return this._readerCount;
    function set__readerCount(v:stdgo._internal.sync.atomic_.Atomic__int32.Int32):stdgo._internal.sync.atomic_.Atomic__int32.Int32 {
        this._readerCount = v;
        return v;
    }
    public var _readerWait(get, set) : stdgo._internal.sync.atomic_.Atomic__int32.Int32;
    function get__readerWait():stdgo._internal.sync.atomic_.Atomic__int32.Int32 return this._readerWait;
    function set__readerWait(v:stdgo._internal.sync.atomic_.Atomic__int32.Int32):stdgo._internal.sync.atomic_.Atomic__int32.Int32 {
        this._readerWait = v;
        return v;
    }
    public function new(?_w:Mutex, ?_writerSem:std.UInt, ?_readerSem:std.UInt, ?_readerCount:stdgo._internal.sync.atomic_.Atomic__int32.Int32, ?_readerWait:stdgo._internal.sync.atomic_.Atomic__int32.Int32, ?mutex) this = new stdgo._internal.sync.Sync_rwmutex.RWMutex(_w, (_writerSem : stdgo.GoUInt32), (_readerSem : stdgo.GoUInt32), _readerCount, _readerWait, mutex);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.sync.Sync.WaitGroup_static_extension) abstract WaitGroup(stdgo._internal.sync.Sync_waitgroup.WaitGroup) from stdgo._internal.sync.Sync_waitgroup.WaitGroup to stdgo._internal.sync.Sync_waitgroup.WaitGroup {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _state(get, set) : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64;
    function get__state():stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 return this._state;
    function set__state(v:stdgo._internal.sync.atomic_.Atomic__uint64.Uint64):stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 {
        this._state = v;
        return v;
    }
    public var _sema(get, set) : std.UInt;
    function get__sema():std.UInt return this._sema;
    function set__sema(v:std.UInt):std.UInt {
        this._sema = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?_state:stdgo._internal.sync.atomic_.Atomic__uint64.Uint64, ?_sema:std.UInt, ?lock, ?counter:std.UInt) this = new stdgo._internal.sync.Sync_waitgroup.WaitGroup(_noCopy, _state, (_sema : stdgo.GoUInt32), lock, (counter : stdgo.GoUInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.sync.Sync_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.sync.Sync_t__struct_0.T__struct_0;
@:dox(hide) typedef T_copyChecker = stdgo._internal.sync.Sync_t_copychecker.T_copyChecker;
@:dox(hide) typedef T_dequeueNil = stdgo._internal.sync.Sync_t_dequeuenil.T_dequeueNil;
@:dox(hide) typedef T_rlocker = stdgo._internal.sync.Sync_t_rlocker.T_rlocker;
typedef CondPointer = stdgo._internal.sync.Sync_condpointer.CondPointer;
class Cond_static_extension {
    static public function broadcast(_c:Cond):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>);
        stdgo._internal.sync.Sync_cond_static_extension.Cond_static_extension.broadcast(_c);
    }
    static public function signal(_c:Cond):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>);
        stdgo._internal.sync.Sync_cond_static_extension.Cond_static_extension.signal(_c);
    }
    static public function wait_(_c:Cond):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>);
        stdgo._internal.sync.Sync_cond_static_extension.Cond_static_extension.wait_(_c);
    }
}
@:dox(hide) typedef T_noCopyPointer = stdgo._internal.sync.Sync_t_nocopypointer.T_noCopyPointer;
@:dox(hide) class T_noCopy_static_extension {
    static public function unlock(_:T_noCopy):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.sync.Sync_t_nocopy.T_noCopy>);
        stdgo._internal.sync.Sync_t_nocopy_static_extension.T_noCopy_static_extension.unlock(_);
    }
    static public function lock(_:T_noCopy):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.sync.Sync_t_nocopy.T_noCopy>);
        stdgo._internal.sync.Sync_t_nocopy_static_extension.T_noCopy_static_extension.lock(_);
    }
}
typedef Map_Pointer = stdgo._internal.sync.Sync_map_pointer.Map_Pointer;
class Map__static_extension {
    static public function _dirtyLocked(_m:Map_):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>);
        stdgo._internal.sync.Sync_map__static_extension.Map__static_extension._dirtyLocked(_m);
    }
    static public function _missLocked(_m:Map_):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>);
        stdgo._internal.sync.Sync_map__static_extension.Map__static_extension._missLocked(_m);
    }
    static public function range(_m:Map_, _f:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>);
        final _f = _f;
        stdgo._internal.sync.Sync_map__static_extension.Map__static_extension.range(_m, _f);
    }
    static public function compareAndDelete(_m:Map_, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        final _old = (_old : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_map__static_extension.Map__static_extension.compareAndDelete(_m, _key, _old);
    }
    static public function compareAndSwap(_m:Map_, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new_:stdgo.AnyInterface):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        final _old = (_old : stdgo.AnyInterface);
        final _new_ = (_new_ : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_map__static_extension.Map__static_extension.compareAndSwap(_m, _key, _old, _new_);
    }
    static public function swap(_m:Map_, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        final _value = (_value : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.sync.Sync_map__static_extension.Map__static_extension.swap(_m, _key, _value);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function delete(_m:Map_, _key:stdgo.AnyInterface):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        stdgo._internal.sync.Sync_map__static_extension.Map__static_extension.delete(_m, _key);
    }
    static public function loadAndDelete(_m:Map_, _key:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.sync.Sync_map__static_extension.Map__static_extension.loadAndDelete(_m, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function loadOrStore(_m:Map_, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        final _value = (_value : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.sync.Sync_map__static_extension.Map__static_extension.loadOrStore(_m, _key, _value);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function store(_m:Map_, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        final _value = (_value : stdgo.AnyInterface);
        stdgo._internal.sync.Sync_map__static_extension.Map__static_extension.store(_m, _key, _value);
    }
    static public function load(_m:Map_, _key:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>);
        final _key = (_key : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.sync.Sync_map__static_extension.Map__static_extension.load(_m, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _loadReadOnly(_m:Map_):T_readOnly {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>);
        return stdgo._internal.sync.Sync_map__static_extension.Map__static_extension._loadReadOnly(_m);
    }
}
@:dox(hide) typedef T_readOnlyPointer = stdgo._internal.sync.Sync_t_readonlypointer.T_readOnlyPointer;
@:dox(hide) class T_readOnly_static_extension {

}
@:dox(hide) typedef T_entryPointer = stdgo._internal.sync.Sync_t_entrypointer.T_entryPointer;
@:dox(hide) class T_entry_static_extension {
    static public function _tryExpungeLocked(_e:T_entry):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>);
        return stdgo._internal.sync.Sync_t_entry_static_extension.T_entry_static_extension._tryExpungeLocked(_e);
    }
    static public function _trySwap(_e:T_entry, _i:stdgo.AnyInterface):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>);
        final _i = (_i : stdgo.Ref<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.sync.Sync_t_entry_static_extension.T_entry_static_extension._trySwap(_e, _i);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _delete(_e:T_entry):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>);
        return {
            final obj = stdgo._internal.sync.Sync_t_entry_static_extension.T_entry_static_extension._delete(_e);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _tryLoadOrStore(_e:T_entry, _i:stdgo.AnyInterface):stdgo.Tuple.Tuple3<stdgo.AnyInterface, Bool, Bool> {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>);
        final _i = (_i : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.sync.Sync_t_entry_static_extension.T_entry_static_extension._tryLoadOrStore(_e, _i);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _swapLocked(_e:T_entry, _i:stdgo.AnyInterface):stdgo.AnyInterface {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>);
        final _i = (_i : stdgo.Ref<stdgo.AnyInterface>);
        return stdgo._internal.sync.Sync_t_entry_static_extension.T_entry_static_extension._swapLocked(_e, _i);
    }
    static public function _unexpungeLocked(_e:T_entry):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>);
        return stdgo._internal.sync.Sync_t_entry_static_extension.T_entry_static_extension._unexpungeLocked(_e);
    }
    static public function _tryCompareAndSwap(_e:T_entry, _old:stdgo.AnyInterface, _new_:stdgo.AnyInterface):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>);
        final _old = (_old : stdgo.AnyInterface);
        final _new_ = (_new_ : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_t_entry_static_extension.T_entry_static_extension._tryCompareAndSwap(_e, _old, _new_);
    }
    static public function _load(_e:T_entry):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _e = (_e : stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>);
        return {
            final obj = stdgo._internal.sync.Sync_t_entry_static_extension.T_entry_static_extension._load(_e);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef MutexPointer = stdgo._internal.sync.Sync_mutexpointer.MutexPointer;
class Mutex_static_extension {
    static public function _unlockSlow(_m:Mutex, _new_:StdTypes.Int):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>);
        final _new_ = (_new_ : stdgo.GoInt32);
        stdgo._internal.sync.Sync_mutex_static_extension.Mutex_static_extension._unlockSlow(_m, _new_);
    }
    static public function unlock(_m:Mutex):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>);
        stdgo._internal.sync.Sync_mutex_static_extension.Mutex_static_extension.unlock(_m);
    }
    static public function _lockSlow(_m:Mutex):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>);
        stdgo._internal.sync.Sync_mutex_static_extension.Mutex_static_extension._lockSlow(_m);
    }
    static public function tryLock(_m:Mutex):Bool {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>);
        return stdgo._internal.sync.Sync_mutex_static_extension.Mutex_static_extension.tryLock(_m);
    }
    static public function lock(_m:Mutex):Void {
        final _m = (_m : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>);
        stdgo._internal.sync.Sync_mutex_static_extension.Mutex_static_extension.lock(_m);
    }
}
typedef OncePointer = stdgo._internal.sync.Sync_oncepointer.OncePointer;
class Once_static_extension {
    static public function _doSlow(_o:Once, _f:() -> Void):Void {
        final _o = (_o : stdgo.Ref<stdgo._internal.sync.Sync_once.Once>);
        final _f = _f;
        stdgo._internal.sync.Sync_once_static_extension.Once_static_extension._doSlow(_o, _f);
    }
    static public function do_(_o:Once, _f:() -> Void):Void {
        final _o = (_o : stdgo.Ref<stdgo._internal.sync.Sync_once.Once>);
        final _f = _f;
        stdgo._internal.sync.Sync_once_static_extension.Once_static_extension.do_(_o, _f);
    }
}
typedef PoolPointer = stdgo._internal.sync.Sync_poolpointer.PoolPointer;
class Pool_static_extension {
    static public function _pinSlow(_p:Pool):stdgo.Tuple<T_poolLocal, StdTypes.Int> {
        final _p = (_p : stdgo.Ref<stdgo._internal.sync.Sync_pool.Pool>);
        return {
            final obj = stdgo._internal.sync.Sync_pool_static_extension.Pool_static_extension._pinSlow(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pin(_p:Pool):stdgo.Tuple<T_poolLocal, StdTypes.Int> {
        final _p = (_p : stdgo.Ref<stdgo._internal.sync.Sync_pool.Pool>);
        return {
            final obj = stdgo._internal.sync.Sync_pool_static_extension.Pool_static_extension._pin(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _getSlow(_p:Pool, _pid:StdTypes.Int):stdgo.AnyInterface {
        final _p = (_p : stdgo.Ref<stdgo._internal.sync.Sync_pool.Pool>);
        final _pid = (_pid : stdgo.GoInt);
        return stdgo._internal.sync.Sync_pool_static_extension.Pool_static_extension._getSlow(_p, _pid);
    }
    static public function get(_p:Pool):stdgo.AnyInterface {
        final _p = (_p : stdgo.Ref<stdgo._internal.sync.Sync_pool.Pool>);
        return stdgo._internal.sync.Sync_pool_static_extension.Pool_static_extension.get(_p);
    }
    static public function put(_p:Pool, _x:stdgo.AnyInterface):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.sync.Sync_pool.Pool>);
        final _x = (_x : stdgo.AnyInterface);
        stdgo._internal.sync.Sync_pool_static_extension.Pool_static_extension.put(_p, _x);
    }
}
@:dox(hide) typedef T_poolLocalInternalPointer = stdgo._internal.sync.Sync_t_poollocalinternalpointer.T_poolLocalInternalPointer;
@:dox(hide) class T_poolLocalInternal_static_extension {

}
@:dox(hide) typedef T_poolLocalPointer = stdgo._internal.sync.Sync_t_poollocalpointer.T_poolLocalPointer;
@:dox(hide) class T_poolLocal_static_extension {

}
@:dox(hide) typedef T_poolDequeuePointer = stdgo._internal.sync.Sync_t_pooldequeuepointer.T_poolDequeuePointer;
@:dox(hide) class T_poolDequeue_static_extension {
    static public function _popTail(_d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>);
        return {
            final obj = stdgo._internal.sync.Sync_t_pooldequeue_static_extension.T_poolDequeue_static_extension._popTail(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _popHead(_d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>);
        return {
            final obj = stdgo._internal.sync.Sync_t_pooldequeue_static_extension.T_poolDequeue_static_extension._popHead(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pushHead(_d:T_poolDequeue, _val:stdgo.AnyInterface):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>);
        final _val = (_val : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_t_pooldequeue_static_extension.T_poolDequeue_static_extension._pushHead(_d, _val);
    }
    static public function _pack(_d:T_poolDequeue, _head:std.UInt, _tail:std.UInt):haxe.UInt64 {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>);
        final _head = (_head : stdgo.GoUInt32);
        final _tail = (_tail : stdgo.GoUInt32);
        return stdgo._internal.sync.Sync_t_pooldequeue_static_extension.T_poolDequeue_static_extension._pack(_d, _head, _tail);
    }
    static public function _unpack(_d:T_poolDequeue, _ptrs:haxe.UInt64):stdgo.Tuple<std.UInt, std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>);
        final _ptrs = (_ptrs : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.sync.Sync_t_pooldequeue_static_extension.T_poolDequeue_static_extension._unpack(_d, _ptrs);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popTail(_d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>);
        return {
            final obj = stdgo._internal.sync.Sync_t_pooldequeue_static_extension.T_poolDequeue_static_extension.popTail(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popHead(_d:T_poolDequeue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>);
        return {
            final obj = stdgo._internal.sync.Sync_t_pooldequeue_static_extension.T_poolDequeue_static_extension.popHead(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pushHead(_d:T_poolDequeue, _val:stdgo.AnyInterface):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.sync.Sync_t_pooldequeue.T_poolDequeue>);
        final _val = (_val : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_t_pooldequeue_static_extension.T_poolDequeue_static_extension.pushHead(_d, _val);
    }
}
@:dox(hide) typedef T_efacePointer = stdgo._internal.sync.Sync_t_efacepointer.T_efacePointer;
@:dox(hide) class T_eface_static_extension {

}
@:dox(hide) typedef T_poolChainPointer = stdgo._internal.sync.Sync_t_poolchainpointer.T_poolChainPointer;
@:dox(hide) class T_poolChain_static_extension {
    static public function _popTail(_c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>);
        return {
            final obj = stdgo._internal.sync.Sync_t_poolchain_static_extension.T_poolChain_static_extension._popTail(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _popHead(_c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>);
        return {
            final obj = stdgo._internal.sync.Sync_t_poolchain_static_extension.T_poolChain_static_extension._popHead(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pushHead(_c:T_poolChain, _val:stdgo.AnyInterface):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>);
        final _val = (_val : stdgo.AnyInterface);
        stdgo._internal.sync.Sync_t_poolchain_static_extension.T_poolChain_static_extension._pushHead(_c, _val);
    }
    static public function popTail(_c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>);
        return {
            final obj = stdgo._internal.sync.Sync_t_poolchain_static_extension.T_poolChain_static_extension.popTail(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function popHead(_c:T_poolChain):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>);
        return {
            final obj = stdgo._internal.sync.Sync_t_poolchain_static_extension.T_poolChain_static_extension.popHead(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pushHead(_c:T_poolChain, _val:stdgo.AnyInterface):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_t_poolchain.T_poolChain>);
        final _val = (_val : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_t_poolchain_static_extension.T_poolChain_static_extension.pushHead(_c, _val);
    }
}
@:dox(hide) typedef T_poolChainEltPointer = stdgo._internal.sync.Sync_t_poolchaineltpointer.T_poolChainEltPointer;
@:dox(hide) class T_poolChainElt_static_extension {
    public static function _unpack(__self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt, _0:haxe.UInt64):stdgo.Tuple<std.UInt, std.UInt> {
        final _0 = (_0 : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.sync.Sync_t_poolchainelt_static_extension.T_poolChainElt_static_extension._unpack(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pushHead(__self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt, _0:stdgo.AnyInterface):Bool {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_t_poolchainelt_static_extension.T_poolChainElt_static_extension._pushHead(__self__, _0);
    }
    public static function _popTail(__self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync_t_poolchainelt_static_extension.T_poolChainElt_static_extension._popTail(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _popHead(__self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync_t_poolchainelt_static_extension.T_poolChainElt_static_extension._popHead(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pack(__self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt, _0:std.UInt, _1:std.UInt):haxe.UInt64 {
        final _0 = (_0 : stdgo.GoUInt32);
        final _1 = (_1 : stdgo.GoUInt32);
        return stdgo._internal.sync.Sync_t_poolchainelt_static_extension.T_poolChainElt_static_extension._pack(__self__, _0, _1);
    }
    public static function pushHead(__self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt, _0:stdgo.AnyInterface):Bool {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.sync.Sync_t_poolchainelt_static_extension.T_poolChainElt_static_extension.pushHead(__self__, _0);
    }
    public static function popTail(__self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync_t_poolchainelt_static_extension.T_poolChainElt_static_extension.popTail(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function popHead(__self__:stdgo._internal.sync.Sync_t_poolchainelt.T_poolChainElt):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        return {
            final obj = stdgo._internal.sync.Sync_t_poolchainelt_static_extension.T_poolChainElt_static_extension.popHead(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_notifyListPointer = stdgo._internal.sync.Sync_t_notifylistpointer.T_notifyListPointer;
@:dox(hide) class T_notifyList_static_extension {

}
typedef RWMutexPointer = stdgo._internal.sync.Sync_rwmutexpointer.RWMutexPointer;
class RWMutex_static_extension {
    static public function rLocker(_rw:RWMutex):Locker {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>);
        return stdgo._internal.sync.Sync_rwmutex_static_extension.RWMutex_static_extension.rLocker(_rw);
    }
    static public function unlock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>);
        stdgo._internal.sync.Sync_rwmutex_static_extension.RWMutex_static_extension.unlock(_rw);
    }
    static public function tryLock(_rw:RWMutex):Bool {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>);
        return stdgo._internal.sync.Sync_rwmutex_static_extension.RWMutex_static_extension.tryLock(_rw);
    }
    static public function lock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>);
        stdgo._internal.sync.Sync_rwmutex_static_extension.RWMutex_static_extension.lock(_rw);
    }
    static public function _rUnlockSlow(_rw:RWMutex, _r:StdTypes.Int):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>);
        final _r = (_r : stdgo.GoInt32);
        stdgo._internal.sync.Sync_rwmutex_static_extension.RWMutex_static_extension._rUnlockSlow(_rw, _r);
    }
    static public function rUnlock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>);
        stdgo._internal.sync.Sync_rwmutex_static_extension.RWMutex_static_extension.rUnlock(_rw);
    }
    static public function tryRLock(_rw:RWMutex):Bool {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>);
        return stdgo._internal.sync.Sync_rwmutex_static_extension.RWMutex_static_extension.tryRLock(_rw);
    }
    static public function rLock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>);
        stdgo._internal.sync.Sync_rwmutex_static_extension.RWMutex_static_extension.rLock(_rw);
    }
}
typedef WaitGroupPointer = stdgo._internal.sync.Sync_waitgrouppointer.WaitGroupPointer;
class WaitGroup_static_extension {
    static public function wait_(_wg:WaitGroup):Void {
        final _wg = (_wg : stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup>);
        stdgo._internal.sync.Sync_waitgroup_static_extension.WaitGroup_static_extension.wait_(_wg);
    }
    static public function done(_wg:WaitGroup):Void {
        final _wg = (_wg : stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup>);
        stdgo._internal.sync.Sync_waitgroup_static_extension.WaitGroup_static_extension.done(_wg);
    }
    static public function add(_wg:WaitGroup, _delta:StdTypes.Int):Void {
        final _wg = (_wg : stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup>);
        final _delta = (_delta : stdgo.GoInt);
        stdgo._internal.sync.Sync_waitgroup_static_extension.WaitGroup_static_extension.add(_wg, _delta);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.sync.Sync_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T_copyCheckerPointer = stdgo._internal.sync.Sync_t_copycheckerpointer.T_copyCheckerPointer;
@:dox(hide) class T_copyChecker_static_extension {
    static public function _check(_c:stdgo.Pointer<T_copyChecker>):Void {
        stdgo._internal.sync.Sync_t_copychecker_static_extension.T_copyChecker_static_extension._check(_c);
    }
}
@:dox(hide) typedef T_dequeueNilPointer = stdgo._internal.sync.Sync_t_dequeuenilpointer.T_dequeueNilPointer;
@:dox(hide) class T_dequeueNil_static_extension {

}
@:dox(hide) typedef T_rlockerPointer = stdgo._internal.sync.Sync_t_rlockerpointer.T_rlockerPointer;
@:dox(hide) class T_rlocker_static_extension {
    static public function unlock(_r:T_rlocker):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.sync.Sync_t_rlocker.T_rlocker>);
        stdgo._internal.sync.Sync_t_rlocker_static_extension.T_rlocker_static_extension.unlock(_r);
    }
    static public function lock(_r:T_rlocker):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.sync.Sync_t_rlocker.T_rlocker>);
        stdgo._internal.sync.Sync_t_rlocker_static_extension.T_rlocker_static_extension.lock(_r);
    }
}
/**
    * Package sync provides basic synchronization primitives such as mutual
    * exclusion locks. Other than the Once and WaitGroup types, most are intended
    * for use by low-level library routines. Higher-level synchronization is
    * better done via channels and communication.
    * 
    * Values containing the types defined in this package should not be copied.
**/
class Sync {
    /**
        * NewCond returns a new Cond with Locker l.
    **/
    static public inline function newCond(_l:Locker):Cond {
        return stdgo._internal.sync.Sync_newcond.newCond(_l);
    }
    static public inline function newPoolDequeue(_n:StdTypes.Int):PoolDequeue {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.sync.Sync_newpooldequeue.newPoolDequeue(_n);
    }
    static public inline function newPoolChain():PoolDequeue {
        return stdgo._internal.sync.Sync_newpoolchain.newPoolChain();
    }
    /**
        * OnceFunc returns a function that invokes f only once. The returned function
        * may be called concurrently.
        * 
        * If f panics, the returned function will panic with the same value on every call.
    **/
    static public inline function onceFunc(_f:() -> Void):() -> Void {
        final _f = _f;
        return () -> stdgo._internal.sync.Sync_oncefunc.onceFunc(_f)();
    }
    /**
        * OnceValue returns a function that invokes f only once and returns the value
        * returned by f. The returned function may be called concurrently.
        * 
        * If f panics, the returned function will panic with the same value on every call.
    **/
    static public inline function onceValue(_f:() -> Dynamic):() -> Dynamic {
        final _f = _f;
        return () -> stdgo._internal.sync.Sync_oncevalue.onceValue(_f)();
    }
    /**
        * OnceValues returns a function that invokes f only once and returns the values
        * returned by f. The returned function may be called concurrently.
        * 
        * If f panics, the returned function will panic with the same value on every call.
    **/
    static public inline function onceValues(_f:() -> stdgo.Tuple<Dynamic, Dynamic>):() -> stdgo.Tuple<Dynamic, Dynamic> {
        final _f = _f;
        return () -> stdgo._internal.sync.Sync_oncevalues.onceValues(_f)();
    }
}
