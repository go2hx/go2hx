package stdgo._internal.crypto.tls;
function _sliceForAppend(_in:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } {
        var _head = (null : stdgo.Slice<stdgo.GoUInt8>), _tail = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _total = ((_in.length) + _n : stdgo.GoInt);
            if ((_in.capacity >= _total : Bool)) {
                _head = (_in.__slice__(0, _total) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                _head = (new stdgo.Slice<stdgo.GoUInt8>((_total : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _head.__copyTo__(_in);
            };
        };
        _tail = (_head.__slice__((_in.length)) : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : _head, _1 : _tail };
    }
