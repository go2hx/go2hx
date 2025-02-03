package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_file_static_extension) abstract T_file(stdgo._internal.net.Net_T_file.T_file) from stdgo._internal.net.Net_T_file.T_file to stdgo._internal.net.Net_T_file.T_file {
    public function new() this = new stdgo._internal.net.Net_T_file.T_file();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
