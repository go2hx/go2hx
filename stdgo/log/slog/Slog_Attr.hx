package stdgo.log.slog;
@:structInit @:using(stdgo.log.slog.Slog.Attr_static_extension) abstract Attr(stdgo._internal.log.slog.Slog_Attr.Attr) from stdgo._internal.log.slog.Slog_Attr.Attr to stdgo._internal.log.slog.Slog_Attr.Attr {
    public var key(get, set) : String;
    function get_key():String return this.key;
    function set_key(v:String):String {
        this.key = (v : stdgo.GoString);
        return v;
    }
    public var value(get, set) : Value;
    function get_value():Value return this.value;
    function set_value(v:Value):Value {
        this.value = v;
        return v;
    }
    public function new(?key:String, ?value:Value) this = new stdgo._internal.log.slog.Slog_Attr.Attr((key : stdgo.GoString), value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
