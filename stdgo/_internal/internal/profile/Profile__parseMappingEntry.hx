package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import _internal.internal.lazyregexp.Lazyregexp;
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
function _parseMappingEntry(_l:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>; var _1 : stdgo.Error; } {
        var _mapping = (stdgo.Go.setRef((new stdgo._internal.internal.profile.Profile_Mapping.Mapping() : stdgo._internal.internal.profile.Profile_Mapping.Mapping)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Mapping.Mapping>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var _me = @:check2r stdgo._internal.internal.profile.Profile__procMapsRE._procMapsRE.findStringSubmatch(_l?.__copy__());
            if ((_me.length) == ((9 : stdgo.GoInt))) {
                if (!stdgo._internal.strings.Strings_contains.contains(_me[(3 : stdgo.GoInt)]?.__copy__(), ("x" : stdgo.GoString))) {
                    return { _0 : null, _1 : (null : stdgo.Error) };
                };
                {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_me[(1 : stdgo.GoInt)]?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt));
                        (@:checkr _mapping ?? throw "null pointer dereference").start = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                    };
                };
                {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_me[(2 : stdgo.GoInt)]?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt));
                        (@:checkr _mapping ?? throw "null pointer dereference").limit = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                    };
                };
                if (_me[(4 : stdgo.GoInt)] != (stdgo.Go.str())) {
                    {
                        {
                            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_me[(4 : stdgo.GoInt)]?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt));
                            (@:checkr _mapping ?? throw "null pointer dereference").offset = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                        };
                    };
                };
                (@:checkr _mapping ?? throw "null pointer dereference").file = _me[(8 : stdgo.GoInt)]?.__copy__();
                return { _0 : _mapping, _1 : (null : stdgo.Error) };
            };
        };
        {
            var _me = @:check2r stdgo._internal.internal.profile.Profile__briefMapsRE._briefMapsRE.findStringSubmatch(_l?.__copy__());
            if ((_me.length) == ((6 : stdgo.GoInt))) {
                {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_me[(1 : stdgo.GoInt)]?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt));
                        (@:checkr _mapping ?? throw "null pointer dereference").start = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                    };
                };
                {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_me[(2 : stdgo.GoInt)]?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt));
                        (@:checkr _mapping ?? throw "null pointer dereference").limit = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                    };
                };
                (@:checkr _mapping ?? throw "null pointer dereference").file = _me[(3 : stdgo.GoInt)]?.__copy__();
                if (_me[(5 : stdgo.GoInt)] != (stdgo.Go.str())) {
                    {
                        {
                            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_me[(5 : stdgo.GoInt)]?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt));
                            (@:checkr _mapping ?? throw "null pointer dereference").offset = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                        };
                    };
                };
                return { _0 : _mapping, _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
    }
