package stdgo.internal.fuzz;
typedef CoordinateFuzzingOpts = stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingopts.CoordinateFuzzingOpts;
typedef CorpusEntry = stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry;
typedef MalformedCorpusError = stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError;
typedef CoordinateFuzzingOptsPointer = stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingoptspointer.CoordinateFuzzingOptsPointer;
typedef CorpusEntryPointer = stdgo._internal.internal.fuzz.Fuzz_corpusentrypointer.CorpusEntryPointer;
typedef MalformedCorpusErrorPointer = stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserrorpointer.MalformedCorpusErrorPointer;
/**
    * Package fuzz provides common fuzzing functionality for tests built with
    * "go test" and for programs that use fuzzing functionality in the testing
    * package.
**/
class Fuzz {
    /**
        * ResetCoverage sets all of the counters for each edge of the instrumented
        * source code to 0.
    **/
    static public inline function resetCoverage():Void stdgo._internal.internal.fuzz.Fuzz_resetcoverage.resetCoverage();
    /**
        * SnapshotCoverage copies the current counter values into coverageSnapshot,
        * preserving them for later inspection. SnapshotCoverage also rounds each
        * counter down to the nearest power of two. This lets the coordinator store
        * multiple values for each counter by OR'ing them together.
    **/
    static public inline function snapshotCoverage():Void stdgo._internal.internal.fuzz.Fuzz_snapshotcoverage.snapshotCoverage();
    /**
        * CoordinateFuzzing creates several worker processes and communicates with
        * them to test random inputs that could trigger crashes and expose bugs.
        * The worker processes run the same binary in the same directory with the
        * same environment variables as the coordinator process. Workers also run
        * with the same arguments as the coordinator, except with the -test.fuzzworker
        * flag prepended to the argument list.
        * 
        * If a crash occurs, the function will return an error containing information
        * about the crash, which can be reported to the user.
    **/
    static public inline function coordinateFuzzing(_ctx:stdgo._internal.context.Context_context.Context, _opts:CoordinateFuzzingOpts):stdgo.Error return stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzing.coordinateFuzzing(_ctx, _opts);
    /**
        * ReadCorpus reads the corpus from the provided dir. The returned corpus
        * entries are guaranteed to match the given types. Any malformed files will
        * be saved in a MalformedCorpusError and returned, along with the most recent
        * error.
    **/
    static public inline function readCorpus(_dir:stdgo.GoString, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):{ var _0 : stdgo.Slice<stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry>; var _1 : stdgo.Error; } return stdgo._internal.internal.fuzz.Fuzz_readcorpus.readCorpus(_dir, _types);
    /**
        * CheckCorpus verifies that the types in vals match the expected types
        * provided.
    **/
    static public inline function checkCorpus(_vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Error return stdgo._internal.internal.fuzz.Fuzz_checkcorpus.checkCorpus(_vals, _types);
    /**
        * RunFuzzWorker is called in a worker process to communicate with the
        * coordinator process in order to fuzz random inputs. RunFuzzWorker loops
        * until the coordinator tells it to stop.
        * 
        * fn is a wrapper on the fuzz function. It may return an error to indicate
        * a given input "crashed". The coordinator will also record a crasher if
        * the function times out or terminates the process.
        * 
        * RunFuzzWorker returns an error if it could not communicate with the
        * coordinator process.
    **/
    static public inline function runFuzzWorker(_ctx:stdgo._internal.context.Context_context.Context, _fn:stdgo._internal.internal.fuzz.Fuzz_corpusentry.CorpusEntry -> stdgo.Error):stdgo.Error return stdgo._internal.internal.fuzz.Fuzz_runfuzzworker.runFuzzWorker(_ctx, _fn);
}
