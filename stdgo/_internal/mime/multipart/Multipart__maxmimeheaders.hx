package stdgo._internal.mime.multipart;
function _maxMIMEHeaders():stdgo.GoInt64 {
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L356"
        {
            var _s = (stdgo._internal.mime.multipart.Multipart__multipartmaxheaders._multipartMaxHeaders.value()?.__copy__() : stdgo.GoString);
            if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L357"
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _v:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err == null) && (_v >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L358"
                        stdgo._internal.mime.multipart.Multipart__multipartmaxheaders._multipartMaxHeaders.incNonDefault();
                        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L359"
                        return _v;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L362"
        return (10000i64 : stdgo.GoInt64);
    }
