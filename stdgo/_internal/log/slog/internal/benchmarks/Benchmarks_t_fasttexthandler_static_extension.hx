package stdgo._internal.log.slog.internal.benchmarks;
@:keep @:allow(stdgo._internal.log.slog.internal.benchmarks.Benchmarks.T_fastTextHandler_asInterface) class T_fastTextHandler_static_extension {
    @:keep
    @:tdfield
    static public function withGroup( _:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler>, _0:stdgo.GoString):stdgo._internal.log.slog.Slog_handler.Handler {
        @:recv var _:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler> = _;
        throw stdgo.Go.toInterface(("fastTextHandler: WithGroup unimplemented" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function withAttrs( _h:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler>, _0:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo._internal.log.slog.Slog_handler.Handler {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler> = _h;
        throw stdgo.Go.toInterface(("fastTextHandler: With unimplemented" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _appendTime( _h:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler>, _buf:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, _t:stdgo._internal.time.Time_time.Time):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler> = _h;
        (_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(stdgo._internal.strconv.Strconv_appendint.appendInt((_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), _t.unix(), (10 : stdgo.GoInt)));
    }
    @:keep
    @:tdfield
    static public function _appendValue( _h:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler>, _buf:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, _v:stdgo._internal.log.slog.Slog_value.Value):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler> = _h;
        {
            final __value__ = _v.kind();
            if (__value__ == ((5 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                @:check2r _buf.writeString((_v.string() : stdgo.GoString)?.__copy__());
            } else if (__value__ == ((4 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                (_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(stdgo._internal.strconv.Strconv_appendint.appendInt((_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), _v.int64(), (10 : stdgo.GoInt)));
            } else if (__value__ == ((7 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                (_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(stdgo._internal.strconv.Strconv_appenduint.appendUint((_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), _v.uint64(), (10 : stdgo.GoInt)));
            } else if (__value__ == ((3 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                (_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(stdgo._internal.strconv.Strconv_appendfloat.appendFloat((_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), _v.float64(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt)));
            } else if (__value__ == ((1 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                (_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(stdgo._internal.strconv.Strconv_appendbool.appendBool((_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), _v.bool_()));
            } else if (__value__ == ((2 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                (_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(stdgo._internal.strconv.Strconv_appendint.appendInt((_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), _v.duration().nanoseconds(), (10 : stdgo.GoInt)));
            } else if (__value__ == ((6 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                @:check2r _h._appendTime(_buf, _v.time()?.__copy__());
            } else if (__value__ == ((0 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                var _a = (_v.any() : stdgo.AnyInterface);
                {
                    final __type__ = _a;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                        var _a:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                        @:check2r _buf.writeString(_a.error()?.__copy__());
                    } else {
                        var _a:stdgo.AnyInterface = __type__?.__underlying__();
                        stdgo._internal.fmt.Fmt_fprint.fprint(stdgo.Go.asInterface(_buf), _a);
                    };
                };
            } else {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("bad kind: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v.kind()))));
            };
        };
    }
    @:keep
    @:tdfield
    static public function handle( _h:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler>, __0:stdgo._internal.context.Context_context.Context, _r:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler> = _h;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _buf = stdgo._internal.log.slog.internal.buffer.Buffer_new_.new_();
            {
                final __f__ = @:check2r _buf.free;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (!_r.time.isZero()) {
                @:check2r _buf.writeString(("time=" : stdgo.GoString));
                @:check2r _h._appendTime(_buf, _r.time?.__copy__());
                @:check2r _buf.writeByte((32 : stdgo.GoUInt8));
            };
            @:check2r _buf.writeString(("level=" : stdgo.GoString));
            (_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(stdgo._internal.strconv.Strconv_appendint.appendInt((_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), (_r.level : stdgo.GoInt64), (10 : stdgo.GoInt)));
            @:check2r _buf.writeByte((32 : stdgo.GoUInt8));
            @:check2r _buf.writeString(("msg=" : stdgo.GoString));
            @:check2r _buf.writeString(_r.message?.__copy__());
            _r.attrs(function(_a:stdgo._internal.log.slog.Slog_attr.Attr):Bool {
                @:check2r _buf.writeByte((32 : stdgo.GoUInt8));
                @:check2r _buf.writeString(_a.key?.__copy__());
                @:check2r _buf.writeByte((61 : stdgo.GoUInt8));
                @:check2r _h._appendValue(_buf, _a.value?.__copy__());
                return true;
            });
            @:check2r _buf.writeByte((10 : stdgo.GoUInt8));
            var __tmp__ = (@:checkr _h ?? throw "null pointer dereference")._w.write((_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function enabled( _h:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler>, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.log.slog.Slog_level.Level):Bool {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_fasttexthandler.T_fastTextHandler> = _h;
        return true;
    }
}
