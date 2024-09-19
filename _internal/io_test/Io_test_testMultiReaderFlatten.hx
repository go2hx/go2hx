package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testMultiReaderFlatten(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _pc = (new stdgo.Slice<stdgo.GoUIntptr>((1000 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
        var _n = (stdgo._internal.runtime.Runtime_callers.callers((0 : stdgo.GoInt), _pc) : stdgo.GoInt);
        var _myDepth:stdgo.GoInt = _internal.io_test.Io_test__callDepth._callDepth((_pc.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>));
        var _readDepth:stdgo.GoInt = (0 : stdgo.GoInt);
        var _r:stdgo._internal.io.Io_Reader.Reader = stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface((function(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            var _n = (stdgo._internal.runtime.Runtime_callers.callers((1 : stdgo.GoInt), _pc) : stdgo.GoInt);
            _readDepth = _internal.io_test.Io_test__callDepth._callDepth((_pc.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>));
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("irrelevant" : stdgo.GoString)) };
        } : _internal.io_test.Io_test_T_readerFunc.T_readerFunc)));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                _r = stdgo._internal.io.Io_multiReader.multiReader(_r);
            });
        };
        _r.read((null : stdgo.Slice<stdgo.GoUInt8>));
        if (_readDepth != ((_myDepth + (2 : stdgo.GoInt) : stdgo.GoInt))) {
            _t.errorf(("multiReader did not flatten chained multiReaders: expected readDepth %d, got %d" : stdgo.GoString), stdgo.Go.toInterface((_myDepth + (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_readDepth));
        };
    }
