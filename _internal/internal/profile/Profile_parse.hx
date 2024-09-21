package _internal.internal.profile;
function parse(_r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.io.Io_readAll.readAll(_r), _orig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _p:stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile> = (null : stdgo.Ref<_internal.internal.profile.Profile_Profile.Profile>);
        if (((((_orig.length) >= (2 : stdgo.GoInt) : Bool) && _orig[(0 : stdgo.GoInt)] == ((31 : stdgo.GoUInt8)) : Bool) && (_orig[(1 : stdgo.GoInt)] == (139 : stdgo.GoUInt8)) : Bool)) {
            var __tmp__ = stdgo._internal.compress.gzip.Gzip_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_orig))), _gz:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("decompressing profile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
            var __tmp__ = stdgo._internal.io.Io_readAll.readAll(stdgo.Go.asInterface(_gz)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("decompressing profile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
            _orig = _data;
        };
        {
            {
                var __tmp__ = _internal.internal.profile.Profile__parseUncompressed._parseUncompressed(_orig);
                _p = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    {
                        var __tmp__ = _internal.internal.profile.Profile__parseLegacy._parseLegacy(_orig);
                        _p = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("parsing profile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                    };
                };
            };
        };
        {
            var _err = (_p.checkValid() : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed profile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
