package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testSectionReader_Max(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("abcdef" : stdgo.GoString));
        {};
        var _sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_r), (3i64 : stdgo.GoInt64), (9223372036854775807i64 : stdgo.GoInt64));
        var __tmp__ = _sr.read((new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (3 : stdgo.GoInt)) || (_err != null) : Bool)) {
            _t.errorf(("Read = %v %v, want 3, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _sr.read((new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            _t.errorf(("Read = %v, %v, want 0, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
