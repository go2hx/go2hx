package stdgo._internal.log.slog;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.log.Log;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.math.Math;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.log.slog.internal.buffer.Buffer;
import stdgo._internal.slices.Slices;
import stdgo._internal.log.slog.internal.Internal;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
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
