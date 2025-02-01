package stdgo._internal.internal.coverage.slicereader;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
function _toString(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        return (stdgo._internal.unsafe.Unsafe_string.string(stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]), (_b.length)) : stdgo.GoString)?.__copy__();
    }
