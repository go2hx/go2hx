package stdgo._internal.internal.testenv;
function command(_t:stdgo._internal.testing.Testing_tb.TB, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        _t.helper();
        return stdgo._internal.internal.testenv.Testenv_commandcontext.commandContext(_t, stdgo._internal.context.Context_background.background(), _name?.__copy__(), ...(_args : Array<stdgo.GoString>));
    }
