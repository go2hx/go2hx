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
function testArenaCollision(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
        if (stdgo._internal.os.Os_getenv.getenv(("TEST_ARENA_COLLISION" : stdgo.GoString)) != (("1" : stdgo.GoString))) {
            var _cmd = stdgo._internal.internal.testenv.Testenv_cleanCmdEnv.cleanCmdEnv(stdgo._internal.os.exec.Exec_command.command(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__(), ("-test.run=TestArenaCollision" : stdgo.GoString), ("-test.v" : stdgo.GoString)));
            _cmd.env = (_cmd.env.__append__(("TEST_ARENA_COLLISION=1" : stdgo.GoString)));
            var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (false) {
                {
                    var _want = ("too many address space collisions" : stdgo.GoString);
                    if (!stdgo._internal.strings.Strings_contains.contains((_out : stdgo.GoString)?.__copy__(), _want?.__copy__())) {
                        _t.fatalf(("want %q, got:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface((_out : stdgo.GoString)));
                    };
                };
            } else if ((!stdgo._internal.strings.Strings_contains.contains((_out : stdgo.GoString)?.__copy__(), ("PASS\n" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.fatalf(("%s\n(exit status %v)" : stdgo.GoString), stdgo.Go.toInterface((_out : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            return;
        };
        var _disallowed = (new stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUIntptr>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUIntptr)])])) : stdgo.Slice<stdgo.GoArray<stdgo.GoUIntptr>>);
        stdgo._internal.runtime.Runtime_keepNArenaHints.keepNArenaHints((3 : stdgo.GoInt));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                var __tmp__ = stdgo._internal.runtime.Runtime_mapNextArenaHint.mapNextArenaHint(), _start:stdgo.GoUIntptr = __tmp__._0, _end:stdgo.GoUIntptr = __tmp__._1, _ok:Bool = __tmp__._2;
                if (!_ok) {
                    _t.skipf(("failed to reserve memory at next arena hint [%#x, %#x)" : stdgo.GoString), stdgo.Go.toInterface(_start), stdgo.Go.toInterface(_end));
                };
                _t.logf(("reserved [%#x, %#x)" : stdgo.GoString), stdgo.Go.toInterface(_start), stdgo.Go.toInterface(_end));
                _disallowed = (_disallowed.__append__((new stdgo.GoArray<stdgo.GoUIntptr>(2, 2, ...[_start, _end]) : stdgo.GoArray<stdgo.GoUIntptr>)));
                var _hint = (stdgo._internal.runtime.Runtime_getNextArenaHint.getNextArenaHint() : stdgo.GoUIntptr);
                while (stdgo._internal.runtime.Runtime_getNextArenaHint.getNextArenaHint() == (_hint)) {
                    var _ac = (stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_acLink.T_acLink)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_acLink.T_acLink>);
                    _internal.runtime_test.Runtime_test__arenaCollisionSink._arenaCollisionSink = (_internal.runtime_test.Runtime_test__arenaCollisionSink._arenaCollisionSink.__append__(_ac));
                    var _p = ((stdgo.Go.toInterface(_ac) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
                    for (__14 => _d in _disallowed) {
                        if (((_d[(0 : stdgo.GoInt)] <= _p : Bool) && (_p < _d[(1 : stdgo.GoInt)] : Bool) : Bool)) {
                            _t.fatalf(("allocation %#x in reserved region [%#x, %#x)" : stdgo.GoString), stdgo.Go.toInterface(_p), stdgo.Go.toInterface(_d[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_d[(1 : stdgo.GoInt)]));
                        };
                    };
                };
            });
        };
    }
