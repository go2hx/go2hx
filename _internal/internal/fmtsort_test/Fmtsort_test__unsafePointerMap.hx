package _internal.internal.fmtsort_test;
function _unsafePointerMap():stdgo.GoMap<stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoString> {
        var _m = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoString>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind));
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.unsafe.Unsafe.UnsafePointer, stdgo.GoString>);
        {
            var _i = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _m[(stdgo.Go.toInterface(stdgo.Go.pointer(_internal.internal.fmtsort_test.Fmtsort_test__ints._ints[(_i : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer)] = stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_i))?.__copy__();
            });
        };
        return _m;
    }
