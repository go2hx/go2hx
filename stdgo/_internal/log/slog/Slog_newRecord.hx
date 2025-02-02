package stdgo._internal.log.slog;
function newRecord(_t:stdgo._internal.time.Time_Time.Time, _level:stdgo._internal.log.slog.Slog_Level.Level, _msg:stdgo.GoString, _pc:stdgo.GoUIntptr):stdgo._internal.log.slog.Slog_Record.Record {
        return ({ time : _t?.__copy__(), message : _msg?.__copy__(), level : _level, pC : _pc } : stdgo._internal.log.slog.Slog_Record.Record);
    }
