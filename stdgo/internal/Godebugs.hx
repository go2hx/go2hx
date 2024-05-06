package stdgo.internal;
/**
    Package godebugs provides a table of known GODEBUG settings,
    for use by a variety of other packages, including internal/godebug,
    runtime, runtime/metrics, and cmd/go/internal/load.
**/
private var __go2hxdoc__package : Bool;
var all(get, set) : Array<stdgo._internal.internal.godebugs.Godebugs.Info>;
private function get_all():Array<stdgo._internal.internal.godebugs.Godebugs.Info> return stdgo._internal.internal.godebugs.Godebugs.all;
private function set_all(v:Array<stdgo._internal.internal.godebugs.Godebugs.Info>):Array<stdgo._internal.internal.godebugs.Godebugs.Info> return stdgo._internal.internal.godebugs.Godebugs.all = v;
@:forward @:forward.new abstract Info(stdgo._internal.internal.godebugs.Godebugs.Info) from stdgo._internal.internal.godebugs.Godebugs.Info to stdgo._internal.internal.godebugs.Godebugs.Info {

}
/**
    Lookup returns the Info with the given name.
**/
function lookup(name:String):Info {
        return stdgo._internal.internal.godebugs.Godebugs.lookup(name);
    }
