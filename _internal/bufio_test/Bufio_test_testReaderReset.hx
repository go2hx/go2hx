package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReaderReset(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _checkAll = function(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _want:stdgo.GoString):Void {
            _t.helper();
            var __tmp__ = stdgo._internal.io.Io_readAll.readAll(stdgo.Go.asInterface(_r)), _all:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if ((_all : stdgo.GoString) != (_want)) {
                _t.errorf(("ReadAll returned %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_all), stdgo.Go.toInterface(_want));
            };
        };
        var _r = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("foo foo" : stdgo.GoString))));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _r.read(_buf);
        if ((_buf : stdgo.GoString) != (("foo" : stdgo.GoString))) {
            _t.errorf(("buf = %q; want foo" : stdgo.GoString), stdgo.Go.toInterface(_buf));
        };
        _r.reset(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("bar bar" : stdgo.GoString))));
        _checkAll(_r, ("bar bar" : stdgo.GoString));
        {
            var __tmp__ = (new stdgo._internal.bufio.Bufio_Reader.Reader() : stdgo._internal.bufio.Bufio_Reader.Reader);
            (_r : stdgo._internal.bufio.Bufio_Reader.Reader)._buf = __tmp__._buf;
            (_r : stdgo._internal.bufio.Bufio_Reader.Reader)._rd = __tmp__._rd;
            (_r : stdgo._internal.bufio.Bufio_Reader.Reader)._r = __tmp__._r;
            (_r : stdgo._internal.bufio.Bufio_Reader.Reader)._w = __tmp__._w;
            (_r : stdgo._internal.bufio.Bufio_Reader.Reader)._err = __tmp__._err;
            (_r : stdgo._internal.bufio.Bufio_Reader.Reader)._lastByte = __tmp__._lastByte;
            (_r : stdgo._internal.bufio.Bufio_Reader.Reader)._lastRuneSize = __tmp__._lastRuneSize;
        };
        _r.reset(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("bar bar" : stdgo.GoString))));
        _checkAll(_r, ("bar bar" : stdgo.GoString));
        _r.reset(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("recur" : stdgo.GoString))));
        var _r2 = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_r));
        _checkAll(_r2, ("recur" : stdgo.GoString));
        _r.reset(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("recur2" : stdgo.GoString))));
        _r2.reset(stdgo.Go.asInterface(_r));
        _checkAll(_r2, ("recur2" : stdgo.GoString));
    }
