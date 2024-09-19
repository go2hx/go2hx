package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _cmdYes(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        if ((_args.length) == ((0 : stdgo.GoInt))) {
            _args = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("y" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        var _s = ((stdgo._internal.strings.Strings_join.join(_args, (" " : stdgo.GoString)) + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        while (true) {
            var __tmp__ = stdgo._internal.os.Os_stdout.stdout.writeString(_s?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                Sys.exit((1 : stdgo.GoInt));
            };
        };
    }
