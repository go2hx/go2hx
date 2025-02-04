package stdgo._internal.internal.coverage.slicereader;
function _toString(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return (stdgo._internal.unsafe.Unsafe_string.string(stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]), (_b.length)) : stdgo.GoString)?.__copy__();
    }
