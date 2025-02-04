package stdgo._internal.encoding.binary;
function testReadErrorMsg(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _read = (function(_data:stdgo.AnyInterface):Void {
            var _err = (stdgo._internal.encoding.binary.Binary_read.read(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), _data) : stdgo.Error);
            var _want = ((("binary.Read: invalid type " : stdgo.GoString) + (stdgo._internal.reflect.Reflect_typeof.typeOf(_data).string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_err == null) {
                @:check2r _t.errorf(("%T: got no error; want %q" : stdgo.GoString), _data, stdgo.Go.toInterface(_want));
                return;
            };
            {
                var _got = (_err.error()?.__copy__() : stdgo.GoString);
                if (_got != (_want)) {
                    @:check2r _t.errorf(("%T: got %q; want %q" : stdgo.GoString), _data, stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        } : stdgo.AnyInterface -> Void);
        _read(stdgo.Go.toInterface((0 : stdgo.GoInt)));
        var _s = (stdgo.Go.setRef(({} : stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian>);
        _read(stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian>>)));
        var _p = (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_littleendian.T_littleEndian>>);
        _read(stdgo.Go.toInterface(stdgo.Go.pointer(_p)));
    }
