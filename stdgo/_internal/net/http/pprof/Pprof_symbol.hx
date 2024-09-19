package stdgo._internal.net.http.pprof;
function symbol(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
        _w.header().set(("X-Content-Type-Options" : stdgo.GoString), ("nosniff" : stdgo.GoString));
        _w.header().set(("Content-Type" : stdgo.GoString), ("text/plain; charset=utf-8" : stdgo.GoString));
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("num_symbols: 1\n" : stdgo.GoString));
        var _b:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        if (_r.method == (("POST" : stdgo.GoString))) {
            _b = stdgo._internal.bufio.Bufio_newReader.newReader(_r.body);
        } else {
            _b = stdgo._internal.bufio.Bufio_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_r.url.rawQuery?.__copy__())));
        };
        while (true) {
            var __tmp__ = _b.readSlice((43 : stdgo.GoUInt8)), _word:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _word = (_word.__slice__((0 : stdgo.GoInt), ((_word.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint((_word : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _pc:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            if (_pc != ((0i64 : stdgo.GoUInt64))) {
                var _f = stdgo._internal.runtime.Runtime_funcForPC.funcForPC((_pc : stdgo.GoUIntptr));
                if (_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("%#x %s\n" : stdgo.GoString), stdgo.Go.toInterface(_pc), stdgo.Go.toInterface(_f.name()));
                };
            };
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("reading request: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                break;
            };
        };
        _w.write(_buf.bytes());
    }
