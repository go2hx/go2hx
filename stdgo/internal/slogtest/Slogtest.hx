package stdgo.internal.slogtest;
/**
    * Package slogtest contains support functions for testing slog.
**/
class Slogtest {
    /**
        * RemoveTime removes the top-level time attribute.
        * It is intended to be used as a ReplaceAttr function,
        * to make example output deterministic.
    **/
    static public inline function removeTime(_groups:Array<String>, _a:stdgo._internal.log.slog.Slog_attr.Attr):stdgo._internal.log.slog.Slog_attr.Attr {
        final _groups = ([for (i in _groups) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.log.slog.internal.slogtest.Slogtest_removetime.removeTime(_groups, _a);
    }
}
