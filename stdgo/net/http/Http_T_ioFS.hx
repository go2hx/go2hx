package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_ioFS_static_extension) abstract T_ioFS(stdgo._internal.net.http.Http_T_ioFS.T_ioFS) from stdgo._internal.net.http.Http_T_ioFS.T_ioFS to stdgo._internal.net.http.Http_T_ioFS.T_ioFS {
    public function new() this = new stdgo._internal.net.http.Http_T_ioFS.T_ioFS();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
