package stdgo._internal.hash.crc64;
function makeTable(_poly:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table> {
        stdgo._internal.hash.crc64.Crc64__buildslicing8tablesonce._buildSlicing8TablesOnce();
        {
            final __value__ = _poly;
            if (__value__ == ((-2882303761517117440i64 : stdgo.GoUInt64))) {
                return (stdgo.Go.setRef(stdgo._internal.hash.crc64.Crc64__slicing8tableiso._slicing8TableISO[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>);
            } else if (__value__ == ((-3932672073523589310i64 : stdgo.GoUInt64))) {
                return (stdgo.Go.setRef(stdgo._internal.hash.crc64.Crc64__slicing8tableecma._slicing8TableECMA[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>);
            } else {
                return stdgo._internal.hash.crc64.Crc64__maketable._makeTable(_poly);
            };
        };
    }
