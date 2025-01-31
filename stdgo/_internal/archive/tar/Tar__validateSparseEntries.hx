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
function _validateSparseEntries(_sp:stdgo.Slice<stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry>, _size:stdgo.GoInt64):Bool {
        if ((_size < (0i64 : stdgo.GoInt64) : Bool)) {
            return false;
        };
        var _pre:stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry = ({} : stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry);
        for (__1 => _cur in _sp) {
            if (((_cur.offset < (0i64 : stdgo.GoInt64) : Bool) || (_cur.length_ < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                return false;
            } else if ((_cur.offset > ((9223372036854775807i64 : stdgo.GoInt64) - _cur.length_ : stdgo.GoInt64) : Bool)) {
                return false;
            } else if ((_cur._endOffset() > _size : Bool)) {
                return false;
            } else if ((_pre._endOffset() > _cur.offset : Bool)) {
                return false;
            };
            _pre = _cur?.__copy__();
        };
        return true;
    }
