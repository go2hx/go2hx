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
function _checkGdbVersion(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.os.exec.Exec_command.command(("gdb" : stdgo.GoString), ("--version" : stdgo.GoString)).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.skipf(("skipping: error executing gdb: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("([0-9]+)\\.([0-9]+)" : stdgo.GoString));
        var _matches = _re.findSubmatch(_out);
        if (((_matches.length) < (3 : stdgo.GoInt) : Bool)) {
            _t.skipf(("skipping: can\'t determine gdb version from\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_out));
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_matches[(1 : stdgo.GoInt)] : stdgo.GoString)?.__copy__()), _major:stdgo.GoInt = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_matches[(2 : stdgo.GoInt)] : stdgo.GoString)?.__copy__()), _minor:stdgo.GoInt = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
        if (((_err1 != null) || (_err2 != null) : Bool)) {
            _t.skipf(("skipping: can\'t determine gdb version: %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_err1), stdgo.Go.toInterface(_err2));
        };
        if (((_major < (7 : stdgo.GoInt) : Bool) || (((_major == (7 : stdgo.GoInt)) && (_minor < (7 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            _t.skipf(("skipping: gdb version %d.%d too old" : stdgo.GoString), stdgo.Go.toInterface(_major), stdgo.Go.toInterface(_minor));
        };
        _t.logf(("gdb version %d.%d" : stdgo.GoString), stdgo.Go.toInterface(_major), stdgo.Go.toInterface(_minor));
    }
