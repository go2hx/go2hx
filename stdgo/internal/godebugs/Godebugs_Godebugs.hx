package stdgo.internal.godebugs;
/**
    Package godebugs provides a table of known GODEBUG settings,
    for use by a variety of other packages, including internal/godebug,
    runtime, runtime/metrics, and cmd/go/internal/load.
**/
class Godebugs {
    /**
        Lookup returns the Info with the given name.
    **/
    static public inline function lookup(_name:String):Info {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.internal.godebugs.Godebugs_lookup.lookup(_name);
    }
}
