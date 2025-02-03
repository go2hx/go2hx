package stdgo.flag;
@:structInit @:using(stdgo.flag.Flag.Flag_static_extension) abstract Flag_(stdgo._internal.flag.Flag_Flag.Flag) from stdgo._internal.flag.Flag_Flag.Flag to stdgo._internal.flag.Flag_Flag.Flag {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var usage(get, set) : String;
    function get_usage():String return this.usage;
    function set_usage(v:String):String {
        this.usage = (v : stdgo.GoString);
        return v;
    }
    public var value(get, set) : Value;
    function get_value():Value return this.value;
    function set_value(v:Value):Value {
        this.value = v;
        return v;
    }
    public var defValue(get, set) : String;
    function get_defValue():String return this.defValue;
    function set_defValue(v:String):String {
        this.defValue = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String, ?usage:String, ?value:Value, ?defValue:String) this = new stdgo._internal.flag.Flag_Flag.Flag((name : stdgo.GoString), (usage : stdgo.GoString), value, (defValue : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
