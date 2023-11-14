package stdgo.internal.race;
/**
    /|*
    Package race contains helper functions for manually instrumenting code for the race detector.
    
    The runtime package intentionally exports these functions only in the race build;
    this package exports them unconditionally but without the "race" build tag they are no-ops.
    *|/
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
final enabled : Bool = false;
function acquire(_addr:stdgo.unsafe.Unsafe.UnsafePointer):Void throw ":internal.race.acquire is not yet implemented";
function release(_addr:stdgo.unsafe.Unsafe.UnsafePointer):Void throw ":internal.race.release is not yet implemented";
function releaseMerge(_addr:stdgo.unsafe.Unsafe.UnsafePointer):Void throw ":internal.race.releaseMerge is not yet implemented";
function disable():Void throw ":internal.race.disable is not yet implemented";
function enable():Void throw ":internal.race.enable is not yet implemented";
function read(_addr:stdgo.unsafe.Unsafe.UnsafePointer):Void throw ":internal.race.read is not yet implemented";
function write(_addr:stdgo.unsafe.Unsafe.UnsafePointer):Void throw ":internal.race.write is not yet implemented";
function readRange(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:stdgo.StdGoTypes.GoInt):Void throw ":internal.race.readRange is not yet implemented";
function writeRange(_addr:stdgo.unsafe.Unsafe.UnsafePointer, _len:stdgo.StdGoTypes.GoInt):Void throw ":internal.race.writeRange is not yet implemented";
function errors():stdgo.StdGoTypes.GoInt throw ":internal.race.errors is not yet implemented";
