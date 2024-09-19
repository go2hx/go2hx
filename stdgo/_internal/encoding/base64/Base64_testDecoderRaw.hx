package stdgo._internal.encoding.base64;
function testDecoderRaw(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _source = ("AAAAAA" : stdgo.GoString);
        var _want = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.encoding.base64.Base64_rawURLEncoding.rawURLEncoding.decodeString(_source?.__copy__()), _dec1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || !stdgo._internal.bytes.Bytes_equal.equal(_dec1, _want) : Bool)) {
            _t.errorf(("RawURLEncoding.DecodeString(%q) = %x, %v, want %x, nil" : stdgo.GoString), stdgo.Go.toInterface(_source), stdgo.Go.toInterface(_dec1), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
        };
        var _r = (stdgo._internal.encoding.base64.Base64_newDecoder.newDecoder(stdgo._internal.encoding.base64.Base64_rawURLEncoding.rawURLEncoding, stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((_source : stdgo.Slice<stdgo.GoUInt8>)))) : stdgo._internal.io.Io_Reader.Reader);
        var __tmp__ = stdgo._internal.io.Io_readAll.readAll(stdgo._internal.io.Io_limitReader.limitReader(_r, (100i64 : stdgo.GoInt64))), _dec2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || !stdgo._internal.bytes.Bytes_equal.equal(_dec2, _want) : Bool)) {
            _t.errorf(("reading NewDecoder(RawURLEncoding, %q) = %x, %v, want %x, nil" : stdgo.GoString), stdgo.Go.toInterface(_source), stdgo.Go.toInterface(_dec2), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
        };
        _r = stdgo._internal.encoding.base64.Base64_newDecoder.newDecoder(stdgo._internal.encoding.base64.Base64_urlencoding.urlencoding, stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(((_source + ("==" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        var __tmp__ = stdgo._internal.io.Io_readAll.readAll(_r), _dec3:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || !stdgo._internal.bytes.Bytes_equal.equal(_dec3, _want) : Bool)) {
            _t.errorf(("reading NewDecoder(URLEncoding, %q) = %x, %v, want %x, nil" : stdgo.GoString), stdgo.Go.toInterface((_source + ("==" : stdgo.GoString)?.__copy__() : stdgo.GoString)), stdgo.Go.toInterface(_dec3), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
        };
    }