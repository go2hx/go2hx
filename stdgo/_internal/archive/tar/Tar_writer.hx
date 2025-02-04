package stdgo._internal.archive.tar;
@:structInit @:using(stdgo._internal.archive.tar.Tar_writer_static_extension.Writer_static_extension) class Writer {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _pad : stdgo.GoInt64 = 0;
    public var _curr : stdgo._internal.archive.tar.Tar_t_filewriter.T_fileWriter = (null : stdgo._internal.archive.tar.Tar_t_filewriter.T_fileWriter);
    public var _hdr : stdgo._internal.archive.tar.Tar_header.Header = ({} : stdgo._internal.archive.tar.Tar_header.Header);
    public var _blk : stdgo._internal.archive.tar.Tar_t_block.T_block = new stdgo._internal.archive.tar.Tar_t_block.T_block(512, 512, ...[for (i in 0 ... 512) (0 : stdgo.GoUInt8)]);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_pad:stdgo.GoInt64, ?_curr:stdgo._internal.archive.tar.Tar_t_filewriter.T_fileWriter, ?_hdr:stdgo._internal.archive.tar.Tar_header.Header, ?_blk:stdgo._internal.archive.tar.Tar_t_block.T_block, ?_err:stdgo.Error) {
        if (_w != null) this._w = _w;
        if (_pad != null) this._pad = _pad;
        if (_curr != null) this._curr = _curr;
        if (_hdr != null) this._hdr = _hdr;
        if (_blk != null) this._blk = _blk;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(_w, _pad, _curr, _hdr, _blk, _err);
    }
}
