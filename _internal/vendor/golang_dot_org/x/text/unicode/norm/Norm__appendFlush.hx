package _internal.vendor.golang_dot_org.x.text.unicode.norm;
function _appendFlush(_rb:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>):Bool {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _rb._nrune : Bool), _i++, {
                var _start = (_rb._rune[(_i : stdgo.GoInt)]._pos : stdgo.GoUInt8);
                var _end = (_start + _rb._rune[(_i : stdgo.GoInt)]._size : stdgo.GoUInt8);
                _rb._out = (_rb._out.__append__(...((_rb._byte.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            });
        };
        return true;
    }
