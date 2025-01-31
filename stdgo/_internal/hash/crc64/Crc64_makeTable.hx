package stdgo._internal.hash.crc64;
import stdgo._internal.errors.Errors;
function makeTable(_poly:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table> {
        stdgo._internal.hash.crc64.Crc64__buildSlicing8TablesOnce._buildSlicing8TablesOnce();
        {
            final __value__ = _poly;
            if (__value__ == ((-2882303761517117440i64 : stdgo.GoUInt64))) {
                return (stdgo.Go.setRef(stdgo._internal.hash.crc64.Crc64__slicing8TableISO._slicing8TableISO[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>);
            } else if (__value__ == ((-3932672073523589310i64 : stdgo.GoUInt64))) {
                return (stdgo.Go.setRef(stdgo._internal.hash.crc64.Crc64__slicing8TableECMA._slicing8TableECMA[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>);
            } else {
                return stdgo._internal.hash.crc64.Crc64__makeTable._makeTable(_poly);
            };
        };
    }
