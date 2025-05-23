package utils;

#if macro
class ThreadPool {
    public var maxThreadsCount = 0;
    public var threadsCount(get, never):Int;
    function get_threadsCount() {
        return 0;
    }
    public function new(maxThreadsCount:Int=4) {}
    public function run(task:()->Void):Void {}
}
#else
import sys.thread.Thread;
import sys.thread.Deque;
import sys.thread.Mutex;

class ThreadPool {
    public var maxThreadsCount = 0;
    public var threadsCount(get, never):Int;
    
    function get_threadsCount():Int {
        var count = 0;
        for (worker in pool) {
            worker.mutex.acquire();
            if (worker.running)
                count++;
            worker.mutex.release();
        }
        return count;
    }
    public var pool:Array<Worker> = [];
    final queue = new Deque<()->Void>();
    public function new(maxThreadsCount:Int=4) {
        this.maxThreadsCount = maxThreadsCount;
        pool = [for(i in 0...maxThreadsCount) new Worker(queue)];
    }

    public function run(task:()->Void):Void {
		queue.add(task);
	}
}

private class Worker {
	var thread:Thread;
	final queue:Deque<Null<()->Void>>;
    public var mutex = new Mutex();
    public var running = false;

	public function new(queue:Deque<Null<()->Void>>) {
		this.queue = queue;
		thread = Thread.create(loop);
	}

	function loop() {
        try {
            while(true) {
                mutex.acquire();
                running = false;
                mutex.release();
                var task = queue.pop(true);
                mutex.acquire();
                running = true;
                mutex.release();
                task();
            }
        }catch(e) {
            throw e;
        }
	}
}
#end