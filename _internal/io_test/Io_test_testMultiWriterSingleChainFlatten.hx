package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testMultiWriterSingleChainFlatten(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _pc = (new stdgo.Slice<stdgo.GoUIntptr>((1000 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
        var _n = (stdgo._internal.runtime.Runtime_callers.callers((0 : stdgo.GoInt), _pc) : stdgo.GoInt);
        var _myDepth:stdgo.GoInt = _internal.io_test.Io_test__callDepth._callDepth((_pc.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>));
        var _writeDepth:stdgo.GoInt = (0 : stdgo.GoInt);
        var _w:stdgo._internal.io.Io_Writer.Writer = stdgo._internal.io.Io_multiWriter.multiWriter(stdgo.Go.asInterface((function(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
            var _n = (stdgo._internal.runtime.Runtime_callers.callers((1 : stdgo.GoInt), _pc) : stdgo.GoInt);
            _writeDepth = (_writeDepth + (_internal.io_test.Io_test__callDepth._callDepth((_pc.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>))) : stdgo.GoInt);
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        } : _internal.io_test.Io_test_T_writerFunc.T_writerFunc)));
        var _mw = (_w : stdgo._internal.io.Io_Writer.Writer);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                _mw = stdgo._internal.io.Io_multiWriter.multiWriter(_w);
            });
        };
        _mw = stdgo._internal.io.Io_multiWriter.multiWriter(_w, _mw, _w, _mw);
        _mw.write((null : stdgo.Slice<stdgo.GoUInt8>));
        if (_writeDepth != (((4 : stdgo.GoInt) * ((_myDepth + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt))) {
            _t.errorf(("multiWriter did not flatten chained multiWriters: expected writeDepth %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(((4 : stdgo.GoInt) * ((_myDepth + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)), stdgo.Go.toInterface(_writeDepth));
        };
    }
