package stdgo._internal.log.slog;
@:keep @:allow(stdgo._internal.log.slog.Slog.T_defaultHandler_asInterface) class T_defaultHandler_static_extension {
    @:keep
    @:tdfield
    static public function withGroup( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>, _name:stdgo.GoString):stdgo._internal.log.slog.Slog_handler.Handler {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler> = _h;
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler(@:check2r (@:checkr _h ?? throw "null pointer dereference")._ch._withGroup(_name?.__copy__()), (@:checkr _h ?? throw "null pointer dereference")._output) : stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler)) : stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>));
    }
    @:keep
    @:tdfield
    static public function withAttrs( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>, _as:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo._internal.log.slog.Slog_handler.Handler {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler> = _h;
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler(@:check2r (@:checkr _h ?? throw "null pointer dereference")._ch._withAttrs(_as), (@:checkr _h ?? throw "null pointer dereference")._output) : stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler)) : stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>));
    }
    @:keep
    @:tdfield
    static public function handle( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>, _ctx:stdgo._internal.context.Context_context.Context, _r:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler> = _h;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _buf = stdgo._internal.log.slog.internal.buffer.Buffer_new_.new_();
            @:check2r _buf.writeString((_r.level.string() : stdgo.GoString)?.__copy__());
            @:check2r _buf.writeByte((32 : stdgo.GoUInt8));
            @:check2r _buf.writeString(_r.message?.__copy__());
            var _state = (@:check2r (@:checkr _h ?? throw "null pointer dereference")._ch._newHandleState(_buf, true, (" " : stdgo.GoString))?.__copy__() : stdgo._internal.log.slog.Slog_t_handlestate.T_handleState);
            {
                final __f__ = @:check2 _state._free;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2 _state._appendNonBuiltIns(_r?.__copy__());
            {
                final __ret__:stdgo.Error = (@:checkr _h ?? throw "null pointer dereference")._output(_r.pC, (_buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
    static public function enabled( _:stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>, __682:stdgo._internal.context.Context_context.Context, _l:stdgo._internal.log.slog.Slog_level.Level):Bool {
        @:recv var _:stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler> = _;
        return (_l >= (0 : stdgo._internal.log.slog.Slog_level.Level) : Bool);
    }
}
