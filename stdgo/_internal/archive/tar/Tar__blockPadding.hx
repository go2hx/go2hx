package stdgo._internal.archive.tar;
function _blockPadding(_offset:stdgo.GoInt64):stdgo.GoInt64 {
        var _n = (0 : stdgo.GoInt64);
        return _n = (-_offset & (511i64 : stdgo.GoInt64) : stdgo.GoInt64);
    }
