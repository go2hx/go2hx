package stdgo._internal.mime.multipart;
function _maxMIMEHeaders():stdgo.GoInt64 {
        {
            var _s = (stdgo._internal.mime.multipart.Multipart__multipartMaxHeaders._multipartMaxHeaders.value()?.__copy__() : stdgo.GoString);
            if (_s != (stdgo.Go.str())) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_s?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _v:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err == null) && (_v >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        stdgo._internal.mime.multipart.Multipart__multipartMaxHeaders._multipartMaxHeaders.incNonDefault();
                        return _v;
                    };
                };
            };
        };
        return (10000i64 : stdgo.GoInt64);
    }
