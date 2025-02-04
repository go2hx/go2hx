package stdgo._internal.slices;
function testBinarySearchInts(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt>(8, 8, ...[(20 : stdgo.GoInt), (30 : stdgo.GoInt), (40 : stdgo.GoInt), (50 : stdgo.GoInt), (60 : stdgo.GoInt), (70 : stdgo.GoInt), (80 : stdgo.GoInt), (90 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _tests = (new stdgo.Slice<stdgo._internal.slices.Slices_t__struct_15.T__struct_15>(4, 4, ...[({ _target : (20 : stdgo.GoInt), _wantPos : (0 : stdgo.GoInt), _wantFound : true } : stdgo._internal.slices.Slices_t__struct_15.T__struct_15), ({ _target : (23 : stdgo.GoInt), _wantPos : (1 : stdgo.GoInt), _wantFound : false } : stdgo._internal.slices.Slices_t__struct_15.T__struct_15), ({ _target : (43 : stdgo.GoInt), _wantPos : (3 : stdgo.GoInt), _wantFound : false } : stdgo._internal.slices.Slices_t__struct_15.T__struct_15), ({ _target : (80 : stdgo.GoInt), _wantPos : (6 : stdgo.GoInt), _wantFound : true } : stdgo._internal.slices.Slices_t__struct_15.T__struct_15)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _target : (0 : stdgo.GoInt), _wantPos : (0 : stdgo.GoInt), _wantFound : false } : stdgo._internal.slices.Slices_t__struct_15.T__struct_15)])) : stdgo.Slice<stdgo._internal.slices.Slices_t__struct_15.T__struct_15>);
        for (__0 => _tt in _tests) {
            @:check2r _t.run(stdgo._internal.strconv.Strconv_itoa.itoa(_tt._target)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                {
                    var __tmp__ = stdgo._internal.slices.Slices_binarysearch.binarySearch(_data, _tt._target), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                    if (((_pos != _tt._wantPos) || (_found != _tt._wantFound) : Bool)) {
                        @:check2r _t.errorf(("BinarySearch got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                    };
                };
                {
                    var _cmp = (function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
                        return (_a - _b : stdgo.GoInt);
                    } : (stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt);
                    var __tmp__ = stdgo._internal.slices.Slices_binarysearchfunc.binarySearchFunc(_data, _tt._target, _cmp), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
                    if (((_pos != _tt._wantPos) || (_found != _tt._wantFound) : Bool)) {
                        @:check2r _t.errorf(("BinarySearchFunc got (%v, %v), want (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface(_tt._wantPos), stdgo.Go.toInterface(_tt._wantFound));
                    };
                };
            });
        };
    }
