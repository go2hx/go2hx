package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.Method_static_extension) abstract Method(stdgo._internal.reflect.Reflect_Method.Method) from stdgo._internal.reflect.Reflect_Method.Method to stdgo._internal.reflect.Reflect_Method.Method {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var pkgPath(get, set) : String;
    function get_pkgPath():String return this.pkgPath;
    function set_pkgPath(v:String):String {
        this.pkgPath = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var func(get, set) : Value;
    function get_func():Value return this.func;
    function set_func(v:Value):Value {
        this.func = v;
        return v;
    }
    public var index(get, set) : StdTypes.Int;
    function get_index():StdTypes.Int return this.index;
    function set_index(v:StdTypes.Int):StdTypes.Int {
        this.index = (v : stdgo.GoInt);
        return v;
    }
    public function new(?name:String, ?pkgPath:String, ?type:Type_, ?func:Value, ?index:StdTypes.Int) this = new stdgo._internal.reflect.Reflect_Method.Method((name : stdgo.GoString), (pkgPath : stdgo.GoString), type, func, (index : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
