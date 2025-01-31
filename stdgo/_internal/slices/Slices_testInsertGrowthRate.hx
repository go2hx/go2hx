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
function testInsertGrowthRate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _maxCap = (_b.capacity : stdgo.GoInt);
        var _nGrow = (0 : stdgo.GoInt);
        {};
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (1000000 : stdgo.GoInt) : Bool)) {
                _b = stdgo._internal.slices.Slices_insert.insert(_b, ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt), (0 : stdgo.GoUInt8));
if ((_b.capacity > _maxCap : Bool)) {
                    _maxCap = _b.capacity;
                    _nGrow++;
                };
                _i++;
            };
        };
        var _want = ((stdgo._internal.math.Math_log.log((1e+06 : stdgo.GoFloat64)) / stdgo._internal.math.Math_log.log((1.25 : stdgo.GoFloat64)) : stdgo.GoFloat64) : stdgo.GoInt);
        if ((_nGrow > _want : Bool)) {
            @:check2r _t.errorf(("too many grows. got:%d want:%d" : stdgo.GoString), stdgo.Go.toInterface(_nGrow), stdgo.Go.toInterface(_want));
        };
    }
