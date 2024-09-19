package stdgo._internal.fmt;
function scanf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface(stdgo._internal.os.Os_stdin.stdin), _format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>));
    }
