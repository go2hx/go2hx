package stdgo._internal.fmt;
function print(_a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L272"
        return stdgo._internal.fmt.Fmt_fprint.fprint(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), ...(_a : Array<stdgo.AnyInterface>));
    }
