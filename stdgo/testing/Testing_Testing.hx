package stdgo.testing;
/**
    Package testing provides support for automated testing of Go packages.
    It is intended to be used in concert with the "go test" command, which automates
    execution of any function of the form
    
    	func TestXxx(*testing.T)
    
    where Xxx does not start with a lowercase letter. The function name
    serves to identify the test routine.
    
    Within these functions, use the Error, Fail or related methods to signal failure.
    
    To write a new test suite, create a file that
    contains the TestXxx functions as described here,
    and give that file a name ending in "_test.go".
    The file will be excluded from regular
    package builds but will be included when the "go test" command is run.
    
    The test file can be in the same package as the one being tested,
    or in a corresponding package with the suffix "_test".
    
    If the test file is in the same package, it may refer to unexported
    identifiers within the package, as in this example:
    
    	package abs
    
    	import "testing"
    
    	func TestAbs(t *testing.T) {
    	    got := Abs(-1)
    	    if got != 1 {
    	        t.Errorf("Abs(-1) = %d; want 1", got)
    	    }
    	}
    
    If the file is in a separate "_test" package, the package being tested
    must be imported explicitly and only its exported identifiers may be used.
    This is known as "black box" testing.
    
    	package abs_test
    
    	import (
    		"testing"
    
    		"path_to_pkg/abs"
    	)
    
    	func TestAbs(t *testing.T) {
    	    got := abs.Abs(-1)
    	    if got != 1 {
    	        t.Errorf("Abs(-1) = %d; want 1", got)
    	    }
    	}
    
    For more detail, run "go help test" and "go help testflag".
    
    # Benchmarks
    
    Functions of the form
    
    	func BenchmarkXxx(*testing.B)
    
    are considered benchmarks, and are executed by the "go test" command when
    its -bench flag is provided. Benchmarks are run sequentially.
    
    For a description of the testing flags, see
    https://golang.org/cmd/go/#hdr-Testing_flags.
    
    A sample benchmark function looks like this:
    
    	func BenchmarkRandInt(b *testing.B) {
    	    for i := 0; i < b.N; i++ {
    	        rand.Int()
    	    }
    	}
    
    The benchmark function must run the target code b.N times.
    During benchmark execution, b.N is adjusted until the benchmark function lasts
    long enough to be timed reliably. The output
    
    	BenchmarkRandInt-8   	68453040	        17.8 ns/op
    
    means that the loop ran 68453040 times at a speed of 17.8 ns per loop.
    
    If a benchmark needs some expensive setup before running, the timer
    may be reset:
    
    	func BenchmarkBigLen(b *testing.B) {
    	    big := NewBig()
    	    b.ResetTimer()
    	    for i := 0; i < b.N; i++ {
    	        big.Len()
    	    }
    	}
    
    If a benchmark needs to test performance in a parallel setting, it may use
    the RunParallel helper function; such benchmarks are intended to be used with
    the go test -cpu flag:
    
    	func BenchmarkTemplateParallel(b *testing.B) {
    	    templ := template.Must(template.New("test").Parse("Hello, {{.}}!"))
    	    b.RunParallel(func(pb *testing.PB) {
    	        var buf bytes.Buffer
    	        for pb.Next() {
    	            buf.Reset()
    	            templ.Execute(&buf, "World")
    	        }
    	    })
    	}
    
    A detailed specification of the benchmark results format is given
    in https://golang.org/design/14313-benchmark-format.
    
    There are standard tools for working with benchmark results at
    https://golang.org/x/perf/cmd.
    In particular, https://golang.org/x/perf/cmd/benchstat performs
    statistically robust A/B comparisons.
    
    # Examples
    
    The package also runs and verifies example code. Example functions may
    include a concluding line comment that begins with "Output:" and is compared with
    the standard output of the function when the tests are run. (The comparison
    ignores leading and trailing space.) These are examples of an example:
    
    	func ExampleHello() {
    	    fmt.Println("hello")
    	    // Output: hello
    	}
    
    	func ExampleSalutations() {
    	    fmt.Println("hello, and")
    	    fmt.Println("goodbye")
    	    // Output:
    	    // hello, and
    	    // goodbye
    	}
    
    The comment prefix "Unordered output:" is like "Output:", but matches any
    line order:
    
    	func ExamplePerm() {
    	    for _, value := range Perm(5) {
    	        fmt.Println(value)
    	    }
    	    // Unordered output: 4
    	    // 2
    	    // 1
    	    // 3
    	    // 0
    	}
    
    Example functions without output comments are compiled but not executed.
    
    The naming convention to declare examples for the package, a function F, a type T and
    method M on type T are:
    
    	func Example() { ... }
    	func ExampleF() { ... }
    	func ExampleT() { ... }
    	func ExampleT_M() { ... }
    
    Multiple example functions for a package/type/function/method may be provided by
    appending a distinct suffix to the name. The suffix must start with a
    lower-case letter.
    
    	func Example_suffix() { ... }
    	func ExampleF_suffix() { ... }
    	func ExampleT_suffix() { ... }
    	func ExampleT_M_suffix() { ... }
    
    The entire test file is presented as the example when it contains a single
    example function, at least one other function, type, variable, or constant
    declaration, and no test or benchmark functions.
    
    # Fuzzing
    
    'go test' and the testing package support fuzzing, a testing technique where
    a function is called with randomly generated inputs to find bugs not
    anticipated by unit tests.
    
    Functions of the form
    
    	func FuzzXxx(*testing.F)
    
    are considered fuzz tests.
    
    For example:
    
    	func FuzzHex(f *testing.F) {
    	  for _, seed := range [][]byte{{}, {0}, {9}, {0xa}, {0xf}, {1, 2, 3, 4}} {
    	    f.Add(seed)
    	  }
    	  f.Fuzz(func(t *testing.T, in []byte) {
    	    enc := hex.EncodeToString(in)
    	    out, err := hex.DecodeString(enc)
    	    if err != nil {
    	      t.Fatalf("%v: decode: %v", in, err)
    	    }
    	    if !bytes.Equal(in, out) {
    	      t.Fatalf("%v: not equal after round trip: %v", in, out)
    	    }
    	  })
    	}
    
    A fuzz test maintains a seed corpus, or a set of inputs which are run by
    default, and can seed input generation. Seed inputs may be registered by
    calling (*F).Add or by storing files in the directory testdata/fuzz/<Name>
    (where <Name> is the name of the fuzz test) within the package containing
    the fuzz test. Seed inputs are optional, but the fuzzing engine may find
    bugs more efficiently when provided with a set of small seed inputs with good
    code coverage. These seed inputs can also serve as regression tests for bugs
    identified through fuzzing.
    
    The function passed to (*F).Fuzz within the fuzz test is considered the fuzz
    target. A fuzz target must accept a *T parameter, followed by one or more
    parameters for random inputs. The types of arguments passed to (*F).Add must
    be identical to the types of these parameters. The fuzz target may signal
    that it's found a problem the same way tests do: by calling T.Fail (or any
    method that calls it like T.Error or T.Fatal) or by panicking.
    
    When fuzzing is enabled (by setting the -fuzz flag to a regular expression
    that matches a specific fuzz test), the fuzz target is called with arguments
    generated by repeatedly making random changes to the seed inputs. On
    supported platforms, 'go test' compiles the test executable with fuzzing
    coverage instrumentation. The fuzzing engine uses that instrumentation to
    find and cache inputs that expand coverage, increasing the likelihood of
    finding bugs. If the fuzz target fails for a given input, the fuzzing engine
    writes the inputs that caused the failure to a file in the directory
    testdata/fuzz/<Name> within the package directory. This file later serves as
    a seed input. If the file can't be written at that location (for example,
    because the directory is read-only), the fuzzing engine writes the file to
    the fuzz cache directory within the build cache instead.
    
    When fuzzing is disabled, the fuzz target is called with the seed inputs
    registered with F.Add and seed inputs from testdata/fuzz/<Name>. In this
    mode, the fuzz test acts much like a regular test, with subtests started
    with F.Fuzz instead of T.Run.
    
    See https://go.dev/doc/fuzz for documentation about fuzzing.
    
    # Skipping
    
    Tests or benchmarks may be skipped at run time with a call to
    the Skip method of *T or *B:
    
    	func TestTimeConsuming(t *testing.T) {
    	    if testing.Short() {
    	        t.Skip("skipping test in short mode.")
    	    }
    	    ...
    	}
    
    The Skip method of *T can be used in a fuzz target if the input is invalid,
    but should not be considered a failing input. For example:
    
    	func FuzzJSONMarshaling(f *testing.F) {
    	    f.Fuzz(func(t *testing.T, b []byte) {
    	        var v interface{}
    	        if err := json.Unmarshal(b, &v); err != nil {
    	            t.Skip()
    	        }
    	        if _, err := json.Marshal(v); err != nil {
    	            t.Errorf("Marshal: %v", err)
    	        }
    	    })
    	}
    
    # Subtests and Sub-benchmarks
    
    The Run methods of T and B allow defining subtests and sub-benchmarks,
    without having to define separate functions for each. This enables uses
    like table-driven benchmarks and creating hierarchical tests.
    It also provides a way to share common setup and tear-down code:
    
    	func TestFoo(t *testing.T) {
    	    // <setup code>
    	    t.Run("A=1", func(t *testing.T) { ... })
    	    t.Run("A=2", func(t *testing.T) { ... })
    	    t.Run("B=1", func(t *testing.T) { ... })
    	    // <tear-down code>
    	}
    
    Each subtest and sub-benchmark has a unique name: the combination of the name
    of the top-level test and the sequence of names passed to Run, separated by
    slashes, with an optional trailing sequence number for disambiguation.
    
    The argument to the -run, -bench, and -fuzz command-line flags is an unanchored regular
    expression that matches the test's name. For tests with multiple slash-separated
    elements, such as subtests, the argument is itself slash-separated, with
    expressions matching each name element in turn. Because it is unanchored, an
    empty expression matches any string.
    For example, using "matching" to mean "whose name contains":
    
    	go test -run ''        # Run all tests.
    	go test -run Foo       # Run top-level tests matching "Foo", such as "TestFooBar".
    	go test -run Foo/A=    # For top-level tests matching "Foo", run subtests matching "A=".
    	go test -run /A=1      # For all top-level tests, run subtests matching "A=1".
    	go test -fuzz FuzzFoo  # Fuzz the target matching "FuzzFoo"
    
    The -run argument can also be used to run a specific value in the seed
    corpus, for debugging. For example:
    
    	go test -run=FuzzFoo/9ddb952d9814
    
    The -fuzz and -run flags can both be set, in order to fuzz a target but
    skip the execution of all other tests.
    
    Subtests can also be used to control parallelism. A parent test will only
    complete once all of its subtests complete. In this example, all tests are
    run in parallel with each other, and only with each other, regardless of
    other top-level tests that may be defined:
    
    	func TestGroupedParallel(t *testing.T) {
    	    for _, tc := range tests {
    	        tc := tc // capture range variable
    	        t.Run(tc.Name, func(t *testing.T) {
    	            t.Parallel()
    	            ...
    	        })
    	    }
    	}
    
    Run does not return until parallel subtests have completed, providing a way
    to clean up after a group of parallel tests:
    
    	func TestTeardownParallel(t *testing.T) {
    	    // This Run will not return until the parallel tests finish.
    	    t.Run("group", func(t *testing.T) {
    	        t.Run("Test1", parallelTest1)
    	        t.Run("Test2", parallelTest2)
    	        t.Run("Test3", parallelTest3)
    	    })
    	    // <tear-down code>
    	}
    
    # Main
    
    It is sometimes necessary for a test or benchmark program to do extra setup or teardown
    before or after it executes. It is also sometimes necessary to control
    which code runs on the main thread. To support these and other cases,
    if a test file contains a function:
    
    	func TestMain(m *testing.M)
    
    then the generated test will call TestMain(m) instead of running the tests or benchmarks
    directly. TestMain runs in the main goroutine and can do whatever setup
    and teardown is necessary around a call to m.Run. m.Run will return an exit
    code that may be passed to os.Exit. If TestMain returns, the test wrapper
    will pass the result of m.Run to os.Exit itself.
    
    When TestMain is called, flag.Parse has not been run. If TestMain depends on
    command-line flags, including those of the testing package, it should call
    flag.Parse explicitly. Command line flags are always parsed by the time test
    or benchmark functions run.
    
    A simple implementation of TestMain is:
    
    	func TestMain(m *testing.M) {
    		// call flag.Parse() here if TestMain uses flags
    		os.Exit(m.Run())
    	}
    
    TestMain is a low-level primitive and should not be necessary for casual
    testing needs, where ordinary test functions suffice.
**/
class Testing {
    /**
        AllocsPerRun returns the average number of allocations during calls to f.
        Although the return value has type float64, it will always be an integral value.
        
        To compute the number of allocations, the function will first be run once as
        a warm-up. The average number of allocations over the specified number of
        runs will then be measured and returned.
        
        AllocsPerRun sets GOMAXPROCS to 1 during its measurement and will restore
        it before returning.
    **/
    static public inline function allocsPerRun(_runs:StdTypes.Int, _f:() -> Void):StdTypes.Float {
        final _runs = (_runs : stdgo.GoInt);
        final _f = _f;
        return stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun(_runs, _f);
    }
    /**
        RunBenchmarks is an internal function but exported because it is cross-package;
        it is part of the implementation of the "go test" command.
    **/
    static public inline function runBenchmarks(_matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }, _benchmarks:Array<InternalBenchmark>):Void {
        final _matchString = _matchString;
        final _benchmarks = ([for (i in _benchmarks) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalBenchmark.InternalBenchmark>);
        stdgo._internal.testing.Testing_runBenchmarks.runBenchmarks(_matchString, _benchmarks);
    }
    /**
        Benchmark benchmarks a single function. It is useful for creating
        custom benchmarks that do not use the "go test" command.
        
        If f depends on testing flags, then Init must be used to register
        those flags before calling Benchmark and before calling flag.Parse.
        
        If f calls Run, the result will be an estimate of running all its
        subbenchmarks that don't call Run in sequence in a single benchmark.
    **/
    static public inline function benchmark(_f:stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void):BenchmarkResult {
        final _f = _f;
        return stdgo._internal.testing.Testing_benchmark.benchmark(_f);
    }
    /**
        Coverage reports the current code coverage as a fraction in the range [0, 1].
        If coverage is not enabled, Coverage returns 0.
        
        When running a large set of sequential test cases, checking Coverage after each one
        can be useful for identifying which test cases exercise new code paths.
        It is not a replacement for the reports generated by 'go test -cover' and
        'go tool cover'.
    **/
    static public inline function coverage():StdTypes.Float {
        return stdgo._internal.testing.Testing_coverage.coverage();
    }
    /**
        RegisterCover records the coverage data accumulators for the tests.
        NOTE: This function is internal to the testing infrastructure and may change.
        It is not covered (yet) by the Go 1 compatibility guidelines.
    **/
    static public inline function registerCover(_c:Cover):Void {
        stdgo._internal.testing.Testing_registerCover.registerCover(_c);
    }
    /**
        RunExamples is an internal function but exported because it is cross-package;
        it is part of the implementation of the "go test" command.
    **/
    static public inline function runExamples(_matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }, _examples:Array<InternalExample>):Bool {
        final _matchString = _matchString;
        final _examples = ([for (i in _examples) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample>);
        return stdgo._internal.testing.Testing_runExamples.runExamples(_matchString, _examples);
    }
    /**
        Init registers testing flags. These flags are automatically registered by
        the "go test" command before running test functions, so Init is only needed
        when calling functions such as Benchmark without using "go test".
        
        Init has no effect if it was already called.
    **/
    static public inline function init():Void {
        stdgo._internal.testing.Testing_init.init();
    }
    /**
        Short reports whether the -test.short flag is set.
    **/
    static public inline function short():Bool {
        return stdgo._internal.testing.Testing_short.short();
    }
    /**
        Testing reports whether the current code is being run in a test.
        This will report true in programs created by "go test",
        false in programs created by "go build".
    **/
    static public inline function testing():Bool {
        return stdgo._internal.testing.Testing_testing.testing();
    }
    /**
        CoverMode reports what the test coverage mode is set to. The
        values are "set", "count", or "atomic". The return value will be
        empty if test coverage is not enabled.
    **/
    static public inline function coverMode():String {
        return stdgo._internal.testing.Testing_coverMode.coverMode();
    }
    /**
        Verbose reports whether the -test.v flag is set.
    **/
    static public inline function verbose():Bool {
        return stdgo._internal.testing.Testing_verbose.verbose();
    }
    /**
        MainStart is meant for use by tests generated by 'go test'.
        It is not meant to be called directly and is not subject to the Go 1 compatibility document.
        It may change signature from release to release.
    **/
    static public inline function mainStart(_deps:T_testDeps, _tests:Array<InternalTest>, _benchmarks:Array<InternalBenchmark>, _fuzzTargets:Array<InternalFuzzTarget>, _examples:Array<InternalExample>):M {
        final _tests = ([for (i in _tests) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest>);
        final _benchmarks = ([for (i in _benchmarks) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalBenchmark.InternalBenchmark>);
        final _fuzzTargets = ([for (i in _fuzzTargets) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalFuzzTarget.InternalFuzzTarget>);
        final _examples = ([for (i in _examples) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample>);
        return stdgo._internal.testing.Testing_mainStart.mainStart(_deps, _tests, _benchmarks, _fuzzTargets, _examples);
    }
    /**
        RunTests is an internal function but exported because it is cross-package;
        it is part of the implementation of the "go test" command.
    **/
    static public inline function runTests(_matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }, _tests:Array<InternalTest>):Bool {
        final _matchString = _matchString;
        final _tests = ([for (i in _tests) i] : stdgo.Slice<stdgo._internal.testing.Testing_InternalTest.InternalTest>);
        return stdgo._internal.testing.Testing_runTests.runTests(_matchString, _tests);
    }
}
