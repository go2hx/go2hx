package _internal.encoding.hex_test;
function exampleDumper():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _lines = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Go is an open source programming language." : stdgo.GoString), ("\n" : stdgo.GoString), ("We encourage all Go users to subscribe to golang-announce." : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _stdoutDumper = (stdgo._internal.encoding.hex.Hex_dumper.dumper(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout)) : stdgo._internal.io.Io_WriteCloser.WriteCloser);
            __deferstack__.unshift(() -> _stdoutDumper.close());
            for (__0 => _line in _lines) {
                _stdoutDumper.write((_line : stdgo.Slice<stdgo.GoUInt8>));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
