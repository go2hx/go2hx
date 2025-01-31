package stdgo._internal.slices;
import stdgo._internal.math.Math;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function testRotate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _s = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _n = (0 : stdgo.GoInt);
            while ((_n < (10 : stdgo.GoInt) : Bool)) {
                {
                    var _r = (0 : stdgo.GoInt);
                    while ((_r < _n : Bool)) {
                        _s = (_s.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
{
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < _n : Bool)) {
                                _s = (_s.__append__(_i));
                                _i++;
                            };
                        };
stdgo._internal.slices.Slices__rotateLeft._rotateLeft(_s, _r);
{
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < _n : Bool)) {
                                if (_s[(_i : stdgo.GoInt)] != ((((_i + _r : stdgo.GoInt)) % _n : stdgo.GoInt))) {
                                    @:check2r _t.errorf(("expected n=%d r=%d i:%d want:%d got:%d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((((_i + _r : stdgo.GoInt)) % _n : stdgo.GoInt)), stdgo.Go.toInterface(_s[(_i : stdgo.GoInt)]));
                                };
                                _i++;
                            };
                        };
                        _r++;
                    };
                };
                _n++;
            };
        };
    }
