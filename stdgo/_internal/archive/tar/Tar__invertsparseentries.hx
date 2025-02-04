package stdgo._internal.archive.tar;
function _invertSparseEntries(_src:stdgo.Slice<stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry>, _size:stdgo.GoInt64):stdgo.Slice<stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry> {
        var _dst = (_src.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry>);
        var _pre:stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry = ({} : stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry);
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
