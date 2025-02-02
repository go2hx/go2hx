package stdgo._internal.log.slog;
@:structInit @:using(stdgo._internal.log.slog.Slog_HandlerOptions_static_extension.HandlerOptions_static_extension) class HandlerOptions {
    public var addSource : Bool = false;
    public var level : stdgo._internal.log.slog.Slog_Leveler.Leveler = (null : stdgo._internal.log.slog.Slog_Leveler.Leveler);
    public var replaceAttr : (stdgo.Slice<stdgo.GoString>, stdgo._internal.log.slog.Slog_Attr.Attr) -> stdgo._internal.log.slog.Slog_Attr.Attr = null;
    public function new(?addSource:Bool, ?level:stdgo._internal.log.slog.Slog_Leveler.Leveler, ?replaceAttr:(stdgo.Slice<stdgo.GoString>, stdgo._internal.log.slog.Slog_Attr.Attr) -> stdgo._internal.log.slog.Slog_Attr.Attr) {
        if (addSource != null) this.addSource = addSource;
        if (level != null) this.level = level;
        if (replaceAttr != null) this.replaceAttr = replaceAttr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new HandlerOptions(addSource, level, replaceAttr);
    }
}
