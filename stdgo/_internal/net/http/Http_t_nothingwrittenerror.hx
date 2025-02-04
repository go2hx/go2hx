package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_nothingwrittenerror_static_extension.T_nothingWrittenError_static_extension) class T_nothingWrittenError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var error(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_error():() -> stdgo.GoString return @:check31 (this.new ?? throw "null pointer dereference").error;
    public function __copy__() {
        return new T_nothingWrittenError();
    }
}
