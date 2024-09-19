package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
function _getEnvAny(_names:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _names = new stdgo.Slice<stdgo.GoString>(_names.length, 0, ..._names);
        for (__0 => _n in _names) {
            {
                var _val = (stdgo._internal.os.Os_getenv.getenv(_n?.__copy__())?.__copy__() : stdgo.GoString);
                if (_val != (stdgo.Go.str())) {
                    return _val?.__copy__();
                };
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
