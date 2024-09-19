package stdgo._internal.hash.crc32;
function _castagnoliInit():Void {
        stdgo._internal.hash.crc32.Crc32__castagnoliTable._castagnoliTable = stdgo._internal.hash.crc32.Crc32__simpleMakeTable._simpleMakeTable((-2097792136u32 : stdgo.GoUInt32));
        if (stdgo._internal.hash.crc32.Crc32__archAvailableCastagnoli._archAvailableCastagnoli()) {
            stdgo._internal.hash.crc32.Crc32__archInitCastagnoli._archInitCastagnoli();
            stdgo._internal.hash.crc32.Crc32__updateCastagnoli._updateCastagnoli = stdgo._internal.hash.crc32.Crc32__archUpdateCastagnoli._archUpdateCastagnoli;
        } else {
            stdgo._internal.hash.crc32.Crc32__castagnoliTable8._castagnoliTable8 = stdgo._internal.hash.crc32.Crc32__slicingMakeTable._slicingMakeTable((-2097792136u32 : stdgo.GoUInt32));
            stdgo._internal.hash.crc32.Crc32__updateCastagnoli._updateCastagnoli = function(_crc:stdgo.GoUInt32, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
                return stdgo._internal.hash.crc32.Crc32__slicingUpdate._slicingUpdate(_crc, stdgo._internal.hash.crc32.Crc32__castagnoliTable8._castagnoliTable8, _p);
            };
        };
        stdgo._internal.hash.crc32.Crc32__haveCastagnoli._haveCastagnoli.store(true);
    }
