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
function testBinarySearchFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(1 : stdgo.GoInt), (10 : stdgo.GoInt), (11 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _cmp = (function(_a:stdgo.GoInt, _b:stdgo.GoString):stdgo.GoInt {
            return stdgo._internal.strings.Strings_compare.compare(stdgo._internal.strconv.Strconv_itoa.itoa(_a)?.__copy__(), _b?.__copy__());
        } : (stdgo.GoInt, stdgo.GoString) -> stdgo.GoInt);
        var __tmp__ = stdgo._internal.slices.Slices_binarySearchFunc.binarySearchFunc(_data, ("2" : stdgo.GoString), _cmp), _pos:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
        if (((_pos != (3 : stdgo.GoInt)) || !_found : Bool)) {
            @:check2r _t.errorf(("BinarySearchFunc(%v, %q, cmp) = %v, %v, want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(("2" : stdgo.GoString)), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_found), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface(true));
        };
    }
