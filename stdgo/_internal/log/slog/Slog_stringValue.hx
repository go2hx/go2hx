package stdgo._internal.log.slog;
function stringValue(_value:stdgo.GoString):stdgo._internal.log.slog.Slog_Value.Value {
        return ({ _num : (_value.length : stdgo.GoUInt64), _any : stdgo.Go.toInterface(new stdgo._internal.log.slog.Slog_T_stringptr.T_stringptr(() -> (stdgo._internal.unsafe.Unsafe_stringData.stringData(_value?.__copy__()).value : stdgo.GoUInt8), v -> (stdgo._internal.unsafe.Unsafe_stringData.stringData(_value?.__copy__()).value = (v : stdgo.GoUInt8) : stdgo.GoUInt8))) } : stdgo._internal.log.slog.Slog_Value.Value);
    }
