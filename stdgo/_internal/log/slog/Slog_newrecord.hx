package stdgo._internal.log.slog;
function newRecord(_t:stdgo._internal.time.Time_time.Time, _level:stdgo._internal.log.slog.Slog_level.Level, _msg:stdgo.GoString, _pc:stdgo.GoUIntptr):stdgo._internal.log.slog.Slog_record.Record {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/record.go#L59"
        return ({ time : _t?.__copy__(), message : _msg?.__copy__(), level : _level, pC : _pc } : stdgo._internal.log.slog.Slog_record.Record);
    }
