package stdgo.os_test;
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
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
0,
0,
(new stdgo.testing.Testing.InternalTest(("TestExpand" : GoString), stdgo.os_test.Os_test.testExpand) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestConsistentEnviron" : GoString), stdgo.os_test.Os_test.testConsistentEnviron) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnsetenv" : GoString), stdgo.os_test.Os_test.testUnsetenv) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestClearenv" : GoString), stdgo.os_test.Os_test.testClearenv) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLookupEnv" : GoString), stdgo.os_test.Os_test.testLookupEnv) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEnvironConsistency" : GoString), stdgo.os_test.Os_test.testEnvironConsistency) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrIsExist" : GoString), stdgo.os_test.Os_test.testErrIsExist) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrIsNotExist" : GoString), stdgo.os_test.Os_test.testErrIsNotExist) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsExist" : GoString), stdgo.os_test.Os_test.testIsExist) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsPermission" : GoString), stdgo.os_test.Os_test.testIsPermission) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrPathNUL" : GoString), stdgo.os_test.Os_test.testErrPathNUL) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPathErrorUnwrap" : GoString), stdgo.os_test.Os_test.testPathErrorUnwrap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrorIsMethods" : GoString), stdgo.os_test.Os_test.testErrorIsMethods) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExecutable" : GoString), stdgo.os_test.Os_test.testExecutable) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExecutableDeleted" : GoString), stdgo.os_test.Os_test.testExecutableDeleted) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStat" : GoString), stdgo.os_test.Os_test.testStat) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStatError" : GoString), stdgo.os_test.Os_test.testStatError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStatSymlinkLoop" : GoString), stdgo.os_test.Os_test.testStatSymlinkLoop) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFstat" : GoString), stdgo.os_test.Os_test.testFstat) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLstat" : GoString), stdgo.os_test.Os_test.testLstat) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRead0" : GoString), stdgo.os_test.Os_test.testRead0) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadClosed" : GoString), stdgo.os_test.Os_test.testReadClosed) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileReaddirnames" : GoString), stdgo.os_test.Os_test.testFileReaddirnames) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileReaddir" : GoString), stdgo.os_test.Os_test.testFileReaddir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileReadDir" : GoString), stdgo.os_test.Os_test.testFileReadDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaddirnamesOneAtATime" : GoString), stdgo.os_test.Os_test.testReaddirnamesOneAtATime) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaddirNValues" : GoString), stdgo.os_test.Os_test.testReaddirNValues) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaddirStatFailures" : GoString), stdgo.os_test.Os_test.testReaddirStatFailures) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaddirOfFile" : GoString), stdgo.os_test.Os_test.testReaddirOfFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHardLink" : GoString), stdgo.os_test.Os_test.testHardLink) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSymlink" : GoString), stdgo.os_test.Os_test.testSymlink) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLongSymlink" : GoString), stdgo.os_test.Os_test.testLongSymlink) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRename" : GoString), stdgo.os_test.Os_test.testRename) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRenameOverwriteDest" : GoString), stdgo.os_test.Os_test.testRenameOverwriteDest) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRenameFailed" : GoString), stdgo.os_test.Os_test.testRenameFailed) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRenameNotExisting" : GoString), stdgo.os_test.Os_test.testRenameNotExisting) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRenameToDirFailed" : GoString), stdgo.os_test.Os_test.testRenameToDirFailed) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRenameCaseDifference" : GoString), stdgo.os_test.Os_test.testRenameCaseDifference) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStartProcess" : GoString), stdgo.os_test.Os_test.testStartProcess) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChmod" : GoString), stdgo.os_test.Os_test.testChmod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFTruncate" : GoString), stdgo.os_test.Os_test.testFTruncate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTruncate" : GoString), stdgo.os_test.Os_test.testTruncate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChtimes" : GoString), stdgo.os_test.Os_test.testChtimes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChtimesDir" : GoString), stdgo.os_test.Os_test.testChtimesDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileChdir" : GoString), stdgo.os_test.Os_test.testFileChdir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChdirAndGetwd" : GoString), stdgo.os_test.Os_test.testChdirAndGetwd) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestProgWideChdir" : GoString), stdgo.os_test.Os_test.testProgWideChdir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSeek" : GoString), stdgo.os_test.Os_test.testSeek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSeekError" : GoString), stdgo.os_test.Os_test.testSeekError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOpenError" : GoString), stdgo.os_test.Os_test.testOpenError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOpenNoName" : GoString), stdgo.os_test.Os_test.testOpenNoName) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHostname" : GoString), stdgo.os_test.Os_test.testHostname) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAt" : GoString), stdgo.os_test.Os_test.testReadAt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAtOffset" : GoString), stdgo.os_test.Os_test.testReadAtOffset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAtNegativeOffset" : GoString), stdgo.os_test.Os_test.testReadAtNegativeOffset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteAt" : GoString), stdgo.os_test.Os_test.testWriteAt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteAtNegativeOffset" : GoString), stdgo.os_test.Os_test.testWriteAtNegativeOffset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteAtInAppendMode" : GoString), stdgo.os_test.Os_test.testWriteAtInAppendMode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppend" : GoString), stdgo.os_test.Os_test.testAppend) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStatDirWithTrailingSlash" : GoString), stdgo.os_test.Os_test.testStatDirWithTrailingSlash) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNilProcessStateString" : GoString), stdgo.os_test.Os_test.testNilProcessStateString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSameFile" : GoString), stdgo.os_test.Os_test.testSameFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDevNullFile" : GoString), stdgo.os_test.Os_test.testDevNullFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLargeWriteToConsole" : GoString), stdgo.os_test.Os_test.testLargeWriteToConsole) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStatDirModeExec" : GoString), stdgo.os_test.Os_test.testStatDirModeExec) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStatStdin" : GoString), stdgo.os_test.Os_test.testStatStdin) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStatRelativeSymlink" : GoString), stdgo.os_test.Os_test.testStatRelativeSymlink) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAtEOF" : GoString), stdgo.os_test.Os_test.testReadAtEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLongPath" : GoString), stdgo.os_test.Os_test.testLongPath) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestKillStartProcess" : GoString), stdgo.os_test.Os_test.testKillStartProcess) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGetppid" : GoString), stdgo.os_test.Os_test.testGetppid) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestKillFindProcess" : GoString), stdgo.os_test.Os_test.testKillFindProcess) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNilFileMethods" : GoString), stdgo.os_test.Os_test.testNilFileMethods) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllRace" : GoString), stdgo.os_test.Os_test.testRemoveAllRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeThreads" : GoString), stdgo.os_test.Os_test.testPipeThreads) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDoubleCloseError" : GoString), stdgo.os_test.Os_test.testDoubleCloseError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUserHomeDir" : GoString), stdgo.os_test.Os_test.testUserHomeDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDirSeek" : GoString), stdgo.os_test.Os_test.testDirSeek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaddirSmallSeek" : GoString), stdgo.os_test.Os_test.testReaddirSmallSeek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOpenFileKeepsPermissions" : GoString), stdgo.os_test.Os_test.testOpenFileKeepsPermissions) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDirFS" : GoString), stdgo.os_test.Os_test.testDirFS) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDirFSRootDir" : GoString), stdgo.os_test.Os_test.testDirFSRootDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDirFSEmptyDir" : GoString), stdgo.os_test.Os_test.testDirFSEmptyDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDirFSPathsValid" : GoString), stdgo.os_test.Os_test.testDirFSPathsValid) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadFileProc" : GoString), stdgo.os_test.Os_test.testReadFileProc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteStringAlloc" : GoString), stdgo.os_test.Os_test.testWriteStringAlloc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeIOCloseRace" : GoString), stdgo.os_test.Os_test.testPipeIOCloseRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeCloseRace" : GoString), stdgo.os_test.Os_test.testPipeCloseRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChown" : GoString), stdgo.os_test.Os_test.testChown) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileChown" : GoString), stdgo.os_test.Os_test.testFileChown) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLchown" : GoString), stdgo.os_test.Os_test.testLchown) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaddirRemoveRace" : GoString), stdgo.os_test.Os_test.testReaddirRemoveRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirStickyUmask" : GoString), stdgo.os_test.Os_test.testMkdirStickyUmask) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNewFileBlock" : GoString), stdgo.os_test.Os_test.testNewFileBlock) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNewFileNonBlock" : GoString), stdgo.os_test.Os_test.testNewFileNonBlock) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSplitPath" : GoString), stdgo.os_test.Os_test.testSplitPath) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirAll" : GoString), stdgo.os_test.Os_test.testMkdirAll) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirAllWithSymlink" : GoString), stdgo.os_test.Os_test.testMkdirAllWithSymlink) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirAllAtSlash" : GoString), stdgo.os_test.Os_test.testMkdirAllAtSlash) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadFile" : GoString), stdgo.os_test.Os_test.testReadFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteFile" : GoString), stdgo.os_test.Os_test.testWriteFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadOnlyWriteFile" : GoString), stdgo.os_test.Os_test.testReadOnlyWriteFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadDir" : GoString), stdgo.os_test.Os_test.testReadDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAll" : GoString), stdgo.os_test.Os_test.testRemoveAll) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllLarge" : GoString), stdgo.os_test.Os_test.testRemoveAllLarge) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllLongPath" : GoString), stdgo.os_test.Os_test.testRemoveAllLongPath) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllDot" : GoString), stdgo.os_test.Os_test.testRemoveAllDot) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllDotDot" : GoString), stdgo.os_test.Os_test.testRemoveAllDotDot) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveReadOnlyDir" : GoString), stdgo.os_test.Os_test.testRemoveReadOnlyDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllButReadOnlyAndPathError" : GoString), stdgo.os_test.Os_test.testRemoveAllButReadOnlyAndPathError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveUnreadableDir" : GoString), stdgo.os_test.Os_test.testRemoveUnreadableDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllWithMoreErrorThanReqSize" : GoString), stdgo.os_test.Os_test.testRemoveAllWithMoreErrorThanReqSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOpenFileLimit" : GoString), stdgo.os_test.Os_test.testOpenFileLimit) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDirAndSymlinkStats" : GoString), stdgo.os_test.Os_test.testDirAndSymlinkStats) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileAndSymlinkStats" : GoString), stdgo.os_test.Os_test.testFileAndSymlinkStats) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSymlinkWithTrailingSlash" : GoString), stdgo.os_test.Os_test.testSymlinkWithTrailingSlash) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCreateTemp" : GoString), stdgo.os_test.Os_test.testCreateTemp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCreateTempPattern" : GoString), stdgo.os_test.Os_test.testCreateTempPattern) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCreateTempBadPattern" : GoString), stdgo.os_test.Os_test.testCreateTempBadPattern) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirTemp" : GoString), stdgo.os_test.Os_test.testMkdirTemp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirTempBadDir" : GoString), stdgo.os_test.Os_test.testMkdirTempBadDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirTempBadPattern" : GoString), stdgo.os_test.Os_test.testMkdirTempBadPattern) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(
0,
0,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkExpand" : GoString), stdgo.os_test.Os_test.benchmarkExpand) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaddirname" : GoString), stdgo.os_test.Os_test.benchmarkReaddirname) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaddir" : GoString), stdgo.os_test.Os_test.benchmarkReaddir) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReadDir" : GoString), stdgo.os_test.Os_test.benchmarkReadDir) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStatDot" : GoString), stdgo.os_test.Os_test.benchmarkStatDot) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStatFile" : GoString), stdgo.os_test.Os_test.benchmarkStatFile) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStatDir" : GoString), stdgo.os_test.Os_test.benchmarkStatDir) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLstatDot" : GoString), stdgo.os_test.Os_test.benchmarkLstatDot) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLstatFile" : GoString), stdgo.os_test.Os_test.benchmarkLstatFile) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLstatDir" : GoString), stdgo.os_test.Os_test.benchmarkLstatDir) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0, (new stdgo.testing.Testing.InternalExample(("ExampleErrNotExist" : GoString), stdgo.os_test.Os_test.exampleErrNotExist, ("file does not exist\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleExpand" : GoString), stdgo.os_test.Os_test.exampleExpand, ("Good morning, Gopher!\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleExpandEnv" : GoString), stdgo.os_test.Os_test.exampleExpandEnv, ("gopher lives in /usr/gopher.\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleLookupEnv" : GoString), stdgo.os_test.Os_test.exampleLookupEnv, ("SOME_KEY=value\nEMPTY_KEY=\nMISSING_KEY not set\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleGetenv" : GoString), stdgo.os_test.Os_test.exampleGetenv, ("gopher lives in /usr/gopher.\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleReadFile" : GoString), stdgo.os_test.Os_test.exampleReadFile, ("Hello, Gophers!\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os_test.Os_test.testMain(_m);
        Sys.exit((stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface(_m))).elem().fieldByName(("exitCode" : GoString)).int_() : GoInt));
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("os" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
