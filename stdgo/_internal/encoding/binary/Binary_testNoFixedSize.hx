package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function testNoFixedSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _person = ({ age : (27 : stdgo.GoInt), weight : (67.3 : stdgo.GoFloat64), height : (177.8 : stdgo.GoFloat64) } : stdgo._internal.encoding.binary.Binary_T_testNoFixedSize___localname___Person_12888.T_testNoFixedSize___localname___Person_12888);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _err = (stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_person) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_testNoFixedSize___localname___Person_12888.T_testNoFixedSize___localname___Person_12888>)))) : stdgo.Error);
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("binary.Write: unexpected success as size of type *binary.Person is not fixed" : stdgo.GoString)));
        };
        var _errs = ("binary.Write: some values are not fixed-sized in type *binary.Person" : stdgo.GoString);
        if (_err.error() != (_errs)) {
            @:check2r _t.fatalf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_errs));
        };
    }
