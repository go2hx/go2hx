package stdgo.log.slog;
@:structInit @:using(stdgo.log.slog.Slog.HandlerOptions_static_extension) abstract HandlerOptions(stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions) from stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions to stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions {
    public var addSource(get, set) : Bool;
    function get_addSource():Bool return this.addSource;
    function set_addSource(v:Bool):Bool {
        this.addSource = v;
        return v;
    }
    public var level(get, set) : Leveler;
    function get_level():Leveler return this.level;
    function set_level(v:Leveler):Leveler {
        this.level = v;
        return v;
    }
    public var replaceAttr(get, set) : (stdgo.Slice<stdgo.GoString>, stdgo._internal.log.slog.Slog_Attr.Attr) -> stdgo._internal.log.slog.Slog_Attr.Attr;
    function get_replaceAttr():(stdgo.Slice<stdgo.GoString>, stdgo._internal.log.slog.Slog_Attr.Attr) -> stdgo._internal.log.slog.Slog_Attr.Attr return (_0, _1) -> this.replaceAttr([for (i in _0) i], _1);
    function set_replaceAttr(v:(stdgo.Slice<stdgo.GoString>, stdgo._internal.log.slog.Slog_Attr.Attr) -> stdgo._internal.log.slog.Slog_Attr.Attr):(stdgo.Slice<stdgo.GoString>, stdgo._internal.log.slog.Slog_Attr.Attr) -> stdgo._internal.log.slog.Slog_Attr.Attr {
        this.replaceAttr = v;
        return v;
    }
    public function new(?addSource:Bool, ?level:Leveler, ?replaceAttr:(stdgo.Slice<stdgo.GoString>, stdgo._internal.log.slog.Slog_Attr.Attr) -> stdgo._internal.log.slog.Slog_Attr.Attr) this = new stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions(addSource, level, replaceAttr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
