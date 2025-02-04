package stdgo._internal.hash.crc32;
function _update(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>, _p:stdgo.Slice<stdgo.GoUInt8>, _checkInitIEEE:Bool):stdgo.GoUInt32 {
        if ((@:check2 stdgo._internal.hash.crc32.Crc32__havecastagnoli._haveCastagnoli.load() && (_tab == stdgo._internal.hash.crc32.Crc32__castagnolitable._castagnoliTable) : Bool)) {
            return stdgo._internal.hash.crc32.Crc32__updatecastagnoli._updateCastagnoli(_crc, _p);
        } else if (_tab == (stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable)) {
            if (_checkInitIEEE) {
                @:check2 stdgo._internal.hash.crc32.Crc32__ieeeonce._ieeeOnce.do_(stdgo._internal.hash.crc32.Crc32__ieeeinit._ieeeInit);
            };
            return stdgo._internal.hash.crc32.Crc32__updateieee._updateIEEE(_crc, _p);
        } else {
            return stdgo._internal.hash.crc32.Crc32__simpleupdate._simpleUpdate(_crc, _tab, _p);
        };
    }
