package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testAddrRangesAdd(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a = (stdgo._internal.runtime.Runtime_newAddrRanges.newAddrRanges()?.__copy__() : stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges);
        _a.add(stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange((512 : stdgo.GoUIntptr), (1024 : stdgo.GoUIntptr))?.__copy__());
        _internal.runtime_test.Runtime_test__validateAddrRanges._validateAddrRanges(_t, (stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>), stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange((512 : stdgo.GoUIntptr), (1024 : stdgo.GoUIntptr))?.__copy__());
        _a.add(stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange((1024 : stdgo.GoUIntptr), (2048 : stdgo.GoUIntptr))?.__copy__());
        _internal.runtime_test.Runtime_test__validateAddrRanges._validateAddrRanges(_t, (stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>), stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange((512 : stdgo.GoUIntptr), (2048 : stdgo.GoUIntptr))?.__copy__());
        _a.add(stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange((4096 : stdgo.GoUIntptr), (8192 : stdgo.GoUIntptr))?.__copy__());
        _internal.runtime_test.Runtime_test__validateAddrRanges._validateAddrRanges(_t, (stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>), stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange((512 : stdgo.GoUIntptr), (2048 : stdgo.GoUIntptr))?.__copy__(), stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange((4096 : stdgo.GoUIntptr), (8192 : stdgo.GoUIntptr))?.__copy__());
        _a.add(stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange((3776 : stdgo.GoUIntptr), (4096 : stdgo.GoUIntptr))?.__copy__());
        _internal.runtime_test.Runtime_test__validateAddrRanges._validateAddrRanges(_t, (stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>), stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange((512 : stdgo.GoUIntptr), (2048 : stdgo.GoUIntptr))?.__copy__(), stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange((3776 : stdgo.GoUIntptr), (8192 : stdgo.GoUIntptr))?.__copy__());
        _a.add(stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange((2048 : stdgo.GoUIntptr), (3776 : stdgo.GoUIntptr))?.__copy__());
        _internal.runtime_test.Runtime_test__validateAddrRanges._validateAddrRanges(_t, (stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>), stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange((512 : stdgo.GoUIntptr), (8192 : stdgo.GoUIntptr))?.__copy__());
        var _expectedRanges = (new stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange>(1, 1, ...[stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange((512 : stdgo.GoUIntptr), (8192 : stdgo.GoUIntptr))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_AddrRange.AddrRange)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange>);
        {
            var _i = ((0 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            stdgo.Go.cfor((_i < (64 : stdgo.GoUIntptr) : Bool), _i++, {
                var _dRange = (stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange(((8192 : stdgo.GoUIntptr) + (((_i + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) * (2048 : stdgo.GoUIntptr) : stdgo.GoUIntptr) : stdgo.GoUIntptr), (((8192 : stdgo.GoUIntptr) + (((_i + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) * (2048 : stdgo.GoUIntptr) : stdgo.GoUIntptr) : stdgo.GoUIntptr) + (10 : stdgo.GoUIntptr) : stdgo.GoUIntptr))?.__copy__() : stdgo._internal.runtime.Runtime_AddrRange.AddrRange);
                _a.add(_dRange?.__copy__());
                _expectedRanges = (_expectedRanges.__append__(_dRange?.__copy__()));
                _internal.runtime_test.Runtime_test__validateAddrRanges._validateAddrRanges(_t, (stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>), ...(_expectedRanges : Array<stdgo._internal.runtime.Runtime_AddrRange.AddrRange>));
            });
        };
        var _bottomRanges:stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange>);
        {
            var _i = ((0 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            stdgo.Go.cfor((_i < (63 : stdgo.GoUIntptr) : Bool), _i++, {
                var _dRange = (stdgo._internal.runtime.Runtime_makeAddrRange.makeAddrRange(((8 : stdgo.GoUIntptr) + (_i * (8 : stdgo.GoUIntptr) : stdgo.GoUIntptr) : stdgo.GoUIntptr), (((8 : stdgo.GoUIntptr) + (_i * (8 : stdgo.GoUIntptr) : stdgo.GoUIntptr) : stdgo.GoUIntptr) + (4 : stdgo.GoUIntptr) : stdgo.GoUIntptr))?.__copy__() : stdgo._internal.runtime.Runtime_AddrRange.AddrRange);
                _a.add(_dRange?.__copy__());
                _bottomRanges = (_bottomRanges.__append__(_dRange?.__copy__()));
                _internal.runtime_test.Runtime_test__validateAddrRanges._validateAddrRanges(_t, (stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>), ...(_bottomRanges.__append__(...(_expectedRanges : Array<stdgo._internal.runtime.Runtime_AddrRange.AddrRange>)) : Array<stdgo._internal.runtime.Runtime_AddrRange.AddrRange>));
            });
        };
    }
