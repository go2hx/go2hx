package stdgo._internal.net.http;
function _writeStatusLine(_bw:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, _is11:Bool, _code:stdgo.GoInt, _scratch:stdgo.Slice<stdgo.GoUInt8>):Void {
        if (_is11) {
            @:check2r _bw.writeString(("HTTP/1.1 " : stdgo.GoString));
        } else {
            @:check2r _bw.writeString(("HTTP/1.0 " : stdgo.GoString));
        };
        {
            var _text = (stdgo._internal.net.http.Http_statusText.statusText(_code)?.__copy__() : stdgo.GoString);
            if (_text != (stdgo.Go.str())) {
                @:check2r _bw.write(stdgo._internal.strconv.Strconv_appendInt.appendInt((_scratch.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_code : stdgo.GoInt64), (10 : stdgo.GoInt)));
                @:check2r _bw.writeByte((32 : stdgo.GoUInt8));
                @:check2r _bw.writeString(_text?.__copy__());
                @:check2r _bw.writeString(("\r\n" : stdgo.GoString));
            } else {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_bw), ("%03d status code %d\r\n" : stdgo.GoString), stdgo.Go.toInterface(_code), stdgo.Go.toInterface(_code));
            };
        };
    }
