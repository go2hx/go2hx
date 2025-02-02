package stdgo._internal.strconv;
function appendBool(_dst:stdgo.Slice<stdgo.GoUInt8>, _b:Bool):stdgo.Slice<stdgo.GoUInt8> {
        if (_b) {
            return (_dst.__append__(...((("true" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        return (_dst.__append__(...((("false" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
    }
