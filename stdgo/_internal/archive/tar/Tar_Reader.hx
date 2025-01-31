package stdgo._internal.archive.tar;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.path.Path;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.archive.tar.Tar_Reader_static_extension.Reader_static_extension) class Reader {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _pad : stdgo.GoInt64 = 0;
    public var _curr : stdgo._internal.archive.tar.Tar_T_fileReader.T_fileReader = (null : stdgo._internal.archive.tar.Tar_T_fileReader.T_fileReader);
    public var _blk : stdgo._internal.archive.tar.Tar_T_block.T_block = new stdgo._internal.archive.tar.Tar_T_block.T_block(512, 512, ...[for (i in 0 ... 512) (0 : stdgo.GoUInt8)]);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_pad:stdgo.GoInt64, ?_curr:stdgo._internal.archive.tar.Tar_T_fileReader.T_fileReader, ?_blk:stdgo._internal.archive.tar.Tar_T_block.T_block, ?_err:stdgo.Error) {
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
