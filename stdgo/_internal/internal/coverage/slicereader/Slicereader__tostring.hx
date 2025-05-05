package stdgo._internal.internal.coverage.slicereader;
function _toString(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/slicereader/slicereader.go#L119"
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/slicereader/slicereader.go#L120"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/slicereader/slicereader.go#L122"
        return (stdgo._internal.unsafe.Unsafe_string.string(stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]), (_b.length)) : stdgo.GoString)?.__copy__();
    }
