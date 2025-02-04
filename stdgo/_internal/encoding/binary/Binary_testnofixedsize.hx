package stdgo._internal.encoding.binary;
function testNoFixedSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _person = ({ age : (27 : stdgo.GoInt), weight : (67.3 : stdgo.GoFloat64), height : (177.8 : stdgo.GoFloat64) } : stdgo._internal.encoding.binary.Binary_t_testnofixedsize___localname___person_12888.T_testNoFixedSize___localname___Person_12888);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_person) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_t_testnofixedsize___localname___person_12888.T_testNoFixedSize___localname___Person_12888>)))) : stdgo.Error);
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("binary.Write: unexpected success as size of type *binary.Person is not fixed" : stdgo.GoString)));
        };
        var _errs = (("binary.Write: some values are not fixed-sized in type *binary.Person" : stdgo.GoString) : stdgo.GoString);
        if (_err.error() != (_errs)) {
            @:check2r _t.fatalf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_errs));
        };
    }
