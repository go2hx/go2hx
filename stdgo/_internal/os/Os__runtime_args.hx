package stdgo._internal.os;
function _runtime_args():stdgo.Slice<stdgo.GoString> {
        #if (sys || hxnodejs) {
            final args:Array<stdgo.GoString> = std.Sys.args().map(arg -> (arg : stdgo.GoString));
            args.unshift(std.Sys.getCwd());
            return new stdgo.Slice<stdgo.GoString>(args.length, args.length, ...args).__setString__();
        } #else null #end;
        #if js return new stdgo.Slice<stdgo.GoString>(1, 1, ".").__setString__() #else null #end;
    }
