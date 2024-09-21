package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testReaderAt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _r = stdgo._internal.bytes.Bytes_newReader.newReader((("0123456789" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var _tests = (new stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_16.T__struct_16>(6, 6, ...[({ _off : (0i64 : stdgo.GoInt64), _n : (10 : stdgo.GoInt), _want : ("0123456789" : stdgo.GoString), _wanterr : (null : stdgo.AnyInterface) } : _internal.bytes_test.Bytes_test_T__struct_16.T__struct_16), ({ _off : (1i64 : stdgo.GoInt64), _n : (10 : stdgo.GoInt), _want : ("123456789" : stdgo.GoString), _wanterr : stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof) } : _internal.bytes_test.Bytes_test_T__struct_16.T__struct_16), ({ _off : (1i64 : stdgo.GoInt64), _n : (9 : stdgo.GoInt), _want : ("123456789" : stdgo.GoString), _wanterr : (null : stdgo.AnyInterface) } : _internal.bytes_test.Bytes_test_T__struct_16.T__struct_16), ({ _off : (11i64 : stdgo.GoInt64), _n : (10 : stdgo.GoInt), _want : stdgo.Go.str()?.__copy__(), _wanterr : stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof) } : _internal.bytes_test.Bytes_test_T__struct_16.T__struct_16), ({ _off : (0i64 : stdgo.GoInt64), _n : (0 : stdgo.GoInt), _want : stdgo.Go.str()?.__copy__(), _wanterr : (null : stdgo.AnyInterface) } : _internal.bytes_test.Bytes_test_T__struct_16.T__struct_16), ({ _off : (-1i64 : stdgo.GoInt64), _n : (0 : stdgo.GoInt), _want : stdgo.Go.str()?.__copy__(), _wanterr : stdgo.Go.toInterface(("bytes.Reader.ReadAt: negative offset" : stdgo.GoString)) } : _internal.bytes_test.Bytes_test_T__struct_16.T__struct_16)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _off : (0 : stdgo.GoInt64), _n : (0 : stdgo.GoInt), _want : ("" : stdgo.GoString), _wanterr : (null : stdgo.AnyInterface) } : _internal.bytes_test.Bytes_test_T__struct_16.T__struct_16)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_T__struct_16.T__struct_16>);
        for (_i => _tt in _tests) {
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((_tt._n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.readAt(_b, _tt._off), _rn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _got = (((_b.__slice__(0, _rn) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_tt._want)) {
                _t.errorf(("%d. got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
            if (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err)) != (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), _tt._wanterr))) {
                _t.errorf(("%d. got error = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), _tt._wanterr);
            };
        };
    }
