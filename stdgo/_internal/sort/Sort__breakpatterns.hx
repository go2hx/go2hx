package stdgo._internal.sort;
function _breakPatterns(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L242"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.sort.Sort_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.sort.Sort__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L246"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.sort.Sort_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L248"
                    if ((_other >= _length : Bool)) {
                        _other = (_other - (_length) : stdgo.GoInt);
                    };
//"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L251"
                    _data.swap(_idx, (_a + _other : stdgo.GoInt));
                    _idx++;
                };
            };
        };
    }
