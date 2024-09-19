package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testNegativeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _errorbuf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _errorbuf = (_errorbuf.__slice__((0 : stdgo.GoInt), stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune(_errorbuf, (65533 : stdgo.GoInt32))) : stdgo.Slice<stdgo.GoUInt8>);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (_buf.__slice__((0 : stdgo.GoInt), stdgo._internal.unicode.utf8.Utf8_encodeRune.encodeRune(_buf, (-1 : stdgo.GoInt32))) : stdgo.Slice<stdgo.GoUInt8>);
        if (!stdgo._internal.bytes.Bytes_equal.equal(_buf, _errorbuf)) {
            _t.errorf(("incorrect encoding [% x] for -1; expected [% x]" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_errorbuf));
        };
    }
