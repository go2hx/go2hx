package stdgo;
var all(get, set) : Array<Info>;
private function get_all():Array<Info> return [for (i in stdgo._internal.internal.godebugs.Godebugs_all.all) i];
private function set_all(v:Array<Info>):Array<Info> {
        stdgo._internal.internal.godebugs.Godebugs_all.all = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.godebugs.Godebugs_info.Info>);
        return v;
    }
@:structInit @:using(stdgo.internal.godebugs.Godebugs.Info_static_extension) abstract Info(stdgo._internal.internal.godebugs.Godebugs_info.Info) from stdgo._internal.internal.godebugs.Godebugs_info.Info to stdgo._internal.internal.godebugs.Godebugs_info.Info {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var package_(get, set) : String;
    function get_package_():String return this.package_;
    function set_package_(v:String):String {
        this.package_ = (v : stdgo.GoString);
        return v;
    }
    public var changed(get, set) : StdTypes.Int;
    function get_changed():StdTypes.Int return this.changed;
    function set_changed(v:StdTypes.Int):StdTypes.Int {
        this.changed = (v : stdgo.GoInt);
        return v;
    }
    public var old(get, set) : String;
    function get_old():String return this.old;
    function set_old(v:String):String {
        this.old = (v : stdgo.GoString);
        return v;
    }
    public var opaque(get, set) : Bool;
    function get_opaque():Bool return this.opaque;
    function set_opaque(v:Bool):Bool {
        this.opaque = v;
        return v;
    }
    public function new(?name:String, ?package_:String, ?changed:StdTypes.Int, ?old:String, ?opaque:Bool) this = new stdgo._internal.internal.godebugs.Godebugs_info.Info((name : stdgo.GoString), (package_ : stdgo.GoString), (changed : stdgo.GoInt), (old : stdgo.GoString), opaque);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef InfoPointer = stdgo._internal.internal.godebugs.Godebugs_infopointer.InfoPointer;
class Info_static_extension {

}
/**
    * Package godebugs provides a table of known GODEBUG settings,
    * for use by a variety of other packages, including internal/godebug,
    * runtime, runtime/metrics, and cmd/go/internal/load.
**/
class Godebugs {
    /**
        * Lookup returns the Info with the given name.
    **/
    static public inline function lookup(_name:String):Info {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.internal.godebugs.Godebugs_lookup.lookup(_name);
    }
}
