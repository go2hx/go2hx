package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testWriteAppend(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _got:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _want:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _b = _got.availableBuffer();
                _b = stdgo._internal.strconv.Strconv_appendInt.appendInt(_b, (_i : stdgo.GoInt64), (10 : stdgo.GoInt));
                _want = stdgo._internal.strconv.Strconv_appendInt.appendInt(_want, (_i : stdgo.GoInt64), (10 : stdgo.GoInt));
                _got.write(_b);
            });
        };
        if (!stdgo._internal.bytes.Bytes_equal.equal(_got.bytes(), _want)) {
            _t.fatalf(("Bytes() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(_want));
        };
        var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            _got.reset();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                    var _b = _got.availableBuffer();
                    _b = stdgo._internal.strconv.Strconv_appendInt.appendInt(_b, (_i : stdgo.GoInt64), (10 : stdgo.GoInt));
                    _got.write(_b);
                });
            };
        }) : stdgo.GoFloat64);
        if ((_n > (0 : stdgo.GoFloat64) : Bool)) {
            _t.errorf(("allocations occurred while appending" : stdgo.GoString));
        };
    }
