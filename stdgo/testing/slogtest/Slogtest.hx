package stdgo.testing.slogtest;
/**
    * Package slogtest implements support for testing implementations of log/slog.Handler.
**/
class Slogtest {
    /**
        * TestHandler tests a [slog.Handler].
        * If TestHandler finds any misbehaviors, it returns an error for each,
        * combined into a single error with errors.Join.
        * 
        * TestHandler installs the given Handler in a [slog.Logger] and
        * makes several calls to the Logger's output methods.
        * 
        * The results function is invoked after all such calls.
        * It should return a slice of map[string]any, one for each call to a Logger output method.
        * The keys and values of the map should correspond to the keys and values of the Handler's
        * output. Each group in the output should be represented as its own nested map[string]any.
        * The standard keys slog.TimeKey, slog.LevelKey and slog.MessageKey should be used.
        * 
        * If the Handler outputs JSON, then calling [encoding/json.Unmarshal] with a `map[string]any`
        * will create the right data structure.
        * 
        * If a Handler intentionally drops an attribute that is checked by a test,
        * then the results function should check for its absence and add it to the map it returns.
    **/
    static public inline function testHandler(_h:stdgo._internal.log.slog.Slog_handler.Handler, _results:() -> stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>):stdgo.Error return stdgo._internal.testing.slogtest.Slogtest_testhandler.testHandler(_h, _results);
}
