package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_headerSorter_static_extension) abstract T_headerSorter(stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter) from stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter to stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter {
    public function new() this = new stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
