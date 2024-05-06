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
function acquire(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.acquire(addr);
    }
function release(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.release(addr);
    }
function releaseMerge(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.releaseMerge(addr);
    }
function disable():Void {
        stdgo._internal.internal.race.Race.disable();
    }
function enable():Void {
        stdgo._internal.internal.race.Race.enable();
    }
function read(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.read(addr);
    }
function write(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void {
        stdgo._internal.internal.race.Race.write(addr);
    }
function readRange(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, len:StdTypes.Int):Void {
        stdgo._internal.internal.race.Race.readRange(addr, len);
    }
function writeRange(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, len:StdTypes.Int):Void {
        stdgo._internal.internal.race.Race.writeRange(addr, len);
    }
function errors():StdTypes.Int {
        return stdgo._internal.internal.race.Race.errors();
    }
