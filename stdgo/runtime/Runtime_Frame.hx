package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.Frame_static_extension) abstract Frame(stdgo._internal.runtime.Runtime_Frame.Frame) from stdgo._internal.runtime.Runtime_Frame.Frame to stdgo._internal.runtime.Runtime_Frame.Frame {
    public var pC(get, set) : stdgo.GoUIntptr;
    function get_pC():stdgo.GoUIntptr return this.pC;
    function set_pC(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.pC = (v : stdgo.GoUIntptr);
        return v;
    }
    public var func(get, set) : Func;
    function get_func():Func return this.func;
    function set_func(v:Func):Func {
        this.func = (v : stdgo.Ref<stdgo._internal.runtime.Runtime_Func.Func>);
        return v;
    }
    public var function_(get, set) : String;
    function get_function_():String return this.function_;
    function set_function_(v:String):String {
        this.function_ = (v : stdgo.GoString);
        return v;
    }
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = (v : stdgo.GoString);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public var entry(get, set) : stdgo.GoUIntptr;
    function get_entry():stdgo.GoUIntptr return this.entry;
    function set_entry(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.entry = (v : stdgo.GoUIntptr);
        return v;
    }
    public function new(?pC:stdgo.GoUIntptr, ?func:Func, ?function_:String, ?file:String, ?line:StdTypes.Int, ?entry:stdgo.GoUIntptr) this = new stdgo._internal.runtime.Runtime_Frame.Frame((pC : stdgo.GoUIntptr), (func : stdgo.Ref<stdgo._internal.runtime.Runtime_Func.Func>), (function_ : stdgo.GoString), (file : stdgo.GoString), (line : stdgo.GoInt), (entry : stdgo.GoUIntptr));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
