package stdgo.internal.godebugs;
/**
    Package godebugs provides a table of known GODEBUG settings,
    for use by a variety of other packages, including internal/godebug,
    runtime, runtime/metrics, and cmd/go/internal/load.
**/
private var __go2hxdoc__package : Bool;
var all(get, set) : Array<stdgo._internal.internal.godebugs.Godebugs.Info>;
function get_all():Array<stdgo._internal.internal.godebugs.Godebugs.Info> return stdgo._internal.internal.godebugs.Godebugs.all;
function set_all(v:Array<stdgo._internal.internal.godebugs.Godebugs.Info>):Array<stdgo._internal.internal.godebugs.Godebugs.Info> return stdgo._internal.internal.godebugs.Godebugs.all = v;
@:invalid typedef Info = Dynamic;
/**
    Lookup returns the Info with the given name.
**/
inline function lookup(name:String):Info throw "not implemented";
