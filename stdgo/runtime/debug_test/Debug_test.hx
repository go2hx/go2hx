package stdgo.runtime.debug_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

typedef I = StructType & {
	public function m():Void;
};

@:structInit class Obj {
	public function new() {}

	public function __copy__() {
		return new Obj();
	}
}

@:structInit @:using(stdgo.runtime.debug_test.Debug_test.G_static_extension) class G<T> {
	public function new() {}

	public function __copy__() {
		return new G();
	}
}

@:named typedef T = GoInt;

function testReadGCStats(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{
		var _a0 = setGCPercent((-1 : GoInt));
		__deferstack__.unshift(() -> setGCPercent(_a0));
	};
	try {
		var _stats:GCStats = ({} : GCStats);
		var _mstats:stdgo.runtime.Runtime.MemStats = ({} : stdgo.runtime.Runtime.MemStats);
		var _min:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration),
			_max:stdgo.time.Time.Duration = ((0 : GoInt64) : stdgo.time.Time.Duration);
		_stats.pauseQuantiles = new Slice<stdgo.time.Time.Duration>((10 : GoInt).toBasic(), 0,
			...[for (i in 0...(10 : GoInt).toBasic()) ((0 : GoInt64) : stdgo.time.Time.Duration)]);
		readGCStats((_stats : Ref<GCStats>));
		_runtime.gc();
		readGCStats((_stats : Ref<GCStats>));
		_runtime.readMemStats((_mstats : Ref<stdgo.runtime.Runtime.MemStats>));
		if (_stats.numGC != ((_mstats.numGC : GoInt64))) {
			_t.errorf(Go.str("stats.NumGC = %d, but mstats.NumGC = %d"), Go.toInterface(_stats.numGC), Go.toInterface(_mstats.numGC));
		};
		if (_stats.pauseTotal != ((_mstats.pauseTotalNs : stdgo.time.Time.Duration))) {
			_t.errorf(Go.str("stats.PauseTotal = %d, but mstats.PauseTotalNs = %d"), Go.toInterface(Go.asInterface(_stats.pauseTotal)),
				Go.toInterface(_mstats.pauseTotalNs));
		};
		if (_stats.lastGC.unixNano() != ((_mstats.lastGC : GoInt64))) {
			_t.errorf(Go.str("stats.LastGC.UnixNano = %d, but mstats.LastGC = %d"), Go.toInterface(_stats.lastGC.unixNano()), Go.toInterface(_mstats.lastGC));
		};
		var _n:GoInt = (_mstats.numGC : GoInt);
		if (_n > (_mstats.pauseNs.length)) {
			_n = (_mstats.pauseNs.length);
		};
		if ((_stats.pause.length) != (_n)) {
			_t.errorf(Go.str("len(stats.Pause) = %d, want %d"), Go.toInterface((_stats.pause.length)), Go.toInterface(_n));
		} else {
			var _off:GoInt = (((_mstats.numGC : GoInt) + _mstats.pauseNs.length) - (1 : GoInt)) % (_mstats.pauseNs.length);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _n, _i++, {
					var _dt:stdgo.time.Time.Duration = _stats.pause[_i];
					if (_dt != ((_mstats.pauseNs[_off] : stdgo.time.Time.Duration))) {
						_t.errorf(Go.str("stats.Pause[%d] = %d, want %d"), Go.toInterface(_i), Go.toInterface(Go.asInterface(_dt)),
							Go.toInterface(_mstats.pauseNs[_off]));
					};
					if (_max < _dt) {
						_max = _dt;
					};
					if ((_min > _dt) || (_i == (0 : GoInt))) {
						_min = _dt;
					};
					_off = ((_off + _mstats.pauseNs.length) - (1 : GoInt)) % (_mstats.pauseNs.length);
				});
			};
		};
		var _q = _stats.pauseQuantiles;
		var _nq:GoInt = (_q.length);
		if ((_q[(0 : GoInt)] != _min) || (_q[_nq - (1 : GoInt)] != _max)) {
			_t.errorf(Go.str("stats.PauseQuantiles = [%d, ..., %d], want [%d, ..., %d]"), Go.toInterface(Go.asInterface(_q[(0 : GoInt)])),
				Go.toInterface(Go.asInterface(_q[_nq - (1 : GoInt)])), Go.toInterface(Go.asInterface(_min)), Go.toInterface(Go.asInterface(_max)));
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_nq - (1 : GoInt)), _i++, {
				if (_q[_i] > _q[_i + (1 : GoInt)]) {
					_t.errorf(Go.str("stats.PauseQuantiles[%d]=%d > stats.PauseQuantiles[%d]=%d"), Go.toInterface(_i), Go.toInterface(Go.asInterface(_q[_i])),
						Go.toInterface(_i + (1 : GoInt)), Go.toInterface(Go.asInterface(_q[_i + (1 : GoInt)])));
				};
			});
		};
		if ((_stats.pauseEnd.length) != (_n)) {
			_t.fatalf(Go.str("len(stats.PauseEnd) = %d, want %d"), Go.toInterface((_stats.pauseEnd.length)), Go.toInterface(_n));
		};
		var _off:GoInt = (((_mstats.numGC : GoInt) + _mstats.pauseEnd.length) - (1 : GoInt)) % (_mstats.pauseEnd.length);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _n, _i++, {
				var _dt:stdgo.time.Time.Time = (_stats.pauseEnd[_i] == null ? null : _stats.pauseEnd[_i].__copy__());
				if (_dt.unixNano() != ((_mstats.pauseEnd[_off] : GoInt64))) {
					_t.errorf(Go.str("stats.PauseEnd[%d] = %d, want %d"), Go.toInterface(_i), Go.toInterface(_dt.unixNano()),
						Go.toInterface(_mstats.pauseEnd[_off]));
				};
				_off = ((_off + _mstats.pauseEnd.length) - (1 : GoInt)) % (_mstats.pauseEnd.length);
			});
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testFreeOSMemory(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	_big = new Slice<GoUInt8>((33554432 : GoInt).toBasic(), 0, ...[for (i in 0...(33554432 : GoInt).toBasic()) (0 : GoUInt8)]);
	_runtime.gc();
	var _before:stdgo.runtime.Runtime.MemStats = ({} : stdgo.runtime.Runtime.MemStats);
	_runtime.readMemStats((_before : Ref<stdgo.runtime.Runtime.MemStats>));
	_big = (null : Slice<GoUInt8>);
	freeOSMemory();
	var _after:stdgo.runtime.Runtime.MemStats = ({} : stdgo.runtime.Runtime.MemStats);
	_runtime.readMemStats((_after : Ref<stdgo.runtime.Runtime.MemStats>));
	if (_after.heapReleased <= _before.heapReleased) {
		_t.fatalf(Go.str("no memory released: %d -> %d"), Go.toInterface(_before.heapReleased), Go.toInterface(_after.heapReleased));
	};
	var _slack:GoUInt64 = (("16777216" : GoUInt64) : GoUInt64);
	var _pageSize:GoUInt64 = (_os.getpagesize() : GoUInt64);
	if (_pageSize > ("8192" : GoUInt64)) {
		_slack = _slack + (_pageSize * (("2" : GoUInt64) : GoUInt64));
	};
	if (_slack > ("33554432" : GoUInt64)) {
		return;
	};
	if ((_after.heapReleased - _before.heapReleased) < ((("33554432" : GoUInt64) : GoUInt64) - _slack)) {
		_t.fatalf(Go.str("less than %d released: %d -> %d"), Go.toInterface((33554432 : GoInt)), Go.toInterface(_before.heapReleased),
			Go.toInterface(_after.heapReleased));
	};
}

function testSetGCPercent(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	_testenv.skipFlaky(Go.asInterface(_t), (20076 : GoInt));
	try {
		var _old:GoInt = setGCPercent((123 : GoInt));
		var _new:GoInt = setGCPercent(_old);
		if (_new != ((123 : GoInt))) {
			_t.errorf(Go.str("SetGCPercent(123); SetGCPercent(x) = %d, want 123"), Go.toInterface(_new));
		};
		__deferstack__.unshift(() -> {
			var a = function():Void {
				setGCPercent(_old);
				{
					final __tmp__0 = (null : AnyInterface);
					final __tmp__1 = (null : AnyInterface);
					_setGCPercentBallast = __tmp__0;
					_setGCPercentSink = __tmp__1;
				};
			};
			a();
		});
		setGCPercent((100 : GoInt));
		_runtime.gc();
		{};
		var _ms:stdgo.runtime.Runtime.MemStats = ({} : stdgo.runtime.Runtime.MemStats);
		_runtime.readMemStats((_ms : Ref<stdgo.runtime.Runtime.MemStats>));
		_setGCPercentBallast = Go.toInterface(new Slice<GoUInt8>((("104857600" : GoUInt64) - _ms.alloc : GoInt).toBasic(), 0, ...[
			for (i in 0...(("104857600" : GoUInt64) - _ms.alloc : GoInt).toBasic()) (0 : GoUInt8)
		]));
		_runtime.gc();
		_runtime.readMemStats((_ms : Ref<stdgo.runtime.Runtime.MemStats>));
		if (_abs64(("104857600" : GoInt64) - (_ms.alloc : GoInt64)) > ("10485760" : GoInt64)) {
			_t.fatalf(Go.str("failed to set up baseline live heap; got %d MB, want %d MB"), Go.toInterface(_ms.alloc >> ("20" : GoUInt64)),
				Go.toInterface((100 : GoInt)));
		};
		{};
		{
			var _want:GoInt64 = (("209715200" : GoInt64) : GoInt64);
			if (_abs64(_want - (_ms.nextGC : GoInt64)) > ("20971520" : GoInt64)) {
				_t.errorf(Go.str("NextGC = %d MB, want %d±%d MB"), Go.toInterface(_ms.nextGC >> ("20" : GoUInt64)),
					Go.toInterface(_want >> ("20" : GoUInt64)), Go.toInterface((20 : GoInt)));
			};
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (125829120:GoInt), _i = _i + ((1024 : GoInt)), {
				_setGCPercentSink = Go.toInterface(new Slice<GoUInt8>((1024 : GoInt).toBasic(), 0,
					...[for (i in 0...(1024 : GoInt).toBasic()) (0 : GoUInt8)]));
			});
		};
		_setGCPercentSink = (null : AnyInterface);
		setGCPercent((50 : GoInt));
		_runtime.readMemStats((_ms : Ref<stdgo.runtime.Runtime.MemStats>));
		{
			var _want:GoInt64 = (("157286400" : GoInt64) : GoInt64);
			if (_abs64(_want - (_ms.nextGC : GoInt64)) > ("20971520" : GoInt64)) {
				_t.errorf(Go.str("NextGC = %d MB, want %d±%d MB"), Go.toInterface(_ms.nextGC >> ("20" : GoUInt64)),
					Go.toInterface(_want >> ("20" : GoUInt64)), Go.toInterface((20 : GoInt)));
			};
		};
		setGCPercent((100 : GoInt));
		_runtime.gc();
		_setGCPercentSink = Go.toInterface(new Slice<GoUInt8>(((20971520 : GoInt) : GoInt).toBasic(), 0,
			...[for (i in 0...(20971520 : GoInt).toBasic()) (0 : GoUInt8)]));
		_runtime.readMemStats((_ms : Ref<stdgo.runtime.Runtime.MemStats>));
		var _ngc1:GoUInt32 = _ms.numGC;
		setGCPercent((10 : GoInt));
		_setGCPercentSink = Go.toInterface(new Slice<GoUInt8>((1048576 : GoInt).toBasic(), 0, ...[for (i in 0...(1048576 : GoInt).toBasic()) (0 : GoUInt8)]));
		_runtime.readMemStats((_ms : Ref<stdgo.runtime.Runtime.MemStats>));
		var _ngc2:GoUInt32 = _ms.numGC;
		if (_ngc1 == (_ngc2)) {
			_t.errorf(Go.str("expected GC to run but it did not"));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testSetMaxThreadsOvf(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _nt:GoInt = setMaxThreads((1073741824 : GoInt));
	setMaxThreads(_nt);
}

function testWriteHeapDumpNonempty(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (true) {
		_t.skipf(Go.str("WriteHeapDump is not available on %s."), Go.toInterface(Go.str("js")));
	};
	try {
		var __tmp__ = _os.createTemp(Go.str(), Go.str("heapdumptest")),
			_f:Ref<stdgo.os.Os.File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("TempFile failed: %v"), Go.toInterface(_err));
		};
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> _os.remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		writeHeapDump(_f.fd());
		var __tmp__ = _f.stat(),
			_fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("Stat failed: %v"), Go.toInterface(_err));
		};
		{};
		{
			var _size:GoInt64 = _fi.size();
			if (_size < ("1":GoInt64)) {
				_t.fatalf(Go.str("Heap dump size %d bytes, expected at least %d bytes"), Go.toInterface(_size), Go.toInterface((1 : GoInt)));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testWriteHeapDumpFinalizers(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (true) {
		_t.skipf(Go.str("WriteHeapDump is not available on %s."), Go.toInterface(Go.str("js")));
	};
	try {
		var __tmp__ = _os.createTemp(Go.str(), Go.str("heapdumptest")),
			_f:Ref<stdgo.os.Os.File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("TempFile failed: %v"), Go.toInterface(_err));
		};
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> _os.remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		stdgo.fmt.Fmt.println(Go.str("allocating objects"));
		var _x = ((new stdgo.runtime.debug_test.Debug_test.Obj() : stdgo.runtime.debug_test.Debug_test.Obj) : Ref<stdgo.runtime.debug_test.Debug_test.Obj>);
		_runtime.setFinalizer(Go.toInterface(_x), Go.toInterface(_objfin));
		var _y = ((new stdgo.runtime.debug_test.Debug_test.Obj() : stdgo.runtime.debug_test.Debug_test.Obj) : Ref<stdgo.runtime.debug_test.Debug_test.Obj>);
		_runtime.setFinalizer(Go.toInterface(_y), Go.toInterface(_objfin));
		stdgo.fmt.Fmt.println(Go.str("starting gc"));
		_runtime.gc();
		stdgo.fmt.Fmt.println(Go.str("starting dump"));
		writeHeapDump(_f.fd());
		stdgo.fmt.Fmt.println(Go.str("done dump"));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testWriteHeapDumpTypeName(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (true) {
		_t.skipf(Go.str("WriteHeapDump is not available on %s."), Go.toInterface(Go.str("js")));
	};
	try {
		var __tmp__ = _os.createTemp(Go.str(), Go.str("heapdumptest")),
			_f:Ref<stdgo.os.Os.File> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("TempFile failed: %v"), Go.toInterface(_err));
		};
		{
			var _a0 = _f.name();
			__deferstack__.unshift(() -> _os.remove(_a0));
		};
		__deferstack__.unshift(() -> _f.close());
		writeHeapDump(_f.fd());
		_dummy.m();
		_dummy2.m();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function fuzzParseBuildInfoRoundTrip(_f:Ref<stdgo.testing.Testing.F>):Void {
	_f.add(Go.toInterface(_strip("\n\t\tpath\trsc.io/fortune\n\t\tmod\trsc.io/fortune\tv1.0.0\n\t\t")));
	_f.add(Go.toInterface("path\tcmd/test2json"));
	_f.add(Go.toInterface(_strip("\n\t\tgo\t1.18\n\t\tpath\texample.com/m\n\t\tmod\texample.com/m\t(devel)\t\n\t\tbuild\t-compiler=gc\n\t\t")));
	_f.add(Go.toInterface(_strip("\n\t\tgo\t1.18\n\t\tpath\texample.com/m\n\t\tbuild\t-compiler=gc\n\t\t")));
	_f.add(Go.toInterface(_strip("\n\t\tgo 1.18\n\t\tpath example.com/m\n\t\tbuild CRAZY_ENV=\"requires\\nescaping\"\n\t\t")));
	_f.fuzz(Go.toInterface(function(_t:Ref<stdgo.testing.Testing.T>, _s:GoString):Void {
		var __tmp__ = _debug.parseBuildInfo(_s),
			_bi:Ref<BuildInfo> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.log(Go.toInterface(_err));
			return;
		};
		var _s2:GoString = (_bi.string() : GoString);
		var __tmp__ = _debug.parseBuildInfo(_s2),
			_bi2:Ref<BuildInfo> = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_t.fatalf(Go.str("%v:\n%s"), Go.toInterface(_err), Go.toInterface(_s2));
		};
		if (!_reflect.deepEqual(Go.toInterface(_bi2), Go.toInterface(_bi))) {
			_t.fatalf(Go.str("Parsed representation differs.\ninput:\n%s\noutput:\n%s"), Go.toInterface(_s), Go.toInterface(_s2));
		};
	}));
}

function testMain(_m:Ref<stdgo.testing.Testing.M>):Void {
	if (_os.getenv(Go.str("GO_RUNTIME_DEBUG_TEST_DUMP_GOROOT")) != (Go.str())) {
		_fmt.println(Go.toInterface(_runtime.goroot()));
		Sys.exit((0 : GoInt));
	};
	Sys.exit(_m.run());
}

/**
	/|*
	The traceback should look something like this, modulo line numbers and hex constants.
	Don't worry much about the base levels, but check the ones in our own package.

		goroutine 10 [running]:
		runtime/debug.Stack(0x0, 0x0, 0x0)
			/Users/r/go/src/runtime/debug/stack.go:28 +0x80
		runtime/debug.(*T).ptrmethod(0xc82005ee70, 0x0, 0x0, 0x0)
			/Users/r/go/src/runtime/debug/stack_test.go:15 +0x29
		runtime/debug.T.method(0x0, 0x0, 0x0, 0x0)
			/Users/r/go/src/runtime/debug/stack_test.go:18 +0x32
		runtime/debug.TestStack(0xc8201ce000)
			/Users/r/go/src/runtime/debug/stack_test.go:37 +0x38
		testing.tRunner(0xc8201ce000, 0x664b58)
			/Users/r/go/src/testing/testing.go:456 +0x98
		created by testing.RunTests
			/Users/r/go/src/testing/testing.go:561 +0x86d
	*|/
**/
function testStack(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _b = ((0 : stdgo.runtime.debug_test.Debug_test.T) : T)._method();
	var _lines = _strings.split((_b : GoString), Go.str("\n"));
	if ((_lines.length) < (6 : GoInt)) {
		_t.fatal(Go.toInterface(Go.str("too few lines")));
	};
	var _fileGoroot:GoString = Go.str();
	{
		var _envGoroot:GoString = _os.getenv(Go.str("GOROOT"));
		if (_envGoroot != (Go.str())) {
			_t.logf(Go.str("found GOROOT %q from environment; checking embedded GOROOT value"), Go.toInterface(_envGoroot));
			_testenv.mustHaveExec(Go.asInterface(_t));
			var __tmp__ = _os.executable(),
				_exe:GoString = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
			var _cmd = _exec.command(_exe);
			_cmd.env = (_os.environ().__append__(Go.str("GOROOT="), Go.str("GO_RUNTIME_DEBUG_TEST_DUMP_GOROOT=1")));
			var __tmp__ = _cmd.output(),
				_out:Slice<GoUInt8> = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
			_fileGoroot = (_bytes.trimSpace(_out) : GoString);
		} else {
			_fileGoroot = _runtime.goroot();
		};
	};
	var _filePrefix:GoString = Go.str();
	if (_fileGoroot != (Go.str())) {
		_filePrefix = _filepath.toSlash(_fileGoroot) + Go.str("/src/");
	};
	var _n:GoInt = (0 : GoInt);
	var _frame:(GoString, GoString) -> Void = function(_file:GoString, _code:GoString):Void {
		_t.helper();
		var _line:GoString = _lines[_n];
		if (!_strings.contains(_line, _code)) {
			_t.errorf(Go.str("expected %q in %q"), Go.toInterface(_code), Go.toInterface(_line));
		};
		_n++;
		_line = _lines[_n];
		var _wantPrefix:GoString = (Go.str("\t") + _filePrefix) + _file;
		if (!_strings.hasPrefix(_line, _wantPrefix)) {
			_t.errorf(Go.str("in line %q, expected prefix %q"), Go.toInterface(_line), Go.toInterface(_wantPrefix));
		};
		_n++;
	};
	_n++;
	_frame(Go.str("runtime/debug/stack.go"), Go.str("runtime/debug.Stack"));
	_frame(Go.str("runtime/debug/stack_test.go"), Go.str("runtime/debug_test.(*T).ptrmethod"));
	_frame(Go.str("runtime/debug/stack_test.go"), Go.str("runtime/debug_test.T.method"));
	_frame(Go.str("runtime/debug/stack_test.go"), Go.str("runtime/debug_test.TestStack"));
	_frame(Go.str("testing/testing.go"), Go.str());
}

class G_asInterface<T> {
	/**
		//go:noinline
	**/
	@:keep
	public var m:() -> Void;

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<G<T>>;
	var __type__:stdgo.reflect.Reflect.Type;
}

@:keep @:allow(stdgo.runtime.debug_test.Debug_test.G_asInterface) class G_static_extension {
	/**
		//go:noinline
	**/
	@:keep
	macro static public function m<T>(_g:haxe.macro.Expr.ExprOf<G<T>>):haxe.macro.Expr.ExprOf<Void> {
		final tds = [];
		final block = macro {};
		var className = "T__m_";
		{
			className += haxe.macro.Context.signature(haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_g))) + "_";
		};
		final pack = ["stdgo", "generic", className.toLowerCase()];
		try {
			haxe.macro.Context.getType(className);
		} catch (____exec____) {
			final td:haxe.macro.Expr.TypeDefinition = {
				name: className,
				pos: haxe.macro.Context.currentPos(),
				pack: [],
				fields: [
					{
						name: "m",
						pos: haxe.macro.Context.currentPos(),
						kind: FFun({
							expr: block,
							args: [
								{
									var ct = haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_g));
									switch ct {
										case TPath(p):
											if (p.name == "StdTypes" && p.sub == "Null" && p.pack.length == 0) {
												switch p.params[0] {
													case TPType(t):
														ct = t;
													default:
														var _ = false;
												};
											};
										default:
											var _ = false;
									};
									{name: "_g", type: ct};
								}
							],
							ret: haxe.macro.Context.getExpectedType() == null ? null : haxe.macro.Context.toComplexType(haxe.macro.Context.getExpectedType())
						}),
						access: [APublic, AStatic]
					}
				],
				kind: TDClass()
			};
			{
				{
					final t:haxe.macro.Expr.ComplexType = switch haxe.macro.Context.toComplexType(haxe.macro.Context.typeof(_g)) {
						case TPath(p):
							switch p.params[0] {
								case TPType(t):
									t;
								default:
									throw "invalid param t";
							};
						default:
							throw "invalid e";
					};
					final pos = haxe.macro.Context.currentPos();
					final td:haxe.macro.Expr.TypeDefinition = {
						name: "T",
						pos: pos,
						pack: [],
						fields: [],
						meta: [{name: ":follow", pos: pos}],
						kind: TDAlias(t)
					};
					tds.push(td);
				};
			};
			{};
			tds.push(td);
			haxe.macro.Context.defineModule(pack.concat([className]).join("."), tds, haxe.macro.Context.getLocalImports());
		};
		return macro $p{pack.concat([className])}.m($_g);
	}
}
