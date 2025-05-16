package utils;

import sys.thread.Thread;
import sys.thread.Deque;
import sys.thread.Mutex;

//typedef ThreadPool = sys.thread.ElasticThreadPool;

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
    public var loop:Void->Void;
    public function new(maxThreadsCount:Int=4, timeout:Float=0.0) {
        this.maxThreadsCount = maxThreadsCount;
    }
    public function start() {
        pool = [for(i in 0...maxThreadsCount) new Worker(loop)];
    }
}

private class Worker {
	var thread:Thread;
    public var mutex = new Mutex();
    public var running = true;

	public function new(f:Void->Void) {
		thread = Thread.create(() -> {
            try {
                f();
            }catch(e) {
                throw e.details();
            }
            mutex.acquire();
            running = false;
            mutex.release();
        });
	}
}