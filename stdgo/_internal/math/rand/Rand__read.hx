package stdgo._internal.math.rand;
function _read(_p:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo._internal.math.rand.Rand_source.Source, _readVal:stdgo.Pointer<stdgo.GoInt64>, _readPos:stdgo.Pointer<stdgo.GoInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _pos = (_readPos.value : stdgo.GoInt8);
        var _val = (_readVal.value : stdgo.GoInt64);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>)) : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>), _1 : false };
        }, _rng = __tmp__._0, __8 = __tmp__._1;
        {
            _n = (0 : stdgo.GoInt);
            while ((_n < (_p.length) : Bool)) {
                if (_pos == ((0 : stdgo.GoInt8))) {
                    if ((_rng != null && ((_rng : Dynamic).__nil__ == null || !(_rng : Dynamic).__nil__))) {
                        _val = @:check2r _rng.int63();
                    } else {
                        _val = _src.int63();
                    };
                    _pos = (7 : stdgo.GoInt8);
                };
_p[(_n : stdgo.GoInt)] = (_val : stdgo.GoUInt8);
_val = (_val >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
_pos--;
                _n++;
            };
        };
        _readPos.value = _pos;
        _readVal.value = _val;
        return { _0 : _n, _1 : _err };
    }
