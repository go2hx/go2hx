package stdgo._internal.encoding.json;
function _appendNewline(_dst:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.GoString, _indent:stdgo.GoString, _depth:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        _dst = (_dst.__append__((10 : stdgo.GoUInt8)));
        _dst = (_dst.__append__(...(_prefix : Array<stdgo.GoUInt8>)));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _depth : Bool)) {
                _dst = (_dst.__append__(...(_indent : Array<stdgo.GoUInt8>)));
                _i++;
            };
        };
        return _dst;
    }
