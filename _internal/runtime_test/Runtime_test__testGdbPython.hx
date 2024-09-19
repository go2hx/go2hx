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
function _testGdbPython(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _cgo:Bool):Void {
        if (_cgo) {
            stdgo._internal.internal.testenv.Testenv_mustHaveCGO.mustHaveCGO(stdgo.Go.asInterface(_t));
        };
        _internal.runtime_test.Runtime_test__checkGdbEnvironment._checkGdbEnvironment(_t);
        _t.parallel();
        _internal.runtime_test.Runtime_test__checkGdbVersion._checkGdbVersion(_t);
        _internal.runtime_test.Runtime_test__checkGdbPython._checkGdbPython(_t);
        var _dir = (_t.tempDir()?.__copy__() : stdgo.GoString);
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        _buf.writeString(("package main\n" : stdgo.GoString));
        if (_cgo) {
            _buf.writeString(("import \"C\"\n" : stdgo.GoString));
        };
        _buf.writeString(_internal.runtime_test.Runtime_test__helloSource._helloSource?.__copy__());
        var _src = _buf.bytes();
        var _bp:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lines = stdgo._internal.bytes.Bytes_split.split(_src, (("\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        for (_i => _line in _lines) {
            if (stdgo._internal.bytes.Bytes_contains.contains(_line, (("breakpoint" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))) {
                _bp = _i;
                break;
            };
        };
        var _err = (stdgo._internal.os.Os_writeFile.writeFile(stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("main.go" : stdgo.GoString))?.__copy__(), _src, (420u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
        if (_err != null) {
            _t.fatalf(("failed to create file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _nLines = (_internal.runtime_test.Runtime_test__lastLine._lastLine(_src) : stdgo.GoInt);
        var _cmd = stdgo._internal.os.exec.Exec_command.command(stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("build" : stdgo.GoString), ("-o" : stdgo.GoString), ("a.exe" : stdgo.GoString), ("main.go" : stdgo.GoString));
        _cmd.dir = _dir?.__copy__();
        var __tmp__ = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(_cmd).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("building source %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        var _args = (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("-nx" : stdgo.GoString), ("-q" : stdgo.GoString), ("--batch" : stdgo.GoString), ("-iex" : stdgo.GoString), (("add-auto-load-safe-path " : stdgo.GoString) + stdgo._internal.path.filepath.Filepath_join.join(stdgo._internal.internal.testenv.Testenv_goroot.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("src" : stdgo.GoString), ("runtime" : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__(), ("-ex" : stdgo.GoString), ("set startup-with-shell off" : stdgo.GoString), ("-ex" : stdgo.GoString), ("set print thread-events off" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        if (_cgo) {
            _args = (_args.__append__(("-ex" : stdgo.GoString), (("source " : stdgo.GoString) + stdgo._internal.path.filepath.Filepath_join.join(stdgo._internal.internal.testenv.Testenv_goroot.goroot(stdgo.Go.asInterface(_t))?.__copy__(), ("src" : stdgo.GoString), ("runtime" : stdgo.GoString), ("runtime-gdb.py" : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__()));
        } else {
            _args = (_args.__append__(("-ex" : stdgo.GoString), ("info auto-load python-scripts" : stdgo.GoString)));
        };
        _args = (_args.__append__(("-ex" : stdgo.GoString),
("set python print-stack full" : stdgo.GoString),
("-ex" : stdgo.GoString),
stdgo._internal.fmt.Fmt_sprintf.sprintf(("br main.go:%d" : stdgo.GoString), stdgo.Go.toInterface(_bp))?.__copy__(),
("-ex" : stdgo.GoString),
("run" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo BEGIN info goroutines\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("info goroutines" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo END\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo BEGIN print mapvar\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("print mapvar" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo END\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo BEGIN print slicemap\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("print slicemap" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo END\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo BEGIN print strvar\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("print strvar" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo END\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo BEGIN print chanint\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("print chanint" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo END\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo BEGIN print chanstr\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("print chanstr" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo END\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo BEGIN info locals\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("info locals" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo END\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo BEGIN goroutine 1 bt\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("goroutine 1 bt" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo END\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo BEGIN goroutine all bt\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("goroutine all bt" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo END\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("clear main.go:15" : stdgo.GoString),
("-ex" : stdgo.GoString),
stdgo._internal.fmt.Fmt_sprintf.sprintf(("br main.go:%d" : stdgo.GoString), stdgo.Go.toInterface(_nLines))?.__copy__(),
("-ex" : stdgo.GoString),
("c" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo BEGIN goroutine 1 bt at the end\n" : stdgo.GoString),
("-ex" : stdgo.GoString),
("goroutine 1 bt" : stdgo.GoString),
("-ex" : stdgo.GoString),
("echo END\n" : stdgo.GoString),
stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), ("a.exe" : stdgo.GoString))?.__copy__()));
        var __tmp__ = stdgo._internal.os.exec.Exec_command.command(("gdb" : stdgo.GoString), ...(_args : Array<stdgo.GoString>)).combinedOutput(), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _t.logf(("gdb output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_got));
        if (_err != null) {
            _t.fatalf(("gdb exited with error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut(_got, (("\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), _firstLine:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __48:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, __49:Bool = __tmp__._2;
        if ((_firstLine : stdgo.GoString) != (("Loading Go Runtime support." : stdgo.GoString))) {
            var _cmd = stdgo._internal.os.exec.Exec_command.command(stdgo._internal.internal.testenv.Testenv_goToolPath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("env" : stdgo.GoString), ("GOROOT" : stdgo.GoString));
            _cmd.env = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) && stdgo._internal.bytes.Bytes_contains.contains(_out, (("cannot find GOROOT" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                _t.skipf(("skipping because GOROOT=%s does not exist" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.internal.testenv.Testenv_goroot.goroot(stdgo.Go.asInterface(_t))));
            };
            var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((1 : stdgo.GoInt)), __62:stdgo.GoUIntptr = __tmp__._0, _file:stdgo.GoString = __tmp__._1, __63:stdgo.GoInt = __tmp__._2, __64:Bool = __tmp__._3;
            _t.logf(("package testing source file: %s" : stdgo.GoString), stdgo.Go.toInterface(_file));
            _t.fatalf(("failed to load Go runtime support: %s\n%s" : stdgo.GoString), stdgo.Go.toInterface(_firstLine), stdgo.Go.toInterface(_got));
        };
        var _partRe = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("(?ms)^BEGIN ([^\\n]*)\\n(.*?)\\nEND" : stdgo.GoString));
        var _blocks = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        for (__50 => _subs in _partRe.findAllSubmatch(_got, (-1 : stdgo.GoInt))) {
            _blocks[(_subs[(1 : stdgo.GoInt)] : stdgo.GoString)] = (_subs[(2 : stdgo.GoInt)] : stdgo.GoString)?.__copy__();
        };
        var _infoGoroutinesRe = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("\\*\\s+\\d+\\s+running\\s+" : stdgo.GoString));
        {
            var _bl = ((_blocks[("info goroutines" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (!_infoGoroutinesRe.matchString(_bl?.__copy__())) {
                _t.fatalf(("info goroutines failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_bl));
            };
        };
        var _printMapvarRe1 = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("^\\$[0-9]+ = map\\[string\\]string = {\\[(0x[0-9a-f]+\\s+)?\"abc\"\\] = (0x[0-9a-f]+\\s+)?\"def\", \\[(0x[0-9a-f]+\\s+)?\"ghi\"\\] = (0x[0-9a-f]+\\s+)?\"jkl\"}$" : stdgo.GoString));
        var _printMapvarRe2 = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("^\\$[0-9]+ = map\\[string\\]string = {\\[(0x[0-9a-f]+\\s+)?\"ghi\"\\] = (0x[0-9a-f]+\\s+)?\"jkl\", \\[(0x[0-9a-f]+\\s+)?\"abc\"\\] = (0x[0-9a-f]+\\s+)?\"def\"}$" : stdgo.GoString));
        {
            var _bl = ((_blocks[("print mapvar" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if ((!_printMapvarRe1.matchString(_bl?.__copy__()) && !_printMapvarRe2.matchString(_bl?.__copy__()) : Bool)) {
                _t.fatalf(("print mapvar failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_bl));
            };
        };
        var _sliceMapSfx1 = ("map[string][]string = {[\"e\"] = []string = {\"f\", \"g\", \"h\"}, [\"a\"] = []string = {\"b\", \"c\", \"d\"}}" : stdgo.GoString);
        var _sliceMapSfx2 = ("map[string][]string = {[\"a\"] = []string = {\"b\", \"c\", \"d\"}, [\"e\"] = []string = {\"f\", \"g\", \"h\"}}" : stdgo.GoString);
        {
            var _bl = (stdgo._internal.strings.Strings_replaceAll.replaceAll((_blocks[("print slicemap" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__(), ("  " : stdgo.GoString), (" " : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if ((!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_bl?.__copy__(), _sliceMapSfx1?.__copy__()) && !stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_bl?.__copy__(), _sliceMapSfx2?.__copy__()) : Bool)) {
                _t.fatalf(("print slicemap failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_bl));
            };
        };
        var _chanIntSfx = ("chan int = {99, 11}" : stdgo.GoString);
        {
            var _bl = (stdgo._internal.strings.Strings_replaceAll.replaceAll((_blocks[("print chanint" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__(), ("  " : stdgo.GoString), (" " : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_bl?.__copy__(), _chanIntSfx?.__copy__())) {
                _t.fatalf(("print chanint failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_bl));
            };
        };
        var _chanStrSfx = ("chan string = {\"spongepants\", \"squarebob\"}" : stdgo.GoString);
        {
            var _bl = (stdgo._internal.strings.Strings_replaceAll.replaceAll((_blocks[("print chanstr" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__(), ("  " : stdgo.GoString), (" " : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_bl?.__copy__(), _chanStrSfx?.__copy__())) {
                _t.fatalf(("print chanstr failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_bl));
            };
        };
        var _strVarRe = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("^\\$[0-9]+ = (0x[0-9a-f]+\\s+)?\"abc\"$" : stdgo.GoString));
        {
            var _bl = ((_blocks[("print strvar" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (!_strVarRe.matchString(_bl?.__copy__())) {
                _t.fatalf(("print strvar failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_bl));
            };
        };
        {
            var _bl = ((_blocks[("info locals" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (((!stdgo._internal.strings.Strings_contains.contains(_bl?.__copy__(), ("slicevar" : stdgo.GoString)) || !stdgo._internal.strings.Strings_contains.contains(_bl?.__copy__(), ("mapvar" : stdgo.GoString)) : Bool) || !stdgo._internal.strings.Strings_contains.contains(_bl?.__copy__(), ("strvar" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("info locals failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_bl));
            };
        };
        _internal.runtime_test.Runtime_test__checkCleanBacktrace._checkCleanBacktrace(_t, (_blocks[("goroutine 1 bt" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__());
        _internal.runtime_test.Runtime_test__checkCleanBacktrace._checkCleanBacktrace(_t, (_blocks[("goroutine 1 bt at the end" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__());
        var _btGoroutine1Re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("(?m)^#0\\s+(0x[0-9a-f]+\\s+in\\s+)?main\\.main.+at" : stdgo.GoString));
        {
            var _bl = ((_blocks[("goroutine 1 bt" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (!_btGoroutine1Re.matchString(_bl?.__copy__())) {
                _t.fatalf(("goroutine 1 bt failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_bl));
            };
        };
        {
            var _bl = ((_blocks[("goroutine all bt" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (!_btGoroutine1Re.matchString(_bl?.__copy__())) {
                _t.fatalf(("goroutine all bt failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_bl));
            };
        };
        var _btGoroutine1AtTheEndRe = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("(?m)^#0\\s+(0x[0-9a-f]+\\s+in\\s+)?main\\.main.+at" : stdgo.GoString));
        {
            var _bl = ((_blocks[("goroutine 1 bt at the end" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (!_btGoroutine1AtTheEndRe.matchString(_bl?.__copy__())) {
                _t.fatalf(("goroutine 1 bt at the end failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_bl));
            };
        };
    }
