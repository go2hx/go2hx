package stdgo._internal.slices;
function testReplaceOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _a = (new stdgo.Slice<stdgo.GoInt>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _want = (new stdgo.Slice<stdgo.GoInt>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _n = (0 : stdgo.GoInt);
            while ((_n <= (10 : stdgo.GoInt) : Bool)) {
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i <= _n : Bool)) {
                        {
                            var _j = (_i : stdgo.GoInt);
                            while ((_j <= _n : Bool)) {
                                {
                                    var _x = (0 : stdgo.GoInt);
                                    while ((_x <= (10 : stdgo.GoInt) : Bool)) {
                                        {
                                            var _y = (_x : stdgo.GoInt);
                                            while ((_y <= (10 : stdgo.GoInt) : Bool)) {
                                                {
                                                    var _k = (0 : stdgo.GoInt);
                                                    while ((_k < (10 : stdgo.GoInt) : Bool)) {
                                                        _a[(_k : stdgo.GoInt)] = _k;
                                                        _k++;
                                                    };
                                                };
_want = (_want.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
_want = (_want.__append__(...((_a.__slice__(0, _i) : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)));
_want = (_want.__append__(...((_a.__slice__(_x, _y) : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)));
_want = (_want.__append__(...((_a.__slice__(_j, _n) : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>)));
var _got = stdgo._internal.slices.Slices_replace.replace((_a.__slice__(0, _n) : stdgo.Slice<stdgo.GoInt>), _i, _j, ...((_a.__slice__(_x, _y) : stdgo.Slice<stdgo.GoInt>) : Array<stdgo.GoInt>));
if (!stdgo._internal.slices.Slices_equal.equal(_got, _want)) {
                                                    @:check2r _t.errorf(("Insert with overlap failed n=%d i=%d j=%d x=%d y=%d, got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                                                };
                                                _y++;
                                            };
                                        };
                                        _x++;
                                    };
                                };
                                _j++;
                            };
                        };
                        _i++;
                    };
                };
                _n++;
            };
        };
    }
