package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function testNoPath(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _err = ((stdgo.Go.setRef(({} : stdgo._internal.os.exec.Exec_Cmd.Cmd)) : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>).start() : stdgo.Error);
        var _want = ("exec: no command" : stdgo.GoString);
        if (((_err == null) || (_err.error() != _want) : Bool)) {
            _t.errorf(("new(Cmd).Start() = %v, want %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
        };
    }
