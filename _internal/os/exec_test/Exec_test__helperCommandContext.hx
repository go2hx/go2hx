package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _helperCommandContext(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _ctx:stdgo._internal.context.Context_Context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd> {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        var _cmd = (null : stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>);
        _internal.os.exec_test.Exec_test__helperCommandUsed._helperCommandUsed.loadOrStore(stdgo.Go.toInterface(_name), stdgo.Go.toInterface(true));
        _t.helper();
        stdgo._internal.internal.testenv.Testenv_mustHaveExec.mustHaveExec(stdgo.Go.asInterface(_t));
        var _cs = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_name?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_args : Array<stdgo.GoString>)));
        if (_ctx != null) {
            _cmd = stdgo._internal.os.exec.Exec_commandContext.commandContext(_ctx, _internal.os.exec_test.Exec_test__exePath._exePath(stdgo.Go.asInterface(_t))?.__copy__(), ...(_cs : Array<stdgo.GoString>));
        } else {
            _cmd = stdgo._internal.os.exec.Exec_command.command(_internal.os.exec_test.Exec_test__exePath._exePath(stdgo.Go.asInterface(_t))?.__copy__(), ...(_cs : Array<stdgo.GoString>));
        };
        return _cmd;
    }
