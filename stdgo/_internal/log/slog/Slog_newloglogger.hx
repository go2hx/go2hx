package stdgo._internal.log.slog;
function newLogLogger(_h:stdgo._internal.log.slog.Slog_handler.Handler, _level:stdgo._internal.log.slog.Slog_level.Level):stdgo.Ref<stdgo._internal.log.Log_logger.Logger> {
        return stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.log.slog.Slog_t_handlerwriter.T_handlerWriter(_h, _level, true) : stdgo._internal.log.slog.Slog_t_handlerwriter.T_handlerWriter)) : stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlerwriter.T_handlerWriter>)), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt));
    }
