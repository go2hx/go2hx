package _internal.errors_test;
function exampleIs():Void {
        {
            var __tmp__ = stdgo._internal.os.Os_open.open(("non-existing" : stdgo.GoString)), __0:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo._internal.errors.Errors_is_.is_(_err, stdgo._internal.io.fs.Fs_errNotExist.errNotExist)) {
                    stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("file does not exist" : stdgo.GoString)));
                } else {
                    stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_err));
                };
            };
        };
    }
