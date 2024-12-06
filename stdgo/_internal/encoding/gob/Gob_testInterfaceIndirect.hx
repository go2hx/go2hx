package stdgo._internal.encoding.gob;
function testInterfaceIndirect(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestT.T_interfaceIndirectTestT() : stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestT.T_interfaceIndirectTestT)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestT.T_interfaceIndirectTestT>))));
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _w = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestI.T_interfaceIndirectTestI>(1, 1, ...[stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestT.T_interfaceIndirectTestT() : stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestT.T_interfaceIndirectTestT)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestT.T_interfaceIndirectTestT>))]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestI.T_interfaceIndirectTestI>);
        var _err = (stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_w)) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _r:stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestI.T_interfaceIndirectTestI> = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestI.T_interfaceIndirectTestI>);
        _err = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_interfaceIndirectTestI.T_interfaceIndirectTestI>>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
