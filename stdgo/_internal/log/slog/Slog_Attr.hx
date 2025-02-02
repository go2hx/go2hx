package stdgo._internal.log.slog;
@:structInit @:using(stdgo._internal.log.slog.Slog_Attr_static_extension.Attr_static_extension) class Attr {
    public var key : stdgo.GoString = "";
    public var value : stdgo._internal.log.slog.Slog_Value.Value = ({} : stdgo._internal.log.slog.Slog_Value.Value);
    public function new(?key:stdgo.GoString, ?value:stdgo._internal.log.slog.Slog_Value.Value) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Attr(key, value);
    }
}
