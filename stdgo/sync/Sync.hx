package stdgo.sync;
/**
    // Package sync provides basic synchronization primitives such as mutual
    // exclusion locks. Other than the Once and WaitGroup types, most are intended
    // for use by low-level library routines. Higher-level synchronization is
    // better done via channels and communication.
    //
    // Values containing the types defined in this package should not be copied.
**/
private var __go2hxdoc__package : Bool;
/**
    // expunged is an arbitrary pointer that marks entries which have been deleted
    // from the dirty map.
    
    
**/
var _expunged : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface> = (stdgo.Go.setRef((null : stdgo.StdGoTypes.AnyInterface)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>);
/**
    // Export for testing.
    
    
**/
var runtime_Semacquire : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32> -> Void = _runtime_Semacquire;
/**
    
    
    
**/
var runtime_Semrelease : (stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, Bool, stdgo.StdGoTypes.GoInt) -> Void = _runtime_Semrelease;
/**
    
    
    
**/
var runtime_procPin : () -> stdgo.StdGoTypes.GoInt = _runtime_procPin;
/**
    
    
    
**/
var runtime_procUnpin : () -> Void = _runtime_procUnpin;
/**
    
    
    // mutex is locked
**/
final _mutexLocked : stdgo.StdGoTypes.GoUInt64 = (4i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _mutexWoken = (4i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _mutexStarving = (4i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _mutexWaiterShift : stdgo.StdGoTypes.GoUInt64 = (3i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Mutex fairness.
    //
    // Mutex can be in 2 modes of operations: normal and starvation.
    // In normal mode waiters are queued in FIFO order, but a woken up waiter
    // does not own the mutex and competes with new arriving goroutines over
    // the ownership. New arriving goroutines have an advantage -- they are
    // already running on CPU and there can be lots of them, so a woken up
    // waiter has good chances of losing. In such case it is queued at front
    // of the wait queue. If a waiter fails to acquire the mutex for more than 1ms,
    // it switches mutex to the starvation mode.
    //
    // In starvation mode ownership of the mutex is directly handed off from
    // the unlocking goroutine to the waiter at the front of the queue.
    // New arriving goroutines don't try to acquire the mutex even if it appears
    // to be unlocked, and don't try to spin. Instead they queue themselves at
    // the tail of the wait queue.
    //
    // If a waiter receives ownership of the mutex and sees that either
    // (1) it is the last waiter in the queue, or (2) it waited for less than 1 ms,
    // it switches mutex back to normal operation mode.
    //
    // Normal mode has considerably better performance as a goroutine can acquire
    // a mutex several times in a row even if there are blocked waiters.
    // Starvation mode is important to prevent pathological cases of tail latency.
    
    
**/
final _starvationThresholdNs : stdgo.StdGoTypes.GoFloat64 = (1e+06 : stdgo.StdGoTypes.GoFloat64);
/**
    
    
    
**/
var _poolRaceHash : stdgo.GoArray<stdgo.StdGoTypes.GoUInt64> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt64>(...[for (i in 0 ... 128) (0 : stdgo.StdGoTypes.GoUInt64)]);
/**
    
    
    
**/
var _allPoolsMu : Mutex = ({} : stdgo.sync.Sync.Mutex);
/**
    // allPools is the set of pools that have non-empty primary
    // caches. Protected by either 1) allPoolsMu and pinning or 2)
    // STW.
    
    
**/
var _allPools : stdgo.Slice<stdgo.StdGoTypes.Ref<Pool>> = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Pool>>);
/**
    // oldPools is the set of pools that may have non-empty victim
    // caches. Protected by STW.
    
    
**/
var _oldPools : stdgo.Slice<stdgo.StdGoTypes.Ref<Pool>> = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Pool>>);
/**
    
    
    
**/
final _dequeueBits : stdgo.StdGoTypes.GoUInt64 = (32i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // dequeueLimit is the maximum size of a poolDequeue.
    //
    // This must be at most (1<<dequeueBits)/2 because detecting fullness
    // depends on wrapping around the ring buffer without wrapping around
    // the index. We divide by 4 so this fits in an int on 32-bit.
    
    
**/
final _dequeueLimit : stdgo.StdGoTypes.GoUInt64 = (1073741824i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _rwmutexMaxReaders : stdgo.StdGoTypes.GoUInt64 = (1073741824i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // poolDequeue testing.
    
    
**/
typedef PoolDequeue = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function pushHead(_val:stdgo.StdGoTypes.AnyInterface):Bool;
    /**
        
        
        
    **/
    public dynamic function popHead():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function popTail():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; };
};
/**
    // A Locker represents an object that can be locked and unlocked.
    
    
**/
typedef Locker = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function lock():Void;
    /**
        
        
        
    **/
    public dynamic function unlock():Void;
};
/**
    // Cond implements a condition variable, a rendezvous point
    // for goroutines waiting for or announcing the occurrence
    // of an event.
    //
    // Each Cond has an associated Locker L (often a *Mutex or *RWMutex),
    // which must be held when changing the condition and
    // when calling the Wait method.
    //
    // A Cond must not be copied after first use.
    //
    // In the terminology of the Go memory model, Cond arranges that
    // a call to Broadcast or Signal “synchronizes before” any Wait call
    // that it unblocks.
    //
    // For many simple use cases, users will be better off using channels than a
    // Cond (Broadcast corresponds to closing a channel, and Signal corresponds to
    // sending on a channel).
    //
    // For more on replacements for sync.Cond, see [Roberto Clapis's series on
    // advanced concurrency patterns], as well as [Bryan Mills's talk on concurrency
    // patterns].
    //
    // [Roberto Clapis's series on advanced concurrency patterns]: https://blogtitle.github.io/categories/concurrency/
    // [Bryan Mills's talk on concurrency patterns]: https://drive.google.com/file/d/1nPdvhB0PutEJzdCq5ms6UI58dp50fcAN/view
    
    
**/
@:structInit @:using(stdgo.sync.Sync.Cond_static_extension) class Cond {
    public var _noCopy : stdgo.sync.Sync.T_noCopy = ({} : stdgo.sync.Sync.T_noCopy);
    /**
        // L is held while observing or changing the condition
    **/
    public var l : stdgo.sync.Sync.Locker = (null : stdgo.sync.Sync.Locker);
    public var _notify : stdgo.sync.Sync.T_notifyList = ({} : stdgo.sync.Sync.T_notifyList);
    public var _checker : stdgo.sync.Sync.T_copyChecker = ((0 : stdgo.StdGoTypes.GoUIntptr) : stdgo.sync.Sync.T_copyChecker);
    public function new(?_noCopy:stdgo.sync.Sync.T_noCopy, ?l:stdgo.sync.Sync.Locker, ?_notify:stdgo.sync.Sync.T_notifyList, ?_checker:stdgo.sync.Sync.T_copyChecker) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (l != null) this.l = l;
        if (_notify != null) this._notify = _notify;
        if (_checker != null) this._checker = _checker;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Cond(_noCopy, l, _notify, _checker);
    }
}
/**
    // noCopy may be added to structs which must not be copied
    // after the first use.
    //
    // See https://golang.org/issues/8005#issuecomment-190753527
    // for details.
    //
    // Note that it must not be embedded, due to the Lock and Unlock methods.
    
    
**/
@:structInit @:private @:using(stdgo.sync.Sync.T_noCopy_static_extension) class T_noCopy {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_noCopy();
    }
}
/**
    // Map is like a Go map[interface{}]interface{} but is safe for concurrent use
    // by multiple goroutines without additional locking or coordination.
    // Loads, stores, and deletes run in amortized constant time.
    //
    // The Map type is specialized. Most code should use a plain Go map instead,
    // with separate locking or coordination, for better type safety and to make it
    // easier to maintain other invariants along with the map content.
    //
    // The Map type is optimized for two common use cases: (1) when the entry for a given
    // key is only ever written once but read many times, as in caches that only grow,
    // or (2) when multiple goroutines read, write, and overwrite entries for disjoint
    // sets of keys. In these two cases, use of a Map may significantly reduce lock
    // contention compared to a Go map paired with a separate Mutex or RWMutex.
    //
    // The zero Map is empty and ready for use. A Map must not be copied after first use.
    //
    // In the terminology of the Go memory model, Map arranges that a write operation
    // “synchronizes before” any read operation that observes the effect of the write, where
    // read and write operations are defined as follows.
    // Load, LoadAndDelete, LoadOrStore, Swap, CompareAndSwap, and CompareAndDelete
    // are read operations; Delete, LoadAndDelete, Store, and Swap are write operations;
    // LoadOrStore is a write operation when it returns loaded set to false;
    // CompareAndSwap is a write operation when it returns swapped set to true;
    // and CompareAndDelete is a write operation when it returns deleted set to true.
    
    
**/
@:structInit @:using(stdgo.sync.Sync.Map__static_extension) class Map_ {
    public var _mu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    /**
        // read contains the portion of the map's contents that are safe for
        // concurrent access (with or without mu held).
        //
        // The read field itself is always safe to load, but must only be stored with
        // mu held.
        //
        // Entries stored in read may be updated concurrently without mu, but updating
        // a previously-expunged entry requires that the entry be copied to the dirty
        // map and unexpunged with mu held.
    **/
    public var _read : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.sync.Sync.T_readOnly> = ({} : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.sync.Sync.T_readOnly>);
    /**
        // dirty contains the portion of the map's contents that require mu to be
        // held. To ensure that the dirty map can be promoted to the read map quickly,
        // it also includes all of the non-expunged entries in the read map.
        //
        // Expunged entries are not stored in the dirty map. An expunged entry in the
        // clean map must be unexpunged and added to the dirty map before a new value
        // can be stored to it.
        //
        // If the dirty map is nil, the next write to the map will initialize it by
        // making a shallow copy of the clean map, omitting stale entries.
    **/
    public var _dirty : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>> = (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>>);
    /**
        // misses counts the number of loads since the read map was last updated that
        // needed to lock mu to determine whether the key was present.
        //
        // Once enough misses have occurred to cover the cost of copying the dirty
        // map, the dirty map will be promoted to the read map (in the unamended
        // state) and the next store to the map will make a new dirty copy.
    **/
    public var _misses : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_read:stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.sync.Sync.T_readOnly>, ?_dirty:stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>>, ?_misses:stdgo.StdGoTypes.GoInt) {
        if (_mu != null) this._mu = _mu;
        if (_read != null) this._read = _read;
        if (_dirty != null) this._dirty = _dirty;
        if (_misses != null) this._misses = _misses;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Map_(_mu, _read, _dirty, _misses);
    }
}
/**
    // readOnly is an immutable struct stored atomically in the Map.read field.
    
    
**/
@:structInit @:private class T_readOnly {
    public var _m : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>> = (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>>);
    public var _amended : Bool = false;
    public function new(?_m:stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>>, ?_amended:Bool) {
        if (_m != null) this._m = _m;
        if (_amended != null) this._amended = _amended;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readOnly(_m, _amended);
    }
}
/**
    // An entry is a slot in the map corresponding to a particular key.
    
    
**/
@:structInit @:private @:using(stdgo.sync.Sync.T_entry_static_extension) class T_entry {
    /**
        // p points to the interface{} value stored for the entry.
        //
        // If p == nil, the entry has been deleted, and either m.dirty == nil or
        // m.dirty[key] is e.
        //
        // If p == expunged, the entry has been deleted, m.dirty != nil, and the entry
        // is missing from m.dirty.
        //
        // Otherwise, the entry is valid and recorded in m.read.m[key] and, if m.dirty
        // != nil, in m.dirty[key].
        //
        // An entry can be deleted by atomic replacement with nil: when m.dirty is
        // next created, it will atomically replace nil with expunged and leave
        // m.dirty[key] unset.
        //
        // An entry's associated value can be updated by atomic replacement, provided
        // p != expunged. If p == expunged, an entry's associated value can be updated
        // only after first setting m.dirty[key] = e so that lookups using the dirty
        // map find the entry.
    **/
    public var _p : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.AnyInterface> = ({} : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.AnyInterface>);
    public function new(?_p:stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.StdGoTypes.AnyInterface>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_entry(_p);
    }
}
/**
    // A Mutex is a mutual exclusion lock.
    // The zero value for a Mutex is an unlocked mutex.
    //
    // A Mutex must not be copied after first use.
    //
    // In the terminology of the Go memory model,
    // the n'th call to Unlock “synchronizes before” the m'th call to Lock
    // for any n < m.
    // A successful call to TryLock is equivalent to a call to Lock.
    // A failed call to TryLock does not establish any “synchronizes before”
    // relation at all.
    
    
**/
@:structInit @:using(stdgo.sync.Sync.Mutex_static_extension) class Mutex {
    public var _state : stdgo.StdGoTypes.GoInt32 = 0;
    public var _sema : stdgo.StdGoTypes.GoUInt32 = 0;
    @:local
    var mutex = #if !js new sys.thread.Mutex() #else null #end;
    public function new(?_state:stdgo.StdGoTypes.GoInt32, ?_sema:stdgo.StdGoTypes.GoUInt32, ?mutex) {
        if (_state != null) this._state = _state;
        if (_sema != null) this._sema = _sema;
        if (mutex != null) this.mutex = mutex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Mutex(_state, _sema, mutex);
    }
}
/**
    // Once is an object that will perform exactly one action.
    //
    // A Once must not be copied after first use.
    //
    // In the terminology of the Go memory model,
    // the return from f “synchronizes before”
    // the return from any call of once.Do(f).
    
    
**/
@:structInit @:using(stdgo.sync.Sync.Once_static_extension) class Once {
    /**
        // done indicates whether the action has been performed.
        // It is first in the struct because it is used in the hot path.
        // The hot path is inlined at every call site.
        // Placing done first allows more compact instructions on some architectures (amd64/386),
        // and fewer instructions (to calculate offset) on other architectures.
    **/
    public var _done : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _m : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public function new(?_done:stdgo.StdGoTypes.GoUInt32, ?_m:stdgo.sync.Sync.Mutex) {
        if (_done != null) this._done = _done;
        if (_m != null) this._m = _m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Once(_done, _m);
    }
}
/**
    // A Pool is a set of temporary objects that may be individually saved and
    // retrieved.
    //
    // Any item stored in the Pool may be removed automatically at any time without
    // notification. If the Pool holds the only reference when this happens, the
    // item might be deallocated.
    //
    // A Pool is safe for use by multiple goroutines simultaneously.
    //
    // Pool's purpose is to cache allocated but unused items for later reuse,
    // relieving pressure on the garbage collector. That is, it makes it easy to
    // build efficient, thread-safe free lists. However, it is not suitable for all
    // free lists.
    //
    // An appropriate use of a Pool is to manage a group of temporary items
    // silently shared among and potentially reused by concurrent independent
    // clients of a package. Pool provides a way to amortize allocation overhead
    // across many clients.
    //
    // An example of good use of a Pool is in the fmt package, which maintains a
    // dynamically-sized store of temporary output buffers. The store scales under
    // load (when many goroutines are actively printing) and shrinks when
    // quiescent.
    //
    // On the other hand, a free list maintained as part of a short-lived object is
    // not a suitable use for a Pool, since the overhead does not amortize well in
    // that scenario. It is more efficient to have such objects implement their own
    // free list.
    //
    // A Pool must not be copied after first use.
    //
    // In the terminology of the Go memory model, a call to Put(x) “synchronizes before”
    // a call to Get returning that same value x.
    // Similarly, a call to New returning x “synchronizes before”
    // a call to Get returning that same value x.
    
    
**/
@:structInit @:using(stdgo.sync.Sync.Pool_static_extension) class Pool {
    public var _noCopy : stdgo.sync.Sync.T_noCopy = ({} : stdgo.sync.Sync.T_noCopy);
    public var _local : stdgo.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _localSize : stdgo.StdGoTypes.GoUIntptr = 0;
    public var _victim : stdgo.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _victimSize : stdgo.StdGoTypes.GoUIntptr = 0;
    /**
        // New optionally specifies a function to generate
        // a value when Get would otherwise return nil.
        // It may not be changed concurrently with calls to Get.
    **/
    public var new_ : () -> stdgo.StdGoTypes.AnyInterface = null;
    @:local
    var pool = #if !js new sys.thread.Deque<stdgo.StdGoTypes.AnyInterface>() #else new Array<stdgo.StdGoTypes.AnyInterface>() #end;
    public function new(?_noCopy:stdgo.sync.Sync.T_noCopy, ?_local:stdgo.unsafe.Unsafe.UnsafePointer, ?_localSize:stdgo.StdGoTypes.GoUIntptr, ?_victim:stdgo.unsafe.Unsafe.UnsafePointer, ?_victimSize:stdgo.StdGoTypes.GoUIntptr, ?new_:() -> stdgo.StdGoTypes.AnyInterface, ?pool) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (_local != null) this._local = _local;
        if (_localSize != null) this._localSize = _localSize;
        if (_victim != null) this._victim = _victim;
        if (_victimSize != null) this._victimSize = _victimSize;
        if (new_ != null) this.new_ = new_;
        if (pool != null) this.pool = pool;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Pool(_noCopy, _local, _localSize, _victim, _victimSize, new_, pool);
    }
}
/**
    // Local per-P Pool appendix.
    
    
**/
@:structInit @:private class T_poolLocalInternal {
    public var _private : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var _shared : stdgo.sync.Sync.T_poolChain = ({} : stdgo.sync.Sync.T_poolChain);
    public function new(?_private:stdgo.StdGoTypes.AnyInterface, ?_shared:stdgo.sync.Sync.T_poolChain) {
        if (_private != null) this._private = _private;
        if (_shared != null) this._shared = _shared;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_poolLocalInternal(_private, _shared);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.sync.Sync.T_poolLocal_static_extension) class T_poolLocal {
    @:embedded
    public var _poolLocalInternal : stdgo.sync.Sync.T_poolLocalInternal = ({} : stdgo.sync.Sync.T_poolLocalInternal);
    /**
        // Prevents false sharing on widespread platforms with
        // 128 mod (cache line size) = 0 .
    **/
    public var _pad : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 112) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public function new(?_poolLocalInternal:stdgo.sync.Sync.T_poolLocalInternal, ?_pad:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>) {
        if (_poolLocalInternal != null) this._poolLocalInternal = _poolLocalInternal;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_poolLocal(_poolLocalInternal, _pad);
    }
}
/**
    // poolDequeue is a lock-free fixed-size single-producer,
    // multi-consumer queue. The single producer can both push and pop
    // from the head, and consumers can pop from the tail.
    //
    // It has the added feature that it nils out unused slots to avoid
    // unnecessary retention of objects. This is important for sync.Pool,
    // but not typically a property considered in the literature.
    
    
**/
@:structInit @:private @:using(stdgo.sync.Sync.T_poolDequeue_static_extension) class T_poolDequeue {
    /**
        // headTail packs together a 32-bit head index and a 32-bit
        // tail index. Both are indexes into vals modulo len(vals)-1.
        //
        // tail = index of oldest data in queue
        // head = index of next slot to fill
        //
        // Slots in the range [tail, head) are owned by consumers.
        // A consumer continues to own a slot outside this range until
        // it nils the slot, at which point ownership passes to the
        // producer.
        //
        // The head index is stored in the most-significant bits so
        // that we can atomically add to it and the overflow is
        // harmless.
    **/
    public var _headTail : stdgo.StdGoTypes.GoUInt64 = 0;
    /**
        // vals is a ring buffer of interface{} values stored in this
        // dequeue. The size of this must be a power of 2.
        //
        // vals[i].typ is nil if the slot is empty and non-nil
        // otherwise. A slot is still in use until *both* the tail
        // index has moved beyond it and typ has been set to nil. This
        // is set to nil atomically by the consumer and read
        // atomically by the producer.
    **/
    public var _vals : stdgo.Slice<stdgo.sync.Sync.T_eface> = (null : stdgo.Slice<stdgo.sync.Sync.T_eface>);
    public function new(?_headTail:stdgo.StdGoTypes.GoUInt64, ?_vals:stdgo.Slice<stdgo.sync.Sync.T_eface>) {
        if (_headTail != null) this._headTail = _headTail;
        if (_vals != null) this._vals = _vals;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_poolDequeue(_headTail, _vals);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_eface {
    public var _typ : stdgo.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _val : stdgo.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?_typ:stdgo.unsafe.Unsafe.UnsafePointer, ?_val:stdgo.unsafe.Unsafe.UnsafePointer) {
        if (_typ != null) this._typ = _typ;
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_eface(_typ, _val);
    }
}
/**
    // poolChain is a dynamically-sized version of poolDequeue.
    //
    // This is implemented as a doubly-linked list queue of poolDequeues
    // where each dequeue is double the size of the previous one. Once a
    // dequeue fills up, this allocates a new one and only ever pushes to
    // the latest dequeue. Pops happen from the other end of the list and
    // once a dequeue is exhausted, it gets removed from the list.
    
    
**/
@:structInit @:private @:using(stdgo.sync.Sync.T_poolChain_static_extension) class T_poolChain {
    /**
        // head is the poolDequeue to push to. This is only accessed
        // by the producer, so doesn't need to be synchronized.
    **/
    public var _head : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt> = (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>);
    /**
        // tail is the poolDequeue to popTail from. This is accessed
        // by consumers, so reads and writes must be atomic.
    **/
    public var _tail : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt> = (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>);
    public function new(?_head:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>, ?_tail:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>) {
        if (_head != null) this._head = _head;
        if (_tail != null) this._tail = _tail;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_poolChain(_head, _tail);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.sync.Sync.T_poolChainElt_static_extension) class T_poolChainElt {
    @:embedded
    public var _poolDequeue : stdgo.sync.Sync.T_poolDequeue = ({} : stdgo.sync.Sync.T_poolDequeue);
    /**
        // next and prev link to the adjacent poolChainElts in this
        // poolChain.
        //
        // next is written atomically by the producer and read
        // atomically by the consumer. It only transitions from nil to
        // non-nil.
        //
        // prev is written atomically by the consumer and read
        // atomically by the producer. It only transitions from
        // non-nil to nil.
    **/
    public var _next : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt> = (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>);
    public var _prev : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt> = (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>);
    public function new(?_poolDequeue:stdgo.sync.Sync.T_poolDequeue, ?_next:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>, ?_prev:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>) {
        if (_poolDequeue != null) this._poolDequeue = _poolDequeue;
        if (_next != null) this._next = _next;
        if (_prev != null) this._prev = _prev;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function popHead():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return _poolDequeue.popHead();
    @:embedded
    public function popTail():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return _poolDequeue.popTail();
    @:embedded
    public function pushHead(_val_:stdgo.StdGoTypes.AnyInterface):Bool return _poolDequeue.pushHead(_val_);
    @:embedded
    public function _pack(_head:stdgo.StdGoTypes.GoUInt32, _tail:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt64 return _poolDequeue._pack(_head, _tail);
    @:embedded
    public function _popHead():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return _poolDequeue._popHead();
    @:embedded
    public function _popTail():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return _poolDequeue._popTail();
    @:embedded
    public function _pushHead(_val_:stdgo.StdGoTypes.AnyInterface):Bool return _poolDequeue._pushHead(_val_);
    @:embedded
    public function _unpack(__0:stdgo.StdGoTypes.GoUInt64):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; } return _poolDequeue._unpack(__0);
    public function __copy__() {
        return new T_poolChainElt(_poolDequeue, _next, _prev);
    }
}
/**
    // Approximation of notifyList in runtime/sema.go. Size and alignment must
    // agree.
    
    
**/
@:structInit @:private class T_notifyList {
    public var _wait : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _notify : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _lock : stdgo.StdGoTypes.GoUIntptr = 0;
    public var _head : stdgo.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _tail : stdgo.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?_wait:stdgo.StdGoTypes.GoUInt32, ?_notify:stdgo.StdGoTypes.GoUInt32, ?_lock:stdgo.StdGoTypes.GoUIntptr, ?_head:stdgo.unsafe.Unsafe.UnsafePointer, ?_tail:stdgo.unsafe.Unsafe.UnsafePointer) {
        if (_wait != null) this._wait = _wait;
        if (_notify != null) this._notify = _notify;
        if (_lock != null) this._lock = _lock;
        if (_head != null) this._head = _head;
        if (_tail != null) this._tail = _tail;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_notifyList(_wait, _notify, _lock, _head, _tail);
    }
}
/**
    // A RWMutex is a reader/writer mutual exclusion lock.
    // The lock can be held by an arbitrary number of readers or a single writer.
    // The zero value for a RWMutex is an unlocked mutex.
    //
    // A RWMutex must not be copied after first use.
    //
    // If a goroutine holds a RWMutex for reading and another goroutine might
    // call Lock, no goroutine should expect to be able to acquire a read lock
    // until the initial read lock is released. In particular, this prohibits
    // recursive read locking. This is to ensure that the lock eventually becomes
    // available; a blocked Lock call excludes new readers from acquiring the
    // lock.
    //
    // In the terminology of the Go memory model,
    // the n'th call to Unlock “synchronizes before” the m'th call to Lock
    // for any n < m, just as for Mutex.
    // For any call to RLock, there exists an n such that
    // the n'th call to Unlock “synchronizes before” that call to RLock,
    // and the corresponding call to RUnlock “synchronizes before”
    // the n+1'th call to Lock.
    
    
**/
@:structInit @:using(stdgo.sync.Sync.RWMutex_static_extension) class RWMutex {
    public var _w : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _writerSem : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _readerSem : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _readerCount : stdgo.sync.atomic_.Atomic_.Int32 = ({} : stdgo.sync.atomic_.Atomic_.Int32);
    public var _readerWait : stdgo.sync.atomic_.Atomic_.Int32 = ({} : stdgo.sync.atomic_.Atomic_.Int32);
    @:local
    var mutex = #if !js new sys.thread.Mutex() #else null #end;
    public function new(?_w:stdgo.sync.Sync.Mutex, ?_writerSem:stdgo.StdGoTypes.GoUInt32, ?_readerSem:stdgo.StdGoTypes.GoUInt32, ?_readerCount:stdgo.sync.atomic_.Atomic_.Int32, ?_readerWait:stdgo.sync.atomic_.Atomic_.Int32, ?mutex) {
        if (_w != null) this._w = _w;
        if (_writerSem != null) this._writerSem = _writerSem;
        if (_readerSem != null) this._readerSem = _readerSem;
        if (_readerCount != null) this._readerCount = _readerCount;
        if (_readerWait != null) this._readerWait = _readerWait;
        if (mutex != null) this.mutex = mutex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RWMutex(_w, _writerSem, _readerSem, _readerCount, _readerWait, mutex);
    }
}
/**
    // A WaitGroup waits for a collection of goroutines to finish.
    // The main goroutine calls Add to set the number of
    // goroutines to wait for. Then each of the goroutines
    // runs and calls Done when finished. At the same time,
    // Wait can be used to block until all goroutines have finished.
    //
    // A WaitGroup must not be copied after first use.
    //
    // In the terminology of the Go memory model, a call to Done
    // “synchronizes before” the return of any Wait call that it unblocks.
    
    
**/
@:structInit @:using(stdgo.sync.Sync.WaitGroup_static_extension) class WaitGroup {
    public var _noCopy : stdgo.sync.Sync.T_noCopy = ({} : stdgo.sync.Sync.T_noCopy);
    public var _state : stdgo.sync.atomic_.Atomic_.Uint64 = ({} : stdgo.sync.atomic_.Atomic_.Uint64);
    public var _sema : stdgo.StdGoTypes.GoUInt32 = 0;
    @:local
    var lock = #if !js new sys.thread.Lock() #else null #end;
    var counter : stdgo.StdGoTypes.GoUInt = 0;
    public function new(?_noCopy:stdgo.sync.Sync.T_noCopy, ?_state:stdgo.sync.atomic_.Atomic_.Uint64, ?_sema:stdgo.StdGoTypes.GoUInt32, ?lock, ?counter:stdgo.StdGoTypes.GoUInt) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (_state != null) this._state = _state;
        if (_sema != null) this._sema = _sema;
        if (lock != null) this.lock = lock;
        if (counter != null) this.counter = counter;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new WaitGroup(_noCopy, _state, _sema, lock, counter);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.sync.Sync.T__struct_0_static_extension) typedef T__struct_0 = {};
/**
    // copyChecker holds back pointer to itself to detect object copying.
**/
@:named @:using(stdgo.sync.Sync.T_copyChecker_static_extension) typedef T_copyChecker = stdgo.StdGoTypes.GoUIntptr;
/**
    // dequeueNil is used in poolDequeue to represent interface{}(nil).
    // Since we use nil to represent empty slots, we need a sentinel value
    // to represent nil.
**/
@:named typedef T_dequeueNil = stdgo.StdGoTypes.Ref<T_noCopy>;
@:named @:using(stdgo.sync.Sync.T_rlocker_static_extension) typedef T_rlocker = stdgo.sync.Sync.RWMutex;
/**
    // NewCond returns a new Cond with Locker l.
**/
function newCond(_l:Locker):stdgo.StdGoTypes.Ref<Cond> {
        return (stdgo.Go.setRef(({ l : _l } : stdgo.sync.Sync.Cond)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Cond>);
    }
function newPoolDequeue(_n:stdgo.StdGoTypes.GoInt):PoolDequeue {
        var _d = (stdgo.Go.setRef(({ _vals : new stdgo.Slice<stdgo.sync.Sync.T_eface>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (_n : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.sync.Sync.T_eface)]) } : stdgo.sync.Sync.T_poolDequeue)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolDequeue>);
        _d._headTail = _d._pack((-500u32 : stdgo.StdGoTypes.GoUInt32), (-500u32 : stdgo.StdGoTypes.GoUInt32));
        return stdgo.Go.asInterface(_d);
    }
function newPoolChain():PoolDequeue {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.sync.Sync.T_poolChain)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChain>));
    }
function _newEntry(_i:stdgo.StdGoTypes.AnyInterface):stdgo.StdGoTypes.Ref<T_entry> {
        var _e = (stdgo.Go.setRef((new stdgo.sync.Sync.T_entry() : stdgo.sync.Sync.T_entry)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>);
        _e._p.store((null : stdgo.StdGoTypes.AnyInterface), (stdgo.Go.setRef(_i) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>));
        return _e;
    }
/**
    // Provided by runtime via linkname.
**/
function _throw(_0:stdgo.GoString):Void {}
function _fatal(_0:stdgo.GoString):Void {}
/**
    // OnceFunc returns a function that invokes f only once. The returned function
    // may be called concurrently.
    //
    // If f panics, the returned function will panic with the same value on every call.
**/
function onceFunc(_f:() -> Void):() -> Void {
        var __0:Once = ({} : stdgo.sync.Sync.Once), __1:Bool = false, __2:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _p:stdgo.StdGoTypes.AnyInterface = __2, _valid:Bool = __1, _once:Once = __0;
        var _g:() -> Void = function():Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                __deferstack__.unshift(() -> {
                    var a = function():Void {
                        _p = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (!_valid) {
                            throw stdgo.Go.toInterface(_p);
                        };
                    };
                    a();
                });
                _f();
                _valid = true;
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        };
        return function():Void {
            _once.do_(_g);
            if (!_valid) {
                throw stdgo.Go.toInterface(_p);
            };
        };
    }
/**
    // OnceValue returns a function that invokes f only once and returns the value
    // returned by f. The returned function may be called concurrently.
    //
    // If f panics, the returned function will panic with the same value on every call.
**/
macro function onceValue<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _f:haxe.macro.Expr.ExprOf<() -> T_>):haxe.macro.Expr.ExprOf<() -> T_>;
/**
    // OnceValues returns a function that invokes f only once and returns the values
    // returned by f. The returned function may be called concurrently.
    //
    // If f panics, the returned function will panic with the same value on every call.
**/
macro function onceValues<T1, T2>(__generic__0:haxe.macro.Expr.ExprOf<T1>, __generic__1:haxe.macro.Expr.ExprOf<T2>, _f:haxe.macro.Expr.ExprOf<() -> { var _0 : T1; var _1 : T2; }>):haxe.macro.Expr.ExprOf<() -> { var _0 : T1; var _1 : T2; }>;
/**
    // from runtime
**/
function _fastrandn(_n:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt32 {
        trace("funclit");
        throw "not implemented: _fastrandn";
    }
/**
    // poolRaceAddr returns an address to use as the synchronization point
    // for race detector logic. We don't use the actual pointer stored in x
    // directly, for fear of conflicting with other synchronization on that address.
    // Instead, we hash the pointer to get an index into poolRaceHash.
    // See discussion on golang.org/cl/31589.
**/
function _poolRaceAddr(_x:stdgo.StdGoTypes.AnyInterface):stdgo.unsafe.Unsafe.UnsafePointer {
        var _ptr:stdgo.StdGoTypes.GoUIntptr = (((((stdgo.Go.setRef(_x) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>).__underlying__().value : Dynamic) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) }, 2) })) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.unsafe.Unsafe.UnsafePointer>>)[(1 : stdgo.StdGoTypes.GoInt)].__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr);
        var _h:stdgo.StdGoTypes.GoUInt32 = ((((_ptr : stdgo.StdGoTypes.GoUInt32) : stdgo.StdGoTypes.GoUInt64) * (2246822507i64 : stdgo.StdGoTypes.GoUInt64)) >> (16i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt32);
        return (stdgo.Go.toInterface(stdgo.Go.pointer(_poolRaceHash[(_h % (_poolRaceHash.length : stdgo.StdGoTypes.GoUInt32) : stdgo.StdGoTypes.GoInt)])) : stdgo.unsafe.Unsafe.UnsafePointer);
    }
function _poolCleanup():Void {
        for (__16 => _p in _oldPools) {
            _p._victim = @:default_value null;
            _p._victimSize = (0 : stdgo.StdGoTypes.GoUIntptr);
        };
        for (__17 => _p in _allPools) {
            _p._victim = _p._local;
            _p._victimSize = _p._localSize;
            _p._local = @:default_value null;
            _p._localSize = (0 : stdgo.StdGoTypes.GoUIntptr);
        };
        {
            final __tmp__0 = _allPools;
            final __tmp__1 = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Pool>>);
            _oldPools = __tmp__0;
            _allPools = __tmp__1;
        };
    }
function _indexLocal(_l:stdgo.unsafe.Unsafe.UnsafePointer, _i:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<T_poolLocal> {
        var _lp:stdgo.unsafe.Unsafe.UnsafePointer = (stdgo.Go.toInterface(((_l.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr) + ((_i : stdgo.StdGoTypes.GoUIntptr) * stdgo.unsafe.Unsafe.sizeof(stdgo.Go.toInterface((new stdgo.sync.Sync.T_poolLocal() : stdgo.sync.Sync.T_poolLocal)))))) : stdgo.unsafe.Unsafe.UnsafePointer);
        return (_lp.__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolLocal", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "_poolLocalInternal", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolLocalInternal", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "_private", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_shared", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolChain", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "_head", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolChainElt", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "_poolDequeue", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolDequeue", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "_headTail", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_vals", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_eface", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) }, optional : false }, { name : "_val", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_next", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolChainElt", [], stdgo.internal.reflect.Reflect.GoType.invalidType, false, { get : () -> null }) }) }, optional : false }, { name : "_prev", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolChainElt", [], stdgo.internal.reflect.Reflect.GoType.invalidType, false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "_tail", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolChainElt", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "_poolDequeue", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolDequeue", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "_headTail", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_vals", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_eface", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) }, optional : false }, { name : "_val", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_next", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolChainElt", [], stdgo.internal.reflect.Reflect.GoType.invalidType, false, { get : () -> null }) }) }, optional : false }, { name : "_prev", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolChainElt", [], stdgo.internal.reflect.Reflect.GoType.invalidType, false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_pad", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) }, 112) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<T_poolLocal>);
    }
/**
    // Implemented in runtime.
**/
function _runtime_registerPoolCleanup(_cleanup:() -> Void):Void {}
function _runtime_procPin():stdgo.StdGoTypes.GoInt return 0;
function _runtime_procUnpin():Void {}
/**
    //go:linkname runtime_LoadAcquintptr runtime/internal/atomic.LoadAcquintptr
**/
function _runtime_LoadAcquintptr(_ptr:stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>):stdgo.StdGoTypes.GoUIntptr {
        trace("funclit");
        throw "not implemented: _runtime_LoadAcquintptr";
    }
/**
    //go:linkname runtime_StoreReluintptr runtime/internal/atomic.StoreReluintptr
**/
function _runtime_StoreReluintptr(_ptr:stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>, _val:stdgo.StdGoTypes.GoUIntptr):stdgo.StdGoTypes.GoUIntptr {
        trace("funclit");
        throw "not implemented: _runtime_StoreReluintptr";
    }
function _storePoolChainElt(_pp:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_poolChainElt>>, _v:stdgo.StdGoTypes.Ref<T_poolChainElt>):Void {
        stdgo.sync.atomic_.Atomic_.storePointer(((stdgo.Go.toInterface(_pp) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) })) : stdgo.Pointer<stdgo.unsafe.Unsafe.UnsafePointer>), (stdgo.Go.toInterface(_v) : stdgo.unsafe.Unsafe.UnsafePointer));
    }
function _loadPoolChainElt(_pp:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_poolChainElt>>):stdgo.StdGoTypes.Ref<T_poolChainElt> {
        return (stdgo.sync.atomic_.Atomic_.loadPointer(((stdgo.Go.toInterface(_pp) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) })) : stdgo.Pointer<stdgo.unsafe.Unsafe.UnsafePointer>)).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolChainElt", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "_poolDequeue", embedded : true, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolDequeue", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "_headTail", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_vals", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_eface", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) }, optional : false }, { name : "_val", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) }, optional : false }, { name : "_next", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolChainElt", [], stdgo.internal.reflect.Reflect.GoType.invalidType, false, { get : () -> null }) }) }, optional : false }, { name : "_prev", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.sync.Sync.T_poolChainElt", [], stdgo.internal.reflect.Reflect.GoType.invalidType, false, { get : () -> null }) }) }, optional : false }]), false, { get : () -> null }) })) : stdgo.StdGoTypes.Ref<T_poolChainElt>);
    }
/**
    // Semacquire waits until *s > 0 and then atomically decrements it.
    // It is intended as a simple sleep primitive for use by the synchronization
    // library and should not be used directly.
**/
function _runtime_Semacquire(_s:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>):Void {}
/**
    // Semacquire(RW)Mutex(R) is like Semacquire, but for profiling contended
    // Mutexes and RWMutexes.
    // If lifo is true, queue waiter at the head of wait queue.
    // skipframes is the number of frames to omit during tracing, counting from
    // runtime_SemacquireMutex's caller.
    // The different forms of this function just tell the runtime how to present
    // the reason for waiting in a backtrace, and is used to compute some metrics.
    // Otherwise they're functionally identical.
**/
function _runtime_SemacquireMutex(_s:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _lifo:Bool, _skipframes:stdgo.StdGoTypes.GoInt):Void {}
function _runtime_SemacquireRWMutexR(_s:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _lifo:Bool, _skipframes:stdgo.StdGoTypes.GoInt):Void {}
function _runtime_SemacquireRWMutex(_s:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _lifo:Bool, _skipframes:stdgo.StdGoTypes.GoInt):Void {}
/**
    // Semrelease atomically increments *s and notifies a waiting goroutine
    // if one is blocked in Semacquire.
    // It is intended as a simple wakeup primitive for use by the synchronization
    // library and should not be used directly.
    // If handoff is true, pass count directly to the first waiter.
    // skipframes is the number of frames to omit during tracing, counting from
    // runtime_Semrelease's caller.
**/
function _runtime_Semrelease(_s:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _handoff:Bool, _skipframes:stdgo.StdGoTypes.GoInt):Void {}
/**
    // See runtime/sema.go for documentation.
**/
function _runtime_notifyListAdd(_l:stdgo.StdGoTypes.Ref<T_notifyList>):stdgo.StdGoTypes.GoUInt32 {
        trace("funclit");
        throw "not implemented: _runtime_notifyListAdd";
    }
/**
    // See runtime/sema.go for documentation.
**/
function _runtime_notifyListWait(_l:stdgo.StdGoTypes.Ref<T_notifyList>, _t:stdgo.StdGoTypes.GoUInt32):Void {}
/**
    // See runtime/sema.go for documentation.
**/
function _runtime_notifyListNotifyAll(_l:stdgo.StdGoTypes.Ref<T_notifyList>):Void {}
/**
    // See runtime/sema.go for documentation.
**/
function _runtime_notifyListNotifyOne(_l:stdgo.StdGoTypes.Ref<T_notifyList>):Void {}
/**
    // Ensure that sync and runtime agree on size of notifyList.
**/
function _runtime_notifyListCheck(_size:stdgo.StdGoTypes.GoUIntptr):Void {}
/**
    // Active spinning runtime support.
    // runtime_canSpin reports whether spinning makes sense at the moment.
**/
function _runtime_canSpin(_i:stdgo.StdGoTypes.GoInt):Bool {
        trace("funclit");
        throw "not implemented: _runtime_canSpin";
    }
/**
    // runtime_doSpin does active spinning.
**/
function _runtime_doSpin():Void {}
function _runtime_nanotime():stdgo.StdGoTypes.GoInt64 {
        trace("funclit");
        throw "not implemented: _runtime_nanotime";
    }
/**
    // syscall_hasWaitingReaders reports whether any goroutine is waiting
    // to acquire a read lock on rw. This exists because syscall.ForkLock
    // is an RWMutex, and we can't change that without breaking compatibility.
    // We don't need or want RWMutex semantics for ForkLock, and we use
    // this private API to avoid having to change the type of ForkLock.
    // For more details see the syscall package.
    //
    //go:linkname syscall_hasWaitingReaders syscall.hasWaitingReaders
**/
function _syscall_hasWaitingReaders(_rw:stdgo.StdGoTypes.Ref<RWMutex>):Bool {
        var _r:stdgo.StdGoTypes.GoInt32 = _rw._readerCount.load();
        return (_r < (0 : stdgo.StdGoTypes.GoInt32)) && ((_r + (1073741824 : stdgo.StdGoTypes.GoInt32)) > (0 : stdgo.StdGoTypes.GoInt32));
    }
@:keep var _ = {
        try {
            _runtime_registerPoolCleanup(_poolCleanup);
            var _n:T_notifyList = ({} : stdgo.sync.Sync.T_notifyList);
            _runtime_notifyListCheck(stdgo.unsafe.Unsafe.sizeof(stdgo.Go.toInterface(_n)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class Cond_asInterface {
    /**
        // Broadcast wakes all goroutines waiting on c.
        //
        // It is allowed but not required for the caller to hold c.L
        // during the call.
    **/
    @:keep
    public dynamic function broadcast():Void __self__.value.broadcast();
    /**
        // Signal wakes one goroutine waiting on c, if there is any.
        //
        // It is allowed but not required for the caller to hold c.L
        // during the call.
        //
        // Signal() does not affect goroutine scheduling priority; if other goroutines
        // are attempting to lock c.L, they may be awoken before a "waiting" goroutine.
    **/
    @:keep
    public dynamic function signal():Void __self__.value.signal();
    /**
        // Wait atomically unlocks c.L and suspends execution
        // of the calling goroutine. After later resuming execution,
        // Wait locks c.L before returning. Unlike in other systems,
        // Wait cannot return unless awoken by Broadcast or Signal.
        //
        // Because c.L is not locked while Wait is waiting, the caller
        // typically cannot assume that the condition is true when
        // Wait returns. Instead, the caller should Wait in a loop:
        //
        //	c.L.Lock()
        //	for !condition() {
        //	    c.Wait()
        //	}
        //	... make use of condition ...
        //	c.L.Unlock()
    **/
    @:keep
    public dynamic function wait_():Void __self__.value.wait_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Cond>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.Cond_asInterface) class Cond_static_extension {
    /**
        // Broadcast wakes all goroutines waiting on c.
        //
        // It is allowed but not required for the caller to hold c.L
        // during the call.
    **/
    @:keep
    static public function broadcast( _c:stdgo.StdGoTypes.Ref<Cond>):Void {
        @:recv var _c:stdgo.StdGoTypes.Ref<Cond> = _c;
        _c._checker._check(stdgo.Go.pointer(_c._checker));
        _runtime_notifyListNotifyAll((stdgo.Go.setRef(_c._notify) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_notifyList>));
    }
    /**
        // Signal wakes one goroutine waiting on c, if there is any.
        //
        // It is allowed but not required for the caller to hold c.L
        // during the call.
        //
        // Signal() does not affect goroutine scheduling priority; if other goroutines
        // are attempting to lock c.L, they may be awoken before a "waiting" goroutine.
    **/
    @:keep
    static public function signal( _c:stdgo.StdGoTypes.Ref<Cond>):Void {
        @:recv var _c:stdgo.StdGoTypes.Ref<Cond> = _c;
        _c._checker._check(stdgo.Go.pointer(_c._checker));
        _runtime_notifyListNotifyOne((stdgo.Go.setRef(_c._notify) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_notifyList>));
    }
    /**
        // Wait atomically unlocks c.L and suspends execution
        // of the calling goroutine. After later resuming execution,
        // Wait locks c.L before returning. Unlike in other systems,
        // Wait cannot return unless awoken by Broadcast or Signal.
        //
        // Because c.L is not locked while Wait is waiting, the caller
        // typically cannot assume that the condition is true when
        // Wait returns. Instead, the caller should Wait in a loop:
        //
        //	c.L.Lock()
        //	for !condition() {
        //	    c.Wait()
        //	}
        //	... make use of condition ...
        //	c.L.Unlock()
    **/
    @:keep
    static public function wait_( _c:stdgo.StdGoTypes.Ref<Cond>):Void {
        @:recv var _c:stdgo.StdGoTypes.Ref<Cond> = _c;
        _c._checker._check(stdgo.Go.pointer(_c._checker));
        var _t:stdgo.StdGoTypes.GoUInt32 = _runtime_notifyListAdd((stdgo.Go.setRef(_c._notify) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_notifyList>));
        _c.l.unlock();
        _runtime_notifyListWait((stdgo.Go.setRef(_c._notify) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_notifyList>), _t);
        _c.l.lock();
    }
}
class T_noCopy_asInterface {
    @:keep
    public dynamic function unlock():Void __self__.value.unlock();
    /**
        // Lock is a no-op used by -copylocks checker from `go vet`.
    **/
    @:keep
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_noCopy>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.T_noCopy_asInterface) class T_noCopy_static_extension {
    @:keep
    static public function unlock( _:stdgo.StdGoTypes.Ref<T_noCopy>):Void {
        @:recv var _:stdgo.StdGoTypes.Ref<T_noCopy> = _;
    }
    /**
        // Lock is a no-op used by -copylocks checker from `go vet`.
    **/
    @:keep
    static public function lock( _:stdgo.StdGoTypes.Ref<T_noCopy>):Void {
        @:recv var _:stdgo.StdGoTypes.Ref<T_noCopy> = _;
    }
}
class Map__asInterface {
    @:keep
    public dynamic function _dirtyLocked():Void __self__.value._dirtyLocked();
    @:keep
    public dynamic function _missLocked():Void __self__.value._missLocked();
    /**
        // Range calls f sequentially for each key and value present in the map.
        // If f returns false, range stops the iteration.
        //
        // Range does not necessarily correspond to any consistent snapshot of the Map's
        // contents: no key will be visited more than once, but if the value for any key
        // is stored or deleted concurrently (including by f), Range may reflect any
        // mapping for that key from any point during the Range call. Range does not
        // block other methods on the receiver; even f itself may call any method on m.
        //
        // Range may be O(N) with the number of elements in the map even if f returns
        // false after a constant number of calls.
    **/
    @:keep
    public dynamic function range(_f:(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface) -> Bool):Void __self__.value.range(_f);
    /**
        // CompareAndDelete deletes the entry for key if its value is equal to old.
        // The old value must be of a comparable type.
        //
        // If there is no current value for key in the map, CompareAndDelete
        // returns false (even if the old value is the nil interface value).
    **/
    @:keep
    public dynamic function compareAndDelete(_key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value.compareAndDelete(_key, _old);
    /**
        // CompareAndSwap swaps the old and new values for key
        // if the value stored in the map is equal to old.
        // The old value must be of a comparable type.
    **/
    @:keep
    public dynamic function compareAndSwap(_key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface, _new:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value.compareAndSwap(_key, _old, _new);
    /**
        // Swap swaps the value for a key and returns the previous value if any.
        // The loaded result reports whether the key was present.
    **/
    @:keep
    public dynamic function swap(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.swap(_key, _value);
    /**
        // Delete deletes the value for a key.
    **/
    @:keep
    public dynamic function delete(_key:stdgo.StdGoTypes.AnyInterface):Void __self__.value.delete(_key);
    /**
        // LoadAndDelete deletes the value for a key, returning the previous value if any.
        // The loaded result reports whether the key was present.
    **/
    @:keep
    public dynamic function loadAndDelete(_key:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.loadAndDelete(_key);
    /**
        // LoadOrStore returns the existing value for the key if present.
        // Otherwise, it stores and returns the given value.
        // The loaded result is true if the value was loaded, false if stored.
    **/
    @:keep
    public dynamic function loadOrStore(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.loadOrStore(_key, _value);
    /**
        // Store sets the value for a key.
    **/
    @:keep
    public dynamic function store(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):Void __self__.value.store(_key, _value);
    /**
        // Load returns the value stored in the map for a key, or nil if no
        // value is present.
        // The ok result indicates whether value was found in the map.
    **/
    @:keep
    public dynamic function load(_key:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.load(_key);
    @:keep
    public dynamic function _loadReadOnly():T_readOnly return __self__.value._loadReadOnly();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Map_>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.Map__asInterface) class Map__static_extension {
    @:keep
    static public function _dirtyLocked( _m:stdgo.StdGoTypes.Ref<Map_>):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<Map_> = _m;
    }
    @:keep
    static public function _missLocked( _m:stdgo.StdGoTypes.Ref<Map_>):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<Map_> = _m;
        _m._misses++;
        if (_m._misses < (_m._dirty.length)) {
            return;
        };
        _m._read.store(({} : stdgo.sync.Sync.T_readOnly), (stdgo.Go.setRef(({ _m : _m._dirty } : stdgo.sync.Sync.T_readOnly)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_readOnly>));
        _m._dirty = (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>>);
        _m._misses = (0 : stdgo.StdGoTypes.GoInt);
    }
    /**
        // Range calls f sequentially for each key and value present in the map.
        // If f returns false, range stops the iteration.
        //
        // Range does not necessarily correspond to any consistent snapshot of the Map's
        // contents: no key will be visited more than once, but if the value for any key
        // is stored or deleted concurrently (including by f), Range may reflect any
        // mapping for that key from any point during the Range call. Range does not
        // block other methods on the receiver; even f itself may call any method on m.
        //
        // Range may be O(N) with the number of elements in the map even if f returns
        // false after a constant number of calls.
    **/
    @:keep
    static public function range( _m:stdgo.StdGoTypes.Ref<Map_>, _f:(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface) -> Bool):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<Map_> = _m;
        var _read:stdgo.sync.Sync.T_readOnly = _m._loadReadOnly()?.__copy__();
        if (_read._amended) {
            _m._mu.lock();
            _read = _m._loadReadOnly()?.__copy__();
            if (_read._amended) {
                _read = ({ _m : _m._dirty } : stdgo.sync.Sync.T_readOnly);
                _m._read.store(({} : stdgo.sync.Sync.T_readOnly), (stdgo.Go.setRef(_read) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_readOnly>));
                _m._dirty = (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>>);
                _m._misses = (0 : stdgo.StdGoTypes.GoInt);
            };
            _m._mu.unlock();
        };
        for (_k => _e in _read._m) {
            var __tmp__ = _e._load(), _v:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                continue;
            };
            if (!_f(_k, _v)) {
                break;
            };
        };
    }
    /**
        // CompareAndDelete deletes the entry for key if its value is equal to old.
        // The old value must be of a comparable type.
        //
        // If there is no current value for key in the map, CompareAndDelete
        // returns false (even if the old value is the nil interface value).
    **/
    @:keep
    static public function compareAndDelete( _m:stdgo.StdGoTypes.Ref<Map_>, _key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface):Bool {
        @:recv var _m:stdgo.StdGoTypes.Ref<Map_> = _m;
        var _deleted:Bool = false;
        var _read:stdgo.sync.Sync.T_readOnly = _m._loadReadOnly()?.__copy__();
        var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false }), _e:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok && _read._amended) {
            _m._mu.lock();
            _read = _m._loadReadOnly()?.__copy__();
            {
                var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false });
                _e = __tmp__._0;
                _ok = __tmp__._1;
            };
            if (!_ok && _read._amended) {
                {
                    var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false });
                    _e = __tmp__._0;
                    _ok = __tmp__._1;
                };
                _m._missLocked();
            };
            _m._mu.unlock();
        };
        while (_ok) {
            var _p = _e._p.load((null : stdgo.StdGoTypes.AnyInterface));
            if ((((_p == null) || (_p : Dynamic).__nil__) || (_p == _expunged)) || ((_p : stdgo.StdGoTypes.AnyInterface) != _old)) {
                return false;
            };
            if (_e._p.compareAndSwap((null : stdgo.StdGoTypes.AnyInterface), _p, (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>))) {
                return true;
            };
        };
        return false;
    }
    /**
        // CompareAndSwap swaps the old and new values for key
        // if the value stored in the map is equal to old.
        // The old value must be of a comparable type.
    **/
    @:keep
    static public function compareAndSwap( _m:stdgo.StdGoTypes.Ref<Map_>, _key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface, _new:stdgo.StdGoTypes.AnyInterface):Bool {
        @:recv var _m:stdgo.StdGoTypes.Ref<Map_> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _read:stdgo.sync.Sync.T_readOnly = _m._loadReadOnly()?.__copy__();
            {
                var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false }), _e:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return _e._tryCompareAndSwap(_old, _new);
                } else if (!_read._amended) {
                    return false;
                };
            };
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            _read = _m._loadReadOnly()?.__copy__();
            var _swapped:Bool = false;
            {
                var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false }), _e:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _swapped = _e._tryCompareAndSwap(_old, _new);
                } else {
                    var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false }), _e:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _swapped = _e._tryCompareAndSwap(_old, _new);
                        _m._missLocked();
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _swapped;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return false;
        };
    }
    /**
        // Swap swaps the value for a key and returns the previous value if any.
        // The loaded result reports whether the key was present.
    **/
    @:keep
    static public function swap( _m:stdgo.StdGoTypes.Ref<Map_>, _key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.StdGoTypes.Ref<Map_> = _m;
        var _previous:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _loaded:Bool = false;
        var _read:stdgo.sync.Sync.T_readOnly = _m._loadReadOnly()?.__copy__();
        {
            var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false }), _e:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = _e._trySwap((stdgo.Go.setRef(_value) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)), _v:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        if (_v == null || (_v : Dynamic).__nil__) {
                            return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
                        };
                        return { _0 : (_v : stdgo.StdGoTypes.AnyInterface), _1 : true };
                    };
                };
            };
        };
        _m._mu.lock();
        _read = _m._loadReadOnly()?.__copy__();
        {
            var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false }), _e:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (_e._unexpungeLocked()) {
                    _m._dirty[_key] = _e;
                };
                {
                    var _v = _e._swapLocked((stdgo.Go.setRef(_value) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>));
                    if (_v != null && ((_v : Dynamic).__nil__ == null || !(_v : Dynamic).__nil__)) {
                        _loaded = true;
                        _previous = (_v : stdgo.StdGoTypes.AnyInterface);
                    };
                };
            } else {
                var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false }), _e:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    {
                        var _v = _e._swapLocked((stdgo.Go.setRef(_value) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>));
                        if (_v != null && ((_v : Dynamic).__nil__ == null || !(_v : Dynamic).__nil__)) {
                            _loaded = true;
                            _previous = (_v : stdgo.StdGoTypes.AnyInterface);
                        };
                    };
                } else {
                    if (!_read._amended) {
                        _m._dirtyLocked();
                        _m._read.store(({} : stdgo.sync.Sync.T_readOnly), (stdgo.Go.setRef(({ _m : _read._m, _amended : true } : stdgo.sync.Sync.T_readOnly)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_readOnly>));
                    };
                    _m._dirty[_key] = _newEntry(_value);
                };
            };
        };
        _m._mu.unlock();
        return { _0 : _previous, _1 : _loaded };
    }
    /**
        // Delete deletes the value for a key.
    **/
    @:keep
    static public function delete( _m:stdgo.StdGoTypes.Ref<Map_>, _key:stdgo.StdGoTypes.AnyInterface):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<Map_> = _m;
        _m.loadAndDelete(_key);
    }
    /**
        // LoadAndDelete deletes the value for a key, returning the previous value if any.
        // The loaded result reports whether the key was present.
    **/
    @:keep
    static public function loadAndDelete( _m:stdgo.StdGoTypes.Ref<Map_>, _key:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.StdGoTypes.Ref<Map_> = _m;
        var _value:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _loaded:Bool = false;
        var _read:stdgo.sync.Sync.T_readOnly = _m._loadReadOnly()?.__copy__();
        var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false }), _e:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok && _read._amended) {
            _m._mu.lock();
            _read = _m._loadReadOnly()?.__copy__();
            {
                var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false });
                _e = __tmp__._0;
                _ok = __tmp__._1;
            };
            if (!_ok && _read._amended) {
                {
                    var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false });
                    _e = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (_m._dirty != null) _m._dirty.remove(_key);
                _m._missLocked();
            };
            _m._mu.unlock();
        };
        if (_ok) {
            return _e._delete();
        };
        return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
    }
    /**
        // LoadOrStore returns the existing value for the key if present.
        // Otherwise, it stores and returns the given value.
        // The loaded result is true if the value was loaded, false if stored.
    **/
    @:keep
    static public function loadOrStore( _m:stdgo.StdGoTypes.Ref<Map_>, _key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.StdGoTypes.Ref<Map_> = _m;
        var _actual:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _loaded:Bool = false;
        var _read:stdgo.sync.Sync.T_readOnly = _m._loadReadOnly()?.__copy__();
        {
            var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false }), _e:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                var __tmp__ = _e._tryLoadOrStore(_value), _actual:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1, _ok:Bool = __tmp__._2;
                if (_ok) {
                    return { _0 : _actual, _1 : _loaded };
                };
            };
        };
        _m._mu.lock();
        _read = _m._loadReadOnly()?.__copy__();
        {
            var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false }), _e:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (_e._unexpungeLocked()) {
                    _m._dirty[_key] = _e;
                };
                {
                    var __tmp__ = _e._tryLoadOrStore(_value);
                    _actual = __tmp__._0;
                    _loaded = __tmp__._1;
                };
            } else {
                var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false }), _e:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _e._tryLoadOrStore(_value);
                        _actual = __tmp__._0;
                        _loaded = __tmp__._1;
                    };
                    _m._missLocked();
                } else {
                    if (!_read._amended) {
                        _m._dirtyLocked();
                        _m._read.store(({} : stdgo.sync.Sync.T_readOnly), (stdgo.Go.setRef(({ _m : _read._m, _amended : true } : stdgo.sync.Sync.T_readOnly)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_readOnly>));
                    };
                    _m._dirty[_key] = _newEntry(_value);
                    {
                        final __tmp__0 = _value;
                        final __tmp__1 = false;
                        _actual = __tmp__0;
                        _loaded = __tmp__1;
                    };
                };
            };
        };
        _m._mu.unlock();
        return { _0 : _actual, _1 : _loaded };
    }
    /**
        // Store sets the value for a key.
    **/
    @:keep
    static public function store( _m:stdgo.StdGoTypes.Ref<Map_>, _key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<Map_> = _m;
        _m.swap(_key, _value);
    }
    /**
        // Load returns the value stored in the map for a key, or nil if no
        // value is present.
        // The ok result indicates whether value was found in the map.
    **/
    @:keep
    static public function load( _m:stdgo.StdGoTypes.Ref<Map_>, _key:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.StdGoTypes.Ref<Map_> = _m;
        var _value:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _ok:Bool = false;
        var _read:stdgo.sync.Sync.T_readOnly = _m._loadReadOnly()?.__copy__();
        var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false }), _e:stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok && _read._amended) {
            _m._mu.lock();
            _read = _m._loadReadOnly()?.__copy__();
            {
                var __tmp__ = (_read._m != null && _read._m.exists(_key) ? { _0 : _read._m[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false });
                _e = __tmp__._0;
                _ok = __tmp__._1;
            };
            if (!_ok && _read._amended) {
                {
                    var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_entry>), _1 : false });
                    _e = __tmp__._0;
                    _ok = __tmp__._1;
                };
                _m._missLocked();
            };
            _m._mu.unlock();
        };
        if (!_ok) {
            return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
        };
        return _e._load();
    }
    @:keep
    static public function _loadReadOnly( _m:stdgo.StdGoTypes.Ref<Map_>):T_readOnly {
        @:recv var _m:stdgo.StdGoTypes.Ref<Map_> = _m;
        {
            var _p = _m._read.load(({} : stdgo.sync.Sync.T_readOnly));
            if (_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) {
                return (_p : stdgo.sync.Sync.T_readOnly)?.__copy__();
            };
        };
        return (new stdgo.sync.Sync.T_readOnly() : stdgo.sync.Sync.T_readOnly);
    }
}
class T_entry_asInterface {
    @:keep
    public dynamic function _tryExpungeLocked():Bool return __self__.value._tryExpungeLocked();
    /**
        // trySwap swaps a value if the entry has not been expunged.
        //
        // If the entry is expunged, trySwap returns false and leaves the entry
        // unchanged.
    **/
    @:keep
    public dynamic function _trySwap(_i:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>; var _1 : Bool; } return __self__.value._trySwap(_i);
    @:keep
    public dynamic function _delete():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value._delete();
    /**
        // tryLoadOrStore atomically loads or stores a value if the entry is not
        // expunged.
        //
        // If the entry is expunged, tryLoadOrStore leaves the entry unchanged and
        // returns with ok==false.
    **/
    @:keep
    public dynamic function _tryLoadOrStore(_i:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; var _2 : Bool; } return __self__.value._tryLoadOrStore(_i);
    /**
        // swapLocked unconditionally swaps a value into the entry.
        //
        // The entry must be known not to be expunged.
    **/
    @:keep
    public dynamic function _swapLocked(_i:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>):stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface> return __self__.value._swapLocked(_i);
    /**
        // unexpungeLocked ensures that the entry is not marked as expunged.
        //
        // If the entry was previously expunged, it must be added to the dirty map
        // before m.mu is unlocked.
    **/
    @:keep
    public dynamic function _unexpungeLocked():Bool return __self__.value._unexpungeLocked();
    /**
        // tryCompareAndSwap compare the entry with the given old value and swaps
        // it with a new value if the entry is equal to the old value, and the entry
        // has not been expunged.
        //
        // If the entry is expunged, tryCompareAndSwap returns false and leaves
        // the entry unchanged.
    **/
    @:keep
    public dynamic function _tryCompareAndSwap(_old:stdgo.StdGoTypes.AnyInterface, _new:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value._tryCompareAndSwap(_old, _new);
    @:keep
    public dynamic function _load():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value._load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_entry>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.T_entry_asInterface) class T_entry_static_extension {
    @:keep
    static public function _tryExpungeLocked( _e:stdgo.StdGoTypes.Ref<T_entry>):Bool {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_entry> = _e;
        var _isExpunged:Bool = false;
        var _p = _e._p.load((null : stdgo.StdGoTypes.AnyInterface));
        while (_p == null || (_p : Dynamic).__nil__) {
            if (_e._p.compareAndSwap((null : stdgo.StdGoTypes.AnyInterface), (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>), _expunged)) {
                return true;
            };
            _p = _e._p.load((null : stdgo.StdGoTypes.AnyInterface));
        };
        return _p == (_expunged);
    }
    /**
        // trySwap swaps a value if the entry has not been expunged.
        //
        // If the entry is expunged, trySwap returns false and leaves the entry
        // unchanged.
    **/
    @:keep
    static public function _trySwap( _e:stdgo.StdGoTypes.Ref<T_entry>, _i:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>; var _1 : Bool; } {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_entry> = _e;
        while (true) {
            var _p = _e._p.load((null : stdgo.StdGoTypes.AnyInterface));
            if (_p == (_expunged)) {
                return { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>), _1 : false };
            };
            if (_e._p.compareAndSwap((null : stdgo.StdGoTypes.AnyInterface), _p, _i)) {
                return { _0 : _p, _1 : true };
            };
        };
    }
    @:keep
    static public function _delete( _e:stdgo.StdGoTypes.Ref<T_entry>):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_entry> = _e;
        var _value:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _ok:Bool = false;
        while (true) {
            var _p = _e._p.load((null : stdgo.StdGoTypes.AnyInterface));
            if (((_p == null) || (_p : Dynamic).__nil__) || (_p == _expunged)) {
                return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
            };
            if (_e._p.compareAndSwap((null : stdgo.StdGoTypes.AnyInterface), _p, (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>))) {
                return { _0 : (_p : stdgo.StdGoTypes.AnyInterface), _1 : true };
            };
        };
    }
    /**
        // tryLoadOrStore atomically loads or stores a value if the entry is not
        // expunged.
        //
        // If the entry is expunged, tryLoadOrStore leaves the entry unchanged and
        // returns with ok==false.
    **/
    @:keep
    static public function _tryLoadOrStore( _e:stdgo.StdGoTypes.Ref<T_entry>, _i:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; var _2 : Bool; } {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_entry> = _e;
        var _actual:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _loaded:Bool = false, _ok:Bool = false;
        var _p = _e._p.load((null : stdgo.StdGoTypes.AnyInterface));
        if (_p == (_expunged)) {
            return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false, _2 : false };
        };
        if (_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) {
            return { _0 : (_p : stdgo.StdGoTypes.AnyInterface), _1 : true, _2 : true };
        };
        var _ic:stdgo.StdGoTypes.AnyInterface = _i;
        while (true) {
            if (_e._p.compareAndSwap((null : stdgo.StdGoTypes.AnyInterface), (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>), (stdgo.Go.setRef(_ic) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>))) {
                return { _0 : _i, _1 : false, _2 : true };
            };
            _p = _e._p.load((null : stdgo.StdGoTypes.AnyInterface));
            if (_p == (_expunged)) {
                return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false, _2 : false };
            };
            if (_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) {
                return { _0 : (_p : stdgo.StdGoTypes.AnyInterface), _1 : true, _2 : true };
            };
        };
    }
    /**
        // swapLocked unconditionally swaps a value into the entry.
        //
        // The entry must be known not to be expunged.
    **/
    @:keep
    static public function _swapLocked( _e:stdgo.StdGoTypes.Ref<T_entry>, _i:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>):stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface> {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_entry> = _e;
        return _e._p.swap((null : stdgo.StdGoTypes.AnyInterface), _i);
    }
    /**
        // unexpungeLocked ensures that the entry is not marked as expunged.
        //
        // If the entry was previously expunged, it must be added to the dirty map
        // before m.mu is unlocked.
    **/
    @:keep
    static public function _unexpungeLocked( _e:stdgo.StdGoTypes.Ref<T_entry>):Bool {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_entry> = _e;
        var _wasExpunged:Bool = false;
        return _e._p.compareAndSwap((null : stdgo.StdGoTypes.AnyInterface), _expunged, (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>));
    }
    /**
        // tryCompareAndSwap compare the entry with the given old value and swaps
        // it with a new value if the entry is equal to the old value, and the entry
        // has not been expunged.
        //
        // If the entry is expunged, tryCompareAndSwap returns false and leaves
        // the entry unchanged.
    **/
    @:keep
    static public function _tryCompareAndSwap( _e:stdgo.StdGoTypes.Ref<T_entry>, _old:stdgo.StdGoTypes.AnyInterface, _new:stdgo.StdGoTypes.AnyInterface):Bool {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_entry> = _e;
        var _p = _e._p.load((null : stdgo.StdGoTypes.AnyInterface));
        if ((((_p == null) || (_p : Dynamic).__nil__) || (_p == _expunged)) || ((_p : stdgo.StdGoTypes.AnyInterface) != _old)) {
            return false;
        };
        var _nc:stdgo.StdGoTypes.AnyInterface = _new;
        while (true) {
            if (_e._p.compareAndSwap((null : stdgo.StdGoTypes.AnyInterface), _p, (stdgo.Go.setRef(_nc) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>))) {
                return true;
            };
            _p = _e._p.load((null : stdgo.StdGoTypes.AnyInterface));
            if ((((_p == null) || (_p : Dynamic).__nil__) || (_p == _expunged)) || ((_p : stdgo.StdGoTypes.AnyInterface) != _old)) {
                return false;
            };
        };
    }
    @:keep
    static public function _load( _e:stdgo.StdGoTypes.Ref<T_entry>):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_entry> = _e;
        var _value:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _ok:Bool = false;
        var _p = _e._p.load((null : stdgo.StdGoTypes.AnyInterface));
        if (((_p == null) || (_p : Dynamic).__nil__) || (_p == _expunged)) {
            return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
        };
        return { _0 : (_p : stdgo.StdGoTypes.AnyInterface), _1 : true };
    }
}
class Mutex_asInterface {
    @:keep
    public dynamic function _unlockSlow(_new:stdgo.StdGoTypes.GoInt32):Void __self__.value._unlockSlow(_new);
    /**
        // Unlock unlocks m.
        // It is a run-time error if m is not locked on entry to Unlock.
        //
        // A locked Mutex is not associated with a particular goroutine.
        // It is allowed for one goroutine to lock a Mutex and then
        // arrange for another goroutine to unlock it.
    **/
    @:keep
    public dynamic function unlock():Void __self__.value.unlock();
    @:keep
    public dynamic function _lockSlow():Void __self__.value._lockSlow();
    /**
        // TryLock tries to lock m and reports whether it succeeded.
        //
        // Note that while correct uses of TryLock do exist, they are rare,
        // and use of TryLock is often a sign of a deeper problem
        // in a particular use of mutexes.
    **/
    @:keep
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    /**
        // Lock locks m.
        // If the lock is already in use, the calling goroutine
        // blocks until the mutex is available.
    **/
    @:keep
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Mutex>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.Mutex_asInterface) class Mutex_static_extension {
    @:keep
    static public function _unlockSlow( _m:stdgo.StdGoTypes.Ref<Mutex>, _new:stdgo.StdGoTypes.GoInt32):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<Mutex> = _m;
        if ((_new + (1 : stdgo.StdGoTypes.GoInt32)) & (1 : stdgo.StdGoTypes.GoInt32) == ((0 : stdgo.StdGoTypes.GoInt32))) {
            _fatal(("sync: unlock of unlocked mutex" : stdgo.GoString));
        };
        if (_new & (4 : stdgo.StdGoTypes.GoInt32) == ((0 : stdgo.StdGoTypes.GoInt32))) {
            var _old:stdgo.StdGoTypes.GoInt32 = _new;
            while (true) {
                if (((_old >> (3i64 : stdgo.StdGoTypes.GoUInt64)) == (0 : stdgo.StdGoTypes.GoInt32)) || ((_old & (7 : stdgo.StdGoTypes.GoInt32)) != (0 : stdgo.StdGoTypes.GoInt32))) {
                    return;
                };
                _new = (_old - (8 : stdgo.StdGoTypes.GoInt32)) | (2 : stdgo.StdGoTypes.GoInt32);
                if (stdgo.sync.atomic_.Atomic_.compareAndSwapInt32(stdgo.Go.pointer(_m._state), _old, _new)) {
                    _runtime_Semrelease(stdgo.Go.pointer(_m._sema), false, (1 : stdgo.StdGoTypes.GoInt));
                    return;
                };
                _old = _m._state;
            };
        } else {
            _runtime_Semrelease(stdgo.Go.pointer(_m._sema), true, (1 : stdgo.StdGoTypes.GoInt));
        };
    }
    /**
        // Unlock unlocks m.
        // It is a run-time error if m is not locked on entry to Unlock.
        //
        // A locked Mutex is not associated with a particular goroutine.
        // It is allowed for one goroutine to lock a Mutex and then
        // arrange for another goroutine to unlock it.
    **/
    @:keep
    static public function unlock( _m:stdgo.StdGoTypes.Ref<Mutex>):Void @:privateAccess #if !js _m.mutex.release() #else null #end;
    @:keep
    static public function _lockSlow( _m:stdgo.StdGoTypes.Ref<Mutex>):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<Mutex> = _m;
        var _waitStartTime:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64);
        var _starving:Bool = false;
        var _awoke:Bool = false;
        var _iter:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _old:stdgo.StdGoTypes.GoInt32 = _m._state;
        while (true) {
            if (((_old & (5 : stdgo.StdGoTypes.GoInt32)) == (1 : stdgo.StdGoTypes.GoInt32)) && _runtime_canSpin(_iter)) {
                if (((!_awoke && ((_old & (2 : stdgo.StdGoTypes.GoInt32)) == (0 : stdgo.StdGoTypes.GoInt32))) && ((_old >> (3i64 : stdgo.StdGoTypes.GoUInt64)) != (0 : stdgo.StdGoTypes.GoInt32))) && stdgo.sync.atomic_.Atomic_.compareAndSwapInt32(stdgo.Go.pointer(_m._state), _old, _old | (2 : stdgo.StdGoTypes.GoInt32))) {
                    _awoke = true;
                };
                _runtime_doSpin();
                _iter++;
                _old = _m._state;
                continue;
            };
            var _new:stdgo.StdGoTypes.GoInt32 = _old;
            if (_old & (4 : stdgo.StdGoTypes.GoInt32) == ((0 : stdgo.StdGoTypes.GoInt32))) {
                _new = _new | ((1 : stdgo.StdGoTypes.GoInt32));
            };
            if (_old & (5 : stdgo.StdGoTypes.GoInt32) != ((0 : stdgo.StdGoTypes.GoInt32))) {
                _new = _new + ((8 : stdgo.StdGoTypes.GoInt32));
            };
            if (_starving && ((_old & (1 : stdgo.StdGoTypes.GoInt32)) != (0 : stdgo.StdGoTypes.GoInt32))) {
                _new = _new | ((4 : stdgo.StdGoTypes.GoInt32));
            };
            if (_awoke) {
                if (_new & (2 : stdgo.StdGoTypes.GoInt32) == ((0 : stdgo.StdGoTypes.GoInt32))) {
                    _throw(("sync: inconsistent mutex state" : stdgo.GoString));
                };
                _new = _new & ((2 : stdgo.StdGoTypes.GoInt32) ^ (-1i32 : stdgo.StdGoTypes.GoInt));
            };
            if (stdgo.sync.atomic_.Atomic_.compareAndSwapInt32(stdgo.Go.pointer(_m._state), _old, _new)) {
                if (_old & (5 : stdgo.StdGoTypes.GoInt32) == ((0 : stdgo.StdGoTypes.GoInt32))) {
                    break;
                };
                var _queueLifo:Bool = _waitStartTime != ((0i64 : stdgo.StdGoTypes.GoInt64));
                if (_waitStartTime == ((0i64 : stdgo.StdGoTypes.GoInt64))) {
                    _waitStartTime = _runtime_nanotime();
                };
                _runtime_SemacquireMutex(stdgo.Go.pointer(_m._sema), _queueLifo, (1 : stdgo.StdGoTypes.GoInt));
                _starving = _starving || ((_runtime_nanotime() - _waitStartTime) > (1000000i64 : stdgo.StdGoTypes.GoInt64));
                _old = _m._state;
                if (_old & (4 : stdgo.StdGoTypes.GoInt32) != ((0 : stdgo.StdGoTypes.GoInt32))) {
                    if (((_old & (3 : stdgo.StdGoTypes.GoInt32)) != (0 : stdgo.StdGoTypes.GoInt32)) || ((_old >> (3i64 : stdgo.StdGoTypes.GoUInt64)) == (0 : stdgo.StdGoTypes.GoInt32))) {
                        _throw(("sync: inconsistent mutex state" : stdgo.GoString));
                    };
                    var _delta:stdgo.StdGoTypes.GoInt32 = (-7 : stdgo.StdGoTypes.GoInt32);
                    if (!_starving || ((_old >> (3i64 : stdgo.StdGoTypes.GoUInt64)) == (1 : stdgo.StdGoTypes.GoInt32))) {
                        _delta = _delta - ((4 : stdgo.StdGoTypes.GoInt32));
                    };
                    stdgo.sync.atomic_.Atomic_.addInt32(stdgo.Go.pointer(_m._state), _delta);
                    break;
                };
                _awoke = true;
                _iter = (0 : stdgo.StdGoTypes.GoInt);
            } else {
                _old = _m._state;
            };
        };
        if (false) {
            stdgo.internal.race.Race.acquire((stdgo.Go.toInterface(_m) : stdgo.unsafe.Unsafe.UnsafePointer));
        };
    }
    /**
        // TryLock tries to lock m and reports whether it succeeded.
        //
        // Note that while correct uses of TryLock do exist, they are rare,
        // and use of TryLock is often a sign of a deeper problem
        // in a particular use of mutexes.
    **/
    @:keep
    static public function tryLock( _m:stdgo.StdGoTypes.Ref<Mutex>):Bool @:privateAccess return #if !js _m.mutex.tryAcquire() #else true #end;
    /**
        // Lock locks m.
        // If the lock is already in use, the calling goroutine
        // blocks until the mutex is available.
    **/
    @:keep
    static public function lock( _m:stdgo.StdGoTypes.Ref<Mutex>):Void @:privateAccess #if !js _m.mutex.acquire() #else null #end;
}
class Once_asInterface {
    @:keep
    public dynamic function _doSlow(_f:() -> Void):Void __self__.value._doSlow(_f);
    /**
        // Do calls the function f if and only if Do is being called for the
        // first time for this instance of Once. In other words, given
        //
        //	var once Once
        //
        // if once.Do(f) is called multiple times, only the first call will invoke f,
        // even if f has a different value in each invocation. A new instance of
        // Once is required for each function to execute.
        //
        // Do is intended for initialization that must be run exactly once. Since f
        // is niladic, it may be necessary to use a function literal to capture the
        // arguments to a function to be invoked by Do:
        //
        //	config.once.Do(func() { config.init(filename) })
        //
        // Because no call to Do returns until the one call to f returns, if f causes
        // Do to be called, it will deadlock.
        //
        // If f panics, Do considers it to have returned; future calls of Do return
        // without calling f.
    **/
    @:keep
    public dynamic function do_(_f:() -> Void):Void __self__.value.do_(_f);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Once>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.Once_asInterface) class Once_static_extension {
    @:keep
    static public function _doSlow( _o:stdgo.StdGoTypes.Ref<Once>, _f:() -> Void):Void {
        @:recv var _o:stdgo.StdGoTypes.Ref<Once> = _o;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _o._m.lock();
            __deferstack__.unshift(() -> _o._m.unlock());
            if (_o._done == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
                {
                    var _a0 = stdgo.Go.pointer(_o._done);
                    var _a1 = (1u32 : stdgo.StdGoTypes.GoUInt32);
                    __deferstack__.unshift(() -> stdgo.sync.atomic_.Atomic_.storeUint32(_a0, _a1));
                };
                _f();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    /**
        // Do calls the function f if and only if Do is being called for the
        // first time for this instance of Once. In other words, given
        //
        //	var once Once
        //
        // if once.Do(f) is called multiple times, only the first call will invoke f,
        // even if f has a different value in each invocation. A new instance of
        // Once is required for each function to execute.
        //
        // Do is intended for initialization that must be run exactly once. Since f
        // is niladic, it may be necessary to use a function literal to capture the
        // arguments to a function to be invoked by Do:
        //
        //	config.once.Do(func() { config.init(filename) })
        //
        // Because no call to Do returns until the one call to f returns, if f causes
        // Do to be called, it will deadlock.
        //
        // If f panics, Do considers it to have returned; future calls of Do return
        // without calling f.
    **/
    @:keep
    static public function do_( _o:stdgo.StdGoTypes.Ref<Once>, _f:() -> Void):Void {
        @:recv var _o:stdgo.StdGoTypes.Ref<Once> = _o;
        if (@:privateAccess _o._done == 1) return;
        @:privateAccess _o._done = 1;
        _f();
    }
}
class Pool_asInterface {
    @:keep
    public dynamic function _pinSlow():{ var _0 : stdgo.StdGoTypes.Ref<T_poolLocal>; var _1 : stdgo.StdGoTypes.GoInt; } return __self__.value._pinSlow();
    /**
        // pin pins the current goroutine to P, disables preemption and
        // returns poolLocal pool for the P and the P's id.
        // Caller must call runtime_procUnpin() when done with the pool.
    **/
    @:keep
    public dynamic function _pin():{ var _0 : stdgo.StdGoTypes.Ref<T_poolLocal>; var _1 : stdgo.StdGoTypes.GoInt; } return __self__.value._pin();
    @:keep
    public dynamic function _getSlow(_pid:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.AnyInterface return __self__.value._getSlow(_pid);
    /**
        // Get selects an arbitrary item from the Pool, removes it from the
        // Pool, and returns it to the caller.
        // Get may choose to ignore the pool and treat it as empty.
        // Callers should not assume any relation between values passed to Put and
        // the values returned by Get.
        //
        // If Get would otherwise return nil and p.New is non-nil, Get returns
        // the result of calling p.New.
    **/
    @:keep
    public dynamic function get():stdgo.StdGoTypes.AnyInterface return __self__.value.get();
    /**
        // Put adds x to the pool.
    **/
    @:keep
    public dynamic function put(_x:stdgo.StdGoTypes.AnyInterface):Void __self__.value.put(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Pool>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.Pool_asInterface) class Pool_static_extension {
    @:keep
    static public function _pinSlow( _p:stdgo.StdGoTypes.Ref<Pool>):{ var _0 : stdgo.StdGoTypes.Ref<T_poolLocal>; var _1 : stdgo.StdGoTypes.GoInt; } return { _0 : null, _1 : 0 };
    /**
        // pin pins the current goroutine to P, disables preemption and
        // returns poolLocal pool for the P and the P's id.
        // Caller must call runtime_procUnpin() when done with the pool.
    **/
    @:keep
    static public function _pin( _p:stdgo.StdGoTypes.Ref<Pool>):{ var _0 : stdgo.StdGoTypes.Ref<T_poolLocal>; var _1 : stdgo.StdGoTypes.GoInt; } {
        @:recv var _p:stdgo.StdGoTypes.Ref<Pool> = _p;
        var _pid:stdgo.StdGoTypes.GoInt = _runtime_procPin();
        var _s:stdgo.StdGoTypes.GoUIntptr = _runtime_LoadAcquintptr(stdgo.Go.pointer(_p._localSize));
        var _l:stdgo.unsafe.Unsafe.UnsafePointer = _p._local;
        if ((_pid : stdgo.StdGoTypes.GoUIntptr) < _s) {
            return { _0 : _indexLocal(_l, _pid), _1 : _pid };
        };
        return _p._pinSlow();
    }
    @:keep
    static public function _getSlow( _p:stdgo.StdGoTypes.Ref<Pool>, _pid:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.AnyInterface {
        @:recv var _p:stdgo.StdGoTypes.Ref<Pool> = _p;
        var _size:stdgo.StdGoTypes.GoUIntptr = _runtime_LoadAcquintptr(stdgo.Go.pointer(_p._localSize));
        var _locals:stdgo.unsafe.Unsafe.UnsafePointer = _p._local;
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_size : stdgo.StdGoTypes.GoInt), _i++, {
                var _l = _indexLocal(_locals, ((_pid + _i) + (1 : stdgo.StdGoTypes.GoInt)) % (_size : stdgo.StdGoTypes.GoInt));
                {
                    var __tmp__ = _l._poolLocalInternal._shared._popTail(), _x:stdgo.StdGoTypes.AnyInterface = __tmp__._0, __20:Bool = __tmp__._1;
                    if (_x != null) {
                        return _x;
                    };
                };
            });
        };
        _size = stdgo.sync.atomic_.Atomic_.loadUintptr(stdgo.Go.pointer(_p._victimSize));
        if ((_pid : stdgo.StdGoTypes.GoUIntptr) >= _size) {
            return (null : stdgo.StdGoTypes.AnyInterface);
        };
        _locals = _p._victim;
        var _l = _indexLocal(_locals, _pid);
        {
            var _x:stdgo.StdGoTypes.AnyInterface = _l._poolLocalInternal._private;
            if (_x != null) {
                _l._poolLocalInternal._private = (null : stdgo.StdGoTypes.AnyInterface);
                return _x;
            };
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_size : stdgo.StdGoTypes.GoInt), _i++, {
                var _l = _indexLocal(_locals, (_pid + _i) % (_size : stdgo.StdGoTypes.GoInt));
                {
                    var __tmp__ = _l._poolLocalInternal._shared._popTail(), _x:stdgo.StdGoTypes.AnyInterface = __tmp__._0, __21:Bool = __tmp__._1;
                    if (_x != null) {
                        return _x;
                    };
                };
            });
        };
        stdgo.sync.atomic_.Atomic_.storeUintptr(stdgo.Go.pointer(_p._victimSize), (0 : stdgo.StdGoTypes.GoUIntptr));
        return (null : stdgo.StdGoTypes.AnyInterface);
    }
    /**
        // Get selects an arbitrary item from the Pool, removes it from the
        // Pool, and returns it to the caller.
        // Get may choose to ignore the pool and treat it as empty.
        // Callers should not assume any relation between values passed to Put and
        // the values returned by Get.
        //
        // If Get would otherwise return nil and p.New is non-nil, Get returns
        // the result of calling p.New.
    **/
    @:keep
    static public function get( _p:stdgo.StdGoTypes.Ref<Pool>):stdgo.StdGoTypes.AnyInterface {
        @:recv var _p:stdgo.StdGoTypes.Ref<Pool> = _p;
        var obj = #if !js @:privateAccess _p.pool.pop(false) #else @:privateAccess _p.pool.pop() #end;
        if (obj == null && @:privateAccess _p.new_ != null) obj = @:privateAccess _p.new_();
        return obj;
    }
    /**
        // Put adds x to the pool.
    **/
    @:keep
    static public function put( _p:stdgo.StdGoTypes.Ref<Pool>, _x:stdgo.StdGoTypes.AnyInterface):Void {
        @:recv var _p:stdgo.StdGoTypes.Ref<Pool> = _p;
        @:privateAccess _p.pool.push(_x);
    }
}
class T_poolLocal_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_poolLocal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.T_poolLocal_asInterface) class T_poolLocal_static_extension {

}
class T_poolDequeue_asInterface {
    /**
        // popTail removes and returns the element at the tail of the queue.
        // It returns false if the queue is empty. It may be called by any
        // number of consumers.
    **/
    @:keep
    public dynamic function _popTail():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value._popTail();
    /**
        // popHead removes and returns the element at the head of the queue.
        // It returns false if the queue is empty. It must only be called by a
        // single producer.
    **/
    @:keep
    public dynamic function _popHead():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value._popHead();
    /**
        // pushHead adds val at the head of the queue. It returns false if the
        // queue is full. It must only be called by a single producer.
    **/
    @:keep
    public dynamic function _pushHead(_val:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value._pushHead(_val);
    @:keep
    public dynamic function _pack(_head:stdgo.StdGoTypes.GoUInt32, _tail:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt64 return __self__.value._pack(_head, _tail);
    @:keep
    public dynamic function _unpack(_ptrs:stdgo.StdGoTypes.GoUInt64):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; } return __self__.value._unpack(_ptrs);
    @:keep
    public dynamic function popTail():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.popTail();
    @:keep
    public dynamic function popHead():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.popHead();
    @:keep
    public dynamic function pushHead(_val:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value.pushHead(_val);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_poolDequeue>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.T_poolDequeue_asInterface) class T_poolDequeue_static_extension {
    /**
        // popTail removes and returns the element at the tail of the queue.
        // It returns false if the queue is empty. It may be called by any
        // number of consumers.
    **/
    @:keep
    static public function _popTail( _d:stdgo.StdGoTypes.Ref<T_poolDequeue>):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_poolDequeue> = _d;
        var _slot:stdgo.StdGoTypes.Ref<T_eface> = (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_eface>);
        while (true) {
            var _ptrs:stdgo.StdGoTypes.GoUInt64 = stdgo.sync.atomic_.Atomic_.loadUint64(stdgo.Go.pointer(_d._headTail));
            var __tmp__ = _d._unpack(_ptrs), _head:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _tail:stdgo.StdGoTypes.GoUInt32 = __tmp__._1;
            if (_tail == (_head)) {
                return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
            };
            var _ptrs2:stdgo.StdGoTypes.GoUInt64 = _d._pack(_head, _tail + (1u32 : stdgo.StdGoTypes.GoUInt32));
            if (stdgo.sync.atomic_.Atomic_.compareAndSwapUint64(stdgo.Go.pointer(_d._headTail), _ptrs, _ptrs2)) {
                _slot = (stdgo.Go.setRef(_d._vals[(_tail & ((_d._vals.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt32) : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_eface>);
                break;
            };
        };
        var _val:stdgo.StdGoTypes.AnyInterface = (((stdgo.Go.toInterface(_slot) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) })) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>) : stdgo.StdGoTypes.AnyInterface);
        if (_val == (stdgo.Go.toInterface((new stdgo.sync.Sync.T_dequeueNil() : T_dequeueNil)))) {
            _val = (null : stdgo.StdGoTypes.AnyInterface);
        };
        _slot._val = @:default_value null;
        stdgo.sync.atomic_.Atomic_.storePointer(stdgo.Go.pointer(_slot._typ), @:default_value null);
        return { _0 : _val, _1 : true };
    }
    /**
        // popHead removes and returns the element at the head of the queue.
        // It returns false if the queue is empty. It must only be called by a
        // single producer.
    **/
    @:keep
    static public function _popHead( _d:stdgo.StdGoTypes.Ref<T_poolDequeue>):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_poolDequeue> = _d;
        var _slot:stdgo.StdGoTypes.Ref<T_eface> = (null : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_eface>);
        while (true) {
            var _ptrs:stdgo.StdGoTypes.GoUInt64 = stdgo.sync.atomic_.Atomic_.loadUint64(stdgo.Go.pointer(_d._headTail));
            var __tmp__ = _d._unpack(_ptrs), _head:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _tail:stdgo.StdGoTypes.GoUInt32 = __tmp__._1;
            if (_tail == (_head)) {
                return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
            };
            _head--;
            var _ptrs2:stdgo.StdGoTypes.GoUInt64 = _d._pack(_head, _tail);
            if (stdgo.sync.atomic_.Atomic_.compareAndSwapUint64(stdgo.Go.pointer(_d._headTail), _ptrs, _ptrs2)) {
                _slot = (stdgo.Go.setRef(_d._vals[(_head & ((_d._vals.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt32) : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_eface>);
                break;
            };
        };
        var _val:stdgo.StdGoTypes.AnyInterface = (((stdgo.Go.toInterface(_slot) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) })) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>) : stdgo.StdGoTypes.AnyInterface);
        if (_val == (stdgo.Go.toInterface((new stdgo.sync.Sync.T_dequeueNil() : T_dequeueNil)))) {
            _val = (null : stdgo.StdGoTypes.AnyInterface);
        };
        {
            var __tmp__ = (new stdgo.sync.Sync.T_eface() : stdgo.sync.Sync.T_eface);
            _slot._typ = __tmp__._typ;
            _slot._val = __tmp__._val;
        };
        return { _0 : _val, _1 : true };
    }
    /**
        // pushHead adds val at the head of the queue. It returns false if the
        // queue is full. It must only be called by a single producer.
    **/
    @:keep
    static public function _pushHead( _d:stdgo.StdGoTypes.Ref<T_poolDequeue>, _val:stdgo.StdGoTypes.AnyInterface):Bool {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_poolDequeue> = _d;
        var _ptrs:stdgo.StdGoTypes.GoUInt64 = stdgo.sync.atomic_.Atomic_.loadUint64(stdgo.Go.pointer(_d._headTail));
        var __tmp__ = _d._unpack(_ptrs), _head:stdgo.StdGoTypes.GoUInt32 = __tmp__._0, _tail:stdgo.StdGoTypes.GoUInt32 = __tmp__._1;
        if ((_tail + (_d._vals.length : stdgo.StdGoTypes.GoUInt32)) & (-1u32 : stdgo.StdGoTypes.GoUInt32) == (_head)) {
            return false;
        };
        var _slot = (stdgo.Go.setRef(_d._vals[(_head & ((_d._vals.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt32) : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_eface>);
        var _typ:stdgo.unsafe.Unsafe.UnsafePointer = stdgo.sync.atomic_.Atomic_.loadPointer(stdgo.Go.pointer(_slot._typ));
        if (_typ != null) {
            return false;
        };
        if (_val == null) {
            _val = stdgo.Go.toInterface((new stdgo.sync.Sync.T_dequeueNil() : T_dequeueNil));
        };
        ((stdgo.Go.toInterface(_slot) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, []) })) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>).__setData__(_val);
        stdgo.sync.atomic_.Atomic_.addUint64(stdgo.Go.pointer(_d._headTail), (4294967296i64 : stdgo.StdGoTypes.GoUInt64));
        return true;
    }
    @:keep
    static public function _pack( _d:stdgo.StdGoTypes.Ref<T_poolDequeue>, _head:stdgo.StdGoTypes.GoUInt32, _tail:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt64 {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_poolDequeue> = _d;
        {};
        return ((_head : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64)) | (_tail & (-1u32 : stdgo.StdGoTypes.GoUInt32) : stdgo.StdGoTypes.GoUInt64);
    }
    @:keep
    static public function _unpack( _d:stdgo.StdGoTypes.Ref<T_poolDequeue>, _ptrs:stdgo.StdGoTypes.GoUInt64):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; } {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_poolDequeue> = _d;
        var _head:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _tail:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        {};
        _head = ((_ptrs >> (32i64 : stdgo.StdGoTypes.GoUInt64)) & (4294967295i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt32);
        _tail = (_ptrs & (4294967295i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoUInt32);
        return { _0 : _head, _1 : _tail };
    }
    @:keep
    static public function popTail( _d:stdgo.StdGoTypes.Ref<T_poolDequeue>):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_poolDequeue> = _d;
        return _d._popTail();
    }
    @:keep
    static public function popHead( _d:stdgo.StdGoTypes.Ref<T_poolDequeue>):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_poolDequeue> = _d;
        return _d._popHead();
    }
    @:keep
    static public function pushHead( _d:stdgo.StdGoTypes.Ref<T_poolDequeue>, _val:stdgo.StdGoTypes.AnyInterface):Bool {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_poolDequeue> = _d;
        return _d._pushHead(_val);
    }
}
class T_poolChain_asInterface {
    @:keep
    public dynamic function _popTail():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value._popTail();
    @:keep
    public dynamic function _popHead():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value._popHead();
    @:keep
    public dynamic function _pushHead(_val:stdgo.StdGoTypes.AnyInterface):Void __self__.value._pushHead(_val);
    @:keep
    public dynamic function popTail():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.popTail();
    @:keep
    public dynamic function popHead():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.popHead();
    @:keep
    public dynamic function pushHead(_val:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value.pushHead(_val);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_poolChain>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.T_poolChain_asInterface) class T_poolChain_static_extension {
    @:keep
    static public function _popTail( _c:stdgo.StdGoTypes.Ref<T_poolChain>):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_poolChain> = _c;
        var _d = _loadPoolChainElt((stdgo.Go.setRef(_c._tail) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>>));
        if (_d == null || (_d : Dynamic).__nil__) {
            return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
        };
        while (true) {
            var _d2 = _loadPoolChainElt((stdgo.Go.setRef(_d._next) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>>));
            {
                var __tmp__ = _d._popTail(), _val:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return { _0 : _val, _1 : _ok };
                };
            };
            if (_d2 == null || (_d2 : Dynamic).__nil__) {
                return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
            };
            if (stdgo.sync.atomic_.Atomic_.compareAndSwapPointer(((stdgo.Go.toInterface((stdgo.Go.setRef(_c._tail) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>>)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(unsafepointer_kind) })) : stdgo.Pointer<stdgo.unsafe.Unsafe.UnsafePointer>), (stdgo.Go.toInterface(_d) : stdgo.unsafe.Unsafe.UnsafePointer), (stdgo.Go.toInterface(_d2) : stdgo.unsafe.Unsafe.UnsafePointer))) {
                _storePoolChainElt((stdgo.Go.setRef(_d2._prev) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>>), null);
            };
            _d = _d2;
        };
    }
    @:keep
    static public function _popHead( _c:stdgo.StdGoTypes.Ref<T_poolChain>):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_poolChain> = _c;
        var _d = _c._head;
        while (_d != null && ((_d : Dynamic).__nil__ == null || !(_d : Dynamic).__nil__)) {
            {
                var __tmp__ = _d._popHead(), _val:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return { _0 : _val, _1 : _ok };
                };
            };
            _d = _loadPoolChainElt((stdgo.Go.setRef(_d._prev) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>>));
        };
        return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
    }
    @:keep
    static public function _pushHead( _c:stdgo.StdGoTypes.Ref<T_poolChain>, _val:stdgo.StdGoTypes.AnyInterface):Void {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_poolChain> = _c;
        var _d = _c._head;
        if (_d == null || (_d : Dynamic).__nil__) {
            {};
            _d = (stdgo.Go.setRef(({} : stdgo.sync.Sync.T_poolChainElt)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>);
            _d._poolDequeue._vals = new stdgo.Slice<stdgo.sync.Sync.T_eface>((8 : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((8 : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (8 : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.sync.Sync.T_eface)]);
            _c._head = _d;
            _storePoolChainElt((stdgo.Go.setRef(_c._tail) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>>), _d);
        };
        if (_d._pushHead(_val)) {
            return;
        };
        var _newSize:stdgo.StdGoTypes.GoInt = (_d._poolDequeue._vals.length) * (2 : stdgo.StdGoTypes.GoInt);
        if (_newSize >= (1073741824 : stdgo.StdGoTypes.GoInt)) {
            _newSize = (1073741824 : stdgo.StdGoTypes.GoInt);
        };
        var _d2 = (stdgo.Go.setRef(({ _prev : _d } : stdgo.sync.Sync.T_poolChainElt)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>);
        _d2._poolDequeue._vals = new stdgo.Slice<stdgo.sync.Sync.T_eface>((_newSize : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_newSize : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (_newSize : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.sync.Sync.T_eface)]);
        _c._head = _d2;
        _storePoolChainElt((stdgo.Go.setRef(_d._next) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.sync.Sync.T_poolChainElt>>), _d2);
        _d2._pushHead(_val);
    }
    @:keep
    static public function popTail( _c:stdgo.StdGoTypes.Ref<T_poolChain>):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_poolChain> = _c;
        return _c._popTail();
    }
    @:keep
    static public function popHead( _c:stdgo.StdGoTypes.Ref<T_poolChain>):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_poolChain> = _c;
        return _c._popHead();
    }
    @:keep
    static public function pushHead( _c:stdgo.StdGoTypes.Ref<T_poolChain>, _val:stdgo.StdGoTypes.AnyInterface):Bool {
        @:recv var _c:stdgo.StdGoTypes.Ref<T_poolChain> = _c;
        _c._pushHead(_val);
        return true;
    }
}
class T_poolChainElt_asInterface {
    @:embedded
    public dynamic function _unpack(__0:stdgo.StdGoTypes.GoUInt64):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; } return __self__.value._unpack(__0);
    @:embedded
    public dynamic function _pushHead(_val_:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value._pushHead(_val_);
    @:embedded
    public dynamic function _popTail():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value._popTail();
    @:embedded
    public dynamic function _popHead():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value._popHead();
    @:embedded
    public dynamic function _pack(_head:stdgo.StdGoTypes.GoUInt32, _tail:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt64 return __self__.value._pack(_head, _tail);
    @:embedded
    public dynamic function pushHead(_val_:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value.pushHead(_val_);
    @:embedded
    public dynamic function popTail():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.popTail();
    @:embedded
    public dynamic function popHead():{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.popHead();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_poolChainElt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.T_poolChainElt_asInterface) class T_poolChainElt_static_extension {
    @:embedded
    public static function _unpack( __self__:T_poolChainElt, __0:stdgo.StdGoTypes.GoUInt64):{ var _0 : stdgo.StdGoTypes.GoUInt32; var _1 : stdgo.StdGoTypes.GoUInt32; } return __self__._unpack(__0);
    @:embedded
    public static function _pushHead( __self__:T_poolChainElt, _val_:stdgo.StdGoTypes.AnyInterface):Bool return __self__._pushHead(_val_);
    @:embedded
    public static function _popTail( __self__:T_poolChainElt):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__._popTail();
    @:embedded
    public static function _popHead( __self__:T_poolChainElt):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__._popHead();
    @:embedded
    public static function _pack( __self__:T_poolChainElt, _head:stdgo.StdGoTypes.GoUInt32, _tail:stdgo.StdGoTypes.GoUInt32):stdgo.StdGoTypes.GoUInt64 return __self__._pack(_head, _tail);
    @:embedded
    public static function pushHead( __self__:T_poolChainElt, _val_:stdgo.StdGoTypes.AnyInterface):Bool return __self__.pushHead(_val_);
    @:embedded
    public static function popTail( __self__:T_poolChainElt):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.popTail();
    @:embedded
    public static function popHead( __self__:T_poolChainElt):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.popHead();
}
class RWMutex_asInterface {
    /**
        // RLocker returns a Locker interface that implements
        // the Lock and Unlock methods by calling rw.RLock and rw.RUnlock.
    **/
    @:keep
    public dynamic function rlocker():Locker return __self__.value.rlocker();
    /**
        // Unlock unlocks rw for writing. It is a run-time error if rw is
        // not locked for writing on entry to Unlock.
        //
        // As with Mutexes, a locked RWMutex is not associated with a particular
        // goroutine. One goroutine may RLock (Lock) a RWMutex and then
        // arrange for another goroutine to RUnlock (Unlock) it.
    **/
    @:keep
    public dynamic function unlock():Void __self__.value.unlock();
    /**
        // TryLock tries to lock rw for writing and reports whether it succeeded.
        //
        // Note that while correct uses of TryLock do exist, they are rare,
        // and use of TryLock is often a sign of a deeper problem
        // in a particular use of mutexes.
    **/
    @:keep
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    /**
        // Lock locks rw for writing.
        // If the lock is already locked for reading or writing,
        // Lock blocks until the lock is available.
    **/
    @:keep
    public dynamic function lock():Void __self__.value.lock();
    @:keep
    public dynamic function _rUnlockSlow(_r:stdgo.StdGoTypes.GoInt32):Void __self__.value._rUnlockSlow(_r);
    /**
        // RUnlock undoes a single RLock call;
        // it does not affect other simultaneous readers.
        // It is a run-time error if rw is not locked for reading
        // on entry to RUnlock.
    **/
    @:keep
    public dynamic function runlock():Void __self__.value.runlock();
    /**
        // TryRLock tries to lock rw for reading and reports whether it succeeded.
        //
        // Note that while correct uses of TryRLock do exist, they are rare,
        // and use of TryRLock is often a sign of a deeper problem
        // in a particular use of mutexes.
    **/
    @:keep
    public dynamic function tryRLock():Bool return __self__.value.tryRLock();
    /**
        // RLock locks rw for reading.
        //
        // It should not be used for recursive read locking; a blocked Lock
        // call excludes new readers from acquiring the lock. See the
        // documentation on the RWMutex type.
    **/
    @:keep
    public dynamic function rlock():Void __self__.value.rlock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RWMutex>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.RWMutex_asInterface) class RWMutex_static_extension {
    /**
        // RLocker returns a Locker interface that implements
        // the Lock and Unlock methods by calling rw.RLock and rw.RUnlock.
    **/
    @:keep
    static public function rlocker( _rw:stdgo.StdGoTypes.Ref<RWMutex>):Locker {
        @:recv var _rw:stdgo.StdGoTypes.Ref<RWMutex> = _rw;
        return stdgo.Go.asInterface((({
            final e = _rw;
            ({ _w : e._w, _writerSem : e._writerSem, _readerSem : e._readerSem, _readerCount : e._readerCount, _readerWait : e._readerWait } : stdgo.sync.Sync.T_rlocker);
        })));
    }
    /**
        // Unlock unlocks rw for writing. It is a run-time error if rw is
        // not locked for writing on entry to Unlock.
        //
        // As with Mutexes, a locked RWMutex is not associated with a particular
        // goroutine. One goroutine may RLock (Lock) a RWMutex and then
        // arrange for another goroutine to RUnlock (Unlock) it.
    **/
    @:keep
    static public function unlock( _rw:stdgo.StdGoTypes.Ref<RWMutex>):Void {
        @:recv var _rw:stdgo.StdGoTypes.Ref<RWMutex> = _rw;
        if (false) {
            _rw._w._state;
            stdgo.internal.race.Race.release((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._readerSem)) : stdgo.unsafe.Unsafe.UnsafePointer));
            stdgo.internal.race.Race.disable();
        };
        var _r:stdgo.StdGoTypes.GoInt32 = _rw._readerCount.add((1073741824 : stdgo.StdGoTypes.GoInt32));
        if (_r >= (1073741824 : stdgo.StdGoTypes.GoInt32)) {
            stdgo.internal.race.Race.enable();
            _fatal(("sync: Unlock of unlocked RWMutex" : stdgo.GoString));
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_r : stdgo.StdGoTypes.GoInt), _i++, {
                _runtime_Semrelease(stdgo.Go.pointer(_rw._readerSem), false, (0 : stdgo.StdGoTypes.GoInt));
            });
        };
        _rw._w.unlock();
        if (false) {
            stdgo.internal.race.Race.enable();
        };
    }
    /**
        // TryLock tries to lock rw for writing and reports whether it succeeded.
        //
        // Note that while correct uses of TryLock do exist, they are rare,
        // and use of TryLock is often a sign of a deeper problem
        // in a particular use of mutexes.
    **/
    @:keep
    static public function tryLock( _rw:stdgo.StdGoTypes.Ref<RWMutex>):Bool {
        @:recv var _rw:stdgo.StdGoTypes.Ref<RWMutex> = _rw;
        if (false) {
            _rw._w._state;
            stdgo.internal.race.Race.disable();
        };
        if (!_rw._w.tryLock()) {
            if (false) {
                stdgo.internal.race.Race.enable();
            };
            return false;
        };
        if (!_rw._readerCount.compareAndSwap((0 : stdgo.StdGoTypes.GoInt32), (-1073741824 : stdgo.StdGoTypes.GoInt32))) {
            _rw._w.unlock();
            if (false) {
                stdgo.internal.race.Race.enable();
            };
            return false;
        };
        if (false) {
            stdgo.internal.race.Race.enable();
            stdgo.internal.race.Race.acquire((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._readerSem)) : stdgo.unsafe.Unsafe.UnsafePointer));
            stdgo.internal.race.Race.acquire((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._writerSem)) : stdgo.unsafe.Unsafe.UnsafePointer));
        };
        return true;
    }
    /**
        // Lock locks rw for writing.
        // If the lock is already locked for reading or writing,
        // Lock blocks until the lock is available.
    **/
    @:keep
    static public function lock( _rw:stdgo.StdGoTypes.Ref<RWMutex>):Void {
        @:recv var _rw:stdgo.StdGoTypes.Ref<RWMutex> = _rw;
        if (false) {
            _rw._w._state;
            stdgo.internal.race.Race.disable();
        };
        _rw._w.lock();
        var _r:stdgo.StdGoTypes.GoInt32 = _rw._readerCount.add((-1073741824 : stdgo.StdGoTypes.GoInt32)) + (1073741824 : stdgo.StdGoTypes.GoInt32);
        if ((_r != (0 : stdgo.StdGoTypes.GoInt32)) && (_rw._readerWait.add(_r) != (0 : stdgo.StdGoTypes.GoInt32))) {
            _runtime_SemacquireRWMutex(stdgo.Go.pointer(_rw._writerSem), false, (0 : stdgo.StdGoTypes.GoInt));
        };
        if (false) {
            stdgo.internal.race.Race.enable();
            stdgo.internal.race.Race.acquire((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._readerSem)) : stdgo.unsafe.Unsafe.UnsafePointer));
            stdgo.internal.race.Race.acquire((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._writerSem)) : stdgo.unsafe.Unsafe.UnsafePointer));
        };
    }
    @:keep
    static public function _rUnlockSlow( _rw:stdgo.StdGoTypes.Ref<RWMutex>, _r:stdgo.StdGoTypes.GoInt32):Void {
        @:recv var _rw:stdgo.StdGoTypes.Ref<RWMutex> = _rw;
        if (((_r + (1 : stdgo.StdGoTypes.GoInt32)) == (0 : stdgo.StdGoTypes.GoInt32)) || ((_r + (1 : stdgo.StdGoTypes.GoInt32)) == (-1073741824 : stdgo.StdGoTypes.GoInt32))) {
            stdgo.internal.race.Race.enable();
            _fatal(("sync: RUnlock of unlocked RWMutex" : stdgo.GoString));
        };
        if (_rw._readerWait.add((-1 : stdgo.StdGoTypes.GoInt32)) == ((0 : stdgo.StdGoTypes.GoInt32))) {
            _runtime_Semrelease(stdgo.Go.pointer(_rw._writerSem), false, (1 : stdgo.StdGoTypes.GoInt));
        };
    }
    /**
        // RUnlock undoes a single RLock call;
        // it does not affect other simultaneous readers.
        // It is a run-time error if rw is not locked for reading
        // on entry to RUnlock.
    **/
    @:keep
    static public function runlock( _rw:stdgo.StdGoTypes.Ref<RWMutex>):Void {
        @:recv var _rw:stdgo.StdGoTypes.Ref<RWMutex> = _rw;
        if (false) {
            _rw._w._state;
            stdgo.internal.race.Race.releaseMerge((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._writerSem)) : stdgo.unsafe.Unsafe.UnsafePointer));
            stdgo.internal.race.Race.disable();
        };
        {
            var _r:stdgo.StdGoTypes.GoInt32 = _rw._readerCount.add((-1 : stdgo.StdGoTypes.GoInt32));
            if (_r < (0 : stdgo.StdGoTypes.GoInt32)) {
                _rw._rUnlockSlow(_r);
            };
        };
        if (false) {
            stdgo.internal.race.Race.enable();
        };
    }
    /**
        // TryRLock tries to lock rw for reading and reports whether it succeeded.
        //
        // Note that while correct uses of TryRLock do exist, they are rare,
        // and use of TryRLock is often a sign of a deeper problem
        // in a particular use of mutexes.
    **/
    @:keep
    static public function tryRLock( _rw:stdgo.StdGoTypes.Ref<RWMutex>):Bool {
        @:recv var _rw:stdgo.StdGoTypes.Ref<RWMutex> = _rw;
        if (false) {
            _rw._w._state;
            stdgo.internal.race.Race.disable();
        };
        while (true) {
            var _c:stdgo.StdGoTypes.GoInt32 = _rw._readerCount.load();
            if (_c < (0 : stdgo.StdGoTypes.GoInt32)) {
                if (false) {
                    stdgo.internal.race.Race.enable();
                };
                return false;
            };
            if (_rw._readerCount.compareAndSwap(_c, _c + (1 : stdgo.StdGoTypes.GoInt32))) {
                if (false) {
                    stdgo.internal.race.Race.enable();
                    stdgo.internal.race.Race.acquire((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._readerSem)) : stdgo.unsafe.Unsafe.UnsafePointer));
                };
                return true;
            };
        };
    }
    /**
        // RLock locks rw for reading.
        //
        // It should not be used for recursive read locking; a blocked Lock
        // call excludes new readers from acquiring the lock. See the
        // documentation on the RWMutex type.
    **/
    @:keep
    static public function rlock( _rw:stdgo.StdGoTypes.Ref<RWMutex>):Void {
        @:recv var _rw:stdgo.StdGoTypes.Ref<RWMutex> = _rw;
        if (false) {
            _rw._w._state;
            stdgo.internal.race.Race.disable();
        };
        if (_rw._readerCount.add((1 : stdgo.StdGoTypes.GoInt32)) < (0 : stdgo.StdGoTypes.GoInt32)) {
            _runtime_SemacquireRWMutexR(stdgo.Go.pointer(_rw._readerSem), false, (0 : stdgo.StdGoTypes.GoInt));
        };
        if (false) {
            stdgo.internal.race.Race.enable();
            stdgo.internal.race.Race.acquire((stdgo.Go.toInterface(stdgo.Go.pointer(_rw._readerSem)) : stdgo.unsafe.Unsafe.UnsafePointer));
        };
    }
}
class WaitGroup_asInterface {
    /**
        // Wait blocks until the WaitGroup counter is zero.
    **/
    @:keep
    public dynamic function wait_():Void __self__.value.wait_();
    /**
        // Done decrements the WaitGroup counter by one.
    **/
    @:keep
    public dynamic function done():Void __self__.value.done();
    /**
        // Add adds delta, which may be negative, to the WaitGroup counter.
        // If the counter becomes zero, all goroutines blocked on Wait are released.
        // If the counter goes negative, Add panics.
        //
        // Note that calls with a positive delta that occur when the counter is zero
        // must happen before a Wait. Calls with a negative delta, or calls with a
        // positive delta that start when the counter is greater than zero, may happen
        // at any time.
        // Typically this means the calls to Add should execute before the statement
        // creating the goroutine or other event to be waited for.
        // If a WaitGroup is reused to wait for several independent sets of events,
        // new Add calls must happen after all previous Wait calls have returned.
        // See the WaitGroup example.
    **/
    @:keep
    public dynamic function add(_delta:stdgo.StdGoTypes.GoInt):Void __self__.value.add(_delta);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<WaitGroup>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.WaitGroup_asInterface) class WaitGroup_static_extension {
    /**
        // Wait blocks until the WaitGroup counter is zero.
    **/
    @:keep
    static public function wait_( _wg:stdgo.StdGoTypes.Ref<WaitGroup>):Void @:privateAccess #if !js _wg.lock.wait() #else null #end;
    /**
        // Done decrements the WaitGroup counter by one.
    **/
    @:keep
    static public function done( _wg:stdgo.StdGoTypes.Ref<WaitGroup>):Void {
        @:recv var _wg:stdgo.StdGoTypes.Ref<WaitGroup> = _wg;
        @:privateAccess _wg.counter--;
        if (@:privateAccess _wg.counter <= 0) {
            @:privateAccess #if !js _wg.lock.release() #else null #end;
        };
    }
    /**
        // Add adds delta, which may be negative, to the WaitGroup counter.
        // If the counter becomes zero, all goroutines blocked on Wait are released.
        // If the counter goes negative, Add panics.
        //
        // Note that calls with a positive delta that occur when the counter is zero
        // must happen before a Wait. Calls with a negative delta, or calls with a
        // positive delta that start when the counter is greater than zero, may happen
        // at any time.
        // Typically this means the calls to Add should execute before the statement
        // creating the goroutine or other event to be waited for.
        // If a WaitGroup is reused to wait for several independent sets of events,
        // new Add calls must happen after all previous Wait calls have returned.
        // See the WaitGroup example.
    **/
    @:keep
    static public function add( _wg:stdgo.StdGoTypes.Ref<WaitGroup>, _delta:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _wg:stdgo.StdGoTypes.Ref<WaitGroup> = _wg;
        @:privateAccess _wg.counter += _delta;
        if (@:privateAccess _wg.counter < 0) throw "sync: negative WaitGroup counter";
    }
}
class T_copyChecker_asInterface {
    @:keep
    @:pointer
    public dynamic function _check():Void __self__.value._check(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_copyChecker>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.T_copyChecker_asInterface) class T_copyChecker_static_extension {
    @:keep
    @:pointer
    static public function _check(____:T_copyChecker,  _c:stdgo.Pointer<T_copyChecker>):Void {
        if ((((_c.value : stdgo.StdGoTypes.GoUIntptr) != ((stdgo.Go.toInterface(_c) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr)) && !stdgo.sync.atomic_.Atomic_.compareAndSwapUintptr(new stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>(() -> (_c.value : stdgo.StdGoTypes.GoUIntptr), v -> (_c.value = (v : stdgo.sync.Sync.T_copyChecker) : stdgo.StdGoTypes.GoUIntptr)), (0 : stdgo.StdGoTypes.GoUIntptr), ((stdgo.Go.toInterface(_c) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr))) && ((_c.value : stdgo.StdGoTypes.GoUIntptr) != ((stdgo.Go.toInterface(_c) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.StdGoTypes.GoUIntptr))) {
            throw stdgo.Go.toInterface(("sync.Cond is copied" : stdgo.GoString));
        };
    }
}
class T_rlocker_asInterface {
    @:keep
    public dynamic function unlock():Void __self__.value.unlock();
    @:keep
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_rlocker>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync.Sync.T_rlocker_asInterface) class T_rlocker_static_extension {
    @:keep
    static public function unlock( _r:stdgo.StdGoTypes.Ref<T_rlocker>):Void {
        @:recv var _r:stdgo.StdGoTypes.Ref<T_rlocker> = _r;
        (({
            final e = _r;
            ({ _w : e._w, _writerSem : e._writerSem, _readerSem : e._readerSem, _readerCount : e._readerCount, _readerWait : e._readerWait } : stdgo.sync.Sync.RWMutex);
        })).runlock();
    }
    @:keep
    static public function lock( _r:stdgo.StdGoTypes.Ref<T_rlocker>):Void {
        @:recv var _r:stdgo.StdGoTypes.Ref<T_rlocker> = _r;
        (({
            final e = _r;
            ({ _w : e._w, _writerSem : e._writerSem, _readerSem : e._readerSem, _readerCount : e._readerCount, _readerWait : e._readerWait } : stdgo.sync.Sync.RWMutex);
        })).rlock();
    }
}
