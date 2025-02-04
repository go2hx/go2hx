package stdgo._internal.flag;
@:structInit @:using(stdgo._internal.flag.Flag_flag_static_extension.Flag_static_extension) class Flag {
    public var name : stdgo.GoString = "";
    public var usage : stdgo.GoString = "";
    public var value : stdgo._internal.flag.Flag_value.Value = (null : stdgo._internal.flag.Flag_value.Value);
    public var defValue : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?usage:stdgo.GoString, ?value:stdgo._internal.flag.Flag_value.Value, ?defValue:stdgo.GoString) {
        if (name != null) this.name = name;
        if (usage != null) this.usage = usage;
        if (value != null) this.value = value;
        if (defValue != null) this.defValue = defValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Flag(name, usage, value, defValue);
    }
}
