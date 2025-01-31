package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function repeat(_b:stdgo.Slice<stdgo.GoUInt8>, _count:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        if (_count == ((0 : stdgo.GoInt))) {
            return (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_count < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("bytes: negative Repeat count" : stdgo.GoString));
        };
        if (((_b.length) >= ((2147483647 : stdgo.GoInt) / _count : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("bytes: Repeat output length overflow" : stdgo.GoString));
        };
        var _n = ((_b.length) * _count : stdgo.GoInt);
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        {};
        var _chunkMax = (_n : stdgo.GoInt);
        if ((_chunkMax > (8192 : stdgo.GoInt) : Bool)) {
            _chunkMax = (((8192 : stdgo.GoInt) / (_b.length) : stdgo.GoInt) * (_b.length) : stdgo.GoInt);
            if (_chunkMax == ((0 : stdgo.GoInt))) {
                _chunkMax = (_b.length);
            };
        };
        var _nb = stdgo._internal.internal.bytealg.Bytealg_makeNoZero.makeNoZero(_n);
        var _bp = (_nb.__copyTo__(_b) : stdgo.GoInt);
        while ((_bp < _n : Bool)) {
            var _chunk = (_bp : stdgo.GoInt);
            if ((_chunk > _chunkMax : Bool)) {
                _chunk = _chunkMax;
            };
            _bp = (_bp + ((_nb.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_nb.__slice__(0, _chunk) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        return _nb;
    }
