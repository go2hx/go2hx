package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function exampleTypeOf():Void {
        var _writerType = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((null : stdgo.Ref<stdgo._internal.io.Io_Writer.Writer>))).elem() : stdgo._internal.reflect.Reflect_Type_.Type_);
        var _fileType = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.os.Os_File.File>)))) : stdgo._internal.reflect.Reflect_Type_.Type_);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_fileType.implements_(_writerType)));
    }
