package stdgo._internal.internal.profile;
function parse(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.io.Io_readall.readAll(_r), _orig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L128"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L129"
            return { _0 : null, _1 : _err };
        };
        var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile> = (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_profile.Profile>);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L133"
        if (((((_orig.length) >= (2 : stdgo.GoInt) : Bool) && _orig[(0 : stdgo.GoInt)] == ((31 : stdgo.GoUInt8)) : Bool) && (_orig[(1 : stdgo.GoInt)] == (139 : stdgo.GoUInt8)) : Bool)) {
            var __tmp__ = stdgo._internal.compress.gzip.Gzip_newreader.newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_orig))), _gz:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L135"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L136"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("decompressing profile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
            var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo.Go.asInterface(_gz)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L139"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L140"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("decompressing profile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
            _orig = _data;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L144"
        {
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__parseuncompressed._parseUncompressed(_orig);
                _p = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L145"
                {
                    {
                        var __tmp__ = stdgo._internal.internal.profile.Profile__parselegacy._parseLegacy(_orig);
                        _p = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L146"
                        return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("parsing profile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L150"
        {
            var _err = (_p.checkValid() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L151"
                return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed profile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/profile.go#L153"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
