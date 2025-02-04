package stdgo._internal.slices;
@:keep @:allow(stdgo._internal.slices.Slices.T_intPairs_asInterface) class T_intPairs_static_extension {
    @:keep
    @:tdfield
    static public function _inOrder( _d:stdgo._internal.slices.Slices_t_intpairs.T_intPairs):Bool {
        @:recv var _d:stdgo._internal.slices.Slices_t_intpairs.T_intPairs = _d;
        var __0 = (-1 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _lastB = __1, _lastA = __0;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_d.length) : Bool)) {
                if (_lastA != (_d[(_i : stdgo.GoInt)]._a)) {
                    _lastA = _d[(_i : stdgo.GoInt)]._a;
                    _lastB = _d[(_i : stdgo.GoInt)]._b;
                    {
                        _i++;
                        continue;
                    };
                };
if ((_d[(_i : stdgo.GoInt)]._b <= _lastB : Bool)) {
                    return false;
                };
_lastB = _d[(_i : stdgo.GoInt)]._b;
                _i++;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _initB( _d:stdgo._internal.slices.Slices_t_intpairs.T_intPairs):Void {
        @:recv var _d:stdgo._internal.slices.Slices_t_intpairs.T_intPairs = _d;
        for (_i => _ in _d) {
            _d[(_i : stdgo.GoInt)]._b = _i;
        };
    }
}
