package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function exampleCommand():Void {
        var _cmd = stdgo._internal.os.exec.Exec_command.command(("tr" : stdgo.GoString), ("a-z" : stdgo.GoString), ("A-Z" : stdgo.GoString));
        _cmd.stdin = stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("some input" : stdgo.GoString)));
        var _out:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _cmd.stdout = stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>));
        var _err = (_cmd.run() : stdgo.Error);
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("in all caps: %q\n" : stdgo.GoString), stdgo.Go.toInterface((_out.string() : stdgo.GoString)));
    }
