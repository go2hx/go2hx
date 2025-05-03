package stdgo._internal.strconv;
function appendBool(_dst:stdgo.Slice<stdgo.GoUInt8>, _b:Bool):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/strconv/atob.go#L31"
        if (_b) {
            //"file:///home/runner/.go/go1.21.3/src/strconv/atob.go#L32"
            return (_dst.__append__(...((("true" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atob.go#L34"
        return (_dst.__append__(...((("false" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
