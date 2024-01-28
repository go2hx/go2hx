package stdgo._internal.internal.godebugs;
private var __go2hxdoc__package : Bool;
var all : stdgo.Slice<stdgo._internal.internal.godebugs.Godebugs.Info> = (null : stdgo.Slice<stdgo._internal.internal.godebugs.Godebugs.Info>);
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
function lookup(_name:stdgo.GoString):stdgo.Ref<Info> throw ":internal.godebugs.lookup is not yet implemented";
