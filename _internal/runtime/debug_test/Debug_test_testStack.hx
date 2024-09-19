package _internal.runtime.debug_test;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
function testStack(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (0 : _internal.runtime.debug_test.Debug_test_T_.T_)._method();
        var _lines = stdgo._internal.strings.Strings_split.split((_b : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString));
        if (((_lines.length) < (6 : stdgo.GoInt) : Bool)) {
            _t.fatal(stdgo.Go.toInterface(("too few lines" : stdgo.GoString)));
        };
        var _fileGoroot = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        {
            var _envGoroot = (stdgo._internal.os.Os_getenv.getenv(("GOROOT" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_envGoroot != (stdgo.Go.str())) {
                _t.logf(("found GOROOT %q from environment; checking embedded GOROOT value" : stdgo.GoString), stdgo.Go.toInterface(_envGoroot));
                stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
                var __tmp__ = stdgo._internal.os.Os_executable.executable(), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var _cmd = stdgo._internal.os.exec.Exec_command.command(_exe?.__copy__());
                _cmd.env = (stdgo._internal.os.Os_environ_.environ_().__append__(("GOROOT=" : stdgo.GoString), ("GO_RUNTIME_DEBUG_TEST_DUMP_GOROOT=1" : stdgo.GoString)));
                var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                _fileGoroot = (stdgo._internal.bytes.Bytes_trimSpace.trimSpace(_out) : stdgo.GoString)?.__copy__();
            } else {
                _fileGoroot = stdgo._internal.runtime.Runtime_goroot.goroot()?.__copy__();
            };
        };
        var _filePrefix = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        if (_fileGoroot != (stdgo.Go.str())) {
            _filePrefix = (stdgo._internal.path.filepath.Filepath_toSlash.toSlash(_fileGoroot?.__copy__()) + ("/src/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        var _n = (0 : stdgo.GoInt);
        var _frame = (function(_file:stdgo.GoString, _code:stdgo.GoString):Void {
            _t.helper();
            var _line = (_lines[(_n : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            if (!stdgo._internal.strings.Strings_contains.contains(_line?.__copy__(), _code?.__copy__())) {
                _t.errorf(("expected %q in %q" : stdgo.GoString), stdgo.Go.toInterface(_code), stdgo.Go.toInterface(_line));
            };
            _n++;
            _line = _lines[(_n : stdgo.GoInt)]?.__copy__();
            var _wantPrefix = (((("\t" : stdgo.GoString) + _filePrefix?.__copy__() : stdgo.GoString) + _file?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_line?.__copy__(), _wantPrefix?.__copy__())) {
                _t.errorf(("in line %q, expected prefix %q" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_wantPrefix));
            };
            _n++;
        } : (stdgo.GoString, stdgo.GoString) -> Void);
        _n++;
        _frame(("runtime/debug/stack.go" : stdgo.GoString), ("runtime/debug.Stack" : stdgo.GoString));
        _frame(("runtime/debug/stack_test.go" : stdgo.GoString), ("runtime/debug_test.(*T).ptrmethod" : stdgo.GoString));
        _frame(("runtime/debug/stack_test.go" : stdgo.GoString), ("runtime/debug_test.T.method" : stdgo.GoString));
        _frame(("runtime/debug/stack_test.go" : stdgo.GoString), ("runtime/debug_test.TestStack" : stdgo.GoString));
        _frame(("testing/testing.go" : stdgo.GoString), stdgo.Go.str()?.__copy__());
    }
