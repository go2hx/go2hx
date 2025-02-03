package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_maskedSig_static_extension) abstract T_maskedSig(stdgo._internal.net.http.Http_T_maskedSig.T_maskedSig) from stdgo._internal.net.http.Http_T_maskedSig.T_maskedSig to stdgo._internal.net.http.Http_T_maskedSig.T_maskedSig {
    public function new() this = new stdgo._internal.net.http.Http_T_maskedSig.T_maskedSig();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
