package stdgo._internal.archive.tar;
function _alignSparseEntries(_src:stdgo.Slice<stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry>, _size:stdgo.GoInt64):stdgo.Slice<stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry> {
        var _dst = (_src.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry>);
        for (__1 => _s in _src) {
            var __0 = (_s.offset : stdgo.GoInt64), __1 = (_s._endOffset() : stdgo.GoInt64);
var _end = __1, _pos = __0;
            _pos = (_pos + (stdgo._internal.archive.tar.Tar__blockpadding._blockPadding(_pos)) : stdgo.GoInt64);
            if (_end != (_size)) {
                _end = (_end - (stdgo._internal.archive.tar.Tar__blockpadding._blockPadding(-_end)) : stdgo.GoInt64);
            };
            if ((_pos < _end : Bool)) {
                _dst = (_dst.__append__(({ offset : _pos, length_ : (_end - _pos : stdgo.GoInt64) } : stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry)));
            };
        };
        return _dst;
    }
