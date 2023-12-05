package stdgo.os_test;
import stdgo.os.Os;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
127,
127,
(new stdgo.testing.Testing.InternalTest(("TestExpand" : stdgo.GoString), stdgo.os_test.Os_test.testExpand) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestConsistentEnviron" : stdgo.GoString), stdgo.os_test.Os_test.testConsistentEnviron) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnsetenv" : stdgo.GoString), stdgo.os_test.Os_test.testUnsetenv) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestClearenv" : stdgo.GoString), stdgo.os_test.Os_test.testClearenv) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLookupEnv" : stdgo.GoString), stdgo.os_test.Os_test.testLookupEnv) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEnvironConsistency" : stdgo.GoString), stdgo.os_test.Os_test.testEnvironConsistency) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrIsExist" : stdgo.GoString), stdgo.os_test.Os_test.testErrIsExist) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrIsNotExist" : stdgo.GoString), stdgo.os_test.Os_test.testErrIsNotExist) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsExist" : stdgo.GoString), stdgo.os_test.Os_test.testIsExist) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsPermission" : stdgo.GoString), stdgo.os_test.Os_test.testIsPermission) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrPathNUL" : stdgo.GoString), stdgo.os_test.Os_test.testErrPathNUL) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPathErrorUnwrap" : stdgo.GoString), stdgo.os_test.Os_test.testPathErrorUnwrap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrorIsMethods" : stdgo.GoString), stdgo.os_test.Os_test.testErrorIsMethods) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExecutable" : stdgo.GoString), stdgo.os_test.Os_test.testExecutable) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExecutableDeleted" : stdgo.GoString), stdgo.os_test.Os_test.testExecutableDeleted) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStat" : stdgo.GoString), stdgo.os_test.Os_test.testStat) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStatError" : stdgo.GoString), stdgo.os_test.Os_test.testStatError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStatSymlinkLoop" : stdgo.GoString), stdgo.os_test.Os_test.testStatSymlinkLoop) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFstat" : stdgo.GoString), stdgo.os_test.Os_test.testFstat) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLstat" : stdgo.GoString), stdgo.os_test.Os_test.testLstat) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRead0" : stdgo.GoString), stdgo.os_test.Os_test.testRead0) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadClosed" : stdgo.GoString), stdgo.os_test.Os_test.testReadClosed) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileReaddirnames" : stdgo.GoString), stdgo.os_test.Os_test.testFileReaddirnames) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileReaddir" : stdgo.GoString), stdgo.os_test.Os_test.testFileReaddir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileReadDir" : stdgo.GoString), stdgo.os_test.Os_test.testFileReadDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaddirnamesOneAtATime" : stdgo.GoString), stdgo.os_test.Os_test.testReaddirnamesOneAtATime) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaddirNValues" : stdgo.GoString), stdgo.os_test.Os_test.testReaddirNValues) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaddirStatFailures" : stdgo.GoString), stdgo.os_test.Os_test.testReaddirStatFailures) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaddirOfFile" : stdgo.GoString), stdgo.os_test.Os_test.testReaddirOfFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHardLink" : stdgo.GoString), stdgo.os_test.Os_test.testHardLink) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSymlink" : stdgo.GoString), stdgo.os_test.Os_test.testSymlink) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLongSymlink" : stdgo.GoString), stdgo.os_test.Os_test.testLongSymlink) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRename" : stdgo.GoString), stdgo.os_test.Os_test.testRename) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRenameOverwriteDest" : stdgo.GoString), stdgo.os_test.Os_test.testRenameOverwriteDest) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRenameFailed" : stdgo.GoString), stdgo.os_test.Os_test.testRenameFailed) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRenameNotExisting" : stdgo.GoString), stdgo.os_test.Os_test.testRenameNotExisting) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRenameToDirFailed" : stdgo.GoString), stdgo.os_test.Os_test.testRenameToDirFailed) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRenameCaseDifference" : stdgo.GoString), stdgo.os_test.Os_test.testRenameCaseDifference) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStartProcess" : stdgo.GoString), stdgo.os_test.Os_test.testStartProcess) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChmod" : stdgo.GoString), stdgo.os_test.Os_test.testChmod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFTruncate" : stdgo.GoString), stdgo.os_test.Os_test.testFTruncate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTruncate" : stdgo.GoString), stdgo.os_test.Os_test.testTruncate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTruncateNonexistentFile" : stdgo.GoString), stdgo.os_test.Os_test.testTruncateNonexistentFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChtimes" : stdgo.GoString), stdgo.os_test.Os_test.testChtimes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChtimesWithZeroTimes" : stdgo.GoString), stdgo.os_test.Os_test.testChtimesWithZeroTimes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChtimesDir" : stdgo.GoString), stdgo.os_test.Os_test.testChtimesDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChtimesToUnixZero" : stdgo.GoString), stdgo.os_test.Os_test.testChtimesToUnixZero) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileChdir" : stdgo.GoString), stdgo.os_test.Os_test.testFileChdir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChdirAndGetwd" : stdgo.GoString), stdgo.os_test.Os_test.testChdirAndGetwd) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestProgWideChdir" : stdgo.GoString), stdgo.os_test.Os_test.testProgWideChdir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSeek" : stdgo.GoString), stdgo.os_test.Os_test.testSeek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSeekError" : stdgo.GoString), stdgo.os_test.Os_test.testSeekError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOpenError" : stdgo.GoString), stdgo.os_test.Os_test.testOpenError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOpenNoName" : stdgo.GoString), stdgo.os_test.Os_test.testOpenNoName) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHostname" : stdgo.GoString), stdgo.os_test.Os_test.testHostname) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAt" : stdgo.GoString), stdgo.os_test.Os_test.testReadAt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAtOffset" : stdgo.GoString), stdgo.os_test.Os_test.testReadAtOffset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAtNegativeOffset" : stdgo.GoString), stdgo.os_test.Os_test.testReadAtNegativeOffset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteAt" : stdgo.GoString), stdgo.os_test.Os_test.testWriteAt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteAtNegativeOffset" : stdgo.GoString), stdgo.os_test.Os_test.testWriteAtNegativeOffset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteAtInAppendMode" : stdgo.GoString), stdgo.os_test.Os_test.testWriteAtInAppendMode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppend" : stdgo.GoString), stdgo.os_test.Os_test.testAppend) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStatDirWithTrailingSlash" : stdgo.GoString), stdgo.os_test.Os_test.testStatDirWithTrailingSlash) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNilProcessStateString" : stdgo.GoString), stdgo.os_test.Os_test.testNilProcessStateString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSameFile" : stdgo.GoString), stdgo.os_test.Os_test.testSameFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDevNullFile" : stdgo.GoString), stdgo.os_test.Os_test.testDevNullFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLargeWriteToConsole" : stdgo.GoString), stdgo.os_test.Os_test.testLargeWriteToConsole) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStatDirModeExec" : stdgo.GoString), stdgo.os_test.Os_test.testStatDirModeExec) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStatStdin" : stdgo.GoString), stdgo.os_test.Os_test.testStatStdin) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStatRelativeSymlink" : stdgo.GoString), stdgo.os_test.Os_test.testStatRelativeSymlink) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAtEOF" : stdgo.GoString), stdgo.os_test.Os_test.testReadAtEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLongPath" : stdgo.GoString), stdgo.os_test.Os_test.testLongPath) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestKillStartProcess" : stdgo.GoString), stdgo.os_test.Os_test.testKillStartProcess) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGetppid" : stdgo.GoString), stdgo.os_test.Os_test.testGetppid) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestKillFindProcess" : stdgo.GoString), stdgo.os_test.Os_test.testKillFindProcess) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNilFileMethods" : stdgo.GoString), stdgo.os_test.Os_test.testNilFileMethods) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllRace" : stdgo.GoString), stdgo.os_test.Os_test.testRemoveAllRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeThreads" : stdgo.GoString), stdgo.os_test.Os_test.testPipeThreads) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDoubleCloseError" : stdgo.GoString), stdgo.os_test.Os_test.testDoubleCloseError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUserHomeDir" : stdgo.GoString), stdgo.os_test.Os_test.testUserHomeDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDirSeek" : stdgo.GoString), stdgo.os_test.Os_test.testDirSeek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaddirSmallSeek" : stdgo.GoString), stdgo.os_test.Os_test.testReaddirSmallSeek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOpenFileKeepsPermissions" : stdgo.GoString), stdgo.os_test.Os_test.testOpenFileKeepsPermissions) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDirFS" : stdgo.GoString), stdgo.os_test.Os_test.testDirFS) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDirFSRootDir" : stdgo.GoString), stdgo.os_test.Os_test.testDirFSRootDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDirFSEmptyDir" : stdgo.GoString), stdgo.os_test.Os_test.testDirFSEmptyDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDirFSPathsValid" : stdgo.GoString), stdgo.os_test.Os_test.testDirFSPathsValid) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadFileProc" : stdgo.GoString), stdgo.os_test.Os_test.testReadFileProc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDirFSReadFileProc" : stdgo.GoString), stdgo.os_test.Os_test.testDirFSReadFileProc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteStringAlloc" : stdgo.GoString), stdgo.os_test.Os_test.testWriteStringAlloc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeIOCloseRace" : stdgo.GoString), stdgo.os_test.Os_test.testPipeIOCloseRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeCloseRace" : stdgo.GoString), stdgo.os_test.Os_test.testPipeCloseRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChown" : stdgo.GoString), stdgo.os_test.Os_test.testChown) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileChown" : stdgo.GoString), stdgo.os_test.Os_test.testFileChown) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLchown" : stdgo.GoString), stdgo.os_test.Os_test.testLchown) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaddirRemoveRace" : stdgo.GoString), stdgo.os_test.Os_test.testReaddirRemoveRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirStickyUmask" : stdgo.GoString), stdgo.os_test.Os_test.testMkdirStickyUmask) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNewFileBlock" : stdgo.GoString), stdgo.os_test.Os_test.testNewFileBlock) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNewFileNonBlock" : stdgo.GoString), stdgo.os_test.Os_test.testNewFileNonBlock) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNewFileInvalid" : stdgo.GoString), stdgo.os_test.Os_test.testNewFileInvalid) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSplitPath" : stdgo.GoString), stdgo.os_test.Os_test.testSplitPath) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirAll" : stdgo.GoString), stdgo.os_test.Os_test.testMkdirAll) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirAllWithSymlink" : stdgo.GoString), stdgo.os_test.Os_test.testMkdirAllWithSymlink) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirAllAtSlash" : stdgo.GoString), stdgo.os_test.Os_test.testMkdirAllAtSlash) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadFile" : stdgo.GoString), stdgo.os_test.Os_test.testReadFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteFile" : stdgo.GoString), stdgo.os_test.Os_test.testWriteFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadOnlyWriteFile" : stdgo.GoString), stdgo.os_test.Os_test.testReadOnlyWriteFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadDir" : stdgo.GoString), stdgo.os_test.Os_test.testReadDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAll" : stdgo.GoString), stdgo.os_test.Os_test.testRemoveAll) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllLarge" : stdgo.GoString), stdgo.os_test.Os_test.testRemoveAllLarge) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllLongPath" : stdgo.GoString), stdgo.os_test.Os_test.testRemoveAllLongPath) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllDot" : stdgo.GoString), stdgo.os_test.Os_test.testRemoveAllDot) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllDotDot" : stdgo.GoString), stdgo.os_test.Os_test.testRemoveAllDotDot) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveReadOnlyDir" : stdgo.GoString), stdgo.os_test.Os_test.testRemoveReadOnlyDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllButReadOnlyAndPathError" : stdgo.GoString), stdgo.os_test.Os_test.testRemoveAllButReadOnlyAndPathError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveUnreadableDir" : stdgo.GoString), stdgo.os_test.Os_test.testRemoveUnreadableDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllWithMoreErrorThanReqSize" : stdgo.GoString), stdgo.os_test.Os_test.testRemoveAllWithMoreErrorThanReqSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveAllNoFcntl" : stdgo.GoString), stdgo.os_test.Os_test.testRemoveAllNoFcntl) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDirAndSymlinkStats" : stdgo.GoString), stdgo.os_test.Os_test.testDirAndSymlinkStats) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileAndSymlinkStats" : stdgo.GoString), stdgo.os_test.Os_test.testFileAndSymlinkStats) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSymlinkWithTrailingSlash" : stdgo.GoString), stdgo.os_test.Os_test.testSymlinkWithTrailingSlash) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCreateTemp" : stdgo.GoString), stdgo.os_test.Os_test.testCreateTemp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCreateTempPattern" : stdgo.GoString), stdgo.os_test.Os_test.testCreateTempPattern) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCreateTempBadPattern" : stdgo.GoString), stdgo.os_test.Os_test.testCreateTempBadPattern) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirTemp" : stdgo.GoString), stdgo.os_test.Os_test.testMkdirTemp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirTempBadDir" : stdgo.GoString), stdgo.os_test.Os_test.testMkdirTempBadDir) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMkdirTempBadPattern" : stdgo.GoString), stdgo.os_test.Os_test.testMkdirTempBadPattern) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
10,
10,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkExpand" : stdgo.GoString), stdgo.os_test.Os_test.benchmarkExpand) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaddirname" : stdgo.GoString), stdgo.os_test.Os_test.benchmarkReaddirname) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaddir" : stdgo.GoString), stdgo.os_test.Os_test.benchmarkReaddir) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReadDir" : stdgo.GoString), stdgo.os_test.Os_test.benchmarkReadDir) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStatDot" : stdgo.GoString), stdgo.os_test.Os_test.benchmarkStatDot) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStatFile" : stdgo.GoString), stdgo.os_test.Os_test.benchmarkStatFile) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStatDir" : stdgo.GoString), stdgo.os_test.Os_test.benchmarkStatDir) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLstatDot" : stdgo.GoString), stdgo.os_test.Os_test.benchmarkLstatDot) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLstatFile" : stdgo.GoString), stdgo.os_test.Os_test.benchmarkLstatFile) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLstatDir" : stdgo.GoString), stdgo.os_test.Os_test.benchmarkLstatDir) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(6, 6, (new stdgo.testing.Testing.InternalExample(("ExampleErrNotExist" : stdgo.GoString), stdgo.os_test.Os_test.exampleErrNotExist, ("file does not exist\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleExpand" : stdgo.GoString), stdgo.os_test.Os_test.exampleExpand, ("Good morning, Gopher!\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleExpandEnv" : stdgo.GoString), stdgo.os_test.Os_test.exampleExpandEnv, ("gopher lives in /usr/gopher.\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleLookupEnv" : stdgo.GoString), stdgo.os_test.Os_test.exampleLookupEnv, ("SOME_KEY=value\nEMPTY_KEY=\nMISSING_KEY not set\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleGetenv" : stdgo.GoString), stdgo.os_test.Os_test.exampleGetenv, ("gopher lives in /usr/gopher.\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleReadFile" : stdgo.GoString), stdgo.os_test.Os_test.exampleReadFile, ("Hello, Gophers!\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os_test.Os_test.testMain(_m);
        Sys.exit((stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_m))).elem().fieldByName(("exitCode" : stdgo.GoString)).int_() : stdgo.StdGoTypes.GoInt));
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("os" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
