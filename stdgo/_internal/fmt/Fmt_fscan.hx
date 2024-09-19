package stdgo._internal.fmt;
function fscan(_r:stdgo._internal.io.Io_Reader.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.fmt.Fmt__newScanState._newScanState(_r, true, false), _s:stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss> = __tmp__._0, _old:stdgo._internal.fmt.Fmt_T_ssave.T_ssave = __tmp__._1;
        {
            var __tmp__ = _s._doScan(_a);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _s._free(_old?.__copy__());
        return { _0 : _n, _1 : _err };
    }
