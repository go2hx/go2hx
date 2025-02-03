package stdgo.net.http.fcgi;
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_envVarsContextKey_static_extension) abstract T_envVarsContextKey(stdgo._internal.net.http.fcgi.Fcgi_T_envVarsContextKey.T_envVarsContextKey) from stdgo._internal.net.http.fcgi.Fcgi_T_envVarsContextKey.T_envVarsContextKey to stdgo._internal.net.http.fcgi.Fcgi_T_envVarsContextKey.T_envVarsContextKey {
    public function new() this = new stdgo._internal.net.http.fcgi.Fcgi_T_envVarsContextKey.T_envVarsContextKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
