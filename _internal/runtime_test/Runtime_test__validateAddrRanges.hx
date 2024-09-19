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
function _validateAddrRanges(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _a:stdgo.Ref<stdgo._internal.runtime.Runtime_AddrRanges.AddrRanges>, _want:haxe.Rest<stdgo._internal.runtime.Runtime_AddrRange.AddrRange>):Void {
        var _want = new stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange>(_want.length, 0, ..._want);
        var _ranges = _a.ranges();
        if ((_ranges.length) != ((_want.length))) {
            _t.errorf(("want %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_ranges));
            _t.fatal(stdgo.Go.toInterface(("different lengths" : stdgo.GoString)));
        };
        var _gotTotalBytes = ((0 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        var _wantTotalBytes = ((0 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        for (_i => _ in _ranges) {
            _gotTotalBytes = (_gotTotalBytes + (_ranges[(_i : stdgo.GoInt)].size()) : stdgo.GoUIntptr);
            _wantTotalBytes = (_wantTotalBytes + (_want[(_i : stdgo.GoInt)].size()) : stdgo.GoUIntptr);
            if ((_ranges[(_i : stdgo.GoInt)].base() >= _ranges[(_i : stdgo.GoInt)].limit() : Bool)) {
                _t.error(stdgo.Go.toInterface(("empty range found" : stdgo.GoString)));
            };
            if (!_ranges[(_i : stdgo.GoInt)].equals(_want[(_i : stdgo.GoInt)])) {
                _t.errorf(("range %d: got [0x%x, 0x%x), want [0x%x, 0x%x)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ranges[(_i : stdgo.GoInt)].base()), stdgo.Go.toInterface(_ranges[(_i : stdgo.GoInt)].limit()), stdgo.Go.toInterface(_want[(_i : stdgo.GoInt)].base()), stdgo.Go.toInterface(_want[(_i : stdgo.GoInt)].limit()));
            };
            if (_i != ((0 : stdgo.GoInt))) {
                if ((_ranges[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)].base() >= _ranges[(_i : stdgo.GoInt)].base() : Bool)) {
                    _t.errorf(("ranges %d and %d are out of sorted order" : stdgo.GoString), stdgo.Go.toInterface((_i - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_i));
                };
                if (_ranges[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)].limit() == (_ranges[(_i : stdgo.GoInt)].base())) {
                    _t.errorf(("ranges %d and %d should have coalesced" : stdgo.GoString), stdgo.Go.toInterface((_i - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_i));
                };
                if ((_ranges[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)].limit() > _ranges[(_i : stdgo.GoInt)].base() : Bool)) {
                    _t.errorf(("ranges %d and %d overlap" : stdgo.GoString), stdgo.Go.toInterface((_i - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_i));
                };
            };
        };
        if (_wantTotalBytes != (_gotTotalBytes)) {
            _t.errorf(("expected %d total bytes, got %d" : stdgo.GoString), stdgo.Go.toInterface(_wantTotalBytes), stdgo.Go.toInterface(_gotTotalBytes));
        };
        {
            var _b = (_a.totalBytes() : stdgo.GoUIntptr);
            if (_b != (_gotTotalBytes)) {
                _t.errorf(("inconsistent total bytes: want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_gotTotalBytes), stdgo.Go.toInterface(_b));
            };
        };
        if (_t.failed()) {
            _t.errorf(("addrRanges: %v" : stdgo.GoString), stdgo.Go.toInterface(_ranges));
            _t.fatal(stdgo.Go.toInterface(("detected bad addrRanges" : stdgo.GoString)));
        };
    }
