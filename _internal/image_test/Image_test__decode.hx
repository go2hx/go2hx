package _internal.image_test;
import stdgo._internal.image.jpeg.Jpeg;
import stdgo._internal.image.gif.Gif;
import stdgo._internal.image.jpeg.Jpeg;
import stdgo._internal.image.png.Png;
function _decode(_filename:stdgo.GoString):{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(_filename?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
            };
            __deferstack__.unshift(() -> _f.close());
            {
                final __ret__:{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = stdgo._internal.image.Image_decode.decode(stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(_f))));
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : ("" : stdgo.GoString), _2 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.image.Image_Image.Image), _1 : ("" : stdgo.GoString), _2 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
