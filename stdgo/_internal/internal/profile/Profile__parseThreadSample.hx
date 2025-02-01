package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.lazyregexp.Lazyregexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.sort.Sort;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.regexp.Regexp;
function _parseThreadSample(_b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } {
        var _nextl = ("" : stdgo.GoString), _addrs = (null : stdgo.Slice<stdgo.GoUInt64>), _err = (null : stdgo.Error);
        var _l:stdgo.GoString = ("" : stdgo.GoString);
        var _sameAsPrevious = (false : Bool);
        while (true) {
            {
                {
                    var __tmp__ = @:check2r _b.readString((10 : stdgo.GoUInt8));
                    _l = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt64>), _2 : _err };
                            _nextl = __tmp__._0;
                            _addrs = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                    if (_l == (stdgo.Go.str())) {
                        break;
                    };
                };
            };
            {
                _l = stdgo._internal.strings.Strings_trimSpace.trimSpace(_l?.__copy__())?.__copy__();
                if (_l == (stdgo.Go.str())) {
                    continue;
                };
            };
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_l?.__copy__(), ("---" : stdgo.GoString))) {
                break;
            };
            if (stdgo._internal.strings.Strings_contains.contains(_l?.__copy__(), ("same as previous thread" : stdgo.GoString))) {
                _sameAsPrevious = true;
                continue;
            };
            _addrs = (_addrs.__append__(...(stdgo._internal.internal.profile.Profile__parseHexAddresses._parseHexAddresses(_l?.__copy__()) : Array<stdgo.GoUInt64>)));
        };
        if (_sameAsPrevious) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } = { _0 : _l?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt64>), _2 : (null : stdgo.Error) };
                _nextl = __tmp__._0;
                _addrs = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } = { _0 : _l?.__copy__(), _1 : _addrs, _2 : (null : stdgo.Error) };
            _nextl = __tmp__._0;
            _addrs = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
