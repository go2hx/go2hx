package stdgo._internal.fmt;
function scan(_a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = stdgo._internal.fmt.Fmt_fscan.fscan(stdgo.Go.asInterface(stdgo._internal.os.Os_stdin.stdin), ...(_a : Array<stdgo.AnyInterface>));
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
