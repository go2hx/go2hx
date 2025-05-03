package stdgo._internal.bufio;
function _dropCR(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L338"
        if ((((_data.length) > (0 : stdgo.GoInt) : Bool) && (_data[((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L339"
            return (_data.__slice__((0 : stdgo.GoInt), ((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bufio/scan.go#L341"
        return _data;
    }
