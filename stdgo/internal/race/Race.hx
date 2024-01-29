package stdgo.internal.race;
/**
    /|*
    Package race contains helper functions for manually instrumenting code for the race detector.
    
    The runtime package intentionally exports these functions only in the race build;
    this package exports them unconditionally but without the "race" build tag they are no-ops.
    *|/
**/
private var __go2hxdoc__package : Bool;
final enabled : Bool = stdgo._internal.internal.race.Race.enabled;
inline function acquire(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void throw "not implemented";
inline function release(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void throw "not implemented";
inline function releaseMerge(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void throw "not implemented";
inline function disable():Void throw "not implemented";
inline function enable():Void throw "not implemented";
inline function read(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void throw "not implemented";
inline function write(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer):Void throw "not implemented";
inline function readRange(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, len:Int):Void throw "not implemented";
inline function writeRange(addr:stdgo._internal.unsafe.Unsafe.UnsafePointer, len:Int):Void throw "not implemented";
inline function errors():Int throw "not implemented";
