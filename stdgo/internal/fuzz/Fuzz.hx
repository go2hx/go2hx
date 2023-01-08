package stdgo.internal.fuzz;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package fuzz provides common fuzzing functionality for tests built with
	// "go test" and for programs that use fuzzing functionality in the testing
	// package.
**/
private var __go2hxdoc__package:Bool;

private var _coverageEnabled:Bool = false;
private var _coverageSnapshot:Slice<GoUInt8> = (null : Slice<GoUInt8>);

/**
	// encVersion1 will be the first line of a file with version 1 encoding.
**/
private var _encVersion1:GoString = ("" : GoString);

private var _zeroVals:Slice<AnyInterface> = (null : Slice<AnyInterface>);
private var _interesting8:Slice<GoInt8> = (null : Slice<GoInt8>);
private var _interesting16:Slice<GoInt16> = (null : Slice<GoInt16>);
private var _interesting32:Slice<GoInt32> = (null : Slice<GoInt32>);
private var _byteSliceMutators:Slice<T_byteSliceMutator> = (null : Slice<T_byteSliceMutator>);

/**
	// errSharedMemClosed is returned by workerClient methods that cannot access
	// shared memory because it was closed and unmapped by another goroutine. That
	// can happen when worker.cleanup is called in the worker goroutine while a
	// workerClient.fuzz call runs concurrently.
	//
	// This error should not be reported. It indicates the operation was
	// interrupted.
**/
private var _errSharedMemClosed:Error = (null : Error);

/**
	// _counters and _ecounters mark the start and end, respectively, of where
	// the 8-bit coverage counters reside in memory. They're known to cmd/link,
	// which specially assigns their addresses for this purpose.
**/
private var __counters:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...0) (0 : GoUInt8)]);

/**
	// _counters and _ecounters mark the start and end, respectively, of where
	// the 8-bit coverage counters reside in memory. They're known to cmd/link,
	// which specially assigns their addresses for this purpose.
**/
private var __ecounters:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...0) (0 : GoUInt8)]);

private var _debugInfo:Bool = false;
private var _debugInfoOnce:stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
private final _maxUint:GoUInt64 = (0 : GoUInt64);
private final _maxInt:GoInt64 = (0 : GoInt64);

/**
	// PCG stream
**/
private var _globalInc:GoUInt64 = (0 : GoUInt64);

private final _multiplier:GoUInt64 = (0 : GoUInt64);

/**
	// workerFuzzDuration is the amount of time a worker can spend testing random
	// variations of an input given by the coordinator.
**/
private final _workerFuzzDuration:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

/**
	// workerTimeoutDuration is the amount of time a worker can go without
	// responding to the coordinator before being stopped.
**/
private final _workerTimeoutDuration:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

/**
	// workerExitCode is used as an exit code by fuzz worker processes after an internal error.
	// This distinguishes internal errors from uncontrolled panics and other crashes.
	// Keep in sync with internal/fuzz.workerExitCode.
**/
private final _workerExitCode:GoUInt64 = (0 : GoUInt64);

/**
	// 100 MB// workerSharedMemSize is the maximum size of the shared memory file used to
	// communicate with workers. This limits the size of fuzz inputs.
**/
private final _workerSharedMemSize:GoUInt64 = (0 : GoUInt64);

/**
	// chainedMutations is how many mutations are applied before the worker
	// resets the input to it's original state.
	// NOTE: this number was picked without much thought. It is low enough that
	// it seems to create a significant diversity in mutated inputs. We may want
	// to consider looking into this more closely once we have a proper performance
	// testing framework. Another option is to randomly pick the number of chained
	// mutations on each invocation of the workerServer.fuzz method (this appears to
	// be what libFuzzer does, although there seems to be no documentation which
	// explains why this choice was made.)
**/
private final _chainedMutations:GoUInt64 = (0 : GoUInt64);

private typedef T_mutatorRand = StructType & {
	public function _uint32():GoUInt32;
	public function _intn(_0:GoInt):GoInt;
	public function _uint32n(_0:GoUInt32):GoUInt32;
	public function _exp2():GoInt;
	public function _bool():Bool;
	public function _save(_randState:Pointer<GoUInt64>, _randInc:Pointer<GoUInt64>):Void;
	public function _restore(_randState:GoUInt64, _randInc:GoUInt64):Void;
};

/**
	// CoordinateFuzzingOpts is a set of arguments for CoordinateFuzzing.
	// The zero value is valid for each field unless specified otherwise.
**/
@:structInit class CoordinateFuzzingOpts {
	/**
		// Log is a writer for logging progress messages and warnings.
		// If nil, io.Discard will be used instead.
	**/
	public var log:stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);

	/**
		// Timeout is the amount of wall clock time to spend fuzzing after the corpus
		// has loaded. If zero, there will be no time limit.
	**/
	public var timeout:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

	/**
		// Limit is the number of random values to generate and test. If zero,
		// there will be no limit on the number of generated values.
	**/
	public var limit:GoInt64 = 0;

	/**
		// MinimizeTimeout is the amount of wall clock time to spend minimizing
		// after discovering a crasher. If zero, there will be no time limit. If
		// MinimizeTimeout and MinimizeLimit are both zero, then minimization will
		// be disabled.
	**/
	public var minimizeTimeout:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

	/**
		// MinimizeLimit is the maximum number of calls to the fuzz function to be
		// made while minimizing after finding a crash. If zero, there will be no
		// limit. Calls to the fuzz function made when minimizing also count toward
		// Limit. If MinimizeTimeout and MinimizeLimit are both zero, then
		// minimization will be disabled.
	**/
	public var minimizeLimit:GoInt64 = 0;

	/**
		// parallel is the number of worker processes to run in parallel. If zero,
		// CoordinateFuzzing will run GOMAXPROCS workers.
	**/
	public var parallel:GoInt = 0;

	/**
		// Seed is a list of seed values added by the fuzz target with testing.F.Add
		// and in testdata.
	**/
	public var seed:Slice<{
		var parent:GoString;
		var path:GoString;
		var data:Slice<GoUInt8>;
		var values:Slice<AnyInterface>;
		var generation:GoInt;
		var isSeed:Bool;
	}> = (null : Slice<{
		var parent:GoString;
		var path:GoString;
		var data:Slice<GoUInt8>;
		var values:Slice<AnyInterface>;
		var generation:GoInt;
		var isSeed:Bool;
	}>);

	/**
		// Types is the list of types which make up a corpus entry.
		// Types must be set and must match values in Seed.
	**/
	public var types:Slice<stdgo.reflect.Reflect.Type> = (null : Slice<stdgo.reflect.Reflect.Type>);

	/**
		// CorpusDir is a directory where files containing values that crash the
		// code being tested may be written. CorpusDir must be set.
	**/
	public var corpusDir:GoString = "";

	/**
		// CacheDir is a directory containing additional "interesting" values.
		// The fuzzer may derive new values from these, and may write new values here.
	**/
	public var cacheDir:GoString = "";

	public function new(?log:stdgo.io.Io.Writer, ?timeout:stdgo.time.Time.Duration, ?limit:GoInt64, ?minimizeTimeout:stdgo.time.Time.Duration,
			?minimizeLimit:GoInt64, ?parallel:GoInt, ?seed:Slice<{
			var parent:GoString;
			var path:GoString;
			var data:Slice<GoUInt8>;
			var values:Slice<AnyInterface>;
			var generation:GoInt;
			var isSeed:Bool;
		}>, ?types:Slice<stdgo.reflect.Reflect.Type>, ?corpusDir:GoString,
			?cacheDir:GoString) {
		if (log != null)
			this.log = log;
		if (timeout != null)
			this.timeout = timeout;
		if (limit != null)
			this.limit = limit;
		if (minimizeTimeout != null)
			this.minimizeTimeout = minimizeTimeout;
		if (minimizeLimit != null)
			this.minimizeLimit = minimizeLimit;
		if (parallel != null)
			this.parallel = parallel;
		if (seed != null)
			this.seed = seed;
		if (types != null)
			this.types = types;
		if (corpusDir != null)
			this.corpusDir = corpusDir;
		if (cacheDir != null)
			this.cacheDir = cacheDir;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new CoordinateFuzzingOpts(log, timeout, limit, minimizeTimeout, minimizeLimit, parallel, seed, types, corpusDir, cacheDir);
	}
}

/**
	// crashError wraps a crasher written to the seed corpus. It saves the name
	// of the file where the input causing the crasher was saved. The testing
	// framework uses this to report a command to re-run that specific input.
**/
@:structInit @:using(internal.fuzz.Fuzz.T_crashError_static_extension) private class T_crashError {
	public var _path:GoString = "";
	public var _err:Error = (null : Error);

	public function new(?_path:GoString, ?_err:Error) {
		if (_path != null)
			this._path = _path;
		if (_err != null)
			this._err = _err;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_crashError(_path, _err);
	}
}

@:structInit private class T_corpus {
	public var _entries:Slice<{
		var parent:GoString;
		var path:GoString;
		var data:Slice<GoUInt8>;
		var values:Slice<AnyInterface>;
		var generation:GoInt;
		var isSeed:Bool;
	}> = (null : Slice<{
		var parent:GoString;
		var path:GoString;
		var data:Slice<GoUInt8>;
		var values:Slice<AnyInterface>;
		var generation:GoInt;
		var isSeed:Bool;
	}>);
	public var _hashes:GoMap<GoArray<GoUInt8>, Bool> = (null : GoMap<GoArray<GoUInt8>, Bool>);

	public function new(?_entries:Slice<{
		var parent:GoString;
		var path:GoString;
		var data:Slice<GoUInt8>;
		var values:Slice<AnyInterface>;
		var generation:GoInt;
		var isSeed:Bool;
	}>, ?_hashes:GoMap<GoArray<GoUInt8>, Bool>) {
		if (_entries != null)
			this._entries = _entries;
		if (_hashes != null)
			this._hashes = _hashes;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_corpus(_entries, _hashes);
	}
}

/**
	// CorpusEntry represents an individual input for fuzzing.
	//
	// We must use an equivalent type in the testing and testing/internal/testdeps
	// packages, but testing can't import this package directly, and we don't want
	// to export this type from testing. Instead, we use the same struct type and
	// use a type alias (not a defined type) for convenience.
**/
@:follow typedef CorpusEntry = {
	var parent:GoString;

	/**
		// Path is the path of the corpus file, if the entry was loaded from disk.
		// For other entries, including seed values provided by f.Add, Path is the
		// name of the test, e.g. seed#0 or its hash.
	**/
	var path:GoString;

	/**
		// Data is the raw input data. Data should only be populated for seed
		// values. For on-disk corpus files, Data will be nil, as it will be loaded
		// from disk using Path.
	**/
	var data:Slice<GoUInt8>;

	/**
		// Values is the unmarshaled values from a corpus file.
	**/
	var values:Slice<AnyInterface>;

	var generation:GoInt;

	/**
		// IsSeed indicates whether this entry is part of the seed corpus.
	**/
	var isSeed:Bool;
};

@:structInit private class T_fuzzInput {
	/**
		// entry is the value to test initially. The worker will randomly mutate
		// values from this starting point.
	**/
	public var _entry:CorpusEntry = ({
		parent: ("" : GoString),
		path: ("" : GoString),
		data: (null : Slice<GoUInt8>),
		values: (null : Slice<AnyInterface>),
		generation: (0 : GoInt),
		isSeed: false
	} : CorpusEntry);

	/**
		// timeout is the time to spend fuzzing variations of this input,
		// not including starting or cleaning up.
	**/
	public var _timeout:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

	/**
		// limit is the maximum number of calls to the fuzz function the worker may
		// make. The worker may make fewer calls, for example, if it finds an
		// error early. If limit is zero, there is no limit on calls to the
		// fuzz function.
	**/
	public var _limit:GoInt64 = 0;

	/**
		// warmup indicates whether this is a warmup input before fuzzing begins. If
		// true, the input should not be fuzzed.
	**/
	public var _warmup:Bool = false;

	/**
		// coverageData reflects the coordinator's current coverageMask.
	**/
	public var _coverageData:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	public function new(?_entry:CorpusEntry, ?_timeout:stdgo.time.Time.Duration, ?_limit:GoInt64, ?_warmup:Bool, ?_coverageData:Slice<GoUInt8>) {
		if (_entry != null)
			this._entry = _entry;
		if (_timeout != null)
			this._timeout = _timeout;
		if (_limit != null)
			this._limit = _limit;
		if (_warmup != null)
			this._warmup = _warmup;
		if (_coverageData != null)
			this._coverageData = _coverageData;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_fuzzInput(_entry, _timeout, _limit, _warmup, _coverageData);
	}
}

@:structInit private class T_fuzzResult {
	/**
		// entry is an interesting value or a crasher.
	**/
	public var _entry:CorpusEntry = ({
		parent: ("" : GoString),
		path: ("" : GoString),
		data: (null : Slice<GoUInt8>),
		values: (null : Slice<AnyInterface>),
		generation: (0 : GoInt),
		isSeed: false
	} : CorpusEntry);

	/**
		// crasherMsg is an error message from a crash. It's "" if no crash was found.
	**/
	public var _crasherMsg:GoString = "";

	/**
		// canMinimize is true if the worker should attempt to minimize this result.
		// It may be false because an attempt has already been made.
	**/
	public var _canMinimize:Bool = false;

	/**
		// coverageData is set if the worker found new coverage.
	**/
	public var _coverageData:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	/**
		// limit is the number of values the coordinator asked the worker
		// to test. 0 if there was no limit.
	**/
	public var _limit:GoInt64 = 0;

	/**
		// count is the number of values the worker actually tested.
	**/
	public var _count:GoInt64 = 0;

	/**
		// totalDuration is the time the worker spent testing inputs.
	**/
	public var _totalDuration:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

	/**
		// entryDuration is the time the worker spent execution an interesting result
	**/
	public var _entryDuration:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

	public function new(?_entry:CorpusEntry, ?_crasherMsg:GoString, ?_canMinimize:Bool, ?_coverageData:Slice<GoUInt8>, ?_limit:GoInt64, ?_count:GoInt64,
			?_totalDuration:stdgo.time.Time.Duration, ?_entryDuration:stdgo.time.Time.Duration) {
		if (_entry != null)
			this._entry = _entry;
		if (_crasherMsg != null)
			this._crasherMsg = _crasherMsg;
		if (_canMinimize != null)
			this._canMinimize = _canMinimize;
		if (_coverageData != null)
			this._coverageData = _coverageData;
		if (_limit != null)
			this._limit = _limit;
		if (_count != null)
			this._count = _count;
		if (_totalDuration != null)
			this._totalDuration = _totalDuration;
		if (_entryDuration != null)
			this._entryDuration = _entryDuration;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_fuzzResult(_entry, _crasherMsg, _canMinimize, _coverageData, _limit, _count, _totalDuration, _entryDuration);
	}
}

@:structInit private class T_fuzzMinimizeInput {
	/**
		// entry is an interesting value or crasher to minimize.
	**/
	public var _entry:CorpusEntry = ({
		parent: ("" : GoString),
		path: ("" : GoString),
		data: (null : Slice<GoUInt8>),
		values: (null : Slice<AnyInterface>),
		generation: (0 : GoInt),
		isSeed: false
	} : CorpusEntry);

	/**
		// crasherMsg is an error message from a crash. It's "" if no crash was found.
		// If set, the worker will attempt to find a smaller input that also produces
		// an error, though not necessarily the same error.
	**/
	public var _crasherMsg:GoString = "";

	/**
		// limit is the maximum number of calls to the fuzz function the worker may
		// make. The worker may make fewer calls, for example, if it can't reproduce
		// an error. If limit is zero, there is no limit on calls to the fuzz function.
	**/
	public var _limit:GoInt64 = 0;

	/**
		// timeout is the time to spend minimizing this input.
		// A zero timeout means no limit.
	**/
	public var _timeout:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

	/**
		// keepCoverage is a set of coverage bits that entry found that were not in
		// the coordinator's combined set. When minimizing, the worker should find an
		// input that preserves at least one of these bits. keepCoverage is nil for
		// crashing inputs.
	**/
	public var _keepCoverage:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	public function new(?_entry:CorpusEntry, ?_crasherMsg:GoString, ?_limit:GoInt64, ?_timeout:stdgo.time.Time.Duration, ?_keepCoverage:Slice<GoUInt8>) {
		if (_entry != null)
			this._entry = _entry;
		if (_crasherMsg != null)
			this._crasherMsg = _crasherMsg;
		if (_limit != null)
			this._limit = _limit;
		if (_timeout != null)
			this._timeout = _timeout;
		if (_keepCoverage != null)
			this._keepCoverage = _keepCoverage;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_fuzzMinimizeInput(_entry, _crasherMsg, _limit, _timeout, _keepCoverage);
	}
}

/**
	// coordinator holds channels that workers can use to communicate with
	// the coordinator.
**/
@:structInit @:using(internal.fuzz.Fuzz.T_coordinator_static_extension) private class T_coordinator {
	public var _opts:CoordinateFuzzingOpts = ({} : CoordinateFuzzingOpts);

	/**
		// startTime is the time we started the workers after loading the corpus.
		// Used for logging.
	**/
	public var _startTime:stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);

	/**
		// inputC is sent values to fuzz by the coordinator. Any worker may receive
		// values from this channel. Workers send results to resultC.
	**/
	public var _inputC:Chan<T_fuzzInput> = (null : Chan<T_fuzzInput>);

	/**
		// minimizeC is sent values to minimize by the coordinator. Any worker may
		// receive values from this channel. Workers send results to resultC.
	**/
	public var _minimizeC:Chan<T_fuzzMinimizeInput> = (null : Chan<T_fuzzMinimizeInput>);

	/**
		// resultC is sent results of fuzzing by workers. The coordinator
		// receives these. Multiple types of messages are allowed.
	**/
	public var _resultC:Chan<T_fuzzResult> = (null : Chan<T_fuzzResult>);

	/**
		// count is the number of values fuzzed so far.
	**/
	public var _count:GoInt64 = 0;

	/**
		// countLastLog is the number of values fuzzed when the output was last
		// logged.
	**/
	public var _countLastLog:GoInt64 = 0;

	/**
		// timeLastLog is the time at which the output was last logged.
	**/
	public var _timeLastLog:stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);

	/**
		// interestingCount is the number of unique interesting values which have
		// been found this execution.
	**/
	public var _interestingCount:GoInt = 0;

	/**
		// warmupInputCount is the count of all entries in the corpus which will
		// need to be received from workers to run once during warmup, but not fuzz.
		// This could be for coverage data, or only for the purposes of verifying
		// that the seed corpus doesn't have any crashers. See warmupRun.
	**/
	public var _warmupInputCount:GoInt = 0;

	/**
		// warmupInputLeft is the number of entries in the corpus which still need
		// to be received from workers to run once during warmup, but not fuzz.
		// See warmupInputLeft.
	**/
	public var _warmupInputLeft:GoInt = 0;

	/**
		// duration is the time spent fuzzing inside workers, not counting time
		// starting up or tearing down.
	**/
	public var _duration:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

	/**
		// countWaiting is the number of fuzzing executions the coordinator is
		// waiting on workers to complete.
	**/
	public var _countWaiting:GoInt64 = 0;

	/**
		// corpus is a set of interesting values, including the seed corpus and
		// generated values that workers reported as interesting.
	**/
	public var _corpus:T_corpus = ({} : T_corpus);

	/**
		// minimizationAllowed is true if one or more of the types of fuzz
		// function's parameters can be minimized.
	**/
	public var _minimizationAllowed:Bool = false;

	/**
		// inputQueue is a queue of inputs that workers should try fuzzing. This is
		// initially populated from the seed corpus and cached inputs. More inputs
		// may be added as new coverage is discovered.
	**/
	public var _inputQueue:T_queue = ({} : T_queue);

	/**
		// minimizeQueue is a queue of inputs that caused errors or exposed new
		// coverage. Workers should attempt to find smaller inputs that do the
		// same thing.
	**/
	public var _minimizeQueue:T_queue = ({} : T_queue);

	/**
		// crashMinimizing is the crash that is currently being minimized.
	**/
	public var _crashMinimizing:Ref<T_fuzzResult> = (null : Ref<T_fuzzResult>);

	/**
		// coverageMask aggregates coverage that was found for all inputs in the
		// corpus. Each byte represents a single basic execution block. Each set bit
		// within the byte indicates that an input has triggered that block at least
		// 1 << n times, where n is the position of the bit in the byte. For example, a
		// value of 12 indicates that separate inputs have triggered this block
		// between 4-7 times and 8-15 times.
	**/
	public var _coverageMask:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	public function new(?_opts:CoordinateFuzzingOpts, ?_startTime:stdgo.time.Time.Time, ?_inputC:Chan<T_fuzzInput>, ?_minimizeC:Chan<T_fuzzMinimizeInput>,
			?_resultC:Chan<T_fuzzResult>, ?_count:GoInt64, ?_countLastLog:GoInt64, ?_timeLastLog:stdgo.time.Time.Time, ?_interestingCount:GoInt,
			?_warmupInputCount:GoInt, ?_warmupInputLeft:GoInt, ?_duration:stdgo.time.Time.Duration, ?_countWaiting:GoInt64, ?_corpus:T_corpus,
			?_minimizationAllowed:Bool, ?_inputQueue:T_queue, ?_minimizeQueue:T_queue, ?_crashMinimizing:Ref<T_fuzzResult>, ?_coverageMask:Slice<GoUInt8>) {
		if (_opts != null)
			this._opts = _opts;
		if (_startTime != null)
			this._startTime = _startTime;
		if (_inputC != null)
			this._inputC = _inputC;
		if (_minimizeC != null)
			this._minimizeC = _minimizeC;
		if (_resultC != null)
			this._resultC = _resultC;
		if (_count != null)
			this._count = _count;
		if (_countLastLog != null)
			this._countLastLog = _countLastLog;
		if (_timeLastLog != null)
			this._timeLastLog = _timeLastLog;
		if (_interestingCount != null)
			this._interestingCount = _interestingCount;
		if (_warmupInputCount != null)
			this._warmupInputCount = _warmupInputCount;
		if (_warmupInputLeft != null)
			this._warmupInputLeft = _warmupInputLeft;
		if (_duration != null)
			this._duration = _duration;
		if (_countWaiting != null)
			this._countWaiting = _countWaiting;
		if (_corpus != null)
			this._corpus = _corpus;
		if (_minimizationAllowed != null)
			this._minimizationAllowed = _minimizationAllowed;
		if (_inputQueue != null)
			this._inputQueue = _inputQueue;
		if (_minimizeQueue != null)
			this._minimizeQueue = _minimizeQueue;
		if (_crashMinimizing != null)
			this._crashMinimizing = _crashMinimizing;
		if (_coverageMask != null)
			this._coverageMask = _coverageMask;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_coordinator(_opts, _startTime, _inputC, _minimizeC, _resultC, _count, _countLastLog, _timeLastLog, _interestingCount, _warmupInputCount,
			_warmupInputLeft, _duration, _countWaiting, _corpus, _minimizationAllowed, _inputQueue, _minimizeQueue, _crashMinimizing, _coverageMask);
	}
}

/**
	// MalformedCorpusError is an error found while reading the corpus from the
	// filesystem. All of the errors are stored in the errs list. The testing
	// framework uses this to report malformed files in testdata.
**/
@:structInit @:using(internal.fuzz.Fuzz.MalformedCorpusError_static_extension) class MalformedCorpusError {
	public var _errs:Slice<Error> = (null : Slice<Error>);

	public function new(?_errs:Slice<Error>) {
		if (_errs != null)
			this._errs = _errs;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new MalformedCorpusError(_errs);
	}
}

/**
	// sharedMem manages access to a region of virtual memory mapped from a file,
	// shared between multiple processes. The region includes space for a header and
	// a value of variable length.
	//
	// When fuzzing, the coordinator creates a sharedMem from a temporary file for
	// each worker. This buffer is used to pass values to fuzz between processes.
	// Care must be taken to manage access to shared memory across processes;
	// sharedMem provides no synchronization on its own. See workerComm for an
	// explanation.
**/
@:structInit @:using(internal.fuzz.Fuzz.T_sharedMem_static_extension) private class T_sharedMem {
	/**
		// f is the file mapped into memory.
	**/
	public var _f:Ref<stdgo.os.Os.File> = (null : Ref<stdgo.os.Os.File>);

	/**
		// region is the mapped region of virtual memory for f. The content of f may
		// be read or written through this slice.
	**/
	public var _region:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	/**
		// removeOnClose is true if the file should be deleted by Close.
	**/
	public var _removeOnClose:Bool = false;

	/**
		// sys contains OS-specific information.
	**/
	public var _sys:T_sharedMemSys = ({} : T_sharedMemSys);

	public function new(?_f:Ref<stdgo.os.Os.File>, ?_region:Slice<GoUInt8>, ?_removeOnClose:Bool, ?_sys:T_sharedMemSys) {
		if (_f != null)
			this._f = _f;
		if (_region != null)
			this._region = _region;
		if (_removeOnClose != null)
			this._removeOnClose = _removeOnClose;
		if (_sys != null)
			this._sys = _sys;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_sharedMem(_f, _region, _removeOnClose, _sys);
	}
}

/**
	// sharedMemHeader stores metadata in shared memory.
**/
@:structInit private class T_sharedMemHeader {
	/**
		// count is the number of times the worker has called the fuzz function.
		// May be reset by coordinator.
	**/
	public var _count:GoInt64 = 0;

	/**
		// valueLen is the number of bytes in region which should be read.
	**/
	public var _valueLen:GoInt = 0;

	/**
		// randState and randInc hold the state of a pseudo-random number generator.
	**/
	public var _randState:GoUInt64 = 0;

	/**
		// rawInMem is true if the region holds raw bytes, which occurs during
		// minimization. If true after the worker fails during minimization, this
		// indicates that an unrecoverable error occurred, and the region can be
		// used to retrieve the raw bytes that caused the error.
	**/
	public var _randInc:GoUInt64 = 0;

	public var _rawInMem:Bool = false;

	public function new(?_count:GoInt64, ?_valueLen:GoInt, ?_randState:GoUInt64, ?_randInc:GoUInt64, ?_rawInMem:Bool) {
		if (_count != null)
			this._count = _count;
		if (_valueLen != null)
			this._valueLen = _valueLen;
		if (_randState != null)
			this._randState = _randState;
		if (_randInc != null)
			this._randInc = _randInc;
		if (_rawInMem != null)
			this._rawInMem = _rawInMem;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_sharedMemHeader(_count, _valueLen, _randState, _randInc, _rawInMem);
	}
}

@:structInit @:using(internal.fuzz.Fuzz.T_mutator_static_extension) private class T_mutator {
	public var _r:T_mutatorRand = (null : T_mutatorRand);

	/**
		// scratch slice to avoid additional allocations
	**/
	public var _scratch:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	public function new(?_r:T_mutatorRand, ?_scratch:Slice<GoUInt8>) {
		if (_r != null)
			this._r = _r;
		if (_scratch != null)
			this._scratch = _scratch;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_mutator(_r, _scratch);
	}
}

/**
	// pcgRand is a PRNG. It should not be copied or shared. No Rand methods are
	// concurrency safe.
**/
@:structInit @:using(internal.fuzz.Fuzz.T_pcgRand_static_extension) private class T_pcgRand {
	/**
		// help avoid mistakes: ask vet to ensure that we don't make a copy
	**/
	public var _noCopy:T_noCopy = ({} : T_noCopy);

	public var _state:GoUInt64 = 0;
	public var _inc:GoUInt64 = 0;

	public function new(?_noCopy:T_noCopy, ?_state:GoUInt64, ?_inc:GoUInt64) {
		if (_noCopy != null)
			this._noCopy = _noCopy;
		if (_state != null)
			this._state = _state;
		if (_inc != null)
			this._inc = _inc;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pcgRand(_noCopy, _state, _inc);
	}
}

/**
	// noCopy may be embedded into structs which must not be copied
	// after the first use.
	//
	// See https://golang.org/issues/8005#issuecomment-190753527
	// for details.
**/
@:structInit @:using(internal.fuzz.Fuzz.T_noCopy_static_extension) private class T_noCopy {
	public function new() {}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_noCopy();
	}
}

/**
	// queue holds a growable sequence of inputs for fuzzing and minimization.
	//
	// For now, this is a simple ring buffer
	// (https://en.wikipedia.org/wiki/Circular_buffer).
	//
	// TODO(golang.org/issue/46224): use a priotization algorithm based on input
	// size, previous duration, coverage, and any other metrics that seem useful.
**/
@:structInit @:using(internal.fuzz.Fuzz.T_queue_static_extension) private class T_queue {
	/**
		// elems holds a ring buffer.
		// The queue is empty when begin = end.
		// The queue is full (until grow is called) when end = begin + N - 1 (mod N)
		// where N = cap(elems).
	**/
	public var _elems:Slice<AnyInterface> = (null : Slice<AnyInterface>);

	public var _head:GoInt = 0;
	public var _len:GoInt = 0;

	public function new(?_elems:Slice<AnyInterface>, ?_head:GoInt, ?_len:GoInt) {
		if (_elems != null)
			this._elems = _elems;
		if (_head != null)
			this._head = _head;
		if (_len != null)
			this._len = _len;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_queue(_elems, _head, _len);
	}
}

@:structInit private class T_sharedMemSys {
	public function new() {}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_sharedMemSys();
	}
}

/**
	// worker manages a worker process running a test binary. The worker object
	// exists only in the coordinator (the process started by 'go test -fuzz').
	// workerClient is used by the coordinator to send RPCs to the worker process,
	// which handles them with workerServer.
**/
@:structInit @:using(internal.fuzz.Fuzz.T_worker_static_extension) private class T_worker {
	/**
		// working directory, same as package directory
	**/
	public var _dir:GoString = "";

	/**
		// path to test executable
	**/
	public var _binPath:GoString = "";

	/**
		// arguments for test executable
	**/
	public var _args:Slice<GoString> = (null : Slice<GoString>);

	/**
		// environment for test executable
	**/
	public var _env:Slice<GoString> = (null : Slice<GoString>);

	public var _coordinator:Ref<T_coordinator> = (null : Ref<T_coordinator>);

	/**
		// mutex guarding shared memory with worker; persists across processes.
	**/
	public var _memMu:Chan<Ref<T_sharedMem>> = (null : Chan<Ref<T_sharedMem>>);

	/**
		// current worker process
	**/
	public var _cmd:Ref<stdgo.os.exec.Exec.Cmd> = (null : Ref<stdgo.os.exec.Exec.Cmd>);

	/**
		// used to communicate with worker process
	**/
	public var _client:Ref<T_workerClient> = (null : Ref<T_workerClient>);

	/**
		// last error returned by wait, set before termC is closed.
	**/
	public var _waitErr:Error = (null : Error);

	/**
		// true after stop interrupts a running worker.
	**/
	public var _interrupted:Bool = false;

	/**
		// closed by wait when worker process terminates
	**/
	public var _termC:Chan<T_noCopy> = (null : Chan<T_noCopy>);

	public function new(?_dir:GoString, ?_binPath:GoString, ?_args:Slice<GoString>, ?_env:Slice<GoString>, ?_coordinator:Ref<T_coordinator>,
			?_memMu:Chan<Ref<T_sharedMem>>, ?_cmd:Ref<stdgo.os.exec.Exec.Cmd>, ?_client:Ref<T_workerClient>, ?_waitErr:Error, ?_interrupted:Bool,
			?_termC:Chan<T_noCopy>) {
		if (_dir != null)
			this._dir = _dir;
		if (_binPath != null)
			this._binPath = _binPath;
		if (_args != null)
			this._args = _args;
		if (_env != null)
			this._env = _env;
		if (_coordinator != null)
			this._coordinator = _coordinator;
		if (_memMu != null)
			this._memMu = _memMu;
		if (_cmd != null)
			this._cmd = _cmd;
		if (_client != null)
			this._client = _client;
		if (_waitErr != null)
			this._waitErr = _waitErr;
		if (_interrupted != null)
			this._interrupted = _interrupted;
		if (_termC != null)
			this._termC = _termC;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_worker(_dir, _binPath, _args, _env, _coordinator, _memMu, _cmd, _client, _waitErr, _interrupted, _termC);
	}
}

/**
	// call is serialized and sent from the coordinator on fuzz_in. It acts as
	// a minimalist RPC mechanism. Exactly one of its fields must be set to indicate
	// which method to call.
**/
@:structInit private class T_call {
	public var ping:Ref<T_pingArgs> = (null : Ref<T_pingArgs>);
	public var fuzz:Ref<T_fuzzArgs> = (null : Ref<T_fuzzArgs>);
	public var minimize:Ref<T_minimizeArgs> = (null : Ref<T_minimizeArgs>);

	public function new(?ping:Ref<T_pingArgs>, ?fuzz:Ref<T_fuzzArgs>, ?minimize:Ref<T_minimizeArgs>) {
		if (ping != null)
			this.ping = ping;
		if (fuzz != null)
			this.fuzz = fuzz;
		if (minimize != null)
			this.minimize = minimize;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_call(ping, fuzz, minimize);
	}
}

/**
	// minimizeArgs contains arguments to workerServer.minimize. The value to
	// minimize is already in shared memory.
**/
@:structInit private class T_minimizeArgs {
	/**
		// Timeout is the time to spend minimizing. This may include time to start up,
		// especially if the input causes the worker process to terminated, requiring
		// repeated restarts.
	**/
	public var timeout:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

	/**
		// Limit is the maximum number of values to test, without spending more time
		// than Duration. 0 indicates no limit.
	**/
	public var limit:GoInt64 = 0;

	/**
		// KeepCoverage is a set of coverage counters the worker should attempt to
		// keep in minimized values. When provided, the worker will reject inputs that
		// don't cause at least one of these bits to be set.
	**/
	public var keepCoverage:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	/**
		// Index is the index of the fuzz target parameter to be minimized.
	**/
	public var index:GoInt = 0;

	public function new(?timeout:stdgo.time.Time.Duration, ?limit:GoInt64, ?keepCoverage:Slice<GoUInt8>, ?index:GoInt) {
		if (timeout != null)
			this.timeout = timeout;
		if (limit != null)
			this.limit = limit;
		if (keepCoverage != null)
			this.keepCoverage = keepCoverage;
		if (index != null)
			this.index = index;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_minimizeArgs(timeout, limit, keepCoverage, index);
	}
}

/**
	// minimizeResponse contains results from workerServer.minimize.
**/
@:structInit private class T_minimizeResponse {
	/**
		// WroteToMem is true if the worker found a smaller input and wrote it to
		// shared memory. If minimizeArgs.KeepCoverage was set, the minimized input
		// preserved at least one coverage bit and did not cause an error.
		// Otherwise, the minimized input caused some error, recorded in Err.
	**/
	public var wroteToMem:Bool = false;

	/**
		// Err is the error string caused by the value in shared memory, if any.
	**/
	public var err:GoString = "";

	/**
		// CoverageData is the set of coverage bits activated by the minimized value
		// in shared memory. When set, it contains at least one bit from KeepCoverage.
		// CoverageData will be nil if Err is set or if minimization failed.
	**/
	public var coverageData:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	/**
		// Duration is the time spent minimizing, not including starting or cleaning up.
	**/
	public var duration:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

	/**
		// Count is the number of values tested.
	**/
	public var count:GoInt64 = 0;

	public function new(?wroteToMem:Bool, ?err:GoString, ?coverageData:Slice<GoUInt8>, ?duration:stdgo.time.Time.Duration, ?count:GoInt64) {
		if (wroteToMem != null)
			this.wroteToMem = wroteToMem;
		if (err != null)
			this.err = err;
		if (coverageData != null)
			this.coverageData = coverageData;
		if (duration != null)
			this.duration = duration;
		if (count != null)
			this.count = count;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_minimizeResponse(wroteToMem, err, coverageData, duration, count);
	}
}

/**
	// fuzzArgs contains arguments to workerServer.fuzz. The value to fuzz is
	// passed in shared memory.
**/
@:structInit private class T_fuzzArgs {
	/**
		// Timeout is the time to spend fuzzing, not including starting or
		// cleaning up.
	**/
	public var timeout:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

	/**
		// Limit is the maximum number of values to test, without spending more time
		// than Duration. 0 indicates no limit.
	**/
	public var limit:GoInt64 = 0;

	/**
		// Warmup indicates whether this is part of a warmup run, meaning that
		// fuzzing should not occur. If coverageEnabled is true, then coverage data
		// should be reported.
	**/
	public var warmup:Bool = false;

	/**
		// CoverageData is the coverage data. If set, the worker should update its
		// local coverage data prior to fuzzing.
	**/
	public var coverageData:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	public function new(?timeout:stdgo.time.Time.Duration, ?limit:GoInt64, ?warmup:Bool, ?coverageData:Slice<GoUInt8>) {
		if (timeout != null)
			this.timeout = timeout;
		if (limit != null)
			this.limit = limit;
		if (warmup != null)
			this.warmup = warmup;
		if (coverageData != null)
			this.coverageData = coverageData;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_fuzzArgs(timeout, limit, warmup, coverageData);
	}
}

/**
	// fuzzResponse contains results from workerServer.fuzz.
**/
@:structInit private class T_fuzzResponse {
	/**
		// Duration is the time spent fuzzing, not including starting or cleaning up.
	**/
	public var totalDuration:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

	public var interestingDuration:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);

	/**
		// Count is the number of values tested.
	**/
	public var count:GoInt64 = 0;

	/**
		// CoverageData is set if the value in shared memory expands coverage
		// and therefore may be interesting to the coordinator.
	**/
	public var coverageData:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	/**
		// Err is the error string caused by the value in shared memory, which is
		// non-empty if the value in shared memory caused a crash.
	**/
	public var err:GoString = "";

	/**
		// InternalErr is the error string caused by an internal error in the
		// worker. This shouldn't be considered a crasher.
	**/
	public var internalErr:GoString = "";

	public function new(?totalDuration:stdgo.time.Time.Duration, ?interestingDuration:stdgo.time.Time.Duration, ?count:GoInt64, ?coverageData:Slice<GoUInt8>,
			?err:GoString, ?internalErr:GoString) {
		if (totalDuration != null)
			this.totalDuration = totalDuration;
		if (interestingDuration != null)
			this.interestingDuration = interestingDuration;
		if (count != null)
			this.count = count;
		if (coverageData != null)
			this.coverageData = coverageData;
		if (err != null)
			this.err = err;
		if (internalErr != null)
			this.internalErr = internalErr;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_fuzzResponse(totalDuration, interestingDuration, count, coverageData, err, internalErr);
	}
}

/**
	// pingArgs contains arguments to workerServer.ping.
**/
@:structInit private class T_pingArgs {
	public function new() {}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pingArgs();
	}
}

/**
	// pingResponse contains results from workerServer.ping.
**/
@:structInit private class T_pingResponse {
	public function new() {}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_pingResponse();
	}
}

/**
	// workerComm holds pipes and shared memory used for communication
	// between the coordinator process (client) and a worker process (server).
	// These values are unique to each worker; they are shared only with the
	// coordinator, not with other workers.
	//
	// Access to shared memory is synchronized implicitly over the RPC protocol
	// implemented in workerServer and workerClient. During a call, the client
	// (worker) has exclusive access to shared memory; at other times, the server
	// (coordinator) has exclusive access.
**/
@:structInit private class T_workerComm {
	public var _fuzzIn:Ref<stdgo.os.Os.File> = (null : Ref<stdgo.os.Os.File>);

	/**
		// mutex guarding shared memory
	**/
	public var _fuzzOut:Ref<stdgo.os.Os.File> = (null : Ref<stdgo.os.Os.File>);

	public var _memMu:Chan<Ref<T_sharedMem>> = (null : Chan<Ref<T_sharedMem>>);

	public function new(?_fuzzIn:Ref<stdgo.os.Os.File>, ?_fuzzOut:Ref<stdgo.os.Os.File>, ?_memMu:Chan<Ref<T_sharedMem>>) {
		if (_fuzzIn != null)
			this._fuzzIn = _fuzzIn;
		if (_fuzzOut != null)
			this._fuzzOut = _fuzzOut;
		if (_memMu != null)
			this._memMu = _memMu;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_workerComm(_fuzzIn, _fuzzOut, _memMu);
	}
}

/**
	// workerServer is a minimalist RPC server, run by fuzz worker processes.
	// It allows the coordinator process (using workerClient) to call methods in a
	// worker process. This system allows the coordinator to run multiple worker
	// processes in parallel and to collect inputs that caused crashes from shared
	// memory after a worker process terminates unexpectedly.
**/
@:structInit @:using(internal.fuzz.Fuzz.T_workerServer_static_extension) private class T_workerServer {
	@:embedded
	public var _workerComm:T_workerComm = ({} : T_workerComm);
	public var _m:Ref<T_mutator> = (null : Ref<T_mutator>);

	/**
		// coverageMask is the local coverage data for the worker. It is
		// periodically updated to reflect the data in the coordinator when new
		// coverage is found.
	**/
	public var _coverageMask:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	/**
		// fuzzFn runs the worker's fuzz target on the given input and returns an
		// error if it finds a crasher (the process may also exit or crash), and the
		// time it took to run the input. It sets a deadline of 10 seconds, at which
		// point it will panic with the assumption that the process is hanging or
		// deadlocked.
	**/
	public var _fuzzFn:CorpusEntry -> {
		var _0:stdgo.time.Time.Duration;
		var _1:Error;
	} = null;

	public function new(?_workerComm:T_workerComm, ?_m:Ref<T_mutator>, ?_coverageMask:Slice<GoUInt8>, ?_fuzzFn:CorpusEntry -> {
		var _0:stdgo.time.Time.Duration;
		var _1:Error;
	}) {
		if (_workerComm != null)
			this._workerComm = _workerComm;
		if (_m != null)
			this._m = _m;
		if (_coverageMask != null)
			this._coverageMask = _coverageMask;
		if (_fuzzFn != null)
			this._fuzzFn = _fuzzFn;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_workerServer(_workerComm, _m, _coverageMask, _fuzzFn);
	}
}

/**
	// workerClient is a minimalist RPC client. The coordinator process uses a
	// workerClient to call methods in each worker process (handled by
	// workerServer).
**/
@:structInit @:using(internal.fuzz.Fuzz.T_workerClient_static_extension) private class T_workerClient {
	@:embedded
	public var _workerComm:T_workerComm = ({} : T_workerComm);
	public var _m:Ref<T_mutator> = (null : Ref<T_mutator>);

	/**
		// mu is the mutex protecting the workerComm.fuzzIn pipe. This must be
		// locked before making calls to the workerServer. It prevents
		// workerClient.Close from closing fuzzIn while workerClient methods are
		// writing to it concurrently, and prevents multiple callers from writing to
		// fuzzIn concurrently.
	**/
	public var _mu:stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);

	public function new(?_workerComm:T_workerComm, ?_m:Ref<T_mutator>, ?_mu:stdgo.sync.Sync.Mutex) {
		if (_workerComm != null)
			this._workerComm = _workerComm;
		if (_m != null)
			this._m = _m;
		if (_mu != null)
			this._mu = _mu;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_workerClient(_workerComm, _m, _mu);
	}
}

/**
	// contextReader wraps a Reader with a Context. If the context is cancelled
	// while the underlying reader is blocked, Read returns immediately.
	//
	// This is useful for reading from a pipe. Closing a pipe file descriptor does
	// not unblock pending Reads on that file descriptor. All copies of the pipe's
	// other file descriptor (the write end) must be closed in all processes that
	// inherit it. This is difficult to do correctly in the situation we care about
	// (process group termination).
**/
@:structInit @:using(internal.fuzz.Fuzz.T_contextReader_static_extension) private class T_contextReader {
	public var _ctx:stdgo.context.Context.Context = (null : stdgo.context.Context.Context);
	public var _r:stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);

	public function new(?_ctx:stdgo.context.Context.Context, ?_r:stdgo.io.Io.Reader) {
		if (_ctx != null)
			this._ctx = _ctx;
		if (_r != null)
			this._r = _r;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T_contextReader(_ctx, _r);
	}
}

class T__struct_0_asInterface {
	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T__struct_0>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.fuzz.Fuzz.T__struct_0_asInterface) class T__struct_0_static_extension {}
@:local @:using(internal.fuzz.Fuzz.T__struct_0_static_extension) private typedef T__struct_0 = {};
@:named private typedef T_byteSliceMutator = (Ref<T_mutator>, Slice<GoUInt8>) -> Slice<GoUInt8>;

/**
	// coverage returns a []byte containing unique 8-bit counters for each edge of
	// the instrumented source code. This coverage data will only be generated if
	// `-d=libfuzzer` is set at build time. This can be used to understand the code
	// coverage of a test execution.
**/
function _coverage():Slice<GoByte>
	throw "internal.fuzz._coverage is not yet implemented";

/**
	// ResetCovereage sets all of the counters for each edge of the instrumented
	// source code to 0.
**/
function resetCoverage():Void
	throw "internal.fuzz.resetCoverage is not yet implemented";

/**
	// SnapshotCoverage copies the current counter values into coverageSnapshot,
	// preserving them for later inspection. SnapshotCoverage also rounds each
	// counter down to the nearest power of two. This lets the coordinator store
	// multiple values for each counter by OR'ing them together.
**/
function snapshotCoverage():Void
	throw "internal.fuzz.snapshotCoverage is not yet implemented";

/**
	// diffCoverage returns a set of bits set in snapshot but not in base.
	// If there are no new bits set, diffCoverage returns nil.
**/
function _diffCoverage(_base:Slice<GoByte>, _snapshot:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._diffCoverage is not yet implemented";

/**
	// countNewCoverageBits returns the number of bits set in snapshot that are not
	// set in base.
**/
function _countNewCoverageBits(_base:Slice<GoByte>, _snapshot:Slice<GoByte>):GoInt
	throw "internal.fuzz._countNewCoverageBits is not yet implemented";

/**
	// isCoverageSubset returns true if all the base coverage bits are set in
	// snapshot
**/
function _isCoverageSubset(_base:Slice<GoByte>, _snapshot:Slice<GoByte>):Bool
	throw "internal.fuzz._isCoverageSubset is not yet implemented";

/**
	// hasCoverageBit returns true if snapshot has at least one bit set that is
	// also set in base.
**/
function _hasCoverageBit(_base:Slice<GoByte>, _snapshot:Slice<GoByte>):Bool
	throw "internal.fuzz._hasCoverageBit is not yet implemented";

function _countBits(_cov:Slice<GoByte>):GoInt
	throw "internal.fuzz._countBits is not yet implemented";

/**
	// marshalCorpusFile encodes an arbitrary number of arguments into the file format for the
	// corpus.
**/
function _marshalCorpusFile(_vals:haxe.Rest<AnyInterface>):Slice<GoByte>
	throw "internal.fuzz._marshalCorpusFile is not yet implemented";

/**
	// unmarshalCorpusFile decodes corpus bytes into their respective values.
**/
function _unmarshalCorpusFile(_b:Slice<GoByte>):{var _0:Slice<AnyInterface>; var _1:Error;}
	throw "internal.fuzz._unmarshalCorpusFile is not yet implemented";

function _parseCorpusValue(_line:Slice<GoByte>):{var _0:AnyInterface; var _1:Error;}
	throw "internal.fuzz._parseCorpusValue is not yet implemented";

/**
	// parseInt returns an integer of value val and type typ.
**/
function _parseInt(_val:GoString, _typ:GoString):{var _0:AnyInterface; var _1:Error;}
	throw "internal.fuzz._parseInt is not yet implemented";

/**
	// parseInt returns an unsigned integer of value val and type typ.
**/
function _parseUint(_val:GoString, _typ:GoString):{var _0:AnyInterface; var _1:Error;}
	throw "internal.fuzz._parseUint is not yet implemented";

/**
	// CoordinateFuzzing creates several worker processes and communicates with
	// them to test random inputs that could trigger crashes and expose bugs.
	// The worker processes run the same binary in the same directory with the
	// same environment variables as the coordinator process. Workers also run
	// with the same arguments as the coordinator, except with the -test.fuzzworker
	// flag prepended to the argument list.
	//
	// If a crash occurs, the function will return an error containing information
	// about the crash, which can be reported to the user.
**/
function coordinateFuzzing(_ctx:stdgo.context.Context.Context, _opts:CoordinateFuzzingOpts):Error
	throw "internal.fuzz.coordinateFuzzing is not yet implemented";

/**
	// corpusEntryData returns the raw input bytes, either from the data struct
	// field, or from disk.
**/
function _corpusEntryData(_ce:CorpusEntry):{var _0:Slice<GoByte>; var _1:Error;}
	throw "internal.fuzz._corpusEntryData is not yet implemented";

function _newCoordinator(_opts:CoordinateFuzzingOpts):{var _0:Ref<T_coordinator>; var _1:Error;}
	throw "internal.fuzz._newCoordinator is not yet implemented";

/**
	// ReadCorpus reads the corpus from the provided dir. The returned corpus
	// entries are guaranteed to match the given types. Any malformed files will
	// be saved in a MalformedCorpusError and returned, along with the most recent
	// error.
**/
function readCorpus(_dir:GoString, _types:Slice<stdgo.reflect.Reflect.Type>):{var _0:Slice<CorpusEntry>; var _1:Error;}
	throw "internal.fuzz.readCorpus is not yet implemented";

function _readCorpusData(_data:Slice<GoByte>, _types:Slice<stdgo.reflect.Reflect.Type>):{var _0:Slice<AnyInterface>; var _1:Error;}
	throw "internal.fuzz._readCorpusData is not yet implemented";

/**
	// CheckCorpus verifies that the types in vals match the expected types
	// provided.
**/
function checkCorpus(_vals:Slice<AnyInterface>, _types:Slice<stdgo.reflect.Reflect.Type>):Error
	throw "internal.fuzz.checkCorpus is not yet implemented";

/**
	// writeToCorpus atomically writes the given bytes to a new file in testdata. If
	// the directory does not exist, it will create one. If the file already exists,
	// writeToCorpus will not rewrite it. writeToCorpus sets entry.Path to the new
	// file that was just written or an error if it failed.
**/
function _writeToCorpus(_entry:Ref<CorpusEntry>, _dir:GoString):Error
	throw "internal.fuzz._writeToCorpus is not yet implemented";

function _testName(_path:GoString):GoString
	throw "internal.fuzz._testName is not yet implemented";

function _zeroValue(_t:stdgo.reflect.Reflect.Type):AnyInterface
	throw "internal.fuzz._zeroValue is not yet implemented";

function _shouldPrintDebugInfo():Bool
	throw "internal.fuzz._shouldPrintDebugInfo is not yet implemented";

/**
	// sharedMemSize returns the size needed for a shared memory buffer that can
	// contain values of the given size.
**/
function _sharedMemSize(_valueSize:GoInt):GoInt
	throw "internal.fuzz._sharedMemSize is not yet implemented";

/**
	// sharedMemTempFile creates a new temporary file of the given size, then maps
	// it into memory. The file will be removed when the Close method is called.
**/
function _sharedMemTempFile(_size:GoInt):{var _0:Ref<T_sharedMem>; var _1:Error;}
	throw "internal.fuzz._sharedMemTempFile is not yet implemented";

function _isMinimizable(_t:stdgo.reflect.Reflect.Type):Bool
	throw "internal.fuzz._isMinimizable is not yet implemented";

function _minimizeBytes(_v:Slice<GoByte>, _try:Slice<GoByte>->Bool, _shouldStop:() -> Bool):Void
	throw "internal.fuzz._minimizeBytes is not yet implemented";

function _newMutator():Ref<T_mutator>
	throw "internal.fuzz._newMutator is not yet implemented";

function _min(_a:GoInt, _b:GoInt):GoInt
	throw "internal.fuzz._min is not yet implemented";

/**
	// byteSliceRemoveBytes removes a random chunk of bytes from b.
**/
function _byteSliceRemoveBytes(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceRemoveBytes is not yet implemented";

/**
	// byteSliceInsertRandomBytes inserts a chunk of random bytes into b at a random
	// position.
**/
function _byteSliceInsertRandomBytes(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceInsertRandomBytes is not yet implemented";

/**
	// byteSliceDuplicateBytes duplicates a chunk of bytes in b and inserts it into
	// a random position.
**/
function _byteSliceDuplicateBytes(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceDuplicateBytes is not yet implemented";

/**
	// byteSliceOverwriteBytes overwrites a chunk of b with another chunk of b.
**/
function _byteSliceOverwriteBytes(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceOverwriteBytes is not yet implemented";

/**
	// byteSliceBitFlip flips a random bit in a random byte in b.
**/
function _byteSliceBitFlip(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceBitFlip is not yet implemented";

/**
	// byteSliceXORByte XORs a random byte in b with a random value.
**/
function _byteSliceXORByte(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceXORByte is not yet implemented";

/**
	// byteSliceSwapByte swaps two random bytes in b.
**/
function _byteSliceSwapByte(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceSwapByte is not yet implemented";

/**
	// byteSliceArithmeticUint8 adds/subtracts from a random byte in b.
**/
function _byteSliceArithmeticUint8(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceArithmeticUint8 is not yet implemented";

/**
	// byteSliceArithmeticUint16 adds/subtracts from a random uint16 in b.
**/
function _byteSliceArithmeticUint16(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceArithmeticUint16 is not yet implemented";

/**
	// byteSliceArithmeticUint32 adds/subtracts from a random uint32 in b.
**/
function _byteSliceArithmeticUint32(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceArithmeticUint32 is not yet implemented";

/**
	// byteSliceArithmeticUint64 adds/subtracts from a random uint64 in b.
**/
function _byteSliceArithmeticUint64(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceArithmeticUint64 is not yet implemented";

/**
	// byteSliceOverwriteInterestingUint8 overwrites a random byte in b with an interesting
	// value.
**/
function _byteSliceOverwriteInterestingUint8(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceOverwriteInterestingUint8 is not yet implemented";

/**
	// byteSliceOverwriteInterestingUint16 overwrites a random uint16 in b with an interesting
	// value.
**/
function _byteSliceOverwriteInterestingUint16(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceOverwriteInterestingUint16 is not yet implemented";

/**
	// byteSliceOverwriteInterestingUint32 overwrites a random uint16 in b with an interesting
	// value.
**/
function _byteSliceOverwriteInterestingUint32(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceOverwriteInterestingUint32 is not yet implemented";

/**
	// byteSliceInsertConstantBytes inserts a chunk of constant bytes into a random position in b.
**/
function _byteSliceInsertConstantBytes(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceInsertConstantBytes is not yet implemented";

/**
	// byteSliceOverwriteConstantBytes overwrites a chunk of b with constant bytes.
**/
function _byteSliceOverwriteConstantBytes(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceOverwriteConstantBytes is not yet implemented";

/**
	// byteSliceShuffleBytes shuffles a chunk of bytes in b.
**/
function _byteSliceShuffleBytes(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceShuffleBytes is not yet implemented";

/**
	// byteSliceSwapBytes swaps two chunks of bytes in b.
**/
function _byteSliceSwapBytes(_m:Ref<T_mutator>, _b:Slice<GoByte>):Slice<GoByte>
	throw "internal.fuzz._byteSliceSwapBytes is not yet implemented";

function _godebugSeed():Pointer<GoInt>
	throw "internal.fuzz._godebugSeed is not yet implemented";

/**
	// newPcgRand generates a new, seeded Rand, ready for use.
**/
function _newPcgRand():Ref<T_pcgRand>
	throw "internal.fuzz._newPcgRand is not yet implemented";

function _sharedMemMapFile(_f:Ref<stdgo.os.Os.File>, _size:GoInt, _removeOnClose:Bool):{var _0:Ref<T_sharedMem>; var _1:Error;}
	throw "internal.fuzz._sharedMemMapFile is not yet implemented";

function _setWorkerComm(_cmd:Ref<stdgo.os.exec.Exec.Cmd>, _comm:T_workerComm):Void
	throw "internal.fuzz._setWorkerComm is not yet implemented";

function _getWorkerComm():{var _0:T_workerComm; var _1:Error;}
	throw "internal.fuzz._getWorkerComm is not yet implemented";

function _isInterruptError(_err:Error):Bool
	throw "internal.fuzz._isInterruptError is not yet implemented";

function _terminationSignal(_err:Error):{var _0:stdgo.os.Os.Signal; var _1:Bool;}
	throw "internal.fuzz._terminationSignal is not yet implemented";

function _isCrashSignal(_signal:stdgo.os.Os.Signal):Bool
	throw "internal.fuzz._isCrashSignal is not yet implemented";

function _libfuzzerTraceCmp1(_arg0:GoUInt8, _arg1:GoUInt8, _fakePC:GoInt):Void
	throw "internal.fuzz._libfuzzerTraceCmp1 is not yet implemented";

function _libfuzzerTraceCmp2(_arg0:GoUInt16, _arg1:GoUInt16, _fakePC:GoInt):Void
	throw "internal.fuzz._libfuzzerTraceCmp2 is not yet implemented";

function _libfuzzerTraceCmp4(_arg0:GoUInt32, _arg1:GoUInt32, _fakePC:GoInt):Void
	throw "internal.fuzz._libfuzzerTraceCmp4 is not yet implemented";

function _libfuzzerTraceCmp8(_arg0:GoUInt64, _arg1:GoUInt64, _fakePC:GoInt):Void
	throw "internal.fuzz._libfuzzerTraceCmp8 is not yet implemented";

function _libfuzzerTraceConstCmp1(_arg0:GoUInt8, _arg1:GoUInt8, _fakePC:GoInt):Void
	throw "internal.fuzz._libfuzzerTraceConstCmp1 is not yet implemented";

function _libfuzzerTraceConstCmp2(_arg0:GoUInt16, _arg1:GoUInt16, _fakePC:GoInt):Void
	throw "internal.fuzz._libfuzzerTraceConstCmp2 is not yet implemented";

function _libfuzzerTraceConstCmp4(_arg0:GoUInt32, _arg1:GoUInt32, _fakePC:GoInt):Void
	throw "internal.fuzz._libfuzzerTraceConstCmp4 is not yet implemented";

function _libfuzzerTraceConstCmp8(_arg0:GoUInt64, _arg1:GoUInt64, _fakePC:GoInt):Void
	throw "internal.fuzz._libfuzzerTraceConstCmp8 is not yet implemented";

function _libfuzzerHookStrCmp(_arg0:GoString, _arg1:GoString, _fakePC:GoInt):Void
	throw "internal.fuzz._libfuzzerHookStrCmp is not yet implemented";

function _libfuzzerHookEqualFold(_arg0:GoString, _arg1:GoString, _fakePC:GoInt):Void
	throw "internal.fuzz._libfuzzerHookEqualFold is not yet implemented";

function _newWorker(_c:Ref<T_coordinator>, _dir:GoString, _binPath:GoString, _args:Slice<GoString>, _env:Slice<GoString>):{var _0:Ref<T_worker>; var _1:Error;}
	throw "internal.fuzz._newWorker is not yet implemented";

/**
	// RunFuzzWorker is called in a worker process to communicate with the
	// coordinator process in order to fuzz random inputs. RunFuzzWorker loops
	// until the coordinator tells it to stop.
	//
	// fn is a wrapper on the fuzz function. It may return an error to indicate
	// a given input "crashed". The coordinator will also record a crasher if
	// the function times out or terminates the process.
	//
	// RunFuzzWorker returns an error if it could not communicate with the
	// coordinator process.
**/
function runFuzzWorker(_ctx:stdgo.context.Context.Context, _fn:CorpusEntry->Error):Error
	throw "internal.fuzz.runFuzzWorker is not yet implemented";

function _writeToMem(_vals:Slice<AnyInterface>, _mem:Ref<T_sharedMem>):Void
	throw "internal.fuzz._writeToMem is not yet implemented";

function _newWorkerClient(_comm:T_workerComm, _m:Ref<T_mutator>):Ref<T_workerClient>
	throw "internal.fuzz._newWorkerClient is not yet implemented";

class T_crashError_asInterface {
	@:keep
	public function crashPath():GoString
		return __self__.value.crashPath();

	@:keep
	public function unwrap():Error
		return __self__.value.unwrap();

	@:keep
	public function error():GoString
		return __self__.value.error();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_crashError>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.fuzz.Fuzz.T_crashError_asInterface) class T_crashError_static_extension {
	@:keep
	static public function crashPath(_e:Ref<T_crashError>):GoString
		throw "internal.fuzz.crashPath is not yet implemented";

	@:keep
	static public function unwrap(_e:Ref<T_crashError>):Error
		throw "internal.fuzz.unwrap is not yet implemented";

	@:keep
	static public function error(_e:Ref<T_crashError>):GoString
		throw "internal.fuzz.error is not yet implemented";
}

class T_coordinator_asInterface {
	/**
		// readCache creates a combined corpus from seed values and values in the cache
		// (in GOCACHE/fuzz).
		//
		// TODO(fuzzing): need a mechanism that can remove values that
		// aren't useful anymore, for example, because they have the wrong type.
	**/
	@:keep
	public function _readCache():Error
		return __self__.value._readCache();

	@:keep
	public function _elapsed():stdgo.time.Time.Duration
		return __self__.value._elapsed();

	/**
		// canMinimize returns whether the coordinator should attempt to find smaller
		// inputs that reproduce a crash or new coverage.
	**/
	@:keep
	public function _canMinimize():Bool
		return __self__.value._canMinimize();

	/**
		// updateCoverage sets bits in c.coverageMask that are set in newCoverage.
		// updateCoverage returns the number of newly set bits. See the comment on
		// coverageMask for the format.
	**/
	@:keep
	public function _updateCoverage(_newCoverage:Slice<GoByte>):GoInt
		return __self__.value._updateCoverage(_newCoverage);

	/**
		// warmupRun returns true while the coordinator is running inputs without
		// mutating them as a warmup before fuzzing. This could be to gather baseline
		// coverage data for entries in the corpus, or to test all of the seed corpus
		// for errors before fuzzing begins.
		//
		// The coordinator doesn't store coverage data in the cache with each input
		// because that data would be invalid when counter offsets in the test binary
		// change.
		//
		// When gathering coverage, the coordinator sends each entry to a worker to
		// gather coverage for that entry only, without fuzzing or minimizing. This
		// phase ends when all workers have finished, and the coordinator has a combined
		// coverage map.
	**/
	@:keep
	public function _warmupRun():Bool
		return __self__.value._warmupRun();

	/**
		// sentMinimizeInput removes an input from the minimization queue after it's
		// sent to minimizeC.
	**/
	@:keep
	public function _sentMinimizeInput(_input:T_fuzzMinimizeInput):Void
		__self__.value._sentMinimizeInput(_input);

	/**
		// peekMinimizeInput returns the next input that should be sent to workers for
		// minimization.
	**/
	@:keep
	public function _peekMinimizeInput():{var _0:T_fuzzMinimizeInput; var _1:Bool;}
		return __self__.value._peekMinimizeInput();

	/**
		// queueForMinimization creates a fuzzMinimizeInput from result and adds it
		// to the minimization queue to be sent to workers.
	**/
	@:keep
	public function _queueForMinimization(_result:T_fuzzResult, _keepCoverage:Slice<GoByte>):Void
		__self__.value._queueForMinimization(_result, _keepCoverage);

	/**
		// refillInputQueue refills the input queue from the corpus after it becomes
		// empty.
	**/
	@:keep
	public function _refillInputQueue():Void
		__self__.value._refillInputQueue();

	/**
		// sentInput updates internal counters after an input is sent to c.inputC.
	**/
	@:keep
	public function _sentInput(_input:T_fuzzInput):Void
		__self__.value._sentInput(_input);

	/**
		// peekInput returns the next value that should be sent to workers.
		// If the number of executions is limited, the returned value includes
		// a limit for one worker. If there are no executions left, peekInput returns
		// a zero value and false.
		//
		// peekInput doesn't actually remove the input from the queue. The caller
		// must call sentInput after sending the input.
		//
		// If the input queue is empty and the coverage/testing-only run has completed,
		// queue refills it from the corpus.
	**/
	@:keep
	public function _peekInput():{var _0:T_fuzzInput; var _1:Bool;}
		return __self__.value._peekInput();

	@:keep
	public function _logStats():Void
		__self__.value._logStats();

	@:keep
	public function _updateStats(_result:T_fuzzResult):Void
		__self__.value._updateStats(_result);

	/**
		// addCorpusEntries adds entries to the corpus, and optionally writes the entries
		// to the cache directory. If an entry is already in the corpus it is skipped. If
		// all of the entries are unique, addCorpusEntries returns true and a nil error,
		// if at least one of the entries was a duplicate, it returns false and a nil error.
	**/
	@:keep
	public function _addCorpusEntries(_addToCache:Bool, _entries:haxe.Rest<CorpusEntry>):{var _0:Bool; var _1:Error;}
		return __self__.value._addCorpusEntries(_addToCache, ..._entries);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_coordinator>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.fuzz.Fuzz.T_coordinator_asInterface) class T_coordinator_static_extension {
	/**
		// readCache creates a combined corpus from seed values and values in the cache
		// (in GOCACHE/fuzz).
		//
		// TODO(fuzzing): need a mechanism that can remove values that
		// aren't useful anymore, for example, because they have the wrong type.
	**/
	@:keep
	static public function _readCache(_c:Ref<T_coordinator>):Error
		throw "internal.fuzz._readCache is not yet implemented";

	@:keep
	static public function _elapsed(_c:Ref<T_coordinator>):stdgo.time.Time.Duration
		throw "internal.fuzz._elapsed is not yet implemented";

	/**
		// canMinimize returns whether the coordinator should attempt to find smaller
		// inputs that reproduce a crash or new coverage.
	**/
	@:keep
	static public function _canMinimize(_c:Ref<T_coordinator>):Bool
		throw "internal.fuzz._canMinimize is not yet implemented";

	/**
		// updateCoverage sets bits in c.coverageMask that are set in newCoverage.
		// updateCoverage returns the number of newly set bits. See the comment on
		// coverageMask for the format.
	**/
	@:keep
	static public function _updateCoverage(_c:Ref<T_coordinator>, _newCoverage:Slice<GoByte>):GoInt
		throw "internal.fuzz._updateCoverage is not yet implemented";

	/**
		// warmupRun returns true while the coordinator is running inputs without
		// mutating them as a warmup before fuzzing. This could be to gather baseline
		// coverage data for entries in the corpus, or to test all of the seed corpus
		// for errors before fuzzing begins.
		//
		// The coordinator doesn't store coverage data in the cache with each input
		// because that data would be invalid when counter offsets in the test binary
		// change.
		//
		// When gathering coverage, the coordinator sends each entry to a worker to
		// gather coverage for that entry only, without fuzzing or minimizing. This
		// phase ends when all workers have finished, and the coordinator has a combined
		// coverage map.
	**/
	@:keep
	static public function _warmupRun(_c:Ref<T_coordinator>):Bool
		throw "internal.fuzz._warmupRun is not yet implemented";

	/**
		// sentMinimizeInput removes an input from the minimization queue after it's
		// sent to minimizeC.
	**/
	@:keep
	static public function _sentMinimizeInput(_c:Ref<T_coordinator>, _input:T_fuzzMinimizeInput):Void
		throw "internal.fuzz._sentMinimizeInput is not yet implemented";

	/**
		// peekMinimizeInput returns the next input that should be sent to workers for
		// minimization.
	**/
	@:keep
	static public function _peekMinimizeInput(_c:Ref<T_coordinator>):{var _0:T_fuzzMinimizeInput; var _1:Bool;}
		throw "internal.fuzz._peekMinimizeInput is not yet implemented";

	/**
		// queueForMinimization creates a fuzzMinimizeInput from result and adds it
		// to the minimization queue to be sent to workers.
	**/
	@:keep
	static public function _queueForMinimization(_c:Ref<T_coordinator>, _result:T_fuzzResult, _keepCoverage:Slice<GoByte>):Void
		throw "internal.fuzz._queueForMinimization is not yet implemented";

	/**
		// refillInputQueue refills the input queue from the corpus after it becomes
		// empty.
	**/
	@:keep
	static public function _refillInputQueue(_c:Ref<T_coordinator>):Void
		throw "internal.fuzz._refillInputQueue is not yet implemented";

	/**
		// sentInput updates internal counters after an input is sent to c.inputC.
	**/
	@:keep
	static public function _sentInput(_c:Ref<T_coordinator>, _input:T_fuzzInput):Void
		throw "internal.fuzz._sentInput is not yet implemented";

	/**
		// peekInput returns the next value that should be sent to workers.
		// If the number of executions is limited, the returned value includes
		// a limit for one worker. If there are no executions left, peekInput returns
		// a zero value and false.
		//
		// peekInput doesn't actually remove the input from the queue. The caller
		// must call sentInput after sending the input.
		//
		// If the input queue is empty and the coverage/testing-only run has completed,
		// queue refills it from the corpus.
	**/
	@:keep
	static public function _peekInput(_c:Ref<T_coordinator>):{var _0:T_fuzzInput; var _1:Bool;}
		throw "internal.fuzz._peekInput is not yet implemented";

	@:keep
	static public function _logStats(_c:Ref<T_coordinator>):Void
		throw "internal.fuzz._logStats is not yet implemented";

	@:keep
	static public function _updateStats(_c:Ref<T_coordinator>, _result:T_fuzzResult):Void
		throw "internal.fuzz._updateStats is not yet implemented";

	/**
		// addCorpusEntries adds entries to the corpus, and optionally writes the entries
		// to the cache directory. If an entry is already in the corpus it is skipped. If
		// all of the entries are unique, addCorpusEntries returns true and a nil error,
		// if at least one of the entries was a duplicate, it returns false and a nil error.
	**/
	@:keep
	static public function _addCorpusEntries(_c:Ref<T_coordinator>, _addToCache:Bool, _entries:haxe.Rest<CorpusEntry>):{var _0:Bool; var _1:Error;}
		throw "internal.fuzz._addCorpusEntries is not yet implemented";
}

class MalformedCorpusError_asInterface {
	@:keep
	public function error():GoString
		return __self__.value.error();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<MalformedCorpusError>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.fuzz.Fuzz.MalformedCorpusError_asInterface) class MalformedCorpusError_static_extension {
	@:keep
	static public function error(_e:Ref<MalformedCorpusError>):GoString
		throw "internal.fuzz.error is not yet implemented";
}

class T_sharedMem_asInterface {
	@:keep
	public function close():Error
		return __self__.value.close();

	/**
		// setValueLen sets the length of the shared memory buffer returned by valueRef
		// to n, which may be at most the cap of that slice.
		//
		// Note that we can only store the length in the shared memory header. The full
		// slice header contains a pointer, which is likely only valid for one process,
		// since each process can map shared memory at a different virtual address.
	**/
	@:keep
	public function _setValueLen(_n:GoInt):Void
		__self__.value._setValueLen(_n);

	/**
		// setValue copies the data in b into the shared memory buffer and sets
		// the length. len(b) must be less than or equal to the capacity of the buffer
		// (as returned by cap(m.value())).
	**/
	@:keep
	public function _setValue(_b:Slice<GoByte>):Void
		__self__.value._setValue(_b);

	/**
		// valueCopy returns a copy of the value stored in shared memory.
	**/
	@:keep
	public function _valueCopy():Slice<GoByte>
		return __self__.value._valueCopy();

	/**
		// valueRef returns the value currently stored in shared memory. The returned
		// slice points to shared memory; it is not a copy.
	**/
	@:keep
	public function _valueRef():Slice<GoByte>
		return __self__.value._valueRef();

	/**
		// header returns a pointer to metadata within the shared memory region.
	**/
	@:keep
	public function _header():Ref<T_sharedMemHeader>
		return __self__.value._header();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_sharedMem>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.fuzz.Fuzz.T_sharedMem_asInterface) class T_sharedMem_static_extension {
	@:keep
	static public function close(_m:Ref<T_sharedMem>):Error
		throw "internal.fuzz.close is not yet implemented";

	/**
		// setValueLen sets the length of the shared memory buffer returned by valueRef
		// to n, which may be at most the cap of that slice.
		//
		// Note that we can only store the length in the shared memory header. The full
		// slice header contains a pointer, which is likely only valid for one process,
		// since each process can map shared memory at a different virtual address.
	**/
	@:keep
	static public function _setValueLen(_m:Ref<T_sharedMem>, _n:GoInt):Void
		throw "internal.fuzz._setValueLen is not yet implemented";

	/**
		// setValue copies the data in b into the shared memory buffer and sets
		// the length. len(b) must be less than or equal to the capacity of the buffer
		// (as returned by cap(m.value())).
	**/
	@:keep
	static public function _setValue(_m:Ref<T_sharedMem>, _b:Slice<GoByte>):Void
		throw "internal.fuzz._setValue is not yet implemented";

	/**
		// valueCopy returns a copy of the value stored in shared memory.
	**/
	@:keep
	static public function _valueCopy(_m:Ref<T_sharedMem>):Slice<GoByte>
		throw "internal.fuzz._valueCopy is not yet implemented";

	/**
		// valueRef returns the value currently stored in shared memory. The returned
		// slice points to shared memory; it is not a copy.
	**/
	@:keep
	static public function _valueRef(_m:Ref<T_sharedMem>):Slice<GoByte>
		throw "internal.fuzz._valueRef is not yet implemented";

	/**
		// header returns a pointer to metadata within the shared memory region.
	**/
	@:keep
	static public function _header(_m:Ref<T_sharedMem>):Ref<T_sharedMemHeader>
		throw "internal.fuzz._header is not yet implemented";
}

class T_mutator_asInterface {
	@:keep
	public function _mutateBytes(_ptrB:Ref<Slice<GoByte>>):Void
		__self__.value._mutateBytes(_ptrB);

	@:keep
	public function _mutateFloat(_v:GoFloat64, _maxValue:GoFloat64):GoFloat64
		return __self__.value._mutateFloat(_v, _maxValue);

	@:keep
	public function _mutateUInt(_v:GoUInt64, _maxValue:GoUInt64):GoUInt64
		return __self__.value._mutateUInt(_v, _maxValue);

	@:keep
	public function _mutateInt(_v:GoInt64, _maxValue:GoInt64):GoInt64
		return __self__.value._mutateInt(_v, _maxValue);

	/**
		// mutate performs several mutations on the provided values.
	**/
	@:keep
	public function _mutate(_vals:Slice<AnyInterface>, _maxBytes:GoInt):Void
		__self__.value._mutate(_vals, _maxBytes);

	/**
		// chooseLen chooses length of range mutation in range [1,n]. It gives
		// preference to shorter ranges.
	**/
	@:keep
	public function _chooseLen(_n:GoInt):GoInt
		return __self__.value._chooseLen(_n);

	@:keep
	public function _randByteOrder():stdgo.encoding.binary.Binary.ByteOrder
		return __self__.value._randByteOrder();

	@:keep
	public function _rand(_n:GoInt):GoInt
		return __self__.value._rand(_n);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_mutator>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.fuzz.Fuzz.T_mutator_asInterface) class T_mutator_static_extension {
	@:keep
	static public function _mutateBytes(_m:Ref<T_mutator>, _ptrB:Ref<Slice<GoByte>>):Void
		throw "internal.fuzz._mutateBytes is not yet implemented";

	@:keep
	static public function _mutateFloat(_m:Ref<T_mutator>, _v:GoFloat64, _maxValue:GoFloat64):GoFloat64
		throw "internal.fuzz._mutateFloat is not yet implemented";

	@:keep
	static public function _mutateUInt(_m:Ref<T_mutator>, _v:GoUInt64, _maxValue:GoUInt64):GoUInt64
		throw "internal.fuzz._mutateUInt is not yet implemented";

	@:keep
	static public function _mutateInt(_m:Ref<T_mutator>, _v:GoInt64, _maxValue:GoInt64):GoInt64
		throw "internal.fuzz._mutateInt is not yet implemented";

	/**
		// mutate performs several mutations on the provided values.
	**/
	@:keep
	static public function _mutate(_m:Ref<T_mutator>, _vals:Slice<AnyInterface>, _maxBytes:GoInt):Void
		throw "internal.fuzz._mutate is not yet implemented";

	/**
		// chooseLen chooses length of range mutation in range [1,n]. It gives
		// preference to shorter ranges.
	**/
	@:keep
	static public function _chooseLen(_m:Ref<T_mutator>, _n:GoInt):GoInt
		throw "internal.fuzz._chooseLen is not yet implemented";

	@:keep
	static public function _randByteOrder(_m:Ref<T_mutator>):stdgo.encoding.binary.Binary.ByteOrder
		throw "internal.fuzz._randByteOrder is not yet implemented";

	@:keep
	static public function _rand(_m:Ref<T_mutator>, _n:GoInt):GoInt
		throw "internal.fuzz._rand is not yet implemented";
}

class T_pcgRand_asInterface {
	/**
		// bool generates a random bool.
	**/
	@:keep
	public function _bool():Bool
		return __self__.value._bool();

	/**
		// exp2 generates n with probability 1/2^(n+1).
	**/
	@:keep
	public function _exp2():GoInt
		return __self__.value._exp2();

	/**
		// uint32n returns a pseudo-random number in [0, n).
		//
		// For implementation details, see:
		// https://lemire.me/blog/2016/06/27/a-fast-alternative-to-the-modulo-reduction
		// https://lemire.me/blog/2016/06/30/fast-random-shuffling
	**/
	@:keep
	public function _uint32n(_n:GoUInt32):GoUInt32
		return __self__.value._uint32n(_n);

	/**
		// intn returns a pseudo-random number in [0, n).
		// n must fit in a uint32.
	**/
	@:keep
	public function _intn(_n:GoInt):GoInt
		return __self__.value._intn(_n);

	/**
		// uint32 returns a pseudo-random uint32.
	**/
	@:keep
	public function _uint32():GoUInt32
		return __self__.value._uint32();

	@:keep
	public function _restore(_randState:GoUInt64, _randInc:GoUInt64):Void
		__self__.value._restore(_randState, _randInc);

	@:keep
	public function _save(_randState:Pointer<GoUInt64>, _randInc:Pointer<GoUInt64>):Void
		__self__.value._save(_randState, _randInc);

	@:keep
	public function _step():Void
		__self__.value._step();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_pcgRand>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.fuzz.Fuzz.T_pcgRand_asInterface) class T_pcgRand_static_extension {
	/**
		// bool generates a random bool.
	**/
	@:keep
	static public function _bool(_r:Ref<T_pcgRand>):Bool
		throw "internal.fuzz._bool is not yet implemented";

	/**
		// exp2 generates n with probability 1/2^(n+1).
	**/
	@:keep
	static public function _exp2(_r:Ref<T_pcgRand>):GoInt
		throw "internal.fuzz._exp2 is not yet implemented";

	/**
		// uint32n returns a pseudo-random number in [0, n).
		//
		// For implementation details, see:
		// https://lemire.me/blog/2016/06/27/a-fast-alternative-to-the-modulo-reduction
		// https://lemire.me/blog/2016/06/30/fast-random-shuffling
	**/
	@:keep
	static public function _uint32n(_r:Ref<T_pcgRand>, _n:GoUInt32):GoUInt32
		throw "internal.fuzz._uint32n is not yet implemented";

	/**
		// intn returns a pseudo-random number in [0, n).
		// n must fit in a uint32.
	**/
	@:keep
	static public function _intn(_r:Ref<T_pcgRand>, _n:GoInt):GoInt
		throw "internal.fuzz._intn is not yet implemented";

	/**
		// uint32 returns a pseudo-random uint32.
	**/
	@:keep
	static public function _uint32(_r:Ref<T_pcgRand>):GoUInt32
		throw "internal.fuzz._uint32 is not yet implemented";

	@:keep
	static public function _restore(_r:Ref<T_pcgRand>, _randState:GoUInt64, _randInc:GoUInt64):Void
		throw "internal.fuzz._restore is not yet implemented";

	@:keep
	static public function _save(_r:Ref<T_pcgRand>, _randState:Pointer<GoUInt64>, _randInc:Pointer<GoUInt64>):Void
		throw "internal.fuzz._save is not yet implemented";

	@:keep
	static public function _step(_r:Ref<T_pcgRand>):Void
		throw "internal.fuzz._step is not yet implemented";
}

class T_noCopy_asInterface {
	@:keep
	public function _unlock():Void
		__self__.value._unlock();

	/**
		// lock is a no-op used by -copylocks checker from `go vet`.
	**/
	@:keep
	public function _lock():Void
		__self__.value._lock();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_noCopy>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.fuzz.Fuzz.T_noCopy_asInterface) class T_noCopy_static_extension {
	@:keep
	static public function _unlock(_:Ref<T_noCopy>):Void
		throw "internal.fuzz._unlock is not yet implemented";

	/**
		// lock is a no-op used by -copylocks checker from `go vet`.
	**/
	@:keep
	static public function _lock(_:Ref<T_noCopy>):Void
		throw "internal.fuzz._lock is not yet implemented";
}

class T_queue_asInterface {
	@:keep
	public function _clear():Void
		__self__.value._clear();

	@:keep
	public function _peek():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value._peek();

	@:keep
	public function _dequeue():{var _0:AnyInterface; var _1:Bool;}
		return __self__.value._dequeue();

	@:keep
	public function _enqueue(_e:AnyInterface):Void
		__self__.value._enqueue(_e);

	@:keep
	public function _grow():Void
		__self__.value._grow();

	@:keep
	public function _cap():GoInt
		return __self__.value._cap();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_queue>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.fuzz.Fuzz.T_queue_asInterface) class T_queue_static_extension {
	@:keep
	static public function _clear(_q:Ref<T_queue>):Void
		throw "internal.fuzz._clear is not yet implemented";

	@:keep
	static public function _peek(_q:Ref<T_queue>):{var _0:AnyInterface; var _1:Bool;}
		throw "internal.fuzz._peek is not yet implemented";

	@:keep
	static public function _dequeue(_q:Ref<T_queue>):{var _0:AnyInterface; var _1:Bool;}
		throw "internal.fuzz._dequeue is not yet implemented";

	@:keep
	static public function _enqueue(_q:Ref<T_queue>, _e:AnyInterface):Void
		throw "internal.fuzz._enqueue is not yet implemented";

	@:keep
	static public function _grow(_q:Ref<T_queue>):Void
		throw "internal.fuzz._grow is not yet implemented";

	@:keep
	static public function _cap(_q:Ref<T_queue>):GoInt
		throw "internal.fuzz._cap is not yet implemented";
}

class T_worker_asInterface {
	/**
		// stop tells the worker process to exit by closing w.client, then blocks until
		// it terminates. If the worker doesn't terminate after a short time, stop
		// signals it with os.Interrupt (where supported), then os.Kill.
		//
		// stop returns the error the process terminated with, if any (same as
		// w.waitErr).
		//
		// stop must be called at least once after start returns successfully, even if
		// the worker process terminates unexpectedly.
	**/
	@:keep
	public function _stop():Error
		return __self__.value._stop();

	/**
		// start runs a new worker process.
		//
		// If the process couldn't be started, start returns an error. Start won't
		// return later termination errors from the process if they occur.
		//
		// If the process starts successfully, start returns nil. stop must be called
		// once later to clean up, even if the process terminates on its own.
		//
		// When the process terminates, w.waitErr is set to the error (if any), and
		// w.termC is closed.
	**/
	@:keep
	public function _start():Error
		return __self__.value._start();

	/**
		// startAndPing starts the worker process and sends it a message to make sure it
		// can communicate.
		//
		// startAndPing returns an error if any part of this didn't work, including if
		// the context is expired or the worker process was interrupted before it
		// responded. Errors that happen after start but before the ping response
		// likely indicate that the worker did not call F.Fuzz or called F.Fail first.
		// We don't record crashers for these errors.
	**/
	@:keep
	public function _startAndPing(_ctx:stdgo.context.Context.Context):Error
		return __self__.value._startAndPing(_ctx);

	@:keep
	public function _isRunning():Bool
		return __self__.value._isRunning();

	/**
		// minimize tells a worker process to attempt to find a smaller value that
		// either causes an error (if we started minimizing because we found an input
		// that causes an error) or preserves new coverage (if we started minimizing
		// because we found an input that expands coverage).
	**/
	@:keep
	public function _minimize(_ctx:stdgo.context.Context.Context, _input:T_fuzzMinimizeInput):{var _0:T_fuzzResult; var _1:Error;}
		return __self__.value._minimize(_ctx, _input);

	/**
		// coordinate runs the test binary to perform fuzzing.
		//
		// coordinate loops until ctx is cancelled or a fatal error is encountered.
		// If a test process terminates unexpectedly while fuzzing, coordinate will
		// attempt to restart and continue unless the termination can be attributed
		// to an interruption (from a timer or the user).
		//
		// While looping, coordinate receives inputs from the coordinator, passes
		// those inputs to the worker process, then passes the results back to
		// the coordinator.
	**/
	@:keep
	public function _coordinate(_ctx:stdgo.context.Context.Context):Error
		return __self__.value._coordinate(_ctx);

	/**
		// cleanup releases persistent resources associated with the worker.
	**/
	@:keep
	public function _cleanup():Error
		return __self__.value._cleanup();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_worker>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.fuzz.Fuzz.T_worker_asInterface) class T_worker_static_extension {
	/**
		// stop tells the worker process to exit by closing w.client, then blocks until
		// it terminates. If the worker doesn't terminate after a short time, stop
		// signals it with os.Interrupt (where supported), then os.Kill.
		//
		// stop returns the error the process terminated with, if any (same as
		// w.waitErr).
		//
		// stop must be called at least once after start returns successfully, even if
		// the worker process terminates unexpectedly.
	**/
	@:keep
	static public function _stop(_w:Ref<T_worker>):Error
		throw "internal.fuzz._stop is not yet implemented";

	/**
		// start runs a new worker process.
		//
		// If the process couldn't be started, start returns an error. Start won't
		// return later termination errors from the process if they occur.
		//
		// If the process starts successfully, start returns nil. stop must be called
		// once later to clean up, even if the process terminates on its own.
		//
		// When the process terminates, w.waitErr is set to the error (if any), and
		// w.termC is closed.
	**/
	@:keep
	static public function _start(_w:Ref<T_worker>):Error
		throw "internal.fuzz._start is not yet implemented";

	/**
		// startAndPing starts the worker process and sends it a message to make sure it
		// can communicate.
		//
		// startAndPing returns an error if any part of this didn't work, including if
		// the context is expired or the worker process was interrupted before it
		// responded. Errors that happen after start but before the ping response
		// likely indicate that the worker did not call F.Fuzz or called F.Fail first.
		// We don't record crashers for these errors.
	**/
	@:keep
	static public function _startAndPing(_w:Ref<T_worker>, _ctx:stdgo.context.Context.Context):Error
		throw "internal.fuzz._startAndPing is not yet implemented";

	@:keep
	static public function _isRunning(_w:Ref<T_worker>):Bool
		throw "internal.fuzz._isRunning is not yet implemented";

	/**
		// minimize tells a worker process to attempt to find a smaller value that
		// either causes an error (if we started minimizing because we found an input
		// that causes an error) or preserves new coverage (if we started minimizing
		// because we found an input that expands coverage).
	**/
	@:keep
	static public function _minimize(_w:Ref<T_worker>, _ctx:stdgo.context.Context.Context, _input:T_fuzzMinimizeInput):{var _0:T_fuzzResult; var _1:Error;}
		throw "internal.fuzz._minimize is not yet implemented";

	/**
		// coordinate runs the test binary to perform fuzzing.
		//
		// coordinate loops until ctx is cancelled or a fatal error is encountered.
		// If a test process terminates unexpectedly while fuzzing, coordinate will
		// attempt to restart and continue unless the termination can be attributed
		// to an interruption (from a timer or the user).
		//
		// While looping, coordinate receives inputs from the coordinator, passes
		// those inputs to the worker process, then passes the results back to
		// the coordinator.
	**/
	@:keep
	static public function _coordinate(_w:Ref<T_worker>, _ctx:stdgo.context.Context.Context):Error
		throw "internal.fuzz._coordinate is not yet implemented";

	/**
		// cleanup releases persistent resources associated with the worker.
	**/
	@:keep
	static public function _cleanup(_w:Ref<T_worker>):Error
		throw "internal.fuzz._cleanup is not yet implemented";
}

class T_workerServer_asInterface {
	/**
		// ping does nothing. The coordinator calls this method to ensure the worker
		// has called F.Fuzz and can communicate.
	**/
	@:keep
	public function _ping(_ctx:stdgo.context.Context.Context, _args:T_pingArgs):T_pingResponse
		return __self__.value._ping(_ctx, _args);

	/**
		// minimizeInput applies a series of minimizing transformations on the provided
		// vals, ensuring that each minimization still causes an error, or keeps
		// coverage, in fuzzFn. It uses the context to determine how long to run,
		// stopping once closed. It returns a bool indicating whether minimization was
		// successful and an error if one was found.
	**/
	@:keep
	public function _minimizeInput(_ctx:stdgo.context.Context.Context, _vals:Slice<AnyInterface>, _mem:Ref<T_sharedMem>,
			_args:T_minimizeArgs):{var _0:Bool; var _1:Error;}
		return __self__.value._minimizeInput(_ctx, _vals, _mem, _args);

	@:keep
	public function _minimize(_ctx:stdgo.context.Context.Context, _args:T_minimizeArgs):T_minimizeResponse
		return __self__.value._minimize(_ctx, _args);

	/**
		// fuzz runs the test function on random variations of the input value in shared
		// memory for a limited duration or number of iterations.
		//
		// fuzz returns early if it finds an input that crashes the fuzz function (with
		// fuzzResponse.Err set) or an input that expands coverage (with
		// fuzzResponse.InterestingDuration set).
		//
		// fuzz does not modify the input in shared memory. Instead, it saves the
		// initial PRNG state in shared memory and increments a counter in shared
		// memory before each call to the test function. The caller may reconstruct
		// the crashing input with this information, since the PRNG is deterministic.
	**/
	@:keep
	public function _fuzz(_ctx:stdgo.context.Context.Context, _args:T_fuzzArgs):T_fuzzResponse
		return __self__.value._fuzz(_ctx, _args);

	/**
		// serve reads serialized RPC messages on fuzzIn. When serve receives a message,
		// it calls the corresponding method, then sends the serialized result back
		// on fuzzOut.
		//
		// serve handles RPC calls synchronously; it will not attempt to read a message
		// until the previous call has finished.
		//
		// serve returns errors that occurred when communicating over pipes. serve
		// does not return errors from method calls; those are passed through serialized
		// responses.
	**/
	@:keep
	public function _serve(_ctx:stdgo.context.Context.Context):Error
		return __self__.value._serve(_ctx);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_workerServer>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.fuzz.Fuzz.T_workerServer_asInterface) class T_workerServer_static_extension {
	/**
		// ping does nothing. The coordinator calls this method to ensure the worker
		// has called F.Fuzz and can communicate.
	**/
	@:keep
	static public function _ping(_ws:Ref<T_workerServer>, _ctx:stdgo.context.Context.Context, _args:T_pingArgs):T_pingResponse
		throw "internal.fuzz._ping is not yet implemented";

	/**
		// minimizeInput applies a series of minimizing transformations on the provided
		// vals, ensuring that each minimization still causes an error, or keeps
		// coverage, in fuzzFn. It uses the context to determine how long to run,
		// stopping once closed. It returns a bool indicating whether minimization was
		// successful and an error if one was found.
	**/
	@:keep
	static public function _minimizeInput(_ws:Ref<T_workerServer>, _ctx:stdgo.context.Context.Context, _vals:Slice<AnyInterface>, _mem:Ref<T_sharedMem>,
			_args:T_minimizeArgs):{var _0:Bool; var _1:Error;
	}
		throw "internal.fuzz._minimizeInput is not yet implemented";

	@:keep
	static public function _minimize(_ws:Ref<T_workerServer>, _ctx:stdgo.context.Context.Context, _args:T_minimizeArgs):T_minimizeResponse
		throw "internal.fuzz._minimize is not yet implemented";

	/**
		// fuzz runs the test function on random variations of the input value in shared
		// memory for a limited duration or number of iterations.
		//
		// fuzz returns early if it finds an input that crashes the fuzz function (with
		// fuzzResponse.Err set) or an input that expands coverage (with
		// fuzzResponse.InterestingDuration set).
		//
		// fuzz does not modify the input in shared memory. Instead, it saves the
		// initial PRNG state in shared memory and increments a counter in shared
		// memory before each call to the test function. The caller may reconstruct
		// the crashing input with this information, since the PRNG is deterministic.
	**/
	@:keep
	static public function _fuzz(_ws:Ref<T_workerServer>, _ctx:stdgo.context.Context.Context, _args:T_fuzzArgs):T_fuzzResponse
		throw "internal.fuzz._fuzz is not yet implemented";

	/**
		// serve reads serialized RPC messages on fuzzIn. When serve receives a message,
		// it calls the corresponding method, then sends the serialized result back
		// on fuzzOut.
		//
		// serve handles RPC calls synchronously; it will not attempt to read a message
		// until the previous call has finished.
		//
		// serve returns errors that occurred when communicating over pipes. serve
		// does not return errors from method calls; those are passed through serialized
		// responses.
	**/
	@:keep
	static public function _serve(_ws:Ref<T_workerServer>, _ctx:stdgo.context.Context.Context):Error
		throw "internal.fuzz._serve is not yet implemented";
}

class T_workerClient_asInterface {
	/**
		// callLocked sends an RPC from the coordinator to the worker process and waits
		// for the response. The callLocked may be cancelled with ctx.
	**/
	@:keep
	public function _callLocked(_ctx:stdgo.context.Context.Context, _c:T_call, _resp:AnyInterface):Error
		return __self__.value._callLocked(_ctx, _c, _resp);

	/**
		// ping tells the worker to call the ping method. See workerServer.ping.
	**/
	@:keep
	public function _ping(_ctx:stdgo.context.Context.Context):Error
		return __self__.value._ping(_ctx);

	/**
		// fuzz tells the worker to call the fuzz method. See workerServer.fuzz.
	**/
	@:keep
	public function _fuzz(_ctx:stdgo.context.Context.Context, _entryIn:CorpusEntry, _args:T_fuzzArgs):{
		var _0:CorpusEntry;
		var _1:T_fuzzResponse;
		var _2:Bool;
		var _3:Error;
	}
		return __self__.value._fuzz(_ctx, _entryIn, _args);

	/**
		// minimize tells the worker to call the minimize method. See
		// workerServer.minimize.
	**/
	@:keep
	public function _minimize(_ctx:stdgo.context.Context.Context, _entryIn:CorpusEntry,
			_args:T_minimizeArgs):{var _0:CorpusEntry; var _1:T_minimizeResponse; var _2:Error;}
		return __self__.value._minimize(_ctx, _entryIn, _args);

	/**
		// Close shuts down the connection to the RPC server (the worker process) by
		// closing fuzz_in. Close drains fuzz_out (avoiding a SIGPIPE in the worker),
		// and closes it after the worker process closes the other end.
	**/
	@:keep
	public function close():Error
		return __self__.value.close();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_workerClient>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.fuzz.Fuzz.T_workerClient_asInterface) class T_workerClient_static_extension {
	/**
		// callLocked sends an RPC from the coordinator to the worker process and waits
		// for the response. The callLocked may be cancelled with ctx.
	**/
	@:keep
	static public function _callLocked(_wc:Ref<T_workerClient>, _ctx:stdgo.context.Context.Context, _c:T_call, _resp:AnyInterface):Error
		throw "internal.fuzz._callLocked is not yet implemented";

	/**
		// ping tells the worker to call the ping method. See workerServer.ping.
	**/
	@:keep
	static public function _ping(_wc:Ref<T_workerClient>, _ctx:stdgo.context.Context.Context):Error
		throw "internal.fuzz._ping is not yet implemented";

	/**
		// fuzz tells the worker to call the fuzz method. See workerServer.fuzz.
	**/
	@:keep
	static public function _fuzz(_wc:Ref<T_workerClient>, _ctx:stdgo.context.Context.Context, _entryIn:CorpusEntry, _args:T_fuzzArgs):{
		var _0:CorpusEntry;
		var _1:T_fuzzResponse;
		var _2:Bool;
		var _3:Error;
	}
		throw "internal.fuzz._fuzz is not yet implemented";

	/**
		// minimize tells the worker to call the minimize method. See
		// workerServer.minimize.
	**/
	@:keep
	static public function _minimize(_wc:Ref<T_workerClient>, _ctx:stdgo.context.Context.Context, _entryIn:CorpusEntry,
			_args:T_minimizeArgs):{var _0:CorpusEntry; var _1:T_minimizeResponse; var _2:Error;}
		throw "internal.fuzz._minimize is not yet implemented";

	/**
		// Close shuts down the connection to the RPC server (the worker process) by
		// closing fuzz_in. Close drains fuzz_out (avoiding a SIGPIPE in the worker),
		// and closes it after the worker process closes the other end.
	**/
	@:keep
	static public function close(_wc:Ref<T_workerClient>):Error
		throw "internal.fuzz.close is not yet implemented";
}

class T_contextReader_asInterface {
	@:keep
	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_b);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_contextReader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(internal.fuzz.Fuzz.T_contextReader_asInterface) class T_contextReader_static_extension {
	@:keep
	static public function read(_cr:Ref<T_contextReader>, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		throw "internal.fuzz.read is not yet implemented";
}
