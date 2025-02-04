package stdgo._internal.internal.txtar;
function _fixNL(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (((_data.length == (0 : stdgo.GoInt)) || (_data[((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
            return _data;
        };
        var _d = (new stdgo.Slice<stdgo.GoUInt8>(((_data.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _d.__copyTo__(_data);
        _d[(_data.length : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
        return _d;
    }
