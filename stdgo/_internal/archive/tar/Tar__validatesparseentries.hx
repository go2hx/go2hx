package stdgo._internal.archive.tar;
function _validateSparseEntries(_sp:stdgo.Slice<stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry>, _size:stdgo.GoInt64):Bool {
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L258"
        if ((_size < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L259"
            return false;
        };
        var _pre:stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry = ({} : stdgo._internal.archive.tar.Tar_t_sparseentry.T_sparseEntry);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L262"
        for (__1 => _cur in _sp) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L263"
            if (((_cur.offset < (0i64 : stdgo.GoInt64) : Bool) || (_cur.length_ < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L265"
                return false;
            } else if ((_cur.offset > ((9223372036854775807i64 : stdgo.GoInt64) - _cur.length_ : stdgo.GoInt64) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L267"
                return false;
            } else if ((_cur._endOffset() > _size : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L269"
                return false;
            } else if ((_pre._endOffset() > _cur.offset : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L271"
                return false;
            };
            _pre = _cur?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L275"
        return true;
    }
