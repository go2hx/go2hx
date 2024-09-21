package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
function _cmdExit(_args:haxe.Rest<stdgo.GoString>):Void {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_args[(0 : stdgo.GoInt)]?.__copy__()), _n:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        Sys.exit(_n);
    }
