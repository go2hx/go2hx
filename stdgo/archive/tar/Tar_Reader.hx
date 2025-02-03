package stdgo.archive.tar;
@:structInit @:using(stdgo.archive.tar.Tar.Reader_static_extension) abstract Reader(stdgo._internal.archive.tar.Tar_Reader.Reader) from stdgo._internal.archive.tar.Tar_Reader.Reader to stdgo._internal.archive.tar.Tar_Reader.Reader {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _pad(get, set) : haxe.Int64;
    function get__pad():haxe.Int64 return this._pad;
    function set__pad(v:haxe.Int64):haxe.Int64 {
        this._pad = (v : stdgo.GoInt64);
        return v;
    }
    public var _curr(get, set) : T_fileReader;
    function get__curr():T_fileReader return this._curr;
    function set__curr(v:T_fileReader):T_fileReader {
        this._curr = v;
        return v;
    }
    public var _blk(get, set) : T_block;
    function get__blk():T_block return this._blk;
    function set__blk(v:T_block):T_block {
        this._blk = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_pad:haxe.Int64, ?_curr:T_fileReader, ?_blk:T_block, ?_err:stdgo.Error) this = new stdgo._internal.archive.tar.Tar_Reader.Reader(_r, (_pad : stdgo.GoInt64), _curr, _blk, (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
