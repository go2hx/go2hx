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
function _checkGdbPython(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("skipping gdb python tests on illumos and solaris; see golang.org/issue/20821" : stdgo.GoString)));
        };
        var _cmd = stdgo._internal.os.exec.Exec_command.command(("gdb" : stdgo.GoString), ("-nx" : stdgo.GoString), ("-q" : stdgo.GoString), ("--batch" : stdgo.GoString), ("-iex" : stdgo.GoString), ("python import sys; print(\'go gdb python support\')" : stdgo.GoString));
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.skipf(("skipping due to issue running gdb: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (stdgo._internal.strings.Strings_trimSpace.trimSpace((_out : stdgo.GoString)?.__copy__()) != (("go gdb python support" : stdgo.GoString))) {
            _t.skipf(("skipping due to lack of python gdb support: %s" : stdgo.GoString), stdgo.Go.toInterface(_out));
        };
    }
