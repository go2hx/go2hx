package stdgo._internal.archive.tar;
@:structInit @:using(stdgo._internal.archive.tar.Tar_reader_static_extension.Reader_static_extension) class Reader {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _pad : stdgo.GoInt64 = 0;
    public var _curr : stdgo._internal.archive.tar.Tar_t_filereader.T_fileReader = (null : stdgo._internal.archive.tar.Tar_t_filereader.T_fileReader);
    public var _blk : stdgo._internal.archive.tar.Tar_t_block.T_block = new stdgo._internal.archive.tar.Tar_t_block.T_block(512, 512, ...[for (i in 0 ... 512) (0 : stdgo.GoUInt8)]);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_pad:stdgo.GoInt64, ?_curr:stdgo._internal.archive.tar.Tar_t_filereader.T_fileReader, ?_blk:stdgo._internal.archive.tar.Tar_t_block.T_block, ?_err:stdgo.Error) {
        if (_r != null) this._r = _r;
        if (_pad != null) this._pad = _pad;
        if (_curr != null) this._curr = _curr;
        if (_blk != null) this._blk = _blk;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(_r, _pad, _curr, _blk, _err);
    }
}
