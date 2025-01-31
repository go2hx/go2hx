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
function _alignSparseEntries(_src:stdgo.Slice<stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry>, _size:stdgo.GoInt64):stdgo.Slice<stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry> {
        var _dst = (_src.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry>);
        for (__1 => _s in _src) {
            var __0 = (_s.offset : stdgo.GoInt64), __1 = (_s._endOffset() : stdgo.GoInt64);
var _end = __1, _pos = __0;
            _pos = (_pos + (stdgo._internal.archive.tar.Tar__blockPadding._blockPadding(_pos)) : stdgo.GoInt64);
            if (_end != (_size)) {
                _end = (_end - (stdgo._internal.archive.tar.Tar__blockPadding._blockPadding(-_end)) : stdgo.GoInt64);
            };
            if ((_pos < _end : Bool)) {
                _dst = (_dst.__append__(({ offset : _pos, length_ : (_end - _pos : stdgo.GoInt64) } : stdgo._internal.archive.tar.Tar_T_sparseEntry.T_sparseEntry)));
            };
        };
        return _dst;
    }
