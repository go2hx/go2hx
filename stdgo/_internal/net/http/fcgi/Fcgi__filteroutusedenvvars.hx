package stdgo._internal.net.http.fcgi;
function _filterOutUsedEnvVars(_envVars:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        var _withoutUsedEnvVars = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        for (_k => _v in _envVars) {
            if (stdgo._internal.net.http.fcgi.Fcgi__addfastcgienvtocontext._addFastCGIEnvToContext(_k?.__copy__())) {
                _withoutUsedEnvVars[_k] = _v?.__copy__();
            };
        };
        return _withoutUsedEnvVars;
    }
