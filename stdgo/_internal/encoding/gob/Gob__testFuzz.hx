package stdgo._internal.encoding.gob;
function _testFuzz(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _seed:stdgo.GoInt64, _n:stdgo.GoInt, _input:haxe.Rest<stdgo.AnyInterface>):Void {
        var _input = new stdgo.Slice<stdgo.AnyInterface>(_input.length, 0, ..._input);
        for (__8 => _e in _input) {
            _t.logf(("seed=%d n=%d e=%T" : stdgo.GoString), stdgo.Go.toInterface(_seed), stdgo.Go.toInterface(_n), _e);
            var _rng = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(_seed));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    stdgo._internal.encoding.gob.Gob__encFuzzDec._encFuzzDec(_rng, _e);
                });
            };
        };
    }
