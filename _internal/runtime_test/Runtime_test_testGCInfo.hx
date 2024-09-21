package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testGCInfo(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("bss Ptr" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__bssPtr._bssPtr) : stdgo.Ref<_internal.runtime_test.Runtime_test_Ptr.Ptr>)), _internal.runtime_test.Runtime_test__infoPtr._infoPtr);
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("bss ScalarPtr" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__bssScalarPtr._bssScalarPtr) : stdgo.Ref<_internal.runtime_test.Runtime_test_ScalarPtr.ScalarPtr>)), _internal.runtime_test.Runtime_test__infoScalarPtr._infoScalarPtr);
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("bss PtrScalar" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__bssPtrScalar._bssPtrScalar) : stdgo.Ref<_internal.runtime_test.Runtime_test_PtrScalar.PtrScalar>)), _internal.runtime_test.Runtime_test__infoPtrScalar._infoPtrScalar);
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("bss BigStruct" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__bssBigStruct._bssBigStruct) : stdgo.Ref<_internal.runtime_test.Runtime_test_BigStruct.BigStruct>)), _internal.runtime_test.Runtime_test__infoBigStruct._infoBigStruct());
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("bss string" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_internal.runtime_test.Runtime_test__bssString._bssString)), _internal.runtime_test.Runtime_test__infoString._infoString);
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("bss slice" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__bssSlice._bssSlice) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>)), _internal.runtime_test.Runtime_test__infoSlice._infoSlice);
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("bss eface" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__bssEface._bssEface) : stdgo.Ref<stdgo.AnyInterface>)), _internal.runtime_test.Runtime_test__infoEface._infoEface);
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("bss iface" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__bssIface._bssIface) : stdgo.Ref<_internal.runtime_test.Runtime_test_Iface.Iface>)), _internal.runtime_test.Runtime_test__infoIface._infoIface);
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("data Ptr" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__dataPtr._dataPtr) : stdgo.Ref<_internal.runtime_test.Runtime_test_Ptr.Ptr>)), _internal.runtime_test.Runtime_test__infoPtr._infoPtr);
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("data ScalarPtr" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__dataScalarPtr._dataScalarPtr) : stdgo.Ref<_internal.runtime_test.Runtime_test_ScalarPtr.ScalarPtr>)), _internal.runtime_test.Runtime_test__infoScalarPtr._infoScalarPtr);
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("data PtrScalar" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__dataPtrScalar._dataPtrScalar) : stdgo.Ref<_internal.runtime_test.Runtime_test_PtrScalar.PtrScalar>)), _internal.runtime_test.Runtime_test__infoPtrScalar._infoPtrScalar);
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("data BigStruct" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__dataBigStruct._dataBigStruct) : stdgo.Ref<_internal.runtime_test.Runtime_test_BigStruct.BigStruct>)), _internal.runtime_test.Runtime_test__infoBigStruct._infoBigStruct());
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("data string" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_internal.runtime_test.Runtime_test__dataString._dataString)), _internal.runtime_test.Runtime_test__infoString._infoString);
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("data slice" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__dataSlice._dataSlice) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>)), _internal.runtime_test.Runtime_test__infoSlice._infoSlice);
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("data eface" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__dataEface._dataEface) : stdgo.Ref<stdgo.AnyInterface>)), _internal.runtime_test.Runtime_test__infoEface._infoEface);
        _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("data iface" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_internal.runtime_test.Runtime_test__dataIface._dataIface) : stdgo.Ref<_internal.runtime_test.Runtime_test_Iface.Iface>)), _internal.runtime_test.Runtime_test__infoIface._infoIface);
        {
            var _x:_internal.runtime_test.Runtime_test_Ptr.Ptr = ({} : _internal.runtime_test.Runtime_test_Ptr.Ptr);
            _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("stack Ptr" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<_internal.runtime_test.Runtime_test_Ptr.Ptr>)), _internal.runtime_test.Runtime_test__infoPtr._infoPtr);
            stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_x));
        };
        {
            var _x:_internal.runtime_test.Runtime_test_ScalarPtr.ScalarPtr = ({} : _internal.runtime_test.Runtime_test_ScalarPtr.ScalarPtr);
            _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("stack ScalarPtr" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<_internal.runtime_test.Runtime_test_ScalarPtr.ScalarPtr>)), _internal.runtime_test.Runtime_test__infoScalarPtr._infoScalarPtr);
            stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_x));
        };
        {
            var _x:_internal.runtime_test.Runtime_test_PtrScalar.PtrScalar = ({} : _internal.runtime_test.Runtime_test_PtrScalar.PtrScalar);
            _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("stack PtrScalar" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<_internal.runtime_test.Runtime_test_PtrScalar.PtrScalar>)), _internal.runtime_test.Runtime_test__infoPtrScalar._infoPtrScalar);
            stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_x));
        };
        {
            var _x:_internal.runtime_test.Runtime_test_BigStruct.BigStruct = ({} : _internal.runtime_test.Runtime_test_BigStruct.BigStruct);
            _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("stack BigStruct" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<_internal.runtime_test.Runtime_test_BigStruct.BigStruct>)), _internal.runtime_test.Runtime_test__infoBigStruct._infoBigStruct());
            stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_x));
        };
        {
            var _x:stdgo.GoString = ("" : stdgo.GoString);
            _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("stack string" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_x)), _internal.runtime_test.Runtime_test__infoString._infoString);
            stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_x));
        };
        {
            var _x:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("stack slice" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>)), _internal.runtime_test.Runtime_test__infoSlice._infoSlice);
            stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_x));
        };
        {
            var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("stack eface" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>)), _internal.runtime_test.Runtime_test__infoEface._infoEface);
            stdgo._internal.runtime.Runtime_keepAlive.keepAlive(_x);
        };
        {
            var _x:_internal.runtime_test.Runtime_test_Iface.Iface = (null : _internal.runtime_test.Runtime_test_Iface.Iface);
            _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("stack iface" : stdgo.GoString), stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<_internal.runtime_test.Runtime_test_Iface.Iface>)), _internal.runtime_test.Runtime_test__infoIface._infoIface);
            stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_x));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("heap Ptr" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_escape.escape((stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_Ptr.Ptr)) : stdgo.Ref<_internal.runtime_test.Runtime_test_Ptr.Ptr>))), _internal.runtime_test.Runtime_test__trimDead._trimDead(_internal.runtime_test.Runtime_test__infoPtr._infoPtr));
                _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("heap PtrSlice" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_escape.escape(stdgo.Go.pointer((new stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>((10 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>)[(0 : stdgo.GoInt)]))), _internal.runtime_test.Runtime_test__trimDead._trimDead(_internal.runtime_test.Runtime_test__infoPtr10._infoPtr10));
                _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("heap ScalarPtr" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_escape.escape((stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_ScalarPtr.ScalarPtr)) : stdgo.Ref<_internal.runtime_test.Runtime_test_ScalarPtr.ScalarPtr>))), _internal.runtime_test.Runtime_test__trimDead._trimDead(_internal.runtime_test.Runtime_test__infoScalarPtr._infoScalarPtr));
                _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("heap ScalarPtrSlice" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_escape.escape((stdgo.Go.setRef((new stdgo.Slice<_internal.runtime_test.Runtime_test_ScalarPtr.ScalarPtr>((4 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((4 : stdgo.GoInt).toBasic() > 0 ? (4 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.runtime_test.Runtime_test_ScalarPtr.ScalarPtr)]) : stdgo.Slice<_internal.runtime_test.Runtime_test_ScalarPtr.ScalarPtr>)[(0 : stdgo.GoInt)]) : stdgo.Ref<_internal.runtime_test.Runtime_test_ScalarPtr.ScalarPtr>))), _internal.runtime_test.Runtime_test__trimDead._trimDead(_internal.runtime_test.Runtime_test__infoScalarPtr4._infoScalarPtr4));
                _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("heap PtrScalar" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_escape.escape((stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_PtrScalar.PtrScalar)) : stdgo.Ref<_internal.runtime_test.Runtime_test_PtrScalar.PtrScalar>))), _internal.runtime_test.Runtime_test__trimDead._trimDead(_internal.runtime_test.Runtime_test__infoPtrScalar._infoPtrScalar));
                _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("heap BigStruct" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_escape.escape((stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_BigStruct.BigStruct)) : stdgo.Ref<_internal.runtime_test.Runtime_test_BigStruct.BigStruct>))), _internal.runtime_test.Runtime_test__trimDead._trimDead(_internal.runtime_test.Runtime_test__infoBigStruct._infoBigStruct()));
                _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("heap string" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_escape.escape(stdgo.Go.pointer(("" : stdgo.GoString)))), _internal.runtime_test.Runtime_test__trimDead._trimDead(_internal.runtime_test.Runtime_test__infoString._infoString));
                _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("heap eface" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_escape.escape((stdgo.Go.setRef((null : stdgo.AnyInterface)) : stdgo.Ref<stdgo.AnyInterface>))), _internal.runtime_test.Runtime_test__trimDead._trimDead(_internal.runtime_test.Runtime_test__infoEface._infoEface));
                _internal.runtime_test.Runtime_test__verifyGCInfo._verifyGCInfo(_t, ("heap iface" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.runtime.Runtime_escape.escape((stdgo.Go.setRef((null : _internal.runtime_test.Runtime_test_Iface.Iface)) : stdgo.Ref<_internal.runtime_test.Runtime_test_Iface.Iface>))), _internal.runtime_test.Runtime_test__trimDead._trimDead(_internal.runtime_test.Runtime_test__infoIface._infoIface));
            });
        };
    }
