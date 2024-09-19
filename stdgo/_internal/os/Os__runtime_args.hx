package stdgo._internal.os;
import stdgo._internal.unsafe.Unsafe;
function _runtime_args():stdgo.Slice<stdgo.GoString> {
        #if js return new stdgo.Slice<stdgo.GoString>(0, 0).__setString__() #else null #end;
        #if target.sys {
            final args:Array<stdgo.GoString> = std.Sys.args().map(arg -> (arg : stdgo.GoString));
            args.unshift(std.Sys.getCwd());
            return new stdgo.Slice<stdgo.GoString>(args.length, args.length, ...args).__setString__();
        } #else null #end;
    }
