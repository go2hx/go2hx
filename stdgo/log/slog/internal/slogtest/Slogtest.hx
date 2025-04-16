package stdgo.log.slog.internal.slogtest;
/**
    * Package slogtest contains support functions for testing slog.
**/
class Slogtest {
    /**
        * RemoveTime removes the top-level time attribute.
        * It is intended to be used as a ReplaceAttr function,
        * to make example output deterministic.
    **/
    static public inline function removeTime(_groups:stdgo.Slice<stdgo.GoString>, _a:stdgo._internal.log.slog.Slog_attr.Attr):stdgo._internal.log.slog.Slog_attr.Attr return stdgo._internal.log.slog.internal.slogtest.Slogtest_removetime.removeTime(_groups, _a);
}
