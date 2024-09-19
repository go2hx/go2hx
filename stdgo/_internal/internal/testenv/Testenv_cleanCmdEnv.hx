package stdgo._internal.internal.testenv;
function cleanCmdEnv(_cmd:stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd>):stdgo.Ref<stdgo._internal.os.exec.Exec_Cmd.Cmd> {
        if (_cmd.env != null) {
            throw stdgo.Go.toInterface(("environment already set" : stdgo.GoString));
        };
        for (__6 => _env in stdgo._internal.os.Os_environ_.environ_()) {
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_env?.__copy__(), ("GODEBUG=" : stdgo.GoString))) {
                continue;
            };
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_env?.__copy__(), ("GOTRACEBACK=" : stdgo.GoString))) {
                continue;
            };
            _cmd.env = (_cmd.env.__append__(_env?.__copy__()));
        };
        return _cmd;
    }
