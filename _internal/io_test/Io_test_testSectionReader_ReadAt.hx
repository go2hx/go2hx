package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testSectionReader_ReadAt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _dat = ("a long sample data, 1234567890" : stdgo.GoString);
        var _tests = (new stdgo.Slice<_internal.io_test.Io_test_T__struct_1.T__struct_1>(12, 12, ...[
({ _data : stdgo.Go.str()?.__copy__(), _off : (0 : stdgo.GoInt), _n : (10 : stdgo.GoInt), _bufLen : (2 : stdgo.GoInt), _at : (0 : stdgo.GoInt), _exp : stdgo.Go.str()?.__copy__(), _err : stdgo._internal.io.Io_eof.eof } : _internal.io_test.Io_test_T__struct_1.T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : (_dat.length), _bufLen : (0 : stdgo.GoInt), _at : (0 : stdgo.GoInt), _exp : stdgo.Go.str()?.__copy__(), _err : (null : stdgo.Error) } : _internal.io_test.Io_test_T__struct_1.T__struct_1),
({ _data : _dat?.__copy__(), _off : (_dat.length), _n : (1 : stdgo.GoInt), _bufLen : (1 : stdgo.GoInt), _at : (0 : stdgo.GoInt), _exp : stdgo.Go.str()?.__copy__(), _err : stdgo._internal.io.Io_eof.eof } : _internal.io_test.Io_test_T__struct_1.T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : ((_dat.length) + (2 : stdgo.GoInt) : stdgo.GoInt), _bufLen : (_dat.length), _at : (0 : stdgo.GoInt), _exp : _dat?.__copy__(), _err : (null : stdgo.Error) } : _internal.io_test.Io_test_T__struct_1.T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : (_dat.length), _bufLen : ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt), _at : (0 : stdgo.GoInt), _exp : (_dat.__slice__(0, ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _err : (null : stdgo.Error) } : _internal.io_test.Io_test_T__struct_1.T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : (_dat.length), _bufLen : (_dat.length), _at : (0 : stdgo.GoInt), _exp : _dat?.__copy__(), _err : (null : stdgo.Error) } : _internal.io_test.Io_test_T__struct_1.T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : (_dat.length), _bufLen : ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt), _at : (2 : stdgo.GoInt), _exp : (_dat.__slice__((2 : stdgo.GoInt), ((2 : stdgo.GoInt) + ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _err : (null : stdgo.Error) } : _internal.io_test.Io_test_T__struct_1.T__struct_1),
({ _data : _dat?.__copy__(), _off : (3 : stdgo.GoInt), _n : (_dat.length), _bufLen : ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt), _at : (2 : stdgo.GoInt), _exp : (_dat.__slice__((5 : stdgo.GoInt), ((5 : stdgo.GoInt) + ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _err : (null : stdgo.Error) } : _internal.io_test.Io_test_T__struct_1.T__struct_1),
({ _data : _dat?.__copy__(), _off : (3 : stdgo.GoInt), _n : ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt), _bufLen : (((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt), _at : (2 : stdgo.GoInt), _exp : (_dat.__slice__((5 : stdgo.GoInt), (((5 : stdgo.GoInt) + ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _err : (null : stdgo.Error) } : _internal.io_test.Io_test_T__struct_1.T__struct_1),
({ _data : _dat?.__copy__(), _off : (3 : stdgo.GoInt), _n : ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt), _bufLen : (((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt), _at : (2 : stdgo.GoInt), _exp : (_dat.__slice__((5 : stdgo.GoInt), (((5 : stdgo.GoInt) + ((_dat.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _err : stdgo._internal.io.Io_eof.eof } : _internal.io_test.Io_test_T__struct_1.T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : (0 : stdgo.GoInt), _bufLen : (0 : stdgo.GoInt), _at : (-1 : stdgo.GoInt), _exp : stdgo.Go.str()?.__copy__(), _err : stdgo._internal.io.Io_eof.eof } : _internal.io_test.Io_test_T__struct_1.T__struct_1),
({ _data : _dat?.__copy__(), _off : (0 : stdgo.GoInt), _n : (0 : stdgo.GoInt), _bufLen : (0 : stdgo.GoInt), _at : (1 : stdgo.GoInt), _exp : stdgo.Go.str()?.__copy__(), _err : stdgo._internal.io.Io_eof.eof } : _internal.io_test.Io_test_T__struct_1.T__struct_1)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _data : ("" : stdgo.GoString), _off : (0 : stdgo.GoInt), _n : (0 : stdgo.GoInt), _bufLen : (0 : stdgo.GoInt), _at : (0 : stdgo.GoInt), _exp : ("" : stdgo.GoString), _err : (null : stdgo.Error) } : _internal.io_test.Io_test_T__struct_1.T__struct_1)])) : stdgo.Slice<_internal.io_test.Io_test_T__struct_1.T__struct_1>);
        for (_i => _tt in _tests) {
            var _r = stdgo._internal.strings.Strings_newReader.newReader(_tt._data?.__copy__());
            var _s = stdgo._internal.io.Io_newSectionReader.newSectionReader(stdgo.Go.asInterface(_r), (_tt._off : stdgo.GoInt64), (_tt._n : stdgo.GoInt64));
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_tt._bufLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = _s.readAt(_buf, (_tt._at : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_n != ((_tt._exp.length)) || ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (_tt._exp) : Bool) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_tt._err)) : Bool)) {
                    _t.fatalf(("%d: ReadAt(%d) = %q, %v; expected %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._at), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._exp), stdgo.Go.toInterface(_tt._err));
                };
            };
        };
    }
