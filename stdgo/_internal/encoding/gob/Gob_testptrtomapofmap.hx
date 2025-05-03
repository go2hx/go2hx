package stdgo._internal.encoding.gob;
function testPtrToMapOfMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L879"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)));
        var _subdata = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        _subdata[("bar" : stdgo.GoString)] = stdgo.Go.toInterface(("baz" : stdgo.GoString));
        var _data = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        _data[("foo" : stdgo.GoString)] = stdgo.Go.toInterface(_subdata);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _err = (stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_data)) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L887"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L888"
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _newData:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> = (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        _err = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_newData) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L892"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L893"
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L895"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_newData))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L896"
            _t.fatalf(("expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_newData));
        };
    }
