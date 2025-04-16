package stdgo.internal.godebugs;
var all(get, set) : stdgo.Slice<stdgo._internal.internal.godebugs.Godebugs_info.Info>;
private function get_all():stdgo.Slice<stdgo._internal.internal.godebugs.Godebugs_info.Info> return stdgo._internal.internal.godebugs.Godebugs_all.all;
private function set_all(v:stdgo.Slice<stdgo._internal.internal.godebugs.Godebugs_info.Info>):stdgo.Slice<stdgo._internal.internal.godebugs.Godebugs_info.Info> {
        stdgo._internal.internal.godebugs.Godebugs_all.all = v;
        return v;
    }
typedef Info = stdgo._internal.internal.godebugs.Godebugs_info.Info;
typedef InfoPointer = stdgo._internal.internal.godebugs.Godebugs_infopointer.InfoPointer;
/**
    * Package godebugs provides a table of known GODEBUG settings,
    * for use by a variety of other packages, including internal/godebug,
    * runtime, runtime/metrics, and cmd/go/internal/load.
**/
class Godebugs {
    /**
        * Lookup returns the Info with the given name.
    **/
    static public inline function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.godebugs.Godebugs_info.Info> return stdgo._internal.internal.godebugs.Godebugs_lookup.lookup(_name);
}
