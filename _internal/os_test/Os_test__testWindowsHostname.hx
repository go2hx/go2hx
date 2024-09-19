package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function _testWindowsHostname(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _hostname:stdgo.GoString):Void {
        var _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), ("hostname" : stdgo.GoString));
        var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Failed to execute hostname command: %v %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        var _want = (stdgo._internal.strings.Strings_trim.trim((_out : stdgo.GoString)?.__copy__(), ("\r\n" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_hostname != (_want)) {
            _t.fatalf(("Hostname() = %q != system hostname of %q" : stdgo.GoString), stdgo.Go.toInterface(_hostname), stdgo.Go.toInterface(_want));
        };
    }
