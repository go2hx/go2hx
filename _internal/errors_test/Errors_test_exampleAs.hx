package _internal.errors_test;
function exampleAs():Void {
        {
            var __tmp__ = stdgo._internal.os.Os_open.open(("non-existing" : stdgo.GoString)), __0:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                var _pathError:stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError> = (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>);
                if (stdgo._internal.errors.Errors_as.as(_err, stdgo.Go.toInterface((stdgo.Go.setRef(_pathError) : stdgo.Ref<stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>>)))) {
                    stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Failed at path:" : stdgo.GoString)), stdgo.Go.toInterface(_pathError.path));
                } else {
                    stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_err));
                };
            };
        };
    }
