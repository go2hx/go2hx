package stdgo._internal.log.slog;
function newJSONHandler(_w:stdgo._internal.io.Io_writer.Writer, _opts:stdgo.Ref<stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions>):stdgo.Ref<stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler> {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/json_handler.go#L31"
        if (({
            final value = _opts;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _opts = (stdgo.Go.setRef((new stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions() : stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions)) : stdgo.Ref<stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions>);
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/json_handler.go#L34"
        return (stdgo.Go.setRef((new stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler((stdgo.Go.setRef(({ _json : true, _w : _w, _opts : (_opts : stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions)?.__copy__(), _mu : (stdgo.Go.setRef((new stdgo._internal.sync.Sync_mutex.Mutex() : stdgo._internal.sync.Sync_mutex.Mutex)) : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>) } : stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler)) : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>)) : stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler)) : stdgo.Ref<stdgo._internal.log.slog.Slog_jsonhandler.JSONHandler>);
    }
