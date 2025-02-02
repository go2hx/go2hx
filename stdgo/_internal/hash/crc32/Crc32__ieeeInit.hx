package stdgo._internal.hash.crc32;
function _ieeeInit():Void {
        if (stdgo._internal.hash.crc32.Crc32__archAvailableIEEE._archAvailableIEEE()) {
            stdgo._internal.hash.crc32.Crc32__archInitIEEE._archInitIEEE();
            stdgo._internal.hash.crc32.Crc32__updateIEEE._updateIEEE = stdgo._internal.hash.crc32.Crc32__archUpdateIEEE._archUpdateIEEE;
        } else {
            stdgo._internal.hash.crc32.Crc32__ieeeTable8._ieeeTable8 = stdgo._internal.hash.crc32.Crc32__slicingMakeTable._slicingMakeTable((-306674912u32 : stdgo.GoUInt32));
            stdgo._internal.hash.crc32.Crc32__updateIEEE._updateIEEE = function(_crc:stdgo.GoUInt32, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
                return stdgo._internal.hash.crc32.Crc32__slicingUpdate._slicingUpdate(_crc, stdgo._internal.hash.crc32.Crc32__ieeeTable8._ieeeTable8, _p);
            };
        };
    }
