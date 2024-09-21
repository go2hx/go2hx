package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testHexBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), __1:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
var _b = __1, _a = __0;
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("00010203" : stdgo.GoString), ("%x" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("simple: got count, err = %d, %v; expected 1, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        var _check = function(_msg:stdgo.GoString, _x:stdgo.Slice<stdgo.GoUInt8>):Void {
            if ((_x.length) != ((4 : stdgo.GoInt))) {
                _t.errorf(("%s: bad length %d" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface((_x.length)));
            };
            for (_i => _b in _x) {
                if ((_b : stdgo.GoInt) != (_i)) {
                    _t.errorf(("%s: bad x[%d] = %x" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_x[(_i : stdgo.GoInt)]));
                };
            };
        };
        _check(("simple" : stdgo.GoString), _a);
        _a = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("00010203 00010203" : stdgo.GoString), ("%x %x" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (2 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("simple pair: got count, err = %d, %v; expected 2, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _check(("simple pair a" : stdgo.GoString), _a);
        _check(("simple pair b" : stdgo.GoString), _b);
        _a = (null : stdgo.Slice<stdgo.GoUInt8>);
        _b = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("00010203:" : stdgo.GoString), ("%x" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("colon: got count, err = %d, %v; expected 1, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _check(("colon" : stdgo.GoString), _a);
        _a = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("00010203:00010203" : stdgo.GoString), ("%x:%x" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)), stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (2 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("colon pair: got count, err = %d, %v; expected 2, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _check(("colon pair a" : stdgo.GoString), _a);
        _check(("colon pair b" : stdgo.GoString), _b);
        _a = (null : stdgo.Slice<stdgo.GoUInt8>);
        _b = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("000102034:" : stdgo.GoString), ("%x" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (0 : stdgo.GoInt)) || (_err == null) : Bool)) {
            _t.errorf(("odd count: got count, err = %d, %v; expected 0, error" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
