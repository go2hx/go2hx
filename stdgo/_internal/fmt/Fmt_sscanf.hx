package stdgo._internal.fmt;
function sscanf(_str:stdgo.GoString, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return {
            final __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface(new stdgo.Pointer<stdgo._internal.fmt.Fmt_t_stringreader.T_stringReader>(() -> (stdgo.Go.pointer(_str).value : stdgo._internal.fmt.Fmt_t_stringreader.T_stringReader), v -> (stdgo.Go.pointer(_str).value = (v : stdgo.GoString) : stdgo._internal.fmt.Fmt_t_stringreader.T_stringReader))), _format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>));
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
