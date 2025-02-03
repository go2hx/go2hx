package stdgo.archive.tar;
@:structInit @:using(stdgo.archive.tar.Tar.Writer_static_extension) abstract Writer(stdgo._internal.archive.tar.Tar_Writer.Writer) from stdgo._internal.archive.tar.Tar_Writer.Writer to stdgo._internal.archive.tar.Tar_Writer.Writer {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _pad(get, set) : haxe.Int64;
    function get__pad():haxe.Int64 return this._pad;
    function set__pad(v:haxe.Int64):haxe.Int64 {
        this._pad = (v : stdgo.GoInt64);
        return v;
    }
    public var _curr(get, set) : T_fileWriter;
    function get__curr():T_fileWriter return this._curr;
    function set__curr(v:T_fileWriter):T_fileWriter {
        this._curr = v;
        return v;
    }
    public var _hdr(get, set) : Header;
    function get__hdr():Header return this._hdr;
    function set__hdr(v:Header):Header {
        this._hdr = v;
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
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_pad:haxe.Int64, ?_curr:T_fileWriter, ?_hdr:Header, ?_blk:T_block, ?_err:stdgo.Error) this = new stdgo._internal.archive.tar.Tar_Writer.Writer(_w, (_pad : stdgo.GoInt64), _curr, _hdr, _blk, (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
