package stdgo._internal.hash.crc32;
function _castagnoliInit():Void {
        stdgo._internal.hash.crc32.Crc32__castagnolitable._castagnoliTable = stdgo._internal.hash.crc32.Crc32__simplemaketable._simpleMakeTable((-2097792136u32 : stdgo.GoUInt32));
        if (stdgo._internal.hash.crc32.Crc32__archavailablecastagnoli._archAvailableCastagnoli()) {
            stdgo._internal.hash.crc32.Crc32__archinitcastagnoli._archInitCastagnoli();
            stdgo._internal.hash.crc32.Crc32__updatecastagnoli._updateCastagnoli = stdgo._internal.hash.crc32.Crc32__archupdatecastagnoli._archUpdateCastagnoli;
        } else {
            stdgo._internal.hash.crc32.Crc32__castagnolitable8._castagnoliTable8 = stdgo._internal.hash.crc32.Crc32__slicingmaketable._slicingMakeTable((-2097792136u32 : stdgo.GoUInt32));
            stdgo._internal.hash.crc32.Crc32__updatecastagnoli._updateCastagnoli = function(_crc:stdgo.GoUInt32, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
                return stdgo._internal.hash.crc32.Crc32__slicingupdate._slicingUpdate(_crc, stdgo._internal.hash.crc32.Crc32__castagnolitable8._castagnoliTable8, _p);
            };
        };
        @:check2 stdgo._internal.hash.crc32.Crc32__havecastagnoli._haveCastagnoli.store(true);
    }
