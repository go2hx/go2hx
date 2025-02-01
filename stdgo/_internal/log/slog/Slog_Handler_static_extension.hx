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
@:keep class Handler_static_extension {
    @:interfacetypeffun
    static public function withGroup(t:stdgo._internal.log.slog.Slog_Handler.Handler, _name:stdgo.GoString):stdgo._internal.log.slog.Slog_Handler.Handler return t.withGroup(_name);
    @:interfacetypeffun
    static public function withAttrs(t:stdgo._internal.log.slog.Slog_Handler.Handler, _attrs:stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo._internal.log.slog.Slog_Handler.Handler return t.withAttrs(_attrs);
    @:interfacetypeffun
    static public function handle(t:stdgo._internal.log.slog.Slog_Handler.Handler, _0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error return t.handle(_0, _1);
    @:interfacetypeffun
    static public function enabled(t:stdgo._internal.log.slog.Slog_Handler.Handler, _0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.log.slog.Slog_Level.Level):Bool return t.enabled(_0, _1);
}
