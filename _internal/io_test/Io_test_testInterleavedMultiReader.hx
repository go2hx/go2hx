package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testInterleavedMultiReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r1 = stdgo._internal.strings.Strings_newReader.newReader(("123" : stdgo.GoString));
        var _r2 = stdgo._internal.strings.Strings_newReader.newReader(("45678" : stdgo.GoString));
        var _mr1 = (stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface(_r1), stdgo.Go.asInterface(_r2)) : stdgo._internal.io.Io_Reader.Reader);
        var _mr2 = (stdgo._internal.io.Io_multiReader.multiReader(_mr1) : stdgo._internal.io.Io_Reader.Reader);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_mr2, _buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _got = (((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (((_got != ("1234" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.errorf(("ReadFull(mr2) = (%q, %v), want (\"1234\", nil)" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_mr1, _buf);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        {
            var _got = (((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (((_got != ("5678" : stdgo.GoString)) || (_err != null) : Bool)) {
                _t.errorf(("ReadFull(mr1) = (%q, %v), want (\"5678\", nil)" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_err));
            };
        };
    }
