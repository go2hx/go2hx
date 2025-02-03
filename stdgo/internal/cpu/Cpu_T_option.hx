package stdgo.internal.cpu;
@:structInit @:using(stdgo.internal.cpu.Cpu.T_option_static_extension) abstract T_option(stdgo._internal.internal.cpu.Cpu_T_option.T_option) from stdgo._internal.internal.cpu.Cpu_T_option.T_option to stdgo._internal.internal.cpu.Cpu_T_option.T_option {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var feature(get, set) : stdgo.Pointer<Bool>;
    function get_feature():stdgo.Pointer<Bool> return this.feature;
    function set_feature(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        this.feature = v;
        return v;
    }
    public var specified(get, set) : Bool;
    function get_specified():Bool return this.specified;
    function set_specified(v:Bool):Bool {
        this.specified = v;
        return v;
    }
    public var enable(get, set) : Bool;
    function get_enable():Bool return this.enable;
    function set_enable(v:Bool):Bool {
        this.enable = v;
        return v;
    }
    public function new(?name:String, ?feature:stdgo.Pointer<Bool>, ?specified:Bool, ?enable:Bool) this = new stdgo._internal.internal.cpu.Cpu_T_option.T_option((name : stdgo.GoString), feature, specified, enable);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
