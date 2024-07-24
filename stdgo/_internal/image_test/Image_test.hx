package stdgo._internal.image_test;
import stdgo._internal.image.jpeg.Jpeg;
import stdgo._internal.image.gif.Gif;
import stdgo._internal.image.jpeg.Jpeg;
import stdgo._internal.image.png.Png;
import stdgo._internal.image.Image;
private var __go2hxdoc__package : Bool;
final _data : stdgo.GoString = ("\n/9j/4AAQSkZJRgABAQIAHAAcAAD/2wBDABALDA4MChAODQ4SERATGCgaGBYWGDEjJR0oOjM9PDkzODdA\nSFxOQERXRTc4UG1RV19iZ2hnPk1xeXBkeFxlZ2P/2wBDARESEhgVGC8aGi9jQjhCY2NjY2NjY2NjY2Nj\nY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2P/wAARCABnAJYDASIAAhEBAxEB/8QA\nHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIh\nMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVW\nV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXG\nx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQF\nBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAV\nYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOE\nhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq\n8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDlwKMD0pwzSiuK57QzGDxS7D6in8Y5ximnAPUfSlcq4m3ilUYp\n2OKXHvRcVxnTtS7c07HNFK4DQPakC4PNOA+tOx70XAjK/So5gBGP94fzqfvUVx/qxx/EP51UXqRP4WSE\ncmgjilP3jSEZqS0IO/NGDnpUiocDg/McDjvV6HTPOdVWYgsM5KcfzzQ2JySM2jp6VYu7SWzmMUwG4cgj\nkMPUVBjjtTGtRu0Zopw+lFFxhinrGzuqqMsxAA9yaXFSRv5cqSEcIwYj6GpuZ30O30fSLKzhUpbpNMv3\n5XGTn29BV28jt7pPLuIVljPBBFVreYx+VbqAjycgt3x14zRcNOxGyVFHQkIc/wA61exyKLbuzjdZ046d\n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\n" : stdgo.GoString);
var _imageTests : stdgo.Slice<stdgo._internal.image_test.Image_test.T_imageTest> = (new stdgo.Slice<stdgo._internal.image_test.Image_test.T_imageTest>(12, 12, ...[
(new stdgo._internal.image_test.Image_test.T_imageTest(("testdata/video-001.png" : stdgo.GoString), ("testdata/video-001.png" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.image_test.Image_test.T_imageTest),
(new stdgo._internal.image_test.Image_test.T_imageTest(("testdata/video-001.png" : stdgo.GoString), ("testdata/video-001.gif" : stdgo.GoString), (16384 : stdgo.GoInt)) : stdgo._internal.image_test.Image_test.T_imageTest),
(new stdgo._internal.image_test.Image_test.T_imageTest(("testdata/video-001.png" : stdgo.GoString), ("testdata/video-001.interlaced.gif" : stdgo.GoString), (16384 : stdgo.GoInt)) : stdgo._internal.image_test.Image_test.T_imageTest),
(new stdgo._internal.image_test.Image_test.T_imageTest(("testdata/video-001.png" : stdgo.GoString), ("testdata/video-001.5bpp.gif" : stdgo.GoString), (32768 : stdgo.GoInt)) : stdgo._internal.image_test.Image_test.T_imageTest),
(new stdgo._internal.image_test.Image_test.T_imageTest(("testdata/video-001.png" : stdgo.GoString), ("testdata/video-001.jpeg" : stdgo.GoString), (2048 : stdgo.GoInt)) : stdgo._internal.image_test.Image_test.T_imageTest),
(new stdgo._internal.image_test.Image_test.T_imageTest(("testdata/video-001.png" : stdgo.GoString), ("testdata/video-001.progressive.jpeg" : stdgo.GoString), (2048 : stdgo.GoInt)) : stdgo._internal.image_test.Image_test.T_imageTest),
(new stdgo._internal.image_test.Image_test.T_imageTest(("testdata/video-001.221212.png" : stdgo.GoString), ("testdata/video-001.221212.jpeg" : stdgo.GoString), (2048 : stdgo.GoInt)) : stdgo._internal.image_test.Image_test.T_imageTest),
(new stdgo._internal.image_test.Image_test.T_imageTest(("testdata/video-001.cmyk.png" : stdgo.GoString), ("testdata/video-001.cmyk.jpeg" : stdgo.GoString), (2048 : stdgo.GoInt)) : stdgo._internal.image_test.Image_test.T_imageTest),
(new stdgo._internal.image_test.Image_test.T_imageTest(("testdata/video-001.rgb.png" : stdgo.GoString), ("testdata/video-001.rgb.jpeg" : stdgo.GoString), (2048 : stdgo.GoInt)) : stdgo._internal.image_test.Image_test.T_imageTest),
(new stdgo._internal.image_test.Image_test.T_imageTest(("testdata/video-001.progressive.truncated.png" : stdgo.GoString), ("testdata/video-001.progressive.truncated.jpeg" : stdgo.GoString), (2048 : stdgo.GoInt)) : stdgo._internal.image_test.Image_test.T_imageTest),
(new stdgo._internal.image_test.Image_test.T_imageTest(("testdata/video-005.gray.png" : stdgo.GoString), ("testdata/video-005.gray.jpeg" : stdgo.GoString), (2048 : stdgo.GoInt)) : stdgo._internal.image_test.Image_test.T_imageTest),
(new stdgo._internal.image_test.Image_test.T_imageTest(("testdata/video-005.gray.png" : stdgo.GoString), ("testdata/video-005.gray.png" : stdgo.GoString), (0 : stdgo.GoInt)) : stdgo._internal.image_test.Image_test.T_imageTest)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.image_test.Image_test.T_imageTest)])) : stdgo.Slice<stdgo._internal.image_test.Image_test.T_imageTest>);
@:structInit @:private class T_imageTest {
    public var _goldenFilename : stdgo.GoString = "";
    public var _filename : stdgo.GoString = "";
    public var _tolerance : stdgo.GoInt = 0;
    public function new(?_goldenFilename:stdgo.GoString, ?_filename:stdgo.GoString, ?_tolerance:stdgo.GoInt) {
        if (_goldenFilename != null) this._goldenFilename = _goldenFilename;
        if (_filename != null) this._filename = _filename;
        if (_tolerance != null) this._tolerance = _tolerance;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_imageTest(_goldenFilename, _filename, _tolerance);
    }
}
function example_decodeConfig():Void {
        var _reader = stdgo._internal.encoding.base64.Base64.newDecoder(stdgo._internal.encoding.base64.Base64.stdEncoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("\n/9j/4AAQSkZJRgABAQIAHAAcAAD/2wBDABALDA4MChAODQ4SERATGCgaGBYWGDEjJR0oOjM9PDkzODdA\nSFxOQERXRTc4UG1RV19iZ2hnPk1xeXBkeFxlZ2P/2wBDARESEhgVGC8aGi9jQjhCY2NjY2NjY2NjY2Nj\nY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2P/wAARCABnAJYDASIAAhEBAxEB/8QA\nHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIh\nMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVW\nV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXG\nx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQF\nBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAV\nYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOE\nhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq\n8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDlwKMD0pwzSiuK57QzGDxS7D6in8Y5ximnAPUfSlcq4m3ilUYp\n2OKXHvRcVxnTtS7c07HNFK4DQPakC4PNOA+tOx70XAjK/So5gBGP94fzqfvUVx/qxx/EP51UXqRP4WSE\ncmgjilP3jSEZqS0IO/NGDnpUiocDg/McDjvV6HTPOdVWYgsM5KcfzzQ2JySM2jp6VYu7SWzmMUwG4cgj\nkMPUVBjjtTGtRu0Zopw+lFFxhinrGzuqqMsxAA9yaXFSRv5cqSEcIwYj6GpuZ30O30fSLKzhUpbpNMv3\n5XGTn29BV28jt7pPLuIVljPBBFVreYx+VbqAjycgt3x14zRcNOxGyVFHQkIc/wA61exyKLbuzjdZ046d\n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\n" : stdgo.GoString))));
        var __tmp__ = stdgo._internal.image.Image.decodeConfig(_reader), _config:stdgo._internal.image.Image.Config = __tmp__._0, _format:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Width:" : stdgo.GoString)), stdgo.Go.toInterface(_config.width), stdgo.Go.toInterface(("Height:" : stdgo.GoString)), stdgo.Go.toInterface(_config.height), stdgo.Go.toInterface(("Format:" : stdgo.GoString)), stdgo.Go.toInterface(_format));
    }
function example():Void {
        var _reader = stdgo._internal.encoding.base64.Base64.newDecoder(stdgo._internal.encoding.base64.Base64.stdEncoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader(("\n/9j/4AAQSkZJRgABAQIAHAAcAAD/2wBDABALDA4MChAODQ4SERATGCgaGBYWGDEjJR0oOjM9PDkzODdA\nSFxOQERXRTc4UG1RV19iZ2hnPk1xeXBkeFxlZ2P/2wBDARESEhgVGC8aGi9jQjhCY2NjY2NjY2NjY2Nj\nY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2P/wAARCABnAJYDASIAAhEBAxEB/8QA\nHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIh\nMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVW\nV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXG\nx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQF\nBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAV\nYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOE\nhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq\n8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDlwKMD0pwzSiuK57QzGDxS7D6in8Y5ximnAPUfSlcq4m3ilUYp\n2OKXHvRcVxnTtS7c07HNFK4DQPakC4PNOA+tOx70XAjK/So5gBGP94fzqfvUVx/qxx/EP51UXqRP4WSE\ncmgjilP3jSEZqS0IO/NGDnpUiocDg/McDjvV6HTPOdVWYgsM5KcfzzQ2JySM2jp6VYu7SWzmMUwG4cgj\nkMPUVBjjtTGtRu0Zopw+lFFxhinrGzuqqMsxAA9yaXFSRv5cqSEcIwYj6GpuZ30O30fSLKzhUpbpNMv3\n5XGTn29BV28jt7pPLuIVljPBBFVreYx+VbqAjycgt3x14zRcNOxGyVFHQkIc/wA61exyKLbuzjdZ046d\n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\n" : stdgo.GoString))));
        var __tmp__ = stdgo._internal.image.Image.decode(_reader), _m:stdgo._internal.image.Image.Image = __tmp__._0, __0:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        var _bounds = _m.bounds()?.__copy__();
        var _histogram:stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>> = new stdgo.GoArray<stdgo.GoArray<stdgo.GoInt>>(16, 16, ...[for (i in 0 ... 16) new stdgo.GoArray<stdgo.GoInt>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt)])]);
        {
            var _y = _bounds.min.y;
            stdgo.Go.cfor((_y < _bounds.max.y : Bool), _y++, {
                {
                    var _x = _bounds.min.x;
                    stdgo.Go.cfor((_x < _bounds.max.x : Bool), _x++, {
                        var __tmp__ = _m.at(_x, _y).rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
                        _histogram[((_r >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)][(0 : stdgo.GoInt)]++;
                        _histogram[((_g >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)][(1 : stdgo.GoInt)]++;
                        _histogram[((_b >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)][(2 : stdgo.GoInt)]++;
                        _histogram[((_a >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)][(3 : stdgo.GoInt)]++;
                    });
                };
            });
        };
        stdgo._internal.fmt.Fmt.printf(("%-14s %6s %6s %6s %6s\n" : stdgo.GoString), stdgo.Go.toInterface(("bin" : stdgo.GoString)), stdgo.Go.toInterface(("red" : stdgo.GoString)), stdgo.Go.toInterface(("green" : stdgo.GoString)), stdgo.Go.toInterface(("blue" : stdgo.GoString)), stdgo.Go.toInterface(("alpha" : stdgo.GoString)));
        for (_i => _x in _histogram) {
            stdgo._internal.fmt.Fmt.printf(("0x%04x-0x%04x: %6d %6d %6d %6d\n" : stdgo.GoString), stdgo.Go.toInterface((_i << (12i64 : stdgo.GoUInt64) : stdgo.GoInt)), stdgo.Go.toInterface(((((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_x[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_x[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(_x[(2 : stdgo.GoInt)]), stdgo.Go.toInterface(_x[(3 : stdgo.GoInt)]));
        };
    }
function _decode(_filename:stdgo.GoString):{ var _0 : stdgo._internal.image.Image.Image; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os.open(_filename?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.image.Image.Image), _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
            };
            __deferstack__.unshift(() -> _f.close());
            {
                final __ret__:{ var _0 : stdgo._internal.image.Image.Image; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = stdgo._internal.image.Image.decode(stdgo.Go.asInterface(stdgo._internal.bufio.Bufio.newReader(stdgo.Go.asInterface(_f))));
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.image.Image.Image; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.image.Image.Image), _1 : ("" : stdgo.GoString), _2 : (null : stdgo.Error) };
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
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo._internal.image.Image.Image; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.image.Image.Image), _1 : ("" : stdgo.GoString), _2 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function _decodeConfig(_filename:stdgo.GoString):{ var _0 : stdgo._internal.image.Image.Config; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os.open(_filename?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (new stdgo._internal.image.Image.Config() : stdgo._internal.image.Image.Config), _1 : stdgo.Go.str()?.__copy__(), _2 : _err };
            };
            __deferstack__.unshift(() -> _f.close());
            {
                final __ret__:{ var _0 : stdgo._internal.image.Image.Config; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = stdgo._internal.image.Image.decodeConfig(stdgo.Go.asInterface(stdgo._internal.bufio.Bufio.newReader(stdgo.Go.asInterface(_f))));
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo._internal.image.Image.Config; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : ({} : stdgo._internal.image.Image.Config), _1 : ("" : stdgo.GoString), _2 : (null : stdgo.Error) };
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
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo._internal.image.Image.Config; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : ({} : stdgo._internal.image.Image.Config), _1 : ("" : stdgo.GoString), _2 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function _delta(_u0:stdgo.GoUInt32, _u1:stdgo.GoUInt32):stdgo.GoInt {
        var _d = ((_u0 : stdgo.GoInt) - (_u1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_d < (0 : stdgo.GoInt) : Bool)) {
            return -_d;
        };
        return _d;
    }
function _withinTolerance(_c0:stdgo._internal.image.color.Color.Color, _c1:stdgo._internal.image.color.Color.Color, _tolerance:stdgo.GoInt):Bool {
        var __tmp__ = _c0.rgba(), _r0:stdgo.GoUInt32 = __tmp__._0, _g0:stdgo.GoUInt32 = __tmp__._1, _b0:stdgo.GoUInt32 = __tmp__._2, _a0:stdgo.GoUInt32 = __tmp__._3;
        var __tmp__ = _c1.rgba(), _r1:stdgo.GoUInt32 = __tmp__._0, _g1:stdgo.GoUInt32 = __tmp__._1, _b1:stdgo.GoUInt32 = __tmp__._2, _a1:stdgo.GoUInt32 = __tmp__._3;
        var _r = _delta(_r0, _r1);
        var _g = _delta(_g0, _g1);
        var _b = _delta(_b0, _b1);
        var _a = _delta(_a0, _a1);
        return ((((_r <= _tolerance : Bool) && (_g <= _tolerance : Bool) : Bool) && (_b <= _tolerance : Bool) : Bool) && (_a <= _tolerance : Bool) : Bool);
    }
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.Macro.controlFlow({
            var _rgba = function(_c:stdgo._internal.image.color.Color.Color):stdgo.GoString {
                var __tmp__ = _c.rgba(), _r:stdgo.GoUInt32 = __tmp__._0, _g:stdgo.GoUInt32 = __tmp__._1, _b:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
                return stdgo._internal.fmt.Fmt.sprintf(("rgba = 0x%04x, 0x%04x, 0x%04x, 0x%04x for %T%v" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(_c))?.__copy__();
            };
            var _golden = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.image.Image.Image>();
                x.__defaultValue__ = () -> (null : stdgo._internal.image.Image.Image);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.image.Image.Image>);
            @:label("loop") for (__0 => _it in _imageTests) {
                var _g = (_golden[_it._goldenFilename] ?? (null : stdgo._internal.image.Image.Image));
                if (_g == null) {
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        var __tmp__ = _decode(_it._goldenFilename?.__copy__());
                        _g = __tmp__._0;
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        _t.errorf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_it._goldenFilename), stdgo.Go.toInterface(_err));
                        @:jump("loop") continue;
                    };
                    _golden[_it._goldenFilename] = _g;
                };
                var __tmp__ = _decode(_it._filename?.__copy__()), _m:stdgo._internal.image.Image.Image = __tmp__._0, _imageFormat:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.errorf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_it._filename), stdgo.Go.toInterface(_err));
                    @:jump("loop") continue;
                };
                var _b = _g.bounds()?.__copy__();
                if (!_b.eq(_m.bounds()?.__copy__())) {
                    _t.errorf(("%s: got bounds %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_it._filename), stdgo.Go.toInterface(stdgo.Go.asInterface(_m.bounds())), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
                    @:jump("loop") continue;
                };
                {
                    var _y = _b.min.y;
                    stdgo.Go.cfor((_y < _b.max.y : Bool), _y++, {
                        {
                            var _x = _b.min.x;
                            stdgo.Go.cfor((_x < _b.max.x : Bool), _x++, {
                                if (!_withinTolerance(_g.at(_x, _y), _m.at(_x, _y), _it._tolerance)) {
                                    _t.errorf(("%s: at (%d, %d):\ngot  %v\nwant %v" : stdgo.GoString), stdgo.Go.toInterface(_it._filename), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_rgba(_m.at(_x, _y))), stdgo.Go.toInterface(_rgba(_g.at(_x, _y))));
                                    @:jump("loop") continue;
                                };
                            });
                        };
                    });
                };
                if (_imageFormat == (("gif" : stdgo.GoString))) {
                    continue;
                };
                var __tmp__ = _decodeConfig(_it._filename?.__copy__()), _c:stdgo._internal.image.Image.Config = __tmp__._0, __33:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.errorf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_it._filename), stdgo.Go.toInterface(_err));
                    @:jump("loop") continue;
                };
                if (stdgo.Go.toInterface(_m.colorModel()) != (stdgo.Go.toInterface(_c.colorModel))) {
                    _t.errorf(("%s: color models differ" : stdgo.GoString), stdgo.Go.toInterface(_it._filename));
                    @:jump("loop") continue;
                };
            };
        });
    }
