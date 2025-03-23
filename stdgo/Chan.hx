package stdgo;

#if (target.threaded)
import stdgo.GoInt;
import stdgo._internal.internal.Async;
import sys.thread.Lock;
import sys.thread.Mutex;

@:forward(
    length,
    capacity,
    __isSend__,
    __isGet__,
    __smartGet__,
    __get__,
    __send__,
    __close__,
    keyValueIterator,
    iterator
)
@:forward.new
/**
 *    Chan is a Go channel in Haxe
 *    Channels are used in a goroutine context to send and get data
 *    Channel are by default blocking for sending, waiting until a get on the other side is called
 *    The syntax for channels is different for Go and Haxe:
 *
 *    Haxe: c.__get__ Go: <- c
 *    Haxe: c.__send__(x) Go: c <- x
 */
abstract Chan<T>(ChanData<T>) from ChanData<T> to ChanData<T> {
    public function __reset__() {
        this?.__reset__();
    }
}

@:dox(hide)
class ChanData<T> {
    private var buffer:Array<T> = [];

    var defaultValue:Void->T = null;

    var closed:Bool = false;
    // general mutex when handling internal vars in ChanData
    var sendLock = new Lock();
    var getLock = new Lock();
    var mutex = new Mutex();
    var sendBool = false;
    var getBool = false;
    var buffered:Bool = false;

    public var length(get, never):GoInt;
    public var capacity:GoInt;
    public static var count:Int = 0;
    var index:Int = 0;

    public static inline var debug = false;

    function get_length():GoInt {
        return buffer.length;
    }

    public function new(length:GoInt, defaultValue) {
        buffered = length > 0;
        this.capacity = length;
        this.defaultValue = defaultValue;
        if (debug) {
            mutex.acquire();
            index = count;
            count++;
            mutex.release();
        }
    }

    public function __isSend__(selectBool:Bool=false):Bool {
        mutex.acquire();
        if (buffered) {
            mutex.release();
            return length < capacity;
        }
        if (selectBool)
            getBool = true;
        final b = sendBool;
        if (debug)
            trace(index + "__isSend__ " + b, length, buffered);
        mutex.release();
        return b;
    }

    public function __reset__() {
        mutex.acquire();
        getBool = sendBool = false;
        mutex.release();
    }

    public function __isGet__(selectBool:Bool=false):Bool {
        mutex.acquire();
        if (buffered) {
            mutex.release();
            return length > 0;
        }
        final b = getBool || closed;
        if (selectBool)
            sendBool = true;
        if (debug)
            trace(index + "__isGet__ " + b, length, buffered);
        mutex.release();

        return b;
    }

    public function __smartGet__():{_0:T, _1:Bool} {
        if (closed) {
            mutex.acquire();
            if (length > 0) {
                final value = buffer.shift();
                mutex.release();
                return {_0: value, _1: true};
            }
            mutex.release();
            return {_0: defaultValue(), _1: false};
        }
        if (getLock.wait(0)) {
            // released
            if (debug)
                trace(index + "__smartGet__ getLock.wait release, mutex.acquire wait");
            mutex.acquire();
            final value = buffer.shift();
            mutex.release();
            if (debug)
                trace(index + "__smartGet__ getLock.wait release, mutex.acquire release");
            return {_0: value, _1: true};
        }else{
            if (debug)
                trace(index + "__smartGet__ getLock.wait wait, defaultValue");
            return {_0: defaultValue(), _1: false};
        }
    }
    /*
    send <-
    :
    sendLock.wait()
    push
    getLock.release()


    <- get
    :
    sendLock.release()
    getLock.wait()
    shift
    */
    public function __get__():T {
        mutex.acquire();
        if (debug)
            trace(index + "__get__ wait");
        sendLock.release();
        mutex.release();
        // block
        while (!getLock.wait(debug ? 0.2 : 0.01)) {
            // set bools
            mutex.acquire();
            if (buffered && length > 0) {
                mutex.release();
                break;
            }
            sendBool = true;
            Async.tick();
            if (closed) {
                if (length > 0) {
                    final value = buffer.shift();
                    mutex.release();
                    return value;
                }
                mutex.release();
                return defaultValue();
            }
            mutex.release();
        }
        // get value
        mutex.acquire();
        sendBool = false;
        if (debug)
            trace(index + "__get__ get value");
        final value = buffer.shift();
        mutex.release();
        return value;
    }

    public function __send__(value:T) {
        mutex.acquire();
        if (closed) {
            mutex.release();
            throw "send to closed channel";
        }
        mutex.release();
        if (debug)
            trace(index + "__send__ wait");
        while (!sendLock.wait(debug ? 0.2 : 0.01)) {
            mutex.acquire();
            if (closed) {
                mutex.release();
                break;
            }
            // set bools
            getBool = true;
            if (buffered && length < capacity) {
                mutex.release();
                break;
            }
            mutex.release();
            Async.tick();
        }
        mutex.acquire();
        // send value
        buffer.push(value);
        getBool = false;
        getLock.release();
        mutex.release();
        if (debug)
            trace(index + "end of __send__");
    }

    public inline function iterator()
        return new ChanIterator(this);

    public function toString():String {
        return "0x0";
    }

    public inline function __close__() {
        if (debug)
            trace(index + "close");
        closed = true;
    }
}

private class ChanIterator<T> {
    var chan:ChanData<T>;

    public inline function new(chan:ChanData<T>) {
        this.chan = chan;
    }
    /**
     * For channels, the iteration values produced are the successive values sent on the channel until the channel is closed. If the channel is nil, the range expression blocks forever. 
     */
    public inline function hasNext() {
        return @:privateAccess !chan.closed;
    }

    public inline function next() {
        final value = chan.__get__();
        return value;
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

    public function __reset__() {}
}
#end

