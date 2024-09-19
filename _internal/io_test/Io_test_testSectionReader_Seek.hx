package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testSectionReader_Seek(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _br = stdgo._internal.bytes.Bytes_newReader.newReader((("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var _sr = stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_br), (0i64 : stdgo.GoInt64), (("foo" : stdgo.GoString).length : stdgo.GoInt64));
        for (__0 => _whence in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            {
                var _offset = ((-3i64 : stdgo.GoInt64) : stdgo.GoInt64);
                stdgo.Go.cfor((_offset <= (4i64 : stdgo.GoInt64) : Bool), _offset++, {
                    var __tmp__ = _br.seek(_offset, _whence), _brOff:stdgo.GoInt64 = __tmp__._0, _brErr:stdgo.Error = __tmp__._1;
                    var __tmp__ = _sr.seek(_offset, _whence), _srOff:stdgo.GoInt64 = __tmp__._0, _srErr:stdgo.Error = __tmp__._1;
                    if ((((_brErr != null) != (_srErr != null)) || (_brOff != _srOff) : Bool)) {
                        _t.errorf(("For whence %d, offset %d: bytes.Reader.Seek = (%v, %v) != SectionReader.Seek = (%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_whence), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_brOff), stdgo.Go.toInterface(_brErr), stdgo.Go.toInterface(_srErr), stdgo.Go.toInterface(_srOff));
                    };
                });
            };
        };
        var __tmp__ = _sr.seek((100i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), _got:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_got != (100i64 : stdgo.GoInt64)) : Bool)) {
            _t.errorf(("Seek = %v, %v; want 100, nil" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _sr.read((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
            _t.errorf(("Read = %v, %v; want 0, EOF" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
    }
