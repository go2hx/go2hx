package stdgo._internal.hash.crc32;
function _update(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_Table.Table>, _p:stdgo.Slice<stdgo.GoUInt8>, _checkInitIEEE:Bool):stdgo.GoUInt32 {
        if ((stdgo._internal.hash.crc32.Crc32__haveCastagnoli._haveCastagnoli.load() && (_tab == stdgo._internal.hash.crc32.Crc32__castagnoliTable._castagnoliTable) : Bool)) {
            return stdgo._internal.hash.crc32.Crc32__updateCastagnoli._updateCastagnoli(_crc, _p);
        } else if (_tab == (stdgo._internal.hash.crc32.Crc32_ieeetable.ieeetable)) {
            if (_checkInitIEEE) {
                stdgo._internal.hash.crc32.Crc32__ieeeOnce._ieeeOnce.do_(stdgo._internal.hash.crc32.Crc32__ieeeInit._ieeeInit);
            };
            return stdgo._internal.hash.crc32.Crc32__updateIEEE._updateIEEE(_crc, _p);
        } else {
            return stdgo._internal.hash.crc32.Crc32__simpleUpdate._simpleUpdate(_crc, _tab, _p);
        };
    }
