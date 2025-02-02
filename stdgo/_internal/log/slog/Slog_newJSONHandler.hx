package stdgo._internal.log.slog;
function newJSONHandler(_w:stdgo._internal.io.Io_Writer.Writer, _opts:stdgo.Ref<stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions>):stdgo.Ref<stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler> {
        if ((_opts == null || (_opts : Dynamic).__nil__)) {
            _opts = (stdgo.Go.setRef((new stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions() : stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions)) : stdgo.Ref<stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions>);
        };
        return (stdgo.Go.setRef((new stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler((stdgo.Go.setRef(({ _json : true, _w : _w, _opts : (_opts : stdgo._internal.log.slog.Slog_HandlerOptions.HandlerOptions)?.__copy__(), _mu : (stdgo.Go.setRef((new stdgo._internal.sync.Sync_Mutex.Mutex() : stdgo._internal.sync.Sync_Mutex.Mutex)) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>) } : stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler)) : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>)) : stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler)) : stdgo.Ref<stdgo._internal.log.slog.Slog_JSONHandler.JSONHandler>);
    }
