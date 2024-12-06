package stdgo._internal.encoding.gob;
function testPtrToMapOfMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)));
        var _subdata = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        _subdata[("bar" : stdgo.GoString)] = stdgo.Go.toInterface(("baz" : stdgo.GoString));
        var _data = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        _data[("foo" : stdgo.GoString)] = stdgo.Go.toInterface(_subdata);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _err = (stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_data)) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _newData:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> = (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        var _newData__pointer__ = (stdgo.Go.setRef(_newData) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        var _newData__pointer__ = (stdgo.Go.setRef(_newData) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        var _newData__pointer__ = (stdgo.Go.setRef(_newData) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        var _newData__pointer__ = (stdgo.Go.setRef(_newData) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>);
        _err = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface(_newData__pointer__));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_newData))) {
            _t.fatalf(("expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_newData));
        };
    }
