package stdgo;

#if (target.threaded)
import haxe.ds.Vector;
import stdgo.GoInt;
import stdgo._internal.internal.Async;
import sys.thread.Deque;
import sys.thread.Lock;
import sys.thread.Mutex;
import sys.thread.Thread;

@:forward(
    length,
    capacity,
    __isSend__,
    _isGet__,
    __smartGet__,
    __get__,
    __send__,
    __close__,
    keyValueIterator,
    iterator
)
@:forward.new
abstract Chan<T>(ChanData<T>) from ChanData<T> to ChanData<T> {

}
/**
    ## chan buffered
        send without blocking
        get blocks unless smartGet

    ## chan not buffered
        mutex on the send and get side
        send blocking
        get blocking
        smartGet not blocking

        wait and get
**/

class ChanData<T> {
    private var buffer:Vector<T> = null;
    public var bufferAddPos:Int = 0;
    public var bufferRemovePos:Int = 0;
	public var amount = 0;

    var defaultValue:Void->T = null;

    var closed:Bool = false;
    // general mutex when handling internal vars in ChanData
    var sendLock = new Lock();
    var getLock = new Lock();
    var mutex = new Mutex();
    var sendBool = false;
    var getBool = false;
    var count = 0;
    var buffered:Bool = false;

    public var length(get, never):GoInt;
    public var capacity(get, never):GoInt;

    public static inline var debug = false;

    function get_length():GoInt {
        return buffer.length;
    }

    function get_capacity():GoInt
        return buffer.length;

    public function new(length:GoInt, defaultValue) {
        // TODO: not handling length and capacity
        buffered = length > 0;
        buffer = new Vector<T>(length);
        this.defaultValue = defaultValue;
    }

    public function __isSend__():Bool {
        return sendBool;
    }

    public function __isGet__():Bool {
        return getBool;
    }

    public function __smartGet__():{value:T, ok:Bool} {
        if (getLock.wait(0)) {
            // released
            if (debug)
                trace("__smartGet__ getLock.wait release, mutext.acquire wait");
            mutex.acquire();
			amount--;
            final value = buffer[bufferRemovePos++];
			if (bufferRemovePos >= buffer.length)
				bufferRemovePos = 0;
            mutex.release();
            if (debug)
                trace("__smartGet__ getLock.wait release, mutext.acquire release");
            return {value: value, ok: true};
        }else{
            if (debug)
                trace("__smartGet__ getLock.wait wait, defaultValue");
            return {value: defaultValue(), ok: false};
        }
    }

    public function __get__():T {
        if (closed)
            throw "get to closed channel";
        // set bools
        if (debug)
            trace("__get__ wait for mutex.acquire0");
        mutex.acquire();
        sendBool = false;
        getBool = true;
        mutex.release();
        if (debug)
            trace("__get__ wait for mutex.release0");
        // block
        while (!getLock.wait(debug ? 0.2 : 0.01)) {
            if (debug)
                trace("__get__ wait for !getLock.wait");
            Async.tick();
            if (closed) {
                return defaultValue();
            }
        }
        // get value
        if (debug)
            trace("__get__ wait for mutex.acquire1");
        mutex.acquire();
		amount--;
        final value = buffer[bufferRemovePos++];
		if (bufferRemovePos >= buffer.length)
			bufferRemovePos = 0;
        mutex.release();
        if (debug)
            trace("__get__ wait for mutex.release1");
        return value;
    }

    public function __send__(value:T) {
        if (closed)
            throw "send to closed channel";
        if (debug)
            trace("__send__ wait for mutex.acquire0");
        mutex.acquire();
        // send value
		amount++;
        buffer[bufferAddPos++] = value;
		if (bufferAddPos >= buffer.length)
			bufferAddPos = 0;
        // set bools
        getBool = false;
        mutex.release();
        if (debug)
            trace("__send__ wait for mutex.release0");
        getLock.release();
        while (!sendLock.wait(debug ? 0.2 : 0.01) && !closed && !buffered) {
            if (debug)
                trace("__send__ wait for !sendLock.wait");
            sendBool = true;
            Async.tick();
        }
        if (debug)
            trace("end of __send__");
    }

    public inline function keyValueIterator()
        return new ChanKeyValueIterator(this);

    public inline function iterator()
        return new ChanIterator(this);

    public function toString():String {
        return "0x0";
    }

    public inline function __close__() {
        if (debug)
            trace("close");
        closed = true;
    }
}

private class ChanKeyValueIterator<T> {
    var chan:ChanData<T>;

    public inline function new(chan:ChanData<T>) {
        this.chan = chan;
    }

    public inline function hasNext()
        return chan.amount > 0;

    public inline function next():{key:T, value:Bool} {
        final tmp = chan.__smartGet__();
        return {key: tmp.value, value: tmp.ok};
    }
}

private class ChanIterator<T> {
    var chan:Chan<T>;

    public inline function new(chan:Chan<T>) {
        this.chan = chan;
    }

    public inline function hasNext() {
        return chan.length > 0;
    }

    public inline function next() {
        return chan.__get__();
    }
}
#else
// javascript implementation
class Chan<T> {
    public function new(length:GoInt, defaultValue:Void->T) {}

    public var capacity(get, never):GoInt;

    function get_capacity():GoInt
        return this.length;

    public var length:GoInt = 0;

    public function __isSend__(reset:Bool = true):Bool
        return false;

    public function __get__():T
        return null;

    public var __mutex__:Dynamic = null;

    public function __send__(a:T) {}

    public function __close__() {}

    public function __isGet__(reset:Bool = true):Bool
        return true;

    public function acquire() {}
}
#end

