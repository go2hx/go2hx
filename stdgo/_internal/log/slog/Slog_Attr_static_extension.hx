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
@:keep @:allow(stdgo._internal.log.slog.Slog.Attr_asInterface) class Attr_static_extension {
    @:keep
    @:tdfield
    static public function _isEmpty( _a:stdgo._internal.log.slog.Slog_Attr.Attr):Bool {
        @:recv var _a:stdgo._internal.log.slog.Slog_Attr.Attr = _a?.__copy__();
        return ((_a.key == (stdgo.Go.str()) && _a.value._num == ((0i64 : stdgo.GoUInt64)) : Bool) && (_a.value._any == null) : Bool);
    }
    @:keep
    @:tdfield
    static public function string( _a:stdgo._internal.log.slog.Slog_Attr.Attr):stdgo.GoString {
        @:recv var _a:stdgo._internal.log.slog.Slog_Attr.Attr = _a?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s=%s" : stdgo.GoString), stdgo.Go.toInterface(_a.key), stdgo.Go.toInterface(stdgo.Go.asInterface(_a.value)))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function equal( _a:stdgo._internal.log.slog.Slog_Attr.Attr, _b:stdgo._internal.log.slog.Slog_Attr.Attr):Bool {
        @:recv var _a:stdgo._internal.log.slog.Slog_Attr.Attr = _a?.__copy__();
        return ((_a.key == _b.key) && _a.value.equal(_b.value?.__copy__()) : Bool);
    }
}
