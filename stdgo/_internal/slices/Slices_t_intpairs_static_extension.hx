package stdgo._internal.slices;
@:keep @:allow(stdgo._internal.slices.Slices.T_intPairs_asInterface) class T_intPairs_static_extension {
    @:keep
    @:tdfield
    static public function _inOrder( _d:stdgo._internal.slices.Slices_t_intpairs.T_intPairs):Bool {
        @:recv var _d:stdgo._internal.slices.Slices_t_intpairs.T_intPairs = _d;
        var __0 = (-1 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _lastB = __1, _lastA = __0;
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L115"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_d.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L116"
                if (_lastA != (_d[(_i : stdgo.GoInt)]._a)) {
                    _lastA = _d[(_i : stdgo.GoInt)]._a;
                    _lastB = _d[(_i : stdgo.GoInt)]._b;
                    //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L119"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L121"
                if ((_d[(_i : stdgo.GoInt)]._b <= _lastB : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L122"
                    return false;
                };
_lastB = _d[(_i : stdgo.GoInt)]._b;
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L126"
        return true;
    }
    @:keep
    @:tdfield
    static public function _initB( _d:stdgo._internal.slices.Slices_t_intpairs.T_intPairs):Void {
        @:recv var _d:stdgo._internal.slices.Slices_t_intpairs.T_intPairs = _d;
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L107"
        for (_i => _ in _d) {
            _d[(_i : stdgo.GoInt)]._b = _i;
        };
    }
}
