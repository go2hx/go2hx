package stdgo._internal.internal.testenv;
function cleanCmdEnv(_cmd:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> {
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L104"
        if ((@:checkr _cmd ?? throw "null pointer dereference").env != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L105"
            throw stdgo.Go.toInterface(("environment already set" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L107"
        for (__6 => _env in stdgo._internal.os.Os_environ_.environ_()) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L110"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_env?.__copy__(), ("GODEBUG=" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L111"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L114"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_env?.__copy__(), ("GOTRACEBACK=" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L115"
                continue;
            };
            (@:checkr _cmd ?? throw "null pointer dereference").env = ((@:checkr _cmd ?? throw "null pointer dereference").env.__append__(_env?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/exec.go#L119"
        return _cmd;
    }
