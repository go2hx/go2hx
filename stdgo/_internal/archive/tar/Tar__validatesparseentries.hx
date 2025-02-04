package stdgo._internal.archive.tar;
function _validateSparseEntries(_sp:stdgo.Slice<stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry>, _size:stdgo.GoInt64):Bool {
        if ((_size < (0i64 : stdgo.GoInt64) : Bool)) {
            return false;
        };
        var _pre:stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry = ({} : stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry);
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
