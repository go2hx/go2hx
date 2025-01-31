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
function _invertSparseEntries(_src:stdgo.Slice<stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry>, _size:stdgo.GoInt64):stdgo.Slice<stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry> {
        var _dst = (_src.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry>);
        var _pre:stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry = ({} : stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry);
        for (__1 => _cur in _src) {
            if (_cur.length_ == ((0i64 : stdgo.GoInt64))) {
                continue;
            };
            _pre.length_ = (_cur.offset - _pre.offset : stdgo.GoInt64);
            if ((_pre.length_ > (0i64 : stdgo.GoInt64) : Bool)) {
                _dst = (_dst.__append__(_pre?.__copy__()));
            };
            _pre.offset = _cur._endOffset();
        };
        _pre.length_ = (_size - _pre.offset : stdgo.GoInt64);
        return (_dst.__append__(_pre?.__copy__()));
    }
