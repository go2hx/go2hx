package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testNopCloserWriterToForwarding(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tc in (new stdgo.GoArray<_internal.io_test.Io_test_T__struct_3.T__struct_3>(2, 2, ...[({ name : ("not a WriterTo" : stdgo.GoString), _r : (null : stdgo._internal.io.Io_Reader.Reader) } : _internal.io_test.Io_test_T__struct_3.T__struct_3), ({ name : ("a WriterTo" : stdgo.GoString), _r : stdgo.Go.asInterface(({ reader : (null : stdgo._internal.io.Io_Reader.Reader), writerTo : (null : stdgo._internal.io.Io_WriterTo.WriterTo) } : _internal.io_test.Io_test_T__struct_4.T__struct_4)) } : _internal.io_test.Io_test_T__struct_3.T__struct_3)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ name : ("" : stdgo.GoString), _r : (null : stdgo._internal.io.Io_Reader.Reader) } : _internal.io_test.Io_test_T__struct_3.T__struct_3)])) : stdgo.GoArray<_internal.io_test.Io_test_T__struct_3.T__struct_3>)) {
            var _nc = (stdgo._internal.io.Io_nopCloser.nopCloser(_tc._r) : stdgo._internal.io.Io_ReadCloser.ReadCloser);
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_tc._r) : stdgo._internal.io.Io_WriterTo.WriterTo)) : stdgo._internal.io.Io_WriterTo.WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_WriterTo.WriterTo), _1 : false };
            }, __1 = __tmp__._0, _expected = __tmp__._1;
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_nc) : stdgo._internal.io.Io_WriterTo.WriterTo)) : stdgo._internal.io.Io_WriterTo.WriterTo), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_WriterTo.WriterTo), _1 : false };
            }, __2 = __tmp__._0, _got = __tmp__._1;
            if (_expected != (_got)) {
                _t.errorf(("NopCloser incorrectly forwards WriterTo for %s, got %t want %t" : stdgo.GoString), stdgo.Go.toInterface(_tc.name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_expected));
            };
        };
    }
