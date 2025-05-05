package stdgo._internal.compress.flate;
function _histogram(_b:stdgo.Slice<stdgo.GoUInt8>, _h:stdgo.Slice<stdgo.GoInt32>):Void {
        _h = (_h.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L698"
        for (__0 => _t in _b) {
            //"file:///home/runner/.go/go1.21.3/src/compress/flate/huffman_bit_writer.go#L699"
            _h[(_t : stdgo.GoInt)]++;
        };
    }
