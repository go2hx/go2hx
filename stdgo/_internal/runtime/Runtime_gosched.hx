package stdgo._internal.runtime;

// gosched() hands control temporally to other goroutines 
inline function gosched():Void {
    // TODO review when Haxe coroutines are implemented
    stdgo._internal.internal.Async.tick();  
    #if (target.threaded)
    Sys.sleep(0.001); // wait 1 milisecond ... obviously, this is a kludge for thread-per-goroutine
    #end
}
