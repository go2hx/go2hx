package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.ReadError_static_extension) abstract ReadError(stdgo._internal.compress.flate.Flate_ReadError.ReadError) from stdgo._internal.compress.flate.Flate_ReadError.ReadError to stdgo._internal.compress.flate.Flate_ReadError.ReadError {
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = (v : stdgo.GoInt64);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?offset:haxe.Int64, ?err:stdgo.Error) this = new stdgo._internal.compress.flate.Flate_ReadError.ReadError((offset : stdgo.GoInt64), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
