package stdgo._internal.hash.crc64;
function makeTable(_poly:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table> {
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64.go#L49"
        stdgo._internal.hash.crc64.Crc64__buildslicing8tablesonce._buildSlicing8TablesOnce();
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64.go#L50"
        {
            final __value__ = _poly;
            if (__value__ == ((-2882303761517117440i64 : stdgo.GoUInt64))) {
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64.go#L52"
                return (stdgo.Go.setRef(stdgo._internal.hash.crc64.Crc64__slicing8tableiso._slicing8TableISO[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>);
            } else if (__value__ == ((-3932672073523589310i64 : stdgo.GoUInt64))) {
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64.go#L54"
                return (stdgo.Go.setRef(stdgo._internal.hash.crc64.Crc64__slicing8tableecma._slicing8TableECMA[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64.go#L56"
                return stdgo._internal.hash.crc64.Crc64__maketable._makeTable(_poly);
            };
        };
    }
