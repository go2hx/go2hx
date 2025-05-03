package stdgo._internal.text.template;
function jSEscape(_w:stdgo._internal.io.Io_writer.Writer, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _last = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L673"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_b.length) : Bool)) {
                var _c = (_b[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L676"
                if (!stdgo._internal.text.template.Template__jsisspecial._jsIsSpecial((_c : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L678"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L680"
                _w.write((_b.__slice__(_last, _i) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L682"
                if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L685"
                    {
                        final __value__ = _c;
                        if (__value__ == ((92 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L687"
                            _w.write(stdgo._internal.text.template.Template__jsbackslash._jsBackslash);
                        } else if (__value__ == ((39 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L689"
                            _w.write(stdgo._internal.text.template.Template__jsapos._jsApos);
                        } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L691"
                            _w.write(stdgo._internal.text.template.Template__jsquot._jsQuot);
                        } else if (__value__ == ((60 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L693"
                            _w.write(stdgo._internal.text.template.Template__jslt._jsLt);
                        } else if (__value__ == ((62 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L695"
                            _w.write(stdgo._internal.text.template.Template__jsgt._jsGt);
                        } else if (__value__ == ((38 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L697"
                            _w.write(stdgo._internal.text.template.Template__jsamp._jsAmp);
                        } else if (__value__ == ((61 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L699"
                            _w.write(stdgo._internal.text.template.Template__jseq._jsEq);
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L701"
                            _w.write(stdgo._internal.text.template.Template__jslowuni._jsLowUni);
                            var __0 = (_c >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8), __1 = (_c & (15 : stdgo.GoUInt8) : stdgo.GoUInt8);
var _b = __1, _t = __0;
                            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L703"
                            _w.write((stdgo._internal.text.template.Template__hex._hex.__slice__(_t, (_t + (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>));
                            //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L704"
                            _w.write((stdgo._internal.text.template.Template__hex._hex.__slice__(_b, (_b + (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    };
                } else {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L709"
                    if (stdgo._internal.unicode.Unicode_isprint.isPrint(_r)) {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L710"
                        _w.write((_b.__slice__(_i, (_i + _size : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L712"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("\\u%04X" : stdgo.GoString), stdgo.Go.toInterface(_r));
                    };
                    _i = (_i + ((_size - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                };
_last = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/funcs.go#L718"
        _w.write((_b.__slice__(_last) : stdgo.Slice<stdgo.GoUInt8>));
    }
