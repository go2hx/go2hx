package stdgo._internal.text.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.flag.Flag;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.net.url.Url;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.internal.fmtsort.Fmtsort;
function hTMLEscape(_w:stdgo._internal.io.Io_Writer.Writer, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _last = (0 : stdgo.GoInt);
        for (_i => _c in _b) {
            var _html:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                final __value__ = _c;
                if (__value__ == ((0 : stdgo.GoUInt8))) {
                    _html = stdgo._internal.text.template.Template__htmlNull._htmlNull;
                } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                    _html = stdgo._internal.text.template.Template__htmlQuot._htmlQuot;
                } else if (__value__ == ((39 : stdgo.GoUInt8))) {
                    _html = stdgo._internal.text.template.Template__htmlApos._htmlApos;
                } else if (__value__ == ((38 : stdgo.GoUInt8))) {
                    _html = stdgo._internal.text.template.Template__htmlAmp._htmlAmp;
                } else if (__value__ == ((60 : stdgo.GoUInt8))) {
                    _html = stdgo._internal.text.template.Template__htmlLt._htmlLt;
                } else if (__value__ == ((62 : stdgo.GoUInt8))) {
                    _html = stdgo._internal.text.template.Template__htmlGt._htmlGt;
                } else {
                    continue;
                };
            };
            _w.write((_b.__slice__(_last, _i) : stdgo.Slice<stdgo.GoUInt8>));
            _w.write(_html);
            _last = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        _w.write((_b.__slice__(_last) : stdgo.Slice<stdgo.GoUInt8>));
    }
