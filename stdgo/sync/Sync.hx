package stdgo.sync;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package sync provides basic synchronization primitives such as mutual
	// exclusion locks. Other than the Once and WaitGroup types, most are intended
	// for use by low-level library routines. Higher-level synchronization is
	// better done via channels and communication.
	//
	// Values containing the types defined in this package should not be copied.
**/
private var __go2hxdoc__package:Bool;

/**
	// expunged is an arbitrary pointer that marks entries which have been deleted
	// from the dirty map.
**/
private var _expunged:stdgo.unsafe.Unsafe.UnsafePointer = null;

/**
	// Export for testing.
**/
var runtime_Semacquire:Pointer<GoUInt32>->Void = null;

var runtime_Semrelease:(Pointer<GoUInt32>, Bool, GoInt) -> Void = null;
var runtime_procPin:() -> GoInt = null;
var runtime_procUnpin:() -> Void = null;

/**
	// mutex is locked
**/
private final _mutexLocked:GoUInt64 = (0 : GoUInt64);

private final _mutexWoken:InvalidType = null;
private final _mutexStarving:InvalidType = null;
private final _mutexWaiterShift:GoUInt64 = (0 : GoUInt64);

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
private final _starvationThresholdNs:GoFloat64 = (0 : GoFloat64);

private var _poolRaceHash:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0...128) (0 : GoUInt64)]);
private var _allPoolsMu:Mutex = ({} : Mutex);

/**
	// allPools is the set of pools that have non-empty primary
	// caches. Protected by either 1) allPoolsMu and pinning or 2)
	// STW.
**/
private var _allPools:Slice<Ref<Pool>> = (null : Slice<Ref<Pool>>);

/**
	// oldPools is the set of pools that may have non-empty victim
	// caches. Protected by STW.
**/
private var _oldPools:Slice<Ref<Pool>> = (null : Slice<Ref<Pool>>);

private final _dequeueBits:GoUInt64 = (0 : GoUInt64);

/**
	// dequeueLimit is the maximum size of a poolDequeue.
	//
	// This must be at most (1<<dequeueBits)/2 because detecting fullness
	// depends on wrapping around the ring buffer without wrapping around
	// the index. We divide by 4 so this fits in an int on 32-bit.
**/
private final _dequeueLimit:GoUInt64 = (0 : GoUInt64);

private final _rwmutexMaxReaders:GoUInt64 = (0 : GoUInt64);

/**
	// poolDequeue testing.
**/
typedef PoolDequeue = StructType & {
	public function pushHead(_val:AnyInterface):Bool;
	public function popHead():{var _0:AnyInterface; var _1:Bool;};
	public function popTail():{var _0:AnyInterface; var _1:Bool;};
};

/**
	// A Locker represents an object that can be locked and unlocked.
**/
typedef Locker = StructType & {
	public function lock():Void;
	public function unlock():Void;
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
	public var _noCopy:T_noCopy = ({} : T_noCopy);

	/**
		// L is held while observing or changing the condition
	**/
	public var l:Locker = (null : Locker);

	public var _notify:T_notifyList = ({} : T_notifyList);
	public var _checker:T_copyChecker = ((0 : GoUIntptr) : T_copyChecker);

	public function new(?_noCopy:T_noCopy, ?l:Locker, ?_notify:T_notifyList, ?_checker:T_copyChecker) {
		if (_noCopy != null)
			this._noCopy = _noCopy;
		if (l != null)
			this.l = l;
		if (_notify != null)
			this._notify = _notify;
		if (_checker != null)
			this._checker = _checker;
	}

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
@:structInit @:using(stdgo.sync.Sync.T_noCopy_static_extension) private class T_noCopy {
	public function new() {}

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
	// Load, LoadAndDelete, LoadOrStore are read operations;
	// Delete, LoadAndDelete, and Store are write operations;
	// and LoadOrStore is a write operation when it returns loaded set to false.
**/
@:structInit @:using(stdgo.sync.Sync.Map__static_extension) class Map_ {
	public var _mu:Mutex = ({} : Mutex);

	/**
		// read contains the portion of the map's contents that are safe for
		// concurrent access (with or without mu held).
		//
		// The read field itself is always safe to load, but must only be stored with
		// mu held.
		//
		// Entries stored in read may be updated concurrently without mu, but updating
		// a previously-expunged entry requires that the entry be copied to the dirty
		// map and unexpunged with mu held.// readOnly
	**/
	public var _read:stdgo.sync.atomic.Atomic.Value = ({} : stdgo.sync.atomic.Atomic.Value);

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
	public var _dirty:GoMap<AnyInterface, Ref<T_entry>> = (null : GoMap<AnyInterface, Ref<T_entry>>);

	/**
		// misses counts the number of loads since the read map was last updated that
		// needed to lock mu to determine whether the key was present.
		//
		// Once enough misses have occurred to cover the cost of copying the dirty
		// map, the dirty map will be promoted to the read map (in the unamended
		// state) and the next store to the map will make a new dirty copy.
	**/
	public var _misses:GoInt = 0;

	public function new(?_mu:Mutex, ?_read:stdgo.sync.atomic.Atomic.Value, ?_dirty:GoMap<AnyInterface, Ref<T_entry>>, ?_misses:GoInt) {
		if (_mu != null)
			this._mu = _mu;
		if (_read != null)
			this._read = _read;
		if (_dirty != null)
			this._dirty = _dirty;
		if (_misses != null)
			this._misses = _misses;
	}

	public function __copy__() {
		return new Map_(_mu, _read, _dirty, _misses);
	}
}

/**
	// readOnly is an immutable struct stored atomically in the Map.read field.
**/
@:structInit private class T_readOnly {
	public var _m:GoMap<AnyInterface, Ref<T_entry>> = (null : GoMap<AnyInterface, Ref<T_entry>>);

	/**
		// true if the dirty map contains some key not in m.
	**/
	public var _amended:Bool = false;

	public function new(?_m:GoMap<AnyInterface, Ref<T_entry>>, ?_amended:Bool) {
		if (_m != null)
			this._m = _m;
		if (_amended != null)
			this._amended = _amended;
	}

	public function __copy__() {
		return new T_readOnly(_m, _amended);
	}
}

/**
	// An entry is a slot in the map corresponding to a particular key.
**/
@:structInit @:using(stdgo.sync.Sync.T_entry_static_extension) private class T_entry {
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
		// map find the entry.// *interface{}
	**/
	public var _p:stdgo.unsafe.Unsafe.UnsafePointer = null;

	public function new(?_p:stdgo.unsafe.Unsafe.UnsafePointer) {
		if (_p != null)
			this._p = _p;
	}

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
	public var _state:GoInt32 = 0;
	public var _sema:GoUInt32 = 0;

	@:local
	var mutex = new sys.thread.Mutex();

	public function new(?_state:GoInt32, ?_sema:GoUInt32, ?mutex) {
		if (_state != null)
			this._state = _state;
		if (_sema != null)
			this._sema = _sema;
		if (mutex != null)
			this.mutex = mutex;
	}

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
	public var _done:GoUInt32 = 0;

	public var _m:Mutex = ({} : Mutex);

	public function new(?_done:GoUInt32, ?_m:Mutex) {
		if (_done != null)
			this._done = _done;
		if (_m != null)
			this._m = _m;
	}

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
	public var _noCopy:T_noCopy = ({} : T_noCopy);

	/**
		// local fixed-size per-P pool, actual type is [P]poolLocal
	**/
	public var _local:stdgo.unsafe.Unsafe.UnsafePointer = null;

	/**
		// size of the local array
	**/
	public var _localSize:GoUIntptr = 0;

	/**
		// local from previous cycle
	**/
	public var _victim:stdgo.unsafe.Unsafe.UnsafePointer = null;

	/**
		// size of victims array
	**/
	public var _victimSize:GoUIntptr = 0;

	/**
		// New optionally specifies a function to generate
		// a value when Get would otherwise return nil.
		// It may not be changed concurrently with calls to Get.
	**/
	public var new_:() -> AnyInterface = null;

	@:local
	var pool = new sys.thread.Deque<AnyInterface>();

	public function new(?_noCopy:T_noCopy, ?_local:stdgo.unsafe.Unsafe.UnsafePointer, ?_localSize:GoUIntptr, ?_victim:stdgo.unsafe.Unsafe.UnsafePointer,
			?_victimSize:GoUIntptr, ?new_:() -> AnyInterface, ?pool) {
		if (_noCopy != null)
			this._noCopy = _noCopy;
		if (_local != null)
			this._local = _local;
		if (_localSize != null)
			this._localSize = _localSize;
		if (_victim != null)
			this._victim = _victim;
		if (_victimSize != null)
			this._victimSize = _victimSize;
		if (new_ != null)
			this.new_ = new_;
		if (pool != null)
			this.pool = pool;
	}

	public function __copy__() {
		return new Pool(_noCopy, _local, _localSize, _victim, _victimSize, new_, pool);
	}
}

/**
	// Local per-P Pool appendix.
**/
@:structInit private class T_poolLocalInternal {
	/**
		// Can be used only by the respective P.
	**/
	public var _private:AnyInterface = (null : AnyInterface);

	/**
		// Local P can pushHead/popHead; any P can popTail.
	**/
	public var _shared:T_poolChain = ({} : T_poolChain);

	public function new(?_private:AnyInterface, ?_shared:T_poolChain) {
		if (_private != null)
			this._private = _private;
		if (_shared != null)
			this._shared = _shared;
	}

	public function __copy__() {
		return new T_poolLocalInternal(_private, _shared);
	}
}

@:structInit @:using(stdgo.sync.Sync.T_poolLocal_static_extension) private class T_poolLocal {
	@:embedded
	public var _poolLocalInternal:T_poolLocalInternal = ({} : T_poolLocalInternal);

	/**
		// Prevents false sharing on widespread platforms with
		// 128 mod (cache line size) = 0 .
	**/
	public var _pad:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...112) (0 : GoUInt8)]);

	public function new(?_poolLocalInternal:T_poolLocalInternal, ?_pad:GoArray<GoUInt8>) {
		if (_poolLocalInternal != null)
			this._poolLocalInternal = _poolLocalInternal;
		if (_pad != null)
			this._pad = _pad;
	}

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
@:structInit @:using(stdgo.sync.Sync.T_poolDequeue_static_extension) private class T_poolDequeue {
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
	public var _headTail:GoUInt64 = 0;

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
	public var _vals:Slice<T_eface> = (null : Slice<T_eface>);

	public function new(?_headTail:GoUInt64, ?_vals:Slice<T_eface>) {
		if (_headTail != null)
			this._headTail = _headTail;
		if (_vals != null)
			this._vals = _vals;
	}

	public function __copy__() {
		return new T_poolDequeue(_headTail, _vals);
	}
}

@:structInit private class T_eface {
	public var _typ:stdgo.unsafe.Unsafe.UnsafePointer = null;
	public var _val:stdgo.unsafe.Unsafe.UnsafePointer = null;

	public function new(?_typ:stdgo.unsafe.Unsafe.UnsafePointer, ?_val:stdgo.unsafe.Unsafe.UnsafePointer) {
		if (_typ != null)
			this._typ = _typ;
		if (_val != null)
			this._val = _val;
	}

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
@:structInit @:using(stdgo.sync.Sync.T_poolChain_static_extension) private class T_poolChain {
	/**
		// head is the poolDequeue to push to. This is only accessed
		// by the producer, so doesn't need to be synchronized.
	**/
	public var _head:Ref<T_poolChainElt> = (null : Ref<T_poolChainElt>);

	/**
		// tail is the poolDequeue to popTail from. This is accessed
		// by consumers, so reads and writes must be atomic.
	**/
	public var _tail:Ref<T_poolChainElt> = (null : Ref<T_poolChainElt>);

	public function new(?_head:Ref<T_poolChainElt>, ?_tail:Ref<T_poolChainElt>) {
		if (_head != null)
			this._head = _head;
		if (_tail != null)
			this._tail = _tail;
	}

	public function __copy__() {
		return new T_poolChain(_head, _tail);
	}
}

@:structInit @:using(stdgo.sync.Sync.T_poolChainElt_static_extension) private class T_poolChainElt {
	@:embedded
	public var _poolDequeue:T_poolDequeue = ({} : T_poolDequeue);

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
	public var _next:Ref<T_poolChainElt> = (null : Ref<T_poolChainElt>);

	public var _prev:Ref<T_poolChainElt> = (null : Ref<T_poolChainElt>);

	public function new(?_poolDequeue:T_poolDequeue, ?_next:Ref<T_poolChainElt>, ?_prev:Ref<T_poolChainElt>) {
		if (_poolDequeue != null)
			this._poolDequeue = _poolDequeue;
		if (_next != null)
			this._next = _next;
		if (_prev != null)
			this._prev = _prev;
	}

	@:embedded
	public function popHead():{var _0:AnyInterface; var _1:Bool;}
		return null;

	@:embedded
	public function popTail():{var _0:AnyInterface; var _1:Bool;}
		return null;

	@:embedded
	public function pushHead(_val_:AnyInterface):Bool
		return false;

	@:embedded
	public function _pack(_head:GoUInt32, _tail:GoUInt32):GoUInt64
		return (0 : GoUInt64);

	@:embedded
	public function _popHead():{var _0:AnyInterface; var _1:Bool;}
		return null;

	@:embedded
	public function _popTail():{var _0:AnyInterface; var _1:Bool;}
		return null;

	@:embedded
	public function _pushHead(_val_:AnyInterface):Bool
		return false;

	@:embedded
	public function _unpack(__0:GoUInt64):{var _0:GoUInt32; var _1:GoUInt32;}
		return null;

	public function __copy__() {
		return new T_poolChainElt(_poolDequeue, _next, _prev);
	}
}

/**
	// Approximation of notifyList in runtime/sema.go. Size and alignment must
	// agree.
**/
@:structInit private class T_notifyList {
	public var _wait:GoUInt32 = 0;
	public var _notify:GoUInt32 = 0;

	/**
		// key field of the mutex
	**/
	public var _lock:GoUIntptr = 0;

	public var _head:stdgo.unsafe.Unsafe.UnsafePointer = null;
	public var _tail:stdgo.unsafe.Unsafe.UnsafePointer = null;

	public function new(?_wait:GoUInt32, ?_notify:GoUInt32, ?_lock:GoUIntptr, ?_head:stdgo.unsafe.Unsafe.UnsafePointer,
			?_tail:stdgo.unsafe.Unsafe.UnsafePointer) {
		if (_wait != null)
			this._wait = _wait;
		if (_notify != null)
			this._notify = _notify;
		if (_lock != null)
			this._lock = _lock;
		if (_head != null)
			this._head = _head;
		if (_tail != null)
			this._tail = _tail;
	}

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
	/**
		// held if there are pending writers
	**/
	public var _w:Mutex = ({} : Mutex);

	/**
		// semaphore for writers to wait for completing readers
	**/
	public var _writerSem:GoUInt32 = 0;

	/**
		// semaphore for readers to wait for completing writers
	**/
	public var _readerSem:GoUInt32 = 0;

	/**
		// number of pending readers
	**/
	public var _readerCount:GoInt32 = 0;

	/**
		// number of departing readers
	**/
	public var _readerWait:GoInt32 = 0;

	@:local
	var mutex = new sys.thread.Mutex();

	public function new(?_w:Mutex, ?_writerSem:GoUInt32, ?_readerSem:GoUInt32, ?_readerCount:GoInt32, ?_readerWait:GoInt32, ?mutex) {
		if (_w != null)
			this._w = _w;
		if (_writerSem != null)
			this._writerSem = _writerSem;
		if (_readerSem != null)
			this._readerSem = _readerSem;
		if (_readerCount != null)
			this._readerCount = _readerCount;
		if (_readerWait != null)
			this._readerWait = _readerWait;
		if (mutex != null)
			this.mutex = mutex;
	}

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
	public var _noCopy:T_noCopy = ({} : T_noCopy);

	/**
		// 64-bit value: high 32 bits are counter, low 32 bits are waiter count.
		// 64-bit atomic operations require 64-bit alignment, but 32-bit
		// compilers only guarantee that 64-bit fields are 32-bit aligned.
		// For this reason on 32 bit architectures we need to check in state()
		// if state1 is aligned or not, and dynamically "swap" the field order if
		// needed.
	**/
	public var _state1:GoUInt64 = 0;

	public var _state2:GoUInt32 = 0;

	@:local
	var lock = new sys.thread.Lock();
	var counter:GoUInt = 0;

	public function new(?_noCopy:T_noCopy, ?_state1:GoUInt64, ?_state2:GoUInt32, ?lock, ?counter:GoUInt) {
		if (_noCopy != null)
			this._noCopy = _noCopy;
		if (_state1 != null)
			this._state1 = _state1;
		if (_state2 != null)
			this._state2 = _state2;
		if (lock != null)
			this.lock = lock;
		if (counter != null)
			this.counter = counter;
	}

	public function __copy__() {
		return new WaitGroup(_noCopy, _state1, _state2, lock, counter);
	}
}

@:local private typedef T__struct_0 = {};

/**
	// copyChecker holds back pointer to itself to detect object copying.
**/
@:named @:using(stdgo.sync.Sync.T_copyChecker_static_extension) private typedef T_copyChecker = GoUIntptr;

/**
	// dequeueNil is used in poolDequeue to represent interface{}(nil).
	// Since we use nil to represent empty slots, we need a sentinel value
	// to represent nil.
**/
@:named private typedef T_dequeueNil = Ref<T_noCopy>;

@:named @:using(stdgo.sync.Sync.T_rlocker_static_extension) private typedef T_rlocker = RWMutex;

/**
	// NewCond returns a new Cond with Locker l.
**/
function newCond(_l:Locker):Ref<Cond>
	throw "sync.newCond is not yet implemented";

function newPoolDequeue(_n:GoInt):PoolDequeue
	throw "sync.newPoolDequeue is not yet implemented";

function newPoolChain():PoolDequeue
	throw "sync.newPoolChain is not yet implemented";

function _newEntry(_i:AnyInterface):Ref<T_entry>
	throw "sync._newEntry is not yet implemented";

/**
	// Provided by runtime via linkname.
**/
function _throw(_0:GoString):Void
	throw "sync._throw is not yet implemented";

function _fatal(_0:GoString):Void
	throw "sync._fatal is not yet implemented";

/**
	// from runtime
**/
function _fastrandn(_n:GoUInt32):GoUInt32
	throw "sync._fastrandn is not yet implemented";

/**
	// poolRaceAddr returns an address to use as the synchronization point
	// for race detector logic. We don't use the actual pointer stored in x
	// directly, for fear of conflicting with other synchronization on that address.
	// Instead, we hash the pointer to get an index into poolRaceHash.
	// See discussion on golang.org/cl/31589.
**/
function _poolRaceAddr(_x:AnyInterface):stdgo.unsafe.Unsafe.UnsafePointer
	throw "sync._poolRaceAddr is not yet implemented";

function _poolCleanup():Void
	throw "sync._poolCleanup is not yet implemented";

function _indexLocal(_l:stdgo.unsafe.Unsafe.UnsafePointer, _i:GoInt):Ref<T_poolLocal>
	throw "sync._indexLocal is not yet implemented";

/**
	// Implemented in runtime.
**/
function _runtime_registerPoolCleanup(_cleanup:() -> Void):Void
	throw "sync._runtime_registerPoolCleanup is not yet implemented";

function _runtime_procPin():GoInt
	throw "sync._runtime_procPin is not yet implemented";

function _runtime_procUnpin():Void
	throw "sync._runtime_procUnpin is not yet implemented";

/**
	//go:linkname runtime_LoadAcquintptr runtime/internal/atomic.LoadAcquintptr
**/
function _runtime_LoadAcquintptr(_ptr:Pointer<GoUIntptr>):GoUIntptr
	throw "sync._runtime_LoadAcquintptr is not yet implemented";

/**
	//go:linkname runtime_StoreReluintptr runtime/internal/atomic.StoreReluintptr
**/
function _runtime_StoreReluintptr(_ptr:Pointer<GoUIntptr>, _val:GoUIntptr):GoUIntptr
	throw "sync._runtime_StoreReluintptr is not yet implemented";

function _storePoolChainElt(_pp:Ref<Ref<T_poolChainElt>>, _v:Ref<T_poolChainElt>):Void
	throw "sync._storePoolChainElt is not yet implemented";

function _loadPoolChainElt(_pp:Ref<Ref<T_poolChainElt>>):Ref<T_poolChainElt>
	throw "sync._loadPoolChainElt is not yet implemented";

/**
	// Semacquire waits until *s > 0 and then atomically decrements it.
	// It is intended as a simple sleep primitive for use by the synchronization
	// library and should not be used directly.
**/
function _runtime_Semacquire(_s:Pointer<GoUInt32>):Void
	throw "sync._runtime_Semacquire is not yet implemented";

/**
	// SemacquireMutex is like Semacquire, but for profiling contended Mutexes.
	// If lifo is true, queue waiter at the head of wait queue.
	// skipframes is the number of frames to omit during tracing, counting from
	// runtime_SemacquireMutex's caller.
**/
function _runtime_SemacquireMutex(_s:Pointer<GoUInt32>, _lifo:Bool, _skipframes:GoInt):Void
	throw "sync._runtime_SemacquireMutex is not yet implemented";

/**
	// Semrelease atomically increments *s and notifies a waiting goroutine
	// if one is blocked in Semacquire.
	// It is intended as a simple wakeup primitive for use by the synchronization
	// library and should not be used directly.
	// If handoff is true, pass count directly to the first waiter.
	// skipframes is the number of frames to omit during tracing, counting from
	// runtime_Semrelease's caller.
**/
function _runtime_Semrelease(_s:Pointer<GoUInt32>, _handoff:Bool, _skipframes:GoInt):Void
	throw "sync._runtime_Semrelease is not yet implemented";

/**
	// See runtime/sema.go for documentation.
**/
function _runtime_notifyListAdd(_l:Ref<T_notifyList>):GoUInt32
	throw "sync._runtime_notifyListAdd is not yet implemented";

/**
	// See runtime/sema.go for documentation.
**/
function _runtime_notifyListWait(_l:Ref<T_notifyList>, _t:GoUInt32):Void
	throw "sync._runtime_notifyListWait is not yet implemented";

/**
	// See runtime/sema.go for documentation.
**/
function _runtime_notifyListNotifyAll(_l:Ref<T_notifyList>):Void
	throw "sync._runtime_notifyListNotifyAll is not yet implemented";

/**
	// See runtime/sema.go for documentation.
**/
function _runtime_notifyListNotifyOne(_l:Ref<T_notifyList>):Void
	throw "sync._runtime_notifyListNotifyOne is not yet implemented";

/**
	// Ensure that sync and runtime agree on size of notifyList.
**/
function _runtime_notifyListCheck(_size:GoUIntptr):Void
	throw "sync._runtime_notifyListCheck is not yet implemented";

/**
	// Active spinning runtime support.
	// runtime_canSpin reports whether spinning makes sense at the moment.
**/
function _runtime_canSpin(_i:GoInt):Bool
	throw "sync._runtime_canSpin is not yet implemented";

/**
	// runtime_doSpin does active spinning.
**/
function _runtime_doSpin():Void
	throw "sync._runtime_doSpin is not yet implemented";

function _runtime_nanotime():GoInt64
	throw "sync._runtime_nanotime is not yet implemented";

class Cond_asInterface {
	/**
		// Broadcast wakes all goroutines waiting on c.
		//
		// It is allowed but not required for the caller to hold c.L
		// during the call.
	**/
	@:keep
	public function broadcast():Void
		__self__.value.broadcast();

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
	public function signal():Void
		__self__.value.signal();

	/**
		// Wait atomically unlocks c.L and suspends execution
		// of the calling goroutine. After later resuming execution,
		// Wait locks c.L before returning. Unlike in other systems,
		// Wait cannot return unless awoken by Broadcast or Signal.
		//
		// Because c.L is not locked when Wait first resumes, the caller
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
	public function wait_():Void
		__self__.value.wait_();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Cond>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.Cond_asInterface) class Cond_static_extension {
	/**
		// Broadcast wakes all goroutines waiting on c.
		//
		// It is allowed but not required for the caller to hold c.L
		// during the call.
	**/
	@:keep
	static public function broadcast(_c:Ref<Cond>):Void
		throw "sync.broadcast is not yet implemented";

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
	static public function signal(_c:Ref<Cond>):Void
		throw "sync.signal is not yet implemented";

	/**
		// Wait atomically unlocks c.L and suspends execution
		// of the calling goroutine. After later resuming execution,
		// Wait locks c.L before returning. Unlike in other systems,
		// Wait cannot return unless awoken by Broadcast or Signal.
		//
		// Because c.L is not locked when Wait first resumes, the caller
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
	static public function wait_(_c:Ref<Cond>):Void
		throw "sync.wait_ is not yet implemented";
}

private class T_noCopy_asInterface {
	@:keep
	public function unlock():Void
		__self__.value.unlock();

	/**
		// Lock is a no-op used by -copylocks checker from `go vet`.
	**/
	@:keep
	public function lock():Void
		__self__.value.lock();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_noCopy>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.T_noCopy_asInterface) class T_noCopy_static_extension {
	@:keep
	static public function unlock(_:Ref<T_noCopy>):Void
		throw "sync.unlock is not yet implemented";

	/**
		// Lock is a no-op used by -copylocks checker from `go vet`.
	**/
	@:keep
	static public function lock(_:Ref<T_noCopy>):Void
		throw "sync.lock is not yet implemented";
}

class Map__asInterface {
	@:keep
	public function _dirtyLocked():Void
		__self__.value._dirtyLocked();

	@:keep
	public function _missLocked():Void
		__self__.value._missLocked();

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
	public function range(_f:(_key:AnyInterface, _value:AnyInterface) -> Bool):Void
		__self__.value.range(_f);

	/**
		// Delete deletes the value for a key.
	**/
	@:keep
	public function delete(_key:AnyInterface):Void
		__self__.value.delete(_key);

	/**
		// LoadAndDelete deletes the value for a key, returning the previous value if any.
		// The loaded result reports whether the key was present.
	**/
	@:keep
	public function loadAndDelete(_key:AnyInterface):{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.loadAndDelete(_key);

	/**
		// LoadOrStore returns the existing value for the key if present.
		// Otherwise, it stores and returns the given value.
		// The loaded result is true if the value was loaded, false if stored.
	**/
	@:keep
	public function loadOrStore(_key:AnyInterface, _value:AnyInterface):{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.loadOrStore(_key, _value);

	/**
		// Store sets the value for a key.
	**/
	@:keep
	public function store(_key:AnyInterface, _value:AnyInterface):Void
		__self__.value.store(_key, _value);

	/**
		// Load returns the value stored in the map for a key, or nil if no
		// value is present.
		// The ok result indicates whether value was found in the map.
	**/
	@:keep
	public function load(_key:AnyInterface):{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.load(_key);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Map_>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.Map__asInterface) class Map__static_extension {
	@:keep
	static public function _dirtyLocked(_m:Ref<Map_>):Void
		throw "sync._dirtyLocked is not yet implemented";

	@:keep
	static public function _missLocked(_m:Ref<Map_>):Void
		throw "sync._missLocked is not yet implemented";

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
	static public function range(_m:Ref<Map_>, _f:(_key:AnyInterface, _value:AnyInterface) -> Bool):Void
		throw "sync.range is not yet implemented";

	/**
		// Delete deletes the value for a key.
	**/
	@:keep
	static public function delete(_m:Ref<Map_>, _key:AnyInterface):Void
		throw "sync.delete is not yet implemented";

	/**
		// LoadAndDelete deletes the value for a key, returning the previous value if any.
		// The loaded result reports whether the key was present.
	**/
	@:keep
	static public function loadAndDelete(_m:Ref<Map_>, _key:AnyInterface):{var _0:AnyInterface; var _1:Bool;}
		throw "sync.loadAndDelete is not yet implemented";

	/**
		// LoadOrStore returns the existing value for the key if present.
		// Otherwise, it stores and returns the given value.
		// The loaded result is true if the value was loaded, false if stored.
	**/
	@:keep
	static public function loadOrStore(_m:Ref<Map_>, _key:AnyInterface, _value:AnyInterface):{var _0:AnyInterface; var _1:Bool;}
		throw "sync.loadOrStore is not yet implemented";

	/**
		// Store sets the value for a key.
	**/
	@:keep
	static public function store(_m:Ref<Map_>, _key:AnyInterface, _value:AnyInterface):Void
		throw "sync.store is not yet implemented";

	/**
		// Load returns the value stored in the map for a key, or nil if no
		// value is present.
		// The ok result indicates whether value was found in the map.
	**/
	@:keep
	static public function load(_m:Ref<Map_>, _key:AnyInterface):{var _0:AnyInterface; var _1:Bool;}
		throw "sync.load is not yet implemented";
}

private class T_entry_asInterface {
	@:keep
	public function _tryExpungeLocked():Bool
		return __self__.value._tryExpungeLocked();

	@:keep
	public function _delete():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value._delete();

	/**
		// tryLoadOrStore atomically loads or stores a value if the entry is not
		// expunged.
		//
		// If the entry is expunged, tryLoadOrStore leaves the entry unchanged and
		// returns with ok==false.
	**/
	@:keep
	public function _tryLoadOrStore(_i:AnyInterface):{var _0:AnyInterface; var _1:Bool; var _2:Bool;}
		return __self__.value._tryLoadOrStore(_i);

	/**
		// storeLocked unconditionally stores a value to the entry.
		//
		// The entry must be known not to be expunged.
	**/
	@:keep
	public function _storeLocked(_i:Ref<AnyInterface>):Void
		__self__.value._storeLocked(_i);

	/**
		// unexpungeLocked ensures that the entry is not marked as expunged.
		//
		// If the entry was previously expunged, it must be added to the dirty map
		// before m.mu is unlocked.
	**/
	@:keep
	public function _unexpungeLocked():Bool
		return __self__.value._unexpungeLocked();

	/**
		// tryStore stores a value if the entry has not been expunged.
		//
		// If the entry is expunged, tryStore returns false and leaves the entry
		// unchanged.
	**/
	@:keep
	public function _tryStore(_i:Ref<AnyInterface>):Bool
		return __self__.value._tryStore(_i);

	@:keep
	public function _load():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value._load();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_entry>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.T_entry_asInterface) class T_entry_static_extension {
	@:keep
	static public function _tryExpungeLocked(_e:Ref<T_entry>):Bool
		throw "sync._tryExpungeLocked is not yet implemented";

	@:keep
	static public function _delete(_e:Ref<T_entry>):{var _0:AnyInterface; var _1:Bool;}
		throw "sync._delete is not yet implemented";

	/**
		// tryLoadOrStore atomically loads or stores a value if the entry is not
		// expunged.
		//
		// If the entry is expunged, tryLoadOrStore leaves the entry unchanged and
		// returns with ok==false.
	**/
	@:keep
	static public function _tryLoadOrStore(_e:Ref<T_entry>, _i:AnyInterface):{var _0:AnyInterface; var _1:Bool; var _2:Bool;}
		throw "sync._tryLoadOrStore is not yet implemented";

	/**
		// storeLocked unconditionally stores a value to the entry.
		//
		// The entry must be known not to be expunged.
	**/
	@:keep
	static public function _storeLocked(_e:Ref<T_entry>, _i:Ref<AnyInterface>):Void
		throw "sync._storeLocked is not yet implemented";

	/**
		// unexpungeLocked ensures that the entry is not marked as expunged.
		//
		// If the entry was previously expunged, it must be added to the dirty map
		// before m.mu is unlocked.
	**/
	@:keep
	static public function _unexpungeLocked(_e:Ref<T_entry>):Bool
		throw "sync._unexpungeLocked is not yet implemented";

	/**
		// tryStore stores a value if the entry has not been expunged.
		//
		// If the entry is expunged, tryStore returns false and leaves the entry
		// unchanged.
	**/
	@:keep
	static public function _tryStore(_e:Ref<T_entry>, _i:Ref<AnyInterface>):Bool
		throw "sync._tryStore is not yet implemented";

	@:keep
	static public function _load(_e:Ref<T_entry>):{var _0:AnyInterface; var _1:Bool;}
		throw "sync._load is not yet implemented";
}

class Mutex_asInterface {
	@:keep
	public function _unlockSlow(_new:GoInt32):Void
		__self__.value._unlockSlow(_new);

	/**
		// Unlock unlocks m.
		// It is a run-time error if m is not locked on entry to Unlock.
		//
		// A locked Mutex is not associated with a particular goroutine.
		// It is allowed for one goroutine to lock a Mutex and then
		// arrange for another goroutine to unlock it.
	**/
	@:keep
	public function unlock():Void
		__self__.value.unlock();

	@:keep
	public function _lockSlow():Void
		__self__.value._lockSlow();

	/**
		// TryLock tries to lock m and reports whether it succeeded.
		//
		// Note that while correct uses of TryLock do exist, they are rare,
		// and use of TryLock is often a sign of a deeper problem
		// in a particular use of mutexes.
	**/
	@:keep
	public function tryLock():Bool
		return __self__.value.tryLock();

	/**
		// Lock locks m.
		// If the lock is already in use, the calling goroutine
		// blocks until the mutex is available.
	**/
	@:keep
	public function lock():Void
		__self__.value.lock();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Mutex>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.Mutex_asInterface) class Mutex_static_extension {
	@:keep
	static public function _unlockSlow(_m:Ref<Mutex>, _new:GoInt32):Void
		throw "sync._unlockSlow is not yet implemented";

	/**
		// Unlock unlocks m.
		// It is a run-time error if m is not locked on entry to Unlock.
		//
		// A locked Mutex is not associated with a particular goroutine.
		// It is allowed for one goroutine to lock a Mutex and then
		// arrange for another goroutine to unlock it.
	**/
	@:keep
	static public function unlock(_m:Ref<Mutex>):Void @:privateAccess _m.mutex.release();

	@:keep
	static public function _lockSlow(_m:Ref<Mutex>):Void
		throw "sync._lockSlow is not yet implemented";

	/**
		// TryLock tries to lock m and reports whether it succeeded.
		//
		// Note that while correct uses of TryLock do exist, they are rare,
		// and use of TryLock is often a sign of a deeper problem
		// in a particular use of mutexes.
	**/
	@:keep
	static public function tryLock(_m:Ref<Mutex>):Bool @:privateAccess return _m.mutex.tryAcquire();

	/**
		// Lock locks m.
		// If the lock is already in use, the calling goroutine
		// blocks until the mutex is available.
	**/
	@:keep
	static public function lock(_m:Ref<Mutex>):Void @:privateAccess _m.mutex.acquire();
}

class Once_asInterface {
	@:keep
	public function _doSlow(_f:() -> Void):Void
		__self__.value._doSlow(_f);

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
	public function do_(_f:() -> Void):Void
		__self__.value.do_(_f);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Once>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.Once_asInterface) class Once_static_extension {
	@:keep
	static public function _doSlow(_o:Ref<Once>, _f:() -> Void):Void
		throw "sync._doSlow is not yet implemented";

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
	static public function do_(_o:Ref<Once>, _f:() -> Void):Void {
		if (@:privateAccess _o._done == 1)
			return;
		@:privateAccess _o._done = 1;
		_f();
	}
}

class Pool_asInterface {
	@:keep
	public function _pinSlow():{var _0:Ref<T_poolLocal>; var _1:GoInt;}
		return __self__.value._pinSlow();

	/**
		// pin pins the current goroutine to P, disables preemption and
		// returns poolLocal pool for the P and the P's id.
		// Caller must call runtime_procUnpin() when done with the pool.
	**/
	@:keep
	public function _pin():{var _0:Ref<T_poolLocal>; var _1:GoInt;}
		return __self__.value._pin();

	@:keep
	public function _getSlow(_pid:GoInt):AnyInterface
		return __self__.value._getSlow(_pid);

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
	public function get():AnyInterface
		return __self__.value.get();

	/**
		// Put adds x to the pool.
	**/
	@:keep
	public function put(_x:AnyInterface):Void
		__self__.value.put(_x);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Pool>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.Pool_asInterface) class Pool_static_extension {
	@:keep
	static public function _pinSlow(_p:Ref<Pool>):{var _0:Ref<T_poolLocal>; var _1:GoInt;}
		throw "sync._pinSlow is not yet implemented";

	/**
		// pin pins the current goroutine to P, disables preemption and
		// returns poolLocal pool for the P and the P's id.
		// Caller must call runtime_procUnpin() when done with the pool.
	**/
	@:keep
	static public function _pin(_p:Ref<Pool>):{var _0:Ref<T_poolLocal>; var _1:GoInt;}
		throw "sync._pin is not yet implemented";

	@:keep
	static public function _getSlow(_p:Ref<Pool>, _pid:GoInt):AnyInterface
		throw "sync._getSlow is not yet implemented";

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
	static public function get(_p:Ref<Pool>):AnyInterface {
		var obj = @:privateAccess _p.pool.pop(true);
		if (obj == null && @:privateAccess _p.new_ != null)
			obj = @:privateAccess _p.new_();
		return obj;
	}

	/**
		// Put adds x to the pool.
	**/
	@:keep
	static public function put(_p:Ref<Pool>, _x:AnyInterface):Void
		throw "sync.put is not yet implemented";
}

private class T_poolLocal_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_poolLocal>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.T_poolLocal_asInterface) class T_poolLocal_static_extension {}

private class T_poolDequeue_asInterface {
	/**
		// popTail removes and returns the element at the tail of the queue.
		// It returns false if the queue is empty. It may be called by any
		// number of consumers.
	**/
	@:keep
	public function _popTail():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value._popTail();

	/**
		// popHead removes and returns the element at the head of the queue.
		// It returns false if the queue is empty. It must only be called by a
		// single producer.
	**/
	@:keep
	public function _popHead():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value._popHead();

	/**
		// pushHead adds val at the head of the queue. It returns false if the
		// queue is full. It must only be called by a single producer.
	**/
	@:keep
	public function _pushHead(_val:AnyInterface):Bool
		return __self__.value._pushHead(_val);

	@:keep
	public function _pack(_head:GoUInt32, _tail:GoUInt32):GoUInt64
		return __self__.value._pack(_head, _tail);

	@:keep
	public function _unpack(_ptrs:GoUInt64):{var _0:GoUInt32; var _1:GoUInt32;}
		return __self__.value._unpack(_ptrs);

	@:keep
	public function popTail():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.popTail();

	@:keep
	public function popHead():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.popHead();

	@:keep
	public function pushHead(_val:AnyInterface):Bool
		return __self__.value.pushHead(_val);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_poolDequeue>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.T_poolDequeue_asInterface) class T_poolDequeue_static_extension {
	/**
		// popTail removes and returns the element at the tail of the queue.
		// It returns false if the queue is empty. It may be called by any
		// number of consumers.
	**/
	@:keep
	static public function _popTail(_d:Ref<T_poolDequeue>):{var _0:AnyInterface; var _1:Bool;}
		throw "sync._popTail is not yet implemented";

	/**
		// popHead removes and returns the element at the head of the queue.
		// It returns false if the queue is empty. It must only be called by a
		// single producer.
	**/
	@:keep
	static public function _popHead(_d:Ref<T_poolDequeue>):{var _0:AnyInterface; var _1:Bool;}
		throw "sync._popHead is not yet implemented";

	/**
		// pushHead adds val at the head of the queue. It returns false if the
		// queue is full. It must only be called by a single producer.
	**/
	@:keep
	static public function _pushHead(_d:Ref<T_poolDequeue>, _val:AnyInterface):Bool
		throw "sync._pushHead is not yet implemented";

	@:keep
	static public function _pack(_d:Ref<T_poolDequeue>, _head:GoUInt32, _tail:GoUInt32):GoUInt64
		throw "sync._pack is not yet implemented";

	@:keep
	static public function _unpack(_d:Ref<T_poolDequeue>, _ptrs:GoUInt64):{var _0:GoUInt32; var _1:GoUInt32;}
		throw "sync._unpack is not yet implemented";

	@:keep
	static public function popTail(_d:Ref<T_poolDequeue>):{var _0:AnyInterface; var _1:Bool;}
		throw "sync.popTail is not yet implemented";

	@:keep
	static public function popHead(_d:Ref<T_poolDequeue>):{var _0:AnyInterface; var _1:Bool;}
		throw "sync.popHead is not yet implemented";

	@:keep
	static public function pushHead(_d:Ref<T_poolDequeue>, _val:AnyInterface):Bool
		throw "sync.pushHead is not yet implemented";
}

private class T_poolChain_asInterface {
	@:keep
	public function _popTail():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value._popTail();

	@:keep
	public function _popHead():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value._popHead();

	@:keep
	public function _pushHead(_val:AnyInterface):Void
		__self__.value._pushHead(_val);

	@:keep
	public function popTail():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.popTail();

	@:keep
	public function popHead():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.popHead();

	@:keep
	public function pushHead(_val:AnyInterface):Bool
		return __self__.value.pushHead(_val);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_poolChain>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.T_poolChain_asInterface) class T_poolChain_static_extension {
	@:keep
	static public function _popTail(_c:Ref<T_poolChain>):{var _0:AnyInterface; var _1:Bool;}
		throw "sync._popTail is not yet implemented";

	@:keep
	static public function _popHead(_c:Ref<T_poolChain>):{var _0:AnyInterface; var _1:Bool;}
		throw "sync._popHead is not yet implemented";

	@:keep
	static public function _pushHead(_c:Ref<T_poolChain>, _val:AnyInterface):Void
		throw "sync._pushHead is not yet implemented";

	@:keep
	static public function popTail(_c:Ref<T_poolChain>):{var _0:AnyInterface; var _1:Bool;}
		throw "sync.popTail is not yet implemented";

	@:keep
	static public function popHead(_c:Ref<T_poolChain>):{var _0:AnyInterface; var _1:Bool;}
		throw "sync.popHead is not yet implemented";

	@:keep
	static public function pushHead(_c:Ref<T_poolChain>, _val:AnyInterface):Bool
		throw "sync.pushHead is not yet implemented";
}

private class T_poolChainElt_asInterface {
	@:embedded
	public function _unpack(__0:GoUInt64):{var _0:GoUInt32; var _1:GoUInt32;}
		return __self__.value._unpack(__0);

	@:embedded
	public function _pushHead(_val_:AnyInterface):Bool
		return __self__.value._pushHead(_val_);

	@:embedded
	public function _popTail():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value._popTail();

	@:embedded
	public function _popHead():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value._popHead();

	@:embedded
	public function _pack(_head:GoUInt32, _tail:GoUInt32):GoUInt64
		return __self__.value._pack(_head, _tail);

	@:embedded
	public function pushHead(_val_:AnyInterface):Bool
		return __self__.value.pushHead(_val_);

	@:embedded
	public function popTail():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.popTail();

	@:embedded
	public function popHead():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.popHead();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_poolChainElt>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.T_poolChainElt_asInterface) class T_poolChainElt_static_extension {
	@:embedded
	public static function _unpack(__self__:T_poolChainElt, __0:GoUInt64):{var _0:GoUInt32; var _1:GoUInt32;}
		return __self__._unpack(__0);

	@:embedded
	public static function _pushHead(__self__:T_poolChainElt, _val_:AnyInterface):Bool
		return __self__._pushHead(_val_);

	@:embedded
	public static function _popTail(__self__:T_poolChainElt):{var _0:AnyInterface; var _1:Bool;}
		return __self__._popTail();

	@:embedded
	public static function _popHead(__self__:T_poolChainElt):{var _0:AnyInterface; var _1:Bool;}
		return __self__._popHead();

	@:embedded
	public static function _pack(__self__:T_poolChainElt, _head:GoUInt32, _tail:GoUInt32):GoUInt64
		return __self__._pack(_head, _tail);

	@:embedded
	public static function pushHead(__self__:T_poolChainElt, _val_:AnyInterface):Bool
		return __self__.pushHead(_val_);

	@:embedded
	public static function popTail(__self__:T_poolChainElt):{var _0:AnyInterface; var _1:Bool;}
		return __self__.popTail();

	@:embedded
	public static function popHead(__self__:T_poolChainElt):{var _0:AnyInterface; var _1:Bool;}
		return __self__.popHead();
}

class RWMutex_asInterface {
	/**
		// RLocker returns a Locker interface that implements
		// the Lock and Unlock methods by calling rw.RLock and rw.RUnlock.
	**/
	@:keep
	public function rlocker():Locker
		return __self__.value.rlocker();

	/**
		// Unlock unlocks rw for writing. It is a run-time error if rw is
		// not locked for writing on entry to Unlock.
		//
		// As with Mutexes, a locked RWMutex is not associated with a particular
		// goroutine. One goroutine may RLock (Lock) a RWMutex and then
		// arrange for another goroutine to RUnlock (Unlock) it.
	**/
	@:keep
	public function unlock():Void
		__self__.value.unlock();

	/**
		// TryLock tries to lock rw for writing and reports whether it succeeded.
		//
		// Note that while correct uses of TryLock do exist, they are rare,
		// and use of TryLock is often a sign of a deeper problem
		// in a particular use of mutexes.
	**/
	@:keep
	public function tryLock():Bool
		return __self__.value.tryLock();

	/**
		// Lock locks rw for writing.
		// If the lock is already locked for reading or writing,
		// Lock blocks until the lock is available.
	**/
	@:keep
	public function lock():Void
		__self__.value.lock();

	@:keep
	public function _rUnlockSlow(_r:GoInt32):Void
		__self__.value._rUnlockSlow(_r);

	/**
		// RUnlock undoes a single RLock call;
		// it does not affect other simultaneous readers.
		// It is a run-time error if rw is not locked for reading
		// on entry to RUnlock.
	**/
	@:keep
	public function runlock():Void
		__self__.value.runlock();

	/**
		// TryRLock tries to lock rw for reading and reports whether it succeeded.
		//
		// Note that while correct uses of TryRLock do exist, they are rare,
		// and use of TryRLock is often a sign of a deeper problem
		// in a particular use of mutexes.
	**/
	@:keep
	public function tryRLock():Bool
		return __self__.value.tryRLock();

	/**
		// RLock locks rw for reading.
		//
		// It should not be used for recursive read locking; a blocked Lock
		// call excludes new readers from acquiring the lock. See the
		// documentation on the RWMutex type.
	**/
	@:keep
	public function rlock():Void
		__self__.value.rlock();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<RWMutex>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.RWMutex_asInterface) class RWMutex_static_extension {
	/**
		// RLocker returns a Locker interface that implements
		// the Lock and Unlock methods by calling rw.RLock and rw.RUnlock.
	**/
	@:keep
	static public function rlocker(_rw:Ref<RWMutex>):Locker
		throw "sync.rlocker is not yet implemented";

	/**
		// Unlock unlocks rw for writing. It is a run-time error if rw is
		// not locked for writing on entry to Unlock.
		//
		// As with Mutexes, a locked RWMutex is not associated with a particular
		// goroutine. One goroutine may RLock (Lock) a RWMutex and then
		// arrange for another goroutine to RUnlock (Unlock) it.
	**/
	@:keep
	static public function unlock(_rw:Ref<RWMutex>):Void
		throw "sync.unlock is not yet implemented";

	/**
		// TryLock tries to lock rw for writing and reports whether it succeeded.
		//
		// Note that while correct uses of TryLock do exist, they are rare,
		// and use of TryLock is often a sign of a deeper problem
		// in a particular use of mutexes.
	**/
	@:keep
	static public function tryLock(_rw:Ref<RWMutex>):Bool
		throw "sync.tryLock is not yet implemented";

	/**
		// Lock locks rw for writing.
		// If the lock is already locked for reading or writing,
		// Lock blocks until the lock is available.
	**/
	@:keep
	static public function lock(_rw:Ref<RWMutex>):Void
		throw "sync.lock is not yet implemented";

	@:keep
	static public function _rUnlockSlow(_rw:Ref<RWMutex>, _r:GoInt32):Void
		throw "sync._rUnlockSlow is not yet implemented";

	/**
		// RUnlock undoes a single RLock call;
		// it does not affect other simultaneous readers.
		// It is a run-time error if rw is not locked for reading
		// on entry to RUnlock.
	**/
	@:keep
	static public function runlock(_rw:Ref<RWMutex>):Void
		throw "sync.runlock is not yet implemented";

	/**
		// TryRLock tries to lock rw for reading and reports whether it succeeded.
		//
		// Note that while correct uses of TryRLock do exist, they are rare,
		// and use of TryRLock is often a sign of a deeper problem
		// in a particular use of mutexes.
	**/
	@:keep
	static public function tryRLock(_rw:Ref<RWMutex>):Bool
		throw "sync.tryRLock is not yet implemented";

	/**
		// RLock locks rw for reading.
		//
		// It should not be used for recursive read locking; a blocked Lock
		// call excludes new readers from acquiring the lock. See the
		// documentation on the RWMutex type.
	**/
	@:keep
	static public function rlock(_rw:Ref<RWMutex>):Void
		throw "sync.rlock is not yet implemented";
}

class WaitGroup_asInterface {
	/**
		// Wait blocks until the WaitGroup counter is zero.
	**/
	@:keep
	public function wait_():Void
		__self__.value.wait_();

	/**
		// Done decrements the WaitGroup counter by one.
	**/
	@:keep
	public function done():Void
		__self__.value.done();

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
	public function add(_delta:GoInt):Void
		__self__.value.add(_delta);

	/**
		// state returns pointers to the state and sema fields stored within wg.state*.
	**/
	@:keep
	public function _state():{var _0:Pointer<GoUInt64>; var _1:Pointer<GoUInt32>;}
		return __self__.value._state();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<WaitGroup>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.WaitGroup_asInterface) class WaitGroup_static_extension {
	/**
		// Wait blocks until the WaitGroup counter is zero.
	**/
	@:keep
	static public function wait_(_wg:Ref<WaitGroup>):Void @:privateAccess _wg.lock.wait();

	/**
		// Done decrements the WaitGroup counter by one.
	**/
	@:keep
	static public function done(_wg:Ref<WaitGroup>):Void {
		@:privateAccess _wg.counter--;
		if (@:privateAccess _wg.counter <= 0) {
			@:privateAccess _wg.lock.release();
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
	static public function add(_wg:Ref<WaitGroup>, _delta:GoInt):Void {
		@:privateAccess _wg.counter += _delta;
		if (@:privateAccess _wg.counter < 0)
			throw "sync: negative WaitGroup counter";
	}

	/**
		// state returns pointers to the state and sema fields stored within wg.state*.
	**/
	@:keep
	static public function _state(_wg:Ref<WaitGroup>):{var _0:Pointer<GoUInt64>; var _1:Pointer<GoUInt32>;}
		throw "sync._state is not yet implemented";
}

private class T_copyChecker_asInterface {
	@:keep
	@:pointer
	public function _check():Void
		__self__.value._check(__self__);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_copyChecker>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.T_copyChecker_asInterface) class T_copyChecker_static_extension {
	@:keep
	@:pointer
	static public function _check(____:T_copyChecker, _c:Pointer<T_copyChecker>):Void
		throw "sync._check is not yet implemented";
}

private class T_rlocker_asInterface {
	@:keep
	public function unlock():Void
		__self__.value.unlock();

	@:keep
	public function lock():Void
		__self__.value.lock();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_rlocker>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync.Sync.T_rlocker_asInterface) class T_rlocker_static_extension {
	@:keep
	static public function unlock(_r:Ref<T_rlocker>):Void
		throw "sync.unlock is not yet implemented";

	@:keep
	static public function lock(_r:Ref<T_rlocker>):Void
		throw "sync.lock is not yet implemented";
}
