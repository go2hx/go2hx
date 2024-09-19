package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testMutexMisuse(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
        for (__4 => _test in _internal.sync_test.Sync_test__misuseTests._misuseTests) {
            var __tmp__ = stdgo._internal.os.exec.Exec_command.command(stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__(), ("TESTMISUSE" : stdgo.GoString), _test._name?.__copy__()).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) || !stdgo._internal.strings.Strings_contains.contains((_out : stdgo.GoString)?.__copy__(), ("unlocked" : stdgo.GoString)) : Bool)) {
                _t.errorf(("%s: did not find failure with message about unlocked lock: %s\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
            };
        };
    }
