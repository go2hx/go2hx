package stdgo._internal.log.slog;
function setDefault(_l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>):Void {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L30"
        stdgo._internal.log.slog.Slog__defaultlogger._defaultLogger.store(stdgo.Go.toInterface(stdgo.Go.asInterface(_l)));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L37"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_l.handler()) : stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>)) : stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>), _1 : false };
            }, __10 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                var _capturePC = ((stdgo._internal.log.Log_flags.flags() & (24 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt)) : Bool);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L39"
                stdgo._internal.log.Log_setoutput.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.log.slog.Slog_t_handlerwriter.T_handlerWriter(_l.handler(), (0 : stdgo._internal.log.slog.Slog_level.Level), _capturePC) : stdgo._internal.log.slog.Slog_t_handlerwriter.T_handlerWriter)) : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlerwriter.T_handlerWriter>)));
                //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L40"
                stdgo._internal.log.Log_setflags.setFlags((0 : stdgo.GoInt));
            };
        };
    }
