package stdgo.image.gif;
@:structInit @:using(stdgo.image.gif.Gif.T_blockReader_static_extension) abstract T_blockReader(stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader) from stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader to stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader {
    public var _d(get, set) : T_decoder;
    function get__d():T_decoder return this._d;
    function set__d(v:T_decoder):T_decoder {
        this._d = (v : stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>);
        return v;
    }
    public var _i(get, set) : std.UInt;
    function get__i():std.UInt return this._i;
    function set__i(v:std.UInt):std.UInt {
        this._i = (v : stdgo.GoUInt8);
        return v;
    }
    public var _j(get, set) : std.UInt;
    function get__j():std.UInt return this._j;
    function set__j(v:std.UInt):std.UInt {
        this._j = (v : stdgo.GoUInt8);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_d:T_decoder, ?_i:std.UInt, ?_j:std.UInt, ?_err:stdgo.Error) this = new stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader((_d : stdgo.Ref<stdgo._internal.image.gif.Gif_T_decoder.T_decoder>), (_i : stdgo.GoUInt8), (_j : stdgo.GoUInt8), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
