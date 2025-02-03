package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_ioFile_static_extension) abstract T_ioFile(stdgo._internal.net.http.Http_T_ioFile.T_ioFile) from stdgo._internal.net.http.Http_T_ioFile.T_ioFile to stdgo._internal.net.http.Http_T_ioFile.T_ioFile {
    public function new() this = new stdgo._internal.net.http.Http_T_ioFile.T_ioFile();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
