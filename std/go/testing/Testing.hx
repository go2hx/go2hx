package go.testing;

function mainStart(_deps, _tests, _benchmarks, _examples) {
	final args = @:define("(sys || hxnodejs)", []) Sys.args();
	var testlist:Array<go._internal.testing.Testing_internaltest.InternalTest> = [];
	var runArgBool = false;
	var benchBool = false;
	if (haxe.macro.Compiler.getDefine("bench") != null)
		benchBool = true;
	var excludes:Array<String> = [];
	for (i in 0...args.length) {
		if (args[i] == "-bench" || args[i] == "--bench") {
			benchBool = true;
			continue;
		}
		if ((args[i] == "-run" || args[i] == "--run") && i < args.length - 1) {
			final match = args[i + 1];
			runArgBool = true;
			for (_ => test in _tests) {
				if (test.name.toString().indexOf(match) == 0) {
					testlist.push(test);
				}
			}
			continue;
		}
	}
	if (!runArgBool)
		testlist = _tests.__toArray__();
	for (i in 0...args.length) {
		if ((args[i] == "-exclude" || args[i] == "--exclude") && i < args.length - 1) {
			final excludes = args[i + 1].split(",");
			for (test in testlist) {
				if (excludes.indexOf(test.name) != -1)
					testlist.remove(test);
			}
		}
	}
	var m = new go._internal.testing.Testing_m.M(_deps, testlist, _benchmarks, _fuzzTargets, _examples);
	@:privateAccess m.benchBool = benchBool;
	return m;
}

function testing()
	return true;

function coverMode()
	return "";

function short()
	return true;

function allocsPerRun() {
	trace("allocsPerRun not implemented");
	return 0;
}

function verbose() {
	return false;
}

@:recv(B)
function resetTimer(_b) {
	if (_b._timerOn) {
		/*runtime.ReadMemStats(&memStats)
			b.startAllocs = memStats.Mallocs
			b.startBytes = memStats.TotalAlloc */
		_b._common._start = go._internal.time.Time_now.now();
	}
	_b._common._duration = 0;
	_b._netAllocs = 0;
	_b._netBytes = 0;
}

@:recv(B)
function startTimer(_b) {
	if (!_b._timerOn) {
		_b._common._start = go._internal.time.Time_now.now();
		_b._timerOn = true;
	}
}

@:recv(B)
function stopTimer(_b) {
	if (_b._timerOn) {
		_b._common._duration += go._internal.time.Time_since.since(_b._common._start);
		_b._timerOn = false;
	}
}

@:recv(B)
overload extern inline function run(_b, _name) {
	go.Go.println("- SUBRUN  " + _name.toString());
	_b.n = 1;
	_f(_b);
	return true;
}

@:recv(T_)
overload extern inline function run(_t, _name) {
	go.Go.println("- SUBRUN  " + _name.toString());
	_f(_t);
	return true;
}

@:recv(T_common)
function parallel() {}

@:recv(T_)
function parallel() {}

@:recv(T_common)
function log() {}

@:recv(T_common)
function logf() {}

@:recv(T_common)
function fatal(_c, _args) {
	go._internal.fmt.Fmt_println.println(...[for (arg in _args) arg]);
	_c.failNow();
}

@:recv(T_common)
function cleanup(_c) {
	_c._cleanups = _c._cleanups.__append__(_f);
}

@:recv(T_common)
function fatalf(_c) {
	go._internal.fmt.Fmt_printf.printf(_format, ...[for (arg in _args) arg]);
	_c.failNow();
}

@:recv(T_common)
function tempDir(_c) {
	final pattern = "";
	final obj = go._internal.os.Os_mkdirtemp.mkdirTemp("", pattern);
	_c._tempDir = obj._0;
	_c._tempDirErr = obj._1;
	if (_c._tempDirErr != null) {
		_c.fatal(new go.AnyInterface(_c._tempDirErr, _c._tempDirErr.__underlying__().type));
	} else {
		_c.cleanup(function() {
			go._internal.os.Os_removeall.removeAll(_c._tempDir);
		});
	}
	return _c._tempDir;
}

@:recv(T_common)
function skipped(_c)
	return _c._skipped;

@:recv(T_common)
function fail(_c) {
	_c._failed = true;
	if (@:privateAccess ++ _c.failCount > 20_000) {
		trace("fail count exceeded max");
		@:define("(sys || hxnodejs)") Sys.exit(1);
	}
}

@:recv(T_common)
function skipf(_c) {
	go._internal.fmt.Fmt_printf.printf(_format, ...[for (arg in _args) arg]);
	_c.skipNow();
}

@:recv(T_common)
function skip(_c) {
	go._internal.fmt.Fmt_println.println(...[for (arg in _args) arg]);
	_c.skipNow();
}

@:recv(T_common)
function skipNow() {
	_c._skipped = true;
	throw "__skip__";
}

@:recv(T_common)
function helper() {}

@:recv(T_common)
function failNow(_c) {
	_c._failed = true;
	throw "__fail__";
}

@:recv(T_common)
function failed(_c)
	return _c._failed;

@:recv(T_common)
function error(_c) {
	go._internal.fmt.Fmt_println.println(...[for (arg in _args) arg]);
	_c.fail();
}

@:recv(T_common)
function errorf(_c) {
	go._internal.fmt.Fmt_printf.printf(_format + "\n", ...[for (arg in _args) arg]);
	_c.fail();
}

@:recv(M)
function run(_m) {
	// get working directory
	final home = Sys.getEnv(if (Sys.systemName() == "Windows") "UserProfile" else "HOME");
	final goRoot = home +  "/.go/" + go._internal.runtime.Runtime_version.version();
	final workingDirectory = goRoot + "/src/" + go._internal.testing.internal.testdeps.Testdeps_importpath.importPath;
	// set vars
	final chatty = true;
	final chattyTimes = false;
	// use go version of path for passing go tests
	go._internal.internal.reflect.Reflect.useHaxePath = false;
	_m._numRun++;
	
	var exitCodeReason = "";
	for (test in _m._tests) {
		var error = false;
		final output = new StringBuf();
		var t = new go._internal.testing.Testing_t_.T_(null, null, null, output);
		// set the working directory for every test
		try {
			Sys.setCwd(workingDirectory);
		}catch(_) {}
		// time stamp
		final stamp = @:define("(sys || hxnodejs)", haxe.Timer.stamp()) std.Sys.time();
		go.Go.println("=== RUN  " + test.name.toString());
		try {
			test.f(t);
		} catch (e) {
			go.Go.println(e.details());
			if (e.message != "__skip__") {
				error = true;
			}
		}
		for (f in t._common._cleanups) {
			f();
		}
		final dstr = (@:define("(sys || hxnodejs)", haxe.Timer.stamp()) std.Sys.time()) - stamp; // duration
		if (t.failed() || error) {
			final reason = '\n-- FAIL: ${test.name.toString()}' + (chattyTimes ? ' ($dstr)' : '');
			go.Go.println(reason);
			exitCodeReason = reason;
			_m._exitCode = 1;
		} else if (chatty) {
			if (t.skipped()) {
				go.Go.println('\n-- SKIP: ${test.name.toString()}' + (chattyTimes ? ' ($dstr)' : ''));
				go.Go.println('\n-- PASS: ${test.name.toString()}' + (chattyTimes ? ' ($dstr)' : ''));
			} else {
				go.Go.println('\n-- PASS: ${test.name.toString()}' + (chattyTimes ? ' ($dstr)' : ''));
			}
		}
		go.Go.println(output.toString());
	}
	if (@:privateAccess _m.benchBool) {
		go.Go.println("BENCHMARKING");
		for (bench in _m._benchmarks) {
			var b = new go._internal.testing.Testing_b.B();
			var error = false;
			try {
				b.resetTimer();
				b.startTimer();
				bench.f(b);
				b.stopTimer();
			} catch (e) {
				go.Go.println(e.details());
				error = true;
			}
			for (f in b._common._cleanups) {
				f();
			}
			if (error) {
				final reason = '\n-- FAIL: ${bench.name.toString()}';
				go.Go.println(reason);
				exitCodeReason = reason;
				_m._exitCode = 1;
			} else if (chatty) {
				if (b.skipped()) {
					go.Go.println('\n-- SKIP: ${bench.name.toString()}');
				} else {
					final output = b._common._duration.string().toString();
					// get allocs and memory here
					go.Go.println('\n-- BENCH: ${bench.name.toString()}' + ' ' + output);
				}
			}
		}
	}
	if (_m._exitCode != 0)
		trace("exitCode: " + _m._exitCode + " exitCodeReason: " + exitCodeReason);
	return _m._exitCode;
}

function benchmark()
	return new go._internal.testing.Testing_benchmarkresult.BenchmarkResult();
