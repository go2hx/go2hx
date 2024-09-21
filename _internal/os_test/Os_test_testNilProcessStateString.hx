package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testNilProcessStateString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ps:stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState> = (null : stdgo.Ref<stdgo._internal.os.Os_ProcessState.ProcessState>);
        var _s = ((_ps.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_s != (("<nil>" : stdgo.GoString))) {
            _t.errorf(("(*ProcessState)(nil).String() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("<nil>" : stdgo.GoString)));
        };
    }
