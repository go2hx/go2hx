package stdgo._internal.index.suffixarray;
function _unmap_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void {
        var _unmap = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>);
        var _j = (_unmap.length : stdgo.GoInt);
        var __0 = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8), __1 = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8), __2 = (false : Bool);
var _isTypeS = __2, _c1 = __1, _c0 = __0;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1263"
        {
            var _i = ((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = _text[(_i : stdgo.GoInt)];
                    final __tmp__1 = _c0;
                    _c0 = @:binopAssign __tmp__0;
                    _c1 = @:binopAssign __tmp__1;
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1265"
                if ((_c0 < _c1 : Bool)) {
                    _isTypeS = true;
                } else if (((_c0 > _c1 : Bool) && _isTypeS : Bool)) {
                    _isTypeS = false;
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1271"
                    _j--;
                    _unmap[(_j : stdgo.GoInt)] = ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64);
                };
                _i--;
            };
        };
        _sa = (_sa.__slice__(0, _numLMS) : stdgo.Slice<stdgo.GoInt64>);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L1278"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_sa.length) : Bool)) {
                _sa[(_i : stdgo.GoInt)] = _unmap[(_sa[(_i : stdgo.GoInt)] : stdgo.GoInt)];
                _i++;
            };
        };
    }
