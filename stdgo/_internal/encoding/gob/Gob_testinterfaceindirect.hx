package stdgo._internal.encoding.gob;
function testInterfaceIndirect(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L514"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_interfaceindirecttestt.T_interfaceIndirectTestT() : stdgo._internal.encoding.gob.Gob_t_interfaceindirecttestt.T_interfaceIndirectTestT)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_interfaceindirecttestt.T_interfaceIndirectTestT>))));
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _w = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_interfaceindirecttesti.T_interfaceIndirectTestI>(1, 1, ...[stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_t_interfaceindirecttestt.T_interfaceIndirectTestT() : stdgo._internal.encoding.gob.Gob_t_interfaceindirecttestt.T_interfaceIndirectTestT)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_interfaceindirecttestt.T_interfaceIndirectTestT>))]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_interfaceindirecttesti.T_interfaceIndirectTestI>);
        var _err = (stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_w)) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L518"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L519"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _r:stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_interfaceindirecttesti.T_interfaceIndirectTestI> = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_interfaceindirecttesti.T_interfaceIndirectTestI>);
        _err = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_interfaceindirecttesti.T_interfaceIndirectTestI>>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L524"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L525"
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
