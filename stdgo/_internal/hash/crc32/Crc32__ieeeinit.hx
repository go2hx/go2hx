package stdgo._internal.hash.crc32;
function _ieeeInit():Void {
        if (stdgo._internal.hash.crc32.Crc32__archavailableieee._archAvailableIEEE()) {
            stdgo._internal.hash.crc32.Crc32__archinitieee._archInitIEEE();
            stdgo._internal.hash.crc32.Crc32__updateieee._updateIEEE = stdgo._internal.hash.crc32.Crc32__archupdateieee._archUpdateIEEE;
        } else {
            stdgo._internal.hash.crc32.Crc32__ieeetable8._ieeeTable8 = stdgo._internal.hash.crc32.Crc32__slicingmaketable._slicingMakeTable((-306674912u32 : stdgo.GoUInt32));
            stdgo._internal.hash.crc32.Crc32__updateieee._updateIEEE = function(_crc:stdgo.GoUInt32, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
                return stdgo._internal.hash.crc32.Crc32__slicingupdate._slicingUpdate(_crc, stdgo._internal.hash.crc32.Crc32__ieeetable8._ieeeTable8, _p);
            };
        };
    }
