package stdgo._internal.log.slog;
function _newDefaultHandler(_output:(stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error):stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler> {
        return (stdgo.Go.setRef(({ _ch : (stdgo.Go.setRef(({ _json : false } : stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler)) : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>), _output : _output } : stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler)) : stdgo.Ref<stdgo._internal.log.slog.Slog_t_defaulthandler.T_defaultHandler>);
    }
