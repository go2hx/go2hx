package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function exampleMultiWriter():Void {
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("some io.Reader stream to be read\n" : stdgo.GoString));
        var __0:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder), __1:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
var _buf2 = __1, _buf1 = __0;
        var _w = (stdgo._internal.io.Io_multiWriter.multiWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_buf1) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.asInterface((stdgo.Go.setRef(_buf2) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>))) : stdgo._internal.io.Io_Writer.Writer);
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(_w, stdgo.Go.asInterface(_r)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface((_buf1.string() : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface((_buf2.string() : stdgo.GoString)));
    }
