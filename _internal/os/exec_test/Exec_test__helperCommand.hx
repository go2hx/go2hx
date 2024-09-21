package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _helperCommand(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd> {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        _t.helper();
        return _internal.os.exec_test.Exec_test__helperCommandContext._helperCommandContext(_t, (null : stdgo._internal.context.Context_Context.Context), _name?.__copy__(), ...(_args : Array<stdgo.GoString>));
    }
