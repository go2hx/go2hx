package _internal.internal.fmtsort_test;
function _sprintKey(_key:stdgo._internal.reflect.Reflect_Value.Value):stdgo.GoString {
        {
            var _str = ((_key.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                final __value__ = _str;
                if (__value__ == (("*int" : stdgo.GoString))) {
                    var _ptr = (stdgo.Go.typeAssert((_key.interface_() : stdgo.Pointer<stdgo.GoInt>)) : stdgo.Pointer<stdgo.GoInt>);
                    for (_i => _ in _internal.internal.fmtsort_test.Fmtsort_test__ints._ints) {
                        if (_ptr == (stdgo.Go.pointer(_internal.internal.fmtsort_test.Fmtsort_test__ints._ints[(_i : stdgo.GoInt)]))) {
                            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("PTR%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
                        };
                    };
                    return ("PTR???" : stdgo.GoString);
                } else if (__value__ == (("unsafe.Pointer" : stdgo.GoString))) {
                    var _ptr = (stdgo.Go.typeAssert((_key.interface_() : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
                    for (_i => _ in _internal.internal.fmtsort_test.Fmtsort_test__ints._ints) {
                        if (_ptr == ((stdgo.Go.toInterface(stdgo.Go.pointer(_internal.internal.fmtsort_test.Fmtsort_test__ints._ints[(_i : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer))) {
                            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("UNSAFEPTR%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
                        };
                    };
                    return ("UNSAFEPTR???" : stdgo.GoString);
                } else if (__value__ == (("chan int" : stdgo.GoString))) {
                    var _c = (stdgo.Go.typeAssert((_key.interface_() : stdgo.Chan<stdgo.GoInt>)) : stdgo.Chan<stdgo.GoInt>);
                    for (_i => _ in _internal.internal.fmtsort_test.Fmtsort_test__chans._chans) {
                        if (_c == (_internal.internal.fmtsort_test.Fmtsort_test__chans._chans[(_i : stdgo.GoInt)])) {
                            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("CHAN%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
                        };
                    };
                    return ("CHAN???" : stdgo.GoString);
                } else {
                    return stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(stdgo.Go.asInterface(_key)))?.__copy__();
                };
            };
        };
    }
