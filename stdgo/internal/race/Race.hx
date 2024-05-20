package stdgo.internal.race;
final enabled : Bool = stdgo._internal.internal.race.Race.enabled;
/**
    /|*
    Package race contains helper functions for manually instrumenting code for the race detector.
    
    The runtime package intentionally exports these functions only in the race build;
    this package exports them unconditionally but without the "race" build tag they are no-ops.
    *|/
**/
class Race {
    static public function acquire(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.acquire(_addr);
    }
    static public function release(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.release(_addr);
    }
    static public function releaseMerge(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.releaseMerge(_addr);
    }
    static public function disable():Void {
        stdgo._internal.internal.race.Race.disable();
    }
    static public function enable():Void {
        stdgo._internal.internal.race.Race.enable();
    }
    static public function read(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.read(_addr);
    }
    static public function write(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.write(_addr);
    }
    static public function readRange(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, _len:StdTypes.Int):Void {
        stdgo._internal.internal.race.Race.readRange(_addr, _len);
    }
    static public function writeRange(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, _len:StdTypes.Int):Void {
        stdgo._internal.internal.race.Race.writeRange(_addr, _len);
    }
    static public function errors():StdTypes.Int {
        return stdgo._internal.internal.race.Race.errors();
    }
}
