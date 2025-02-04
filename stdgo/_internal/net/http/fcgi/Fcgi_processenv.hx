package stdgo._internal.net.http.fcgi;
function processEnv(_r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((@:check2r _r.context().value(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.net.http.fcgi.Fcgi_t_envvarscontextkey.T_envVarsContextKey() : stdgo._internal.net.http.fcgi.Fcgi_t_envvarscontextkey.T_envVarsContextKey)))) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _1 : false };
        }, _env = __tmp__._0, __0 = __tmp__._1;
        return _env;
    }
