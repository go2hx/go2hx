package stdgo._internal.encoding.binary;
function testReadErrorMsg(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _read = (function(_data:stdgo.AnyInterface):Void {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), _data) : stdgo.Error);
            var _want = ((("binary.Read: invalid type " : stdgo.GoString) + (stdgo._internal.reflect.Reflect_typeof.typeOf(_data).string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L403"
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L404"
                _t.errorf(("%T: got no error; want %q" : stdgo.GoString), _data, stdgo.Go.toInterface(_want));
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L405"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L407"
            {
                var _got = (_err.error()?.__copy__() : stdgo.GoString);
                if (_got != (_want)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L408"
                    _t.errorf(("%T: got %q; want %q" : stdgo.GoString), _data, stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        } : stdgo.AnyInterface -> Void);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L411"
        _read(stdgo.Go.toInterface((0 : stdgo.GoInt)));
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L413"
        _read(stdgo.Go.toInterface(stdgo.Go.pointer(_s)));
        var _p = stdgo.Go.pointer(_s);
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L415"
        _read(stdgo.Go.toInterface(stdgo.Go.pointer(_p)));
    }
