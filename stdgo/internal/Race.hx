package stdgo.internal;
/**
    /|*
    Package race contains helper functions for manually instrumenting code for the race detector.
    
    The runtime package intentionally exports these functions only in the race build;
    this package exports them unconditionally but without the "race" build tag they are no-ops.
    *|/
**/
private var __go2hxdoc__package : Bool;
final enabled : Bool = stdgo._internal.internal.race.Race.enabled;
class Race {
    static public function acquire(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.acquire(addr);
    }
    static public function release(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.release(addr);
    }
    static public function releaseMerge(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.releaseMerge(addr);
    }
    static public function disable():Void {
        stdgo._internal.internal.race.Race.disable();
    }
    static public function enable():Void {
        stdgo._internal.internal.race.Race.enable();
    }
    static public function read(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.read(addr);
    }
    static public function write(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.write(addr);
    }
    static public function readRange(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, len:StdTypes.Int):Void {
        stdgo._internal.internal.race.Race.readRange(addr, len);
    }
    static public function writeRange(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, len:StdTypes.Int):Void {
        stdgo._internal.internal.race.Race.writeRange(addr, len);
    }
    static public function errors():StdTypes.Int {
        return stdgo._internal.internal.race.Race.errors();
    }
}
