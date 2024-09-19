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
function testFakeTime(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("faketime not supported on windows" : stdgo.GoString)));
        };
        stdgo._internal.internal.testenv.Testenv_mustInternalLink.mustInternalLink(stdgo.Go.asInterface(_t), false);
        _t.parallel();
        var __tmp__ = _internal.runtime_test.Runtime_test__buildTestProg._buildTestProg(_t, ("testfaketime" : stdgo.GoString), ("-tags=faketime" : stdgo.GoString)), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __0:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer), __1:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
var _stderr = __1, _stdout = __0;
        var _cmd = stdgo._internal.os.exec.Exec_command.command(_exe?.__copy__());
        _cmd.stdout = stdgo.Go.asInterface((stdgo.Go.setRef(_stdout) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>));
        _cmd.stderr = stdgo.Go.asInterface((stdgo.Go.setRef(_stderr) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>));
        _err = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(_cmd).run();
        if (_err != null) {
            _t.fatalf(("exit status: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_stderr.string() : stdgo.GoString)));
        };
        _t.logf(("raw stdout: %q" : stdgo.GoString), stdgo.Go.toInterface((_stdout.string() : stdgo.GoString)));
        _t.logf(("raw stderr: %q" : stdgo.GoString), stdgo.Go.toInterface((_stderr.string() : stdgo.GoString)));
        var __tmp__ = _internal.runtime_test.Runtime_test__parseFakeTime._parseFakeTime(_stdout.bytes()), _f1:stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
        if (_err1 != null) {
            _t.fatal(stdgo.Go.toInterface(_err1));
        };
        var __tmp__ = _internal.runtime_test.Runtime_test__parseFakeTime._parseFakeTime(_stderr.bytes()), _f2:stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame> = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
        if (_err2 != null) {
            _t.fatal(stdgo.Go.toInterface(_err2));
        };
        {};
        var _got = (new stdgo.Slice<stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame>>(2, 2, ...[_f1, _f2]) : stdgo.Slice<stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame>>);
        var _want:stdgo.Slice<stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame>> = (new stdgo.Slice<stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame>>(2, 2, ...[(new stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame>(4, 4, ...[(new _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame((1257894000000000001i64 : stdgo.GoUInt64), ("line 2\n" : stdgo.GoString)) : _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame), (new _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame((1257894000000000001i64 : stdgo.GoUInt64), ("line 3\n" : stdgo.GoString)) : _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame), (new _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame((1257894001000000000i64 : stdgo.GoUInt64), ("line 5\n" : stdgo.GoString)) : _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame), (new _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame((1257894001000000000i64 : stdgo.GoUInt64), ("2009-11-10T23:00:01Z" : stdgo.GoString)) : _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame>), (new stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame>(2, 2, ...[(new _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame((1257894000000000000i64 : stdgo.GoUInt64), ("line 1\n" : stdgo.GoString)) : _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame), (new _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame((1257894000000000002i64 : stdgo.GoUInt64), ("line 4\n" : stdgo.GoString)) : _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame>)]) : stdgo.Slice<stdgo.Slice<_internal.runtime_test.Runtime_test_T_fakeTimeFrame.T_fakeTimeFrame>>);
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got))) {
            _t.fatalf(("want %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
