package stdgo._internal.encoding.json;
function _appendNewline(_dst:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.GoString, _indent:stdgo.GoString, _depth:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        _dst = (_dst.__append__((10 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _dst = (_dst.__append__(...(_prefix : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/indent.go#L85"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _depth : Bool)) {
                _dst = (_dst.__append__(...(_indent : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/indent.go#L88"
        return _dst;
    }
