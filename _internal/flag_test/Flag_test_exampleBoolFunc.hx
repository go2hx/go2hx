package _internal.flag_test;
import stdgo._internal.flag.Flag;
function exampleBoolFunc():Void {
        var _fs = stdgo._internal.flag.Flag_newFlagSet.newFlagSet(("ExampleBoolFunc" : stdgo.GoString), (0 : stdgo._internal.flag.Flag_ErrorHandling.ErrorHandling));
        _fs.setOutput(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout));
        _fs.boolFunc(("log" : stdgo.GoString), ("logs a dummy message" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("dummy message:" : stdgo.GoString)), stdgo.Go.toInterface(_s));
            return (null : stdgo.Error);
        });
        _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-log" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-log=0" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
    }
