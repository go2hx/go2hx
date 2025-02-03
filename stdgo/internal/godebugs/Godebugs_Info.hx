package stdgo.internal.godebugs;
@:structInit @:using(stdgo.internal.godebugs.Godebugs.Info_static_extension) abstract Info(stdgo._internal.internal.godebugs.Godebugs_Info.Info) from stdgo._internal.internal.godebugs.Godebugs_Info.Info to stdgo._internal.internal.godebugs.Godebugs_Info.Info {
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
    public function new(?name:String, ?package_:String, ?changed:StdTypes.Int, ?old:String, ?opaque:Bool) this = new stdgo._internal.internal.godebugs.Godebugs_Info.Info((name : stdgo.GoString), (package_ : stdgo.GoString), (changed : stdgo.GoInt), (old : stdgo.GoString), opaque);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
