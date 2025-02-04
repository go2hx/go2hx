package stdgo._internal.internal.testenv;
function cleanCmdEnv(_cmd:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> {
        if ((@:checkr _cmd ?? throw "null pointer dereference").env != null) {
            throw stdgo.Go.toInterface(("environment already set" : stdgo.GoString));
        };
        for (__6 => _env in stdgo._internal.os.Os_environ_.environ_()) {
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_env?.__copy__(), ("GODEBUG=" : stdgo.GoString))) {
                continue;
            };
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_env?.__copy__(), ("GOTRACEBACK=" : stdgo.GoString))) {
                continue;
            };
            (@:checkr _cmd ?? throw "null pointer dereference").env = ((@:checkr _cmd ?? throw "null pointer dereference").env.__append__(_env?.__copy__()));
        };
        return _cmd;
    }
