package stdgo.archive.tar;
class T_sparseArray_static_extension {
    static public function _maxEntries(_s:T_sparseArray):StdTypes.Int {
        return stdgo._internal.archive.tar.Tar_T_sparseArray_static_extension.T_sparseArray_static_extension._maxEntries(_s);
    }
    static public function _isExtended(_s:T_sparseArray):Array<std.UInt> {
        return [for (i in stdgo._internal.archive.tar.Tar_T_sparseArray_static_extension.T_sparseArray_static_extension._isExtended(_s)) i];
    }
    static public function _entry(_s:T_sparseArray, _i:StdTypes.Int):T_sparseElem {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.archive.tar.Tar_T_sparseArray_static_extension.T_sparseArray_static_extension._entry(_s, _i);
    }
}
