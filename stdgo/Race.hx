package stdgo;
final enabled : Bool = stdgo._internal.internal.race.Race_enabled.enabled;
/**
    * 
    * Package race contains helper functions for manually instrumenting code for the race detector.
    * 
    * The runtime package intentionally exports these functions only in the race build;
    * this package exports them unconditionally but without the "race" build tag they are no-ops.
    * 
**/
class Race {
    static public inline function acquire(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race_acquire.acquire(_addr);
    }
    static public inline function release(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race_release.release(_addr);
    }
    static public inline function releaseMerge(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race_releasemerge.releaseMerge(_addr);
    }
    static public inline function disable():Void {
        stdgo._internal.internal.race.Race_disable.disable();
    }
    static public inline function enable():Void {
        stdgo._internal.internal.race.Race_enable.enable();
    }
    static public inline function read(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race_read.read(_addr);
    }
    static public inline function write(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race_write.write(_addr);
    }
    static public inline function readRange(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, _len:StdTypes.Int):Void {
        final _len = (_len : stdgo.GoInt);
        stdgo._internal.internal.race.Race_readrange.readRange(_addr, _len);
    }
    static public inline function writeRange(_addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, _len:StdTypes.Int):Void {
        final _len = (_len : stdgo.GoInt);
        stdgo._internal.internal.race.Race_writerange.writeRange(_addr, _len);
    }
    static public inline function errors():StdTypes.Int {
        return stdgo._internal.internal.race.Race_errors.errors();
    }
}
