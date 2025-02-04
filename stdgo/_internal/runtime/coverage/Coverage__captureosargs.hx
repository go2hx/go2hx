package stdgo._internal.runtime.coverage;
function _captureOsArgs():stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        _m[("argc" : stdgo.GoString)] = stdgo._internal.strconv.Strconv_itoa.itoa((stdgo._internal.os.Os_args.args.length))?.__copy__();
        for (_k => _a in stdgo._internal.os.Os_args.args) {
            _m[stdgo._internal.fmt.Fmt_sprintf.sprintf(("argv%d" : stdgo.GoString), stdgo.Go.toInterface(_k))] = _a?.__copy__();
        };
        _m[("GOOS" : stdgo.GoString)] = ("js" : stdgo.GoString);
        _m[("GOARCH" : stdgo.GoString)] = ("wasm" : stdgo.GoString);
        return _m;
    }
