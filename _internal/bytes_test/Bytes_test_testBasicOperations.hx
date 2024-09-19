package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testBasicOperations(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), stdgo.Go.str()?.__copy__());
                _buf.reset();
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), stdgo.Go.str()?.__copy__());
                _buf.truncate((0 : stdgo.GoInt));
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (3)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), stdgo.Go.str()?.__copy__());
                var __tmp__ = _buf.write((_internal.bytes_test.Bytes_test__testBytes._testBytes.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _want = (1 : stdgo.GoInt);
                    if (((_err != null) || (_n != _want) : Bool)) {
                        _t.errorf(("Write: got (%d, %v), want (%d, %v)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want), (null : stdgo.AnyInterface));
                    };
                };
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (4)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), ("a" : stdgo.GoString));
                _buf.writeByte(_internal.bytes_test.Bytes_test__testString._testString[(1 : stdgo.GoInt)]);
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (5)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), ("ab" : stdgo.GoString));
                {
                    var __tmp__ = _buf.write((_internal.bytes_test.Bytes_test__testBytes._testBytes.__slice__((2 : stdgo.GoInt), (26 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                {
                    var _want = (24 : stdgo.GoInt);
                    if (((_err != null) || (_n != _want) : Bool)) {
                        _t.errorf(("Write: got (%d, %v), want (%d, %v)" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want), (null : stdgo.AnyInterface));
                    };
                };
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (6)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), (_internal.bytes_test.Bytes_test__testString._testString.__slice__((0 : stdgo.GoInt), (26 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _buf.truncate((26 : stdgo.GoInt));
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (7)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), (_internal.bytes_test.Bytes_test__testString._testString.__slice__((0 : stdgo.GoInt), (26 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _buf.truncate((20 : stdgo.GoInt));
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (8)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), (_internal.bytes_test.Bytes_test__testString._testString.__slice__((0 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _internal.bytes_test.Bytes_test__empty._empty(_t, ("TestBasicOperations (9)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), (_internal.bytes_test.Bytes_test__testString._testString.__slice__((0 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                _internal.bytes_test.Bytes_test__empty._empty(_t, ("TestBasicOperations (10)" : stdgo.GoString), (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                _buf.writeByte(_internal.bytes_test.Bytes_test__testString._testString[(1 : stdgo.GoInt)]);
                var __tmp__ = _buf.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                {
                    var _want = (_internal.bytes_test.Bytes_test__testString._testString[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_err != null) || (_c != _want) : Bool)) {
                        _t.errorf(("ReadByte: got (%q, %v), want (%q, %v)" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want), (null : stdgo.AnyInterface));
                    };
                };
                {
                    var __tmp__ = _buf.readByte();
                    _c = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _t.errorf(("ReadByte: got (%q, %v), want (%q, %v)" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((0 : stdgo.GoUInt8)), stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof));
                };
            });
        };
    }
