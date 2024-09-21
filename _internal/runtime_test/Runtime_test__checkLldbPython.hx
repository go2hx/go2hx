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
function _checkLldbPython(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _cmd = stdgo._internal.os.exec.Exec_command.command(("lldb" : stdgo.GoString), ("-P" : stdgo.GoString));
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.skipf(("skipping due to issue running lldb: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        _internal.runtime_test.Runtime_test__lldbPath._lldbPath = stdgo._internal.strings.Strings_trimSpace.trimSpace((_out : stdgo.GoString)?.__copy__())?.__copy__();
        _cmd = stdgo._internal.os.exec.Exec_command.command(("/usr/bin/python2.7" : stdgo.GoString), ("-c" : stdgo.GoString), ("import sys;sys.path.append(sys.argv[1]);import lldb; print(\'go lldb python support\')" : stdgo.GoString), _internal.runtime_test.Runtime_test__lldbPath._lldbPath?.__copy__());
        {
            var __tmp__ = _cmd.combinedOutput();
            _out = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.skipf(("skipping due to issue running python: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        if ((_out : stdgo.GoString) != (("go lldb python support\n" : stdgo.GoString))) {
            _t.skipf(("skipping due to lack of python lldb support: %s" : stdgo.GoString), stdgo.Go.toInterface(_out));
        };
        if (false) {
            _cmd = stdgo._internal.os.exec.Exec_command.command(("/usr/sbin/DevToolsSecurity" : stdgo.GoString), ("-status" : stdgo.GoString));
            {
                var __tmp__ = _cmd.combinedOutput();
                _out = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.skipf(("DevToolsSecurity failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            } else if (!stdgo._internal.strings.Strings_contains.contains((_out : stdgo.GoString)?.__copy__(), ("enabled" : stdgo.GoString))) {
                _t.skip(stdgo.Go.toInterface((_out : stdgo.GoString)));
            };
            _cmd = stdgo._internal.os.exec.Exec_command.command(("/usr/bin/groups" : stdgo.GoString));
            {
                var __tmp__ = _cmd.combinedOutput();
                _out = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.skipf(("groups failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            } else if (!stdgo._internal.strings.Strings_contains.contains((_out : stdgo.GoString)?.__copy__(), ("_developer" : stdgo.GoString))) {
                _t.skip(stdgo.Go.toInterface(("Not in _developer group" : stdgo.GoString)));
            };
        };
    }
