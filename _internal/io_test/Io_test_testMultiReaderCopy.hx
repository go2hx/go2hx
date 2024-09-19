package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testMultiReaderCopy(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _slice = (new stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>(1, 1, ...[stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("hello world" : stdgo.GoString)))]) : stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>);
        var _r = (stdgo._internal.io.Io_multiReader.multiReader(...(_slice : Array<stdgo._internal.io.Io_Reader.Reader>)) : stdgo._internal.io.Io_Reader.Reader);
        _slice[(0 : stdgo.GoInt)] = (null : stdgo._internal.io.Io_Reader.Reader);
        var __tmp__ = stdgo._internal.io.Io_readAll.readAll(_r), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || ((_data : stdgo.GoString) != ("hello world" : stdgo.GoString)) : Bool)) {
            _t.errorf(("ReadAll() = %q, %v, want %q, nil" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("hello world" : stdgo.GoString)));
        };
    }
