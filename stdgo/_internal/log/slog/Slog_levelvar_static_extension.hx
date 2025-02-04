package stdgo._internal.log.slog;
@:keep @:allow(stdgo._internal.log.slog.Slog.LevelVar_asInterface) class LevelVar_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalText( _v:stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _v:stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar> = _v;
        var _l:stdgo._internal.log.slog.Slog_level.Level = ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_level.Level);
        {
            var _err = (@:notptr (stdgo.Go.pointer(_l) : stdgo._internal.log.slog.Slog_levelpointer.LevelPointer).unmarshalText(_data) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        @:check2r _v.set(_l);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _v:stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar> = _v;
        return @:check2r _v.level().marshalText();
    }
    @:keep
    @:tdfield
    static public function string( _v:stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar> = _v;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("LevelVar(%s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _v.level())))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function set( _v:stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar>, _l:stdgo._internal.log.slog.Slog_level.Level):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar> = _v;
        @:check2 (@:checkr _v ?? throw "null pointer dereference")._val.store((_l : stdgo.GoInt64));
    }
    @:keep
    @:tdfield
    static public function level( _v:stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar>):stdgo._internal.log.slog.Slog_level.Level {
        @:recv var _v:stdgo.Ref<stdgo._internal.log.slog.Slog_levelvar.LevelVar> = _v;
        return ((@:check2 (@:checkr _v ?? throw "null pointer dereference")._val.load() : stdgo.GoInt) : stdgo._internal.log.slog.Slog_level.Level);
    }
}
