package stdgo._internal.slices;
function testBinarySearchFloats(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[stdgo._internal.math.Math_nan.naN(), (-0.25 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (1.4 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        var _tests = (new stdgo.Slice<stdgo._internal.slices.Slices_t__struct_16.T__struct_16>(6, 6, ...[({ _target : stdgo._internal.math.Math_nan.naN(), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : stdgo._internal.slices.Slices_t__struct_16.T__struct_16), ({ _target : stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : stdgo._internal.slices.Slices_t__struct_16.T__struct_16), ({ _target : (-0.25 : stdgo.GoFloat64), _wantPos : (1 : stdgo.GoInt), _wantFound : true } : stdgo._internal.slices.Slices_t__struct_16.T__struct_16), ({ _target : (0 : stdgo.GoFloat64), _wantPos : (2 : stdgo.GoInt), _wantFound : true } : stdgo._internal.slices.Slices_t__struct_16.T__struct_16), ({ _target : (1.4 : stdgo.GoFloat64), _wantPos : (3 : stdgo.GoInt), _wantFound : true } : stdgo._internal.slices.Slices_t__struct_16.T__struct_16), ({ _target : (1.5 : stdgo.GoFloat64), _wantPos : (4 : stdgo.GoInt), _wantFound : false } : stdgo._internal.slices.Slices_t__struct_16.T__struct_16)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _target : (0 : stdgo.GoFloat64), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : stdgo._internal.slices.Slices_t__struct_16.T__struct_16)])) : stdgo.Slice<stdgo._internal.slices.Slices_t__struct_16.T__struct_16>);
        for (__0 => _tt in _tests) {
            @:check2r _t.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_tt._target))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                {
                    var __tmp__ = stdgo._internal.slices.Slices_binarysearch.binarySearch(_data, _tt._target), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                    if (((_pos != _tt._wantPos) || (_found != _tt._wantFound) : Bool)) {
                        @:check2r _t.errorf(("BinarySearch got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                    };
                };
            });
        };
    }
