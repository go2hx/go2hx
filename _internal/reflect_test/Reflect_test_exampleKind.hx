package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function exampleKind():Void {
        for (__7 => _v in (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface(("hi" : stdgo.GoString)), stdgo.Go.toInterface((42 : stdgo.GoInt)), stdgo.Go.toInterface(function():Void {})]) : stdgo.Slice<stdgo.AnyInterface>)) {
            {
                var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                {
                    final __value__ = _v.kind();
                    if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_v.string() : stdgo.GoString)));
                    } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_v.int_()));
                    } else {
                        stdgo._internal.fmt.Fmt_printf.printf(("unhandled kind %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v.kind())));
                    };
                };
            };
        };
    }
