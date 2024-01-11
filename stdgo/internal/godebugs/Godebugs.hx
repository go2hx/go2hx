package stdgo.internal.godebugs;
/**
    // Package godebugs provides a table of known GODEBUG settings,
    // for use by a variety of other packages, including internal/godebug,
    // runtime, runtime/metrics, and cmd/go/internal/load.
**/
private var __go2hxdoc__package : Bool;
/**
    // All is the table of known settings, sorted by Name.
    //
    // Note: After adding entries to this table, run 'go generate runtime/metrics'
    // to update the runtime/metrics doc comment.
    // (Otherwise the runtime/metrics test will fail.)
    //
    // Note: After adding entries to this table, update the list in doc/godebug.md as well.
    // (Otherwise the test in this package will fail.)
    
    
**/
var all : stdgo.Slice<stdgo.internal.godebugs.Godebugs.Info> = (null : stdgo.Slice<stdgo.internal.godebugs.Godebugs.Info>);
/**
    // An Info describes a single known GODEBUG setting.
    
    
**/
@:structInit class Info {
    public var name : stdgo.GoString = "";
    public var package_ : stdgo.GoString = "";
    public var changed : stdgo.GoInt = 0;
    public var old : stdgo.GoString = "";
    public var opaque : Bool = false;
    public function new(?name:stdgo.GoString, ?package_:stdgo.GoString, ?changed:stdgo.GoInt, ?old:stdgo.GoString, ?opaque:Bool) {
        if (name != null) this.name = name;
        if (package_ != null) this.package_ = package_;
        if (changed != null) this.changed = changed;
        if (old != null) this.old = old;
        if (opaque != null) this.opaque = opaque;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Info(name, package_, changed, old, opaque);
    }
}
/**
    // Lookup returns the Info with the given name.
**/
function lookup(_name:stdgo.GoString):stdgo.Ref<Info> throw ":internal.godebugs.lookup is not yet implemented";
