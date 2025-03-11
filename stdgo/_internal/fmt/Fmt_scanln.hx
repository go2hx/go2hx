package stdgo._internal.fmt;
function scanln(_a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return stdgo._internal.fmt.Fmt_fscanln.fscanln(stdgo.Go.asInterface(stdgo._internal.os.Os_stdin.stdin), ...(_a : Array<stdgo.AnyInterface>));
    }
