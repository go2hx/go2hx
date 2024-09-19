package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testLldbPython(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveGoBuild.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        {
            var _final = (stdgo._internal.os.Os_getenv.getenv(("GOROOT_FINAL" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (((_final != stdgo.Go.str()) && (stdgo._internal.runtime.Runtime_goroot.goroot() != _final) : Bool)) {
                _t.skip(stdgo.Go.toInterface(("gdb test can fail with GOROOT_FINAL pending" : stdgo.GoString)));
            };
        };
        stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (31188 : stdgo.GoInt));
        _internal.runtime_test.Runtime_test__checkLldbPython._checkLldbPython(_t);
        var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _src = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("main.go" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _err = (stdgo._internal.os.Os_writeFile.writeFile(_src?.__copy__(), (("\npackage main\nimport \"fmt\"\nfunc main() {\n\tmapvar := make(map[string]string,5)\n\tmapvar[\"abc\"] = \"def\"\n\tmapvar[\"ghi\"] = \"jkl\"\n\tintvar := 42\n\tptrvar := &intvar\n\tfmt.Println(\"hi\") // line 10\n\t_ = ptrvar\n}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
        if (_err != null) {
            _t.fatalf(("failed to create src file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _mod = (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("go.mod" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        _err = stdgo._internal.os.Os_writeFile.writeFile(_mod?.__copy__(), (("module lldbtest" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
        if (_err != null) {
            _t.fatalf(("failed to create mod file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _cmd = stdgo._internal.os.exec.Exec_command.command(stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("build" : stdgo.GoString), ("-gcflags=all=-N -l" : stdgo.GoString), ("-ldflags=-compressdwarf=false" : stdgo.GoString), ("-o" : stdgo.GoString), ("a.exe" : stdgo.GoString));
        _cmd.dir = _dir?.__copy__();
        _cmd.env = (stdgo._internal.os.Os_environ_.environ_().__append__(("GOPATH=" : stdgo.GoString)));
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("building source %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        _src = stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("script.py" : stdgo.GoString))?.__copy__();
        _err = stdgo._internal.os.Os_writeFile.writeFile(_src?.__copy__(), (("\nimport sys\nsys.path.append(sys.argv[1])\nimport lldb\nimport os\n\nTIMEOUT_SECS = 5\n\ndebugger = lldb.SBDebugger.Create()\ndebugger.SetAsync(True)\ntarget = debugger.CreateTargetWithFileAndArch(\"a.exe\", None)\nif target:\n  print \"Created target\"\n  main_bp = target.BreakpointCreateByLocation(\"main.go\", 10)\n  if main_bp:\n    print \"Created breakpoint\"\n  process = target.LaunchSimple(None, None, os.getcwd())\n  if process:\n    print \"Process launched\"\n    listener = debugger.GetListener()\n    process.broadcaster.AddListener(listener, lldb.SBProcess.eBroadcastBitStateChanged)\n    while True:\n      event = lldb.SBEvent()\n      if listener.WaitForEvent(TIMEOUT_SECS, event):\n        if lldb.SBProcess.GetRestartedFromEvent(event):\n          continue\n        state = process.GetState()\n        if state in [lldb.eStateUnloaded, lldb.eStateLaunching, lldb.eStateRunning]:\n          continue\n      else:\n        print \"Timeout launching\"\n      break\n    if state == lldb.eStateStopped:\n      for t in process.threads:\n        if t.GetStopReason() == lldb.eStopReasonBreakpoint:\n          print \"Hit breakpoint\"\n          frame = t.GetFrameAtIndex(0)\n          if frame:\n            if frame.line_entry:\n              print \"Stopped at %s:%d\" % (frame.line_entry.file.basename, frame.line_entry.line)\n            if frame.function:\n              print \"Stopped in %s\" % (frame.function.name,)\n            var = frame.FindVariable(\'intvar\')\n            if var:\n              print \"intvar = %s\" % (var.GetValue(),)\n            else:\n              print \"no intvar\"\n    else:\n      print \"Process state\", state\n    process.Destroy()\nelse:\n  print \"Failed to create target a.exe\"\n\nlldb.SBDebugger.Destroy(debugger)\nsys.exit()\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (493u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
        if (_err != null) {
            _t.fatalf(("failed to create script: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _cmd = stdgo._internal.os.exec.Exec_command.command(("/usr/bin/python2.7" : stdgo.GoString), ("script.py" : stdgo.GoString), _internal.runtime_test.Runtime_test__lldbPath._lldbPath?.__copy__());
        _cmd.dir = _dir?.__copy__();
        var __tmp__ = _cmd.combinedOutput(), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __44:stdgo.Error = __tmp__._1;
        if ((_got : stdgo.GoString) != (("Created target\nCreated breakpoint\nProcess launched\nHit breakpoint\nStopped at main.go:10\nStopped in main.main\nintvar = 42\n" : stdgo.GoString))) {
            if (stdgo._internal.strings.Strings_contains.contains((_got : stdgo.GoString)?.__copy__(), ("Timeout launching" : stdgo.GoString))) {
                _t.skip(stdgo.Go.toInterface(("Timeout launching" : stdgo.GoString)));
            };
            _t.fatalf(("Unexpected lldb output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_got));
        };
    }
