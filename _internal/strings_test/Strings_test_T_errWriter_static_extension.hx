package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
@:keep @:allow(_internal.strings_test.Strings_test.T_errWriter_asInterface) class T_errWriter_static_extension {
    @:keep
    static public function write( _:_internal.strings_test.Strings_test_T_errWriter.T_errWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:_internal.strings_test.Strings_test_T_errWriter.T_errWriter = _?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unwritable" : stdgo.GoString)) };
    }
}
