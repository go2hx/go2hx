package stdgo.io.fs_test;
import stdgo.io.fs.Fs;
import stdgo.io.fs.Fs;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
14,
14,
(new stdgo.testing.Testing.InternalTest(("TestFormatFileInfo" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testFormatFileInfo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatDirEntry" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testFormatDirEntry) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValidPath" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testValidPath) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGlob" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testGlob) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGlobError" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testGlobError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCVE202230630" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testCVE202230630) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGlobMethod" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testGlobMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadDir" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testReadDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileInfoToDirEntry" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testFileInfoToDirEntry) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadFile" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testReadFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStat" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testStat) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSub" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testSub) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWalkDir" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testWalkDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue51617" : stdgo.GoString), stdgo.io.fs_test.Fs_test.testIssue51617) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("io/fs" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
