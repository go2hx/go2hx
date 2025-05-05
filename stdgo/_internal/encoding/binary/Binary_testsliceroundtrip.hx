package stdgo._internal.encoding.binary;
function testSliceRoundTrip(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L192"
        for (__8 => _array in stdgo._internal.encoding.binary.Binary__intarrays._intArrays) {
            var _src = (stdgo._internal.reflect.Reflect_valueof.valueOf(_array).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _unsigned = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L195"
            {
                final __value__ = _src.index((0 : stdgo.GoInt)).kind();
                if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _unsigned = true;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L199"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _src.len() : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L200"
                    if (_unsigned) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L201"
                        _src.index(_i).setUint(((_i * (124076833 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64));
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L203"
                        _src.index(_i).setInt(((_i * (124076833 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
                    };
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L206"
            _buf.reset();
            var _srcSlice = (_src.slice((0 : stdgo.GoInt), _src.len())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), _srcSlice.interface_()) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L209"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L210"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _dst = (stdgo._internal.reflect.Reflect_new_.new_(_src.type()).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _dstSlice = (_dst.slice((0 : stdgo.GoInt), _dst.len())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            _err = stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), _dstSlice.interface_());
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L215"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L216"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L218"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_src.interface_(), _dst.interface_())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L219"
                _t.fatal(stdgo.Go.toInterface(stdgo.Go.asInterface(_src)));
            };
        };
    }
