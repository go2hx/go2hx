package stdgo._internal.debug.plan9obj;
@:structInit @:using(stdgo._internal.debug.plan9obj.Plan9obj_sym_static_extension.Sym_static_extension) class Sym {
    public var value : stdgo.GoUInt64 = 0;
    public var type : stdgo.GoInt32 = 0;
    public var name : stdgo.GoString = "";
    public function new(?value:stdgo.GoUInt64, ?type:stdgo.GoInt32, ?name:stdgo.GoString) {
        if (value != null) this.value = value;
        if (type != null) this.type = type;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Sym(value, type, name);
    }
}
