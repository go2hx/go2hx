package stdgo.internal.race;
final enabled : Bool = stdgo._internal.internal.race.Race_enabled.enabled;
/**
    /|*
    Package race contains helper functions for manually instrumenting code for the race detector.
    
    The runtime package intentionally exports these functions only in the race build;
    this package exports them unconditionally but without the "race" build tag they are no-ops.
    *|/
**/
class Race {
    static public function acquire(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race_acquire.acquire(_addr);
    }
    static public function release(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race_release.release(_addr);
    }
    static public function releaseMerge(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race_releaseMerge.releaseMerge(_addr);
    }
    static public function disable():Void {
        stdgo._internal.internal.race.Race_disable.disable();
    }
    static public function enable():Void {
        stdgo._internal.internal.race.Race_enable.enable();
    }
    static public function read(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race_read.read(_addr);
    }
    static public function write(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race_write.write(_addr);
    }
    static public function readRange(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, _len:StdTypes.Int):Void {
        stdgo._internal.internal.race.Race_readRange.readRange(_addr, _len);
    }
    static public function writeRange(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, _len:StdTypes.Int):Void {
        stdgo._internal.internal.race.Race_writeRange.writeRange(_addr, _len);
    }
    static public function errors():StdTypes.Int {
        return stdgo._internal.internal.race.Race_errors.errors();
    }
}
