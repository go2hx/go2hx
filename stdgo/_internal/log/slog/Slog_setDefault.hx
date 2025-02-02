package stdgo._internal.log.slog;
function setDefault(_l:stdgo.Ref<stdgo._internal.log.slog.Slog_Logger.Logger>):Void {
        @:check2 stdgo._internal.log.slog.Slog__defaultLogger._defaultLogger.store(stdgo.Go.toInterface(stdgo.Go.asInterface(_l)));
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _l.handler()) : stdgo.Ref<stdgo._internal.log.slog.Slog_T_defaultHandler.T_defaultHandler>)) : stdgo.Ref<stdgo._internal.log.slog.Slog_T_defaultHandler.T_defaultHandler>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.log.slog.Slog_T_defaultHandler.T_defaultHandler>), _1 : false };
            }, __10 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                var _capturePC = ((stdgo._internal.log.Log_flags.flags() & (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt)) : Bool);
                stdgo._internal.log.Log_setOutput.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.log.slog.Slog_T_handlerWriter.T_handlerWriter(@:check2r _l.handler(), (0 : stdgo._internal.log.slog.Slog_Level.Level), _capturePC) : stdgo._internal.log.slog.Slog_T_handlerWriter.T_handlerWriter)) : stdgo.Ref<stdgo._internal.log.slog.Slog_T_handlerWriter.T_handlerWriter>)));
                stdgo._internal.log.Log_setFlags.setFlags((0 : stdgo.GoInt));
            };
        };
    }
