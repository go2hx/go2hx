package stdgo._internal.internal.profile;
function _parseThreadSample(_b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } {
        var _nextl = ("" : stdgo.GoString), _addrs = (null : stdgo.Slice<stdgo.GoUInt64>), _err = (null : stdgo.Error);
        var _l:stdgo.GoString = ("" : stdgo.GoString);
        var _sameAsPrevious = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L971"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L972"
            {
                {
                    var __tmp__ = _b.readString((10 : stdgo.GoUInt8));
                    _l = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L973"
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L974"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt64>), _2 : _err };
                            _nextl = __tmp__._0;
                            _addrs = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L976"
                    if (_l == ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L977"
                        break;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L980"
            {
                _l = stdgo._internal.strings.Strings_trimspace.trimSpace(_l?.__copy__())?.__copy__();
                if (_l == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L981"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L984"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_l?.__copy__(), ("---" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L985"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L987"
            if (stdgo._internal.strings.Strings_contains.contains(_l?.__copy__(), ("same as previous thread" : stdgo.GoString))) {
                _sameAsPrevious = true;
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L989"
                continue;
            };
            _addrs = (_addrs.__append__(...(stdgo._internal.internal.profile.Profile__parsehexaddresses._parseHexAddresses(_l?.__copy__()) : Array<stdgo.GoUInt64>)) : stdgo.Slice<stdgo.GoUInt64>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L995"
        if (_sameAsPrevious) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L996"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } = { _0 : _l?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt64>), _2 : (null : stdgo.Error) };
                _nextl = __tmp__._0;
                _addrs = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/legacy_profile.go#L998"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } = { _0 : _l?.__copy__(), _1 : _addrs, _2 : (null : stdgo.Error) };
            _nextl = __tmp__._0;
            _addrs = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
