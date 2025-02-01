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
@:keep @:allow(stdgo._internal.log.slog.Slog.LevelVar_asInterface) class LevelVar_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalText( _v:stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _v:stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar> = _v;
        var _l:stdgo._internal.log.slog.Slog_Level.Level = ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_Level.Level);
        {
            var _err = (@:notptr (stdgo.Go.pointer(_l) : stdgo._internal.log.slog.Slog_LevelPointer.LevelPointer).unmarshalText(_data) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        @:check2r _v.set(_l);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _v:stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar> = _v;
        return @:check2r _v.level().marshalText();
    }
    @:keep
    @:tdfield
    static public function string( _v:stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar> = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("LevelVar(%s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _v.level())))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function set( _v:stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar>, _l:stdgo._internal.log.slog.Slog_Level.Level):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar> = _v;
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._val.store((_l : stdgo.GoInt64));
    }
    @:keep
    @:tdfield
    static public function level( _v:stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar>):stdgo._internal.log.slog.Slog_Level.Level {
        @:recv var _v:stdgo.Ref<stdgo._internal.log.slog.Slog_LevelVar.LevelVar> = _v;
        return ((@:check2 (@:checkr _v ?? throw "null pointer dereference")._val.load() : stdgo.GoInt) : stdgo._internal.log.slog.Slog_Level.Level);
    }
}
