package stdgo._internal.slices;
@:keep @:allow(stdgo._internal.slices.Slices.T_intPairs_asInterface) class T_intPairs_static_extension {
    @:keep
    static public function _inOrder( _d:stdgo._internal.slices.Slices_T_intPairs.T_intPairs):Bool {
        @:recv var _d:stdgo._internal.slices.Slices_T_intPairs.T_intPairs = _d;
        var __0 = (-1 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _lastB = __1, _lastA = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_d.length) : Bool), _i++, {
                if (_lastA != (_d[(_i : stdgo.GoInt)]._a)) {
                    _lastA = _d[(_i : stdgo.GoInt)]._a;
                    _lastB = _d[(_i : stdgo.GoInt)]._b;
                    continue;
                };
                if ((_d[(_i : stdgo.GoInt)]._b <= _lastB : Bool)) {
                    return false;
                };
                _lastB = _d[(_i : stdgo.GoInt)]._b;
            });
        };
        return true;
    }
    @:keep
    static public function _initB( _d:stdgo._internal.slices.Slices_T_intPairs.T_intPairs):Void {
        @:recv var _d:stdgo._internal.slices.Slices_T_intPairs.T_intPairs = _d;
        for (_i => _ in _d) {
            _d[(_i : stdgo.GoInt)]._b = _i;
        };
    }
}