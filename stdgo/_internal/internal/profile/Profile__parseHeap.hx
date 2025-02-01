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
function _parseHeap(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _p = (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>), _err = (null : stdgo.Error);
        var _r = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_b);
        var __tmp__ = @:check2r _r.readString((10 : stdgo.GoUInt8)), _l:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                _p = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _sampling = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        {
            var _header = @:check2r stdgo._internal.internal.profile.Profile__heapHeaderRE._heapHeaderRE.findStringSubmatch(_l?.__copy__());
            if (_header != null) {
                _p = (stdgo.Go.setRef(({ sampleType : (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>>(2, 2, ...[({ type : ("objects" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_), ({ type : ("space" : stdgo.GoString), unit : ("bytes" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>>), periodType : (stdgo.Go.setRef(({ type : ("objects" : stdgo.GoString), unit : ("bytes" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>) } : stdgo._internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
                var _period:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                if (((_header[(6 : stdgo.GoInt)].length) > (0 : stdgo.GoInt) : Bool)) {
                    {
                        {
                            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_header[(6 : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                            _period = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err != null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                                _p = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                };
                {
                    final __value__ = _header[(5 : stdgo.GoInt)];
                    if (__value__ == (("heapz_v2" : stdgo.GoString)) || __value__ == (("heap_v2" : stdgo.GoString))) {
                        {
                            final __tmp__0 = ("v2" : stdgo.GoString);
                            final __tmp__1 = _period;
                            _sampling = __tmp__0;
                            (@:checkr _p ?? throw "null pointer dereference").period = __tmp__1;
                        };
                    } else if (__value__ == (("heapprofile" : stdgo.GoString))) {
                        {
                            final __tmp__0 = stdgo.Go.str()?.__copy__();
                            final __tmp__1 = (1i64 : stdgo.GoInt64);
                            _sampling = __tmp__0;
                            (@:checkr _p ?? throw "null pointer dereference").period = __tmp__1;
                        };
                    } else if (__value__ == (("heap" : stdgo.GoString))) {
                        {
                            final __tmp__0 = ("v2" : stdgo.GoString);
                            final __tmp__1 = (_period / (2i64 : stdgo.GoInt64) : stdgo.GoInt64);
                            _sampling = __tmp__0;
                            (@:checkr _p ?? throw "null pointer dereference").period = __tmp__1;
                        };
                    } else {
                        return {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                            _p = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            } else {
                _header = @:check2r stdgo._internal.internal.profile.Profile__growthHeaderRE._growthHeaderRE.findStringSubmatch(_l?.__copy__());
                if (_header != null) {
                    _p = (stdgo.Go.setRef(({ sampleType : (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>>(2, 2, ...[({ type : ("objects" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_), ({ type : ("space" : stdgo.GoString), unit : ("bytes" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>>), periodType : (stdgo.Go.setRef(({ type : ("heapgrowth" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>), period : (1i64 : stdgo.GoInt64) } : stdgo._internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
                } else {
                    _header = @:check2r stdgo._internal.internal.profile.Profile__fragmentationHeaderRE._fragmentationHeaderRE.findStringSubmatch(_l?.__copy__());
                    if (_header != null) {
                        _p = (stdgo.Go.setRef(({ sampleType : (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>>(2, 2, ...[({ type : ("objects" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_), ({ type : ("space" : stdgo.GoString), unit : ("bytes" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>>), periodType : (stdgo.Go.setRef(({ type : ("allocations" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>), period : (1i64 : stdgo.GoInt64) } : stdgo._internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
                    } else {
                        return {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                            _p = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
        };
        if (stdgo._internal.internal.profile.Profile_legacyHeapAllocated.legacyHeapAllocated) {
            for (__0 => _st in (@:checkr _p ?? throw "null pointer dereference").sampleType) {
                (@:checkr _st ?? throw "null pointer dereference").type = (("alloc_" : stdgo.GoString) + (@:checkr _st ?? throw "null pointer dereference").type?.__copy__() : stdgo.GoString)?.__copy__();
            };
        } else {
            for (__0 => _st in (@:checkr _p ?? throw "null pointer dereference").sampleType) {
                (@:checkr _st ?? throw "null pointer dereference").type = (("inuse_" : stdgo.GoString) + (@:checkr _st ?? throw "null pointer dereference").type?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        var _locs = (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>);
        while (true) {
            {
                var __tmp__ = @:check2r _r.readString((10 : stdgo.GoUInt8));
                _l = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        _p = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                if (_l == (stdgo.Go.str())) {
                    break;
                };
            };
            if (stdgo._internal.internal.profile.Profile__isSpaceOrComment._isSpaceOrComment(_l?.__copy__())) {
                continue;
            };
            _l = stdgo._internal.strings.Strings_trimSpace.trimSpace(_l?.__copy__())?.__copy__();
            if (stdgo._internal.internal.profile.Profile__sectionTrigger._sectionTrigger(_l?.__copy__()) != ((0 : stdgo._internal.internal.profile.Profile_T_sectionType.T_sectionType))) {
                break;
            };
            var __tmp__ = stdgo._internal.internal.profile.Profile__parseHeapSample._parseHeapSample(_l?.__copy__(), (@:checkr _p ?? throw "null pointer dereference").period, _sampling?.__copy__()), _value:stdgo.Slice<stdgo.GoInt64> = __tmp__._0, _blocksize:stdgo.GoInt64 = __tmp__._1, _addrs:stdgo.Slice<stdgo.GoUInt64> = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    _p = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _sloc:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>);
            for (__0 => _addr in _addrs) {
                _addr--;
                var _loc = (_locs[_addr] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>));
                if (((_locs[_addr] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>)) == null || (_locs[_addr] ?? (null : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>) : Dynamic).__nil__)) {
                    _loc = (stdgo.Go.setRef(({ address : _addr } : stdgo._internal.internal.profile.Profile_Location.Location)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
                    (@:checkr _p ?? throw "null pointer dereference").location = ((@:checkr _p ?? throw "null pointer dereference").location.__append__(_loc));
                    _locs[_addr] = _loc;
                };
                _sloc = (_sloc.__append__(_loc));
            };
            (@:checkr _p ?? throw "null pointer dereference").sample = ((@:checkr _p ?? throw "null pointer dereference").sample.__append__((stdgo.Go.setRef(({ value : _value, location : _sloc, numLabel : ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoInt64>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoInt64>);
                x.set(("bytes" : stdgo.GoString), (new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[_blocksize]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>));
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt64>>) } : stdgo._internal.internal.profile.Profile_Sample.Sample)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>)));
        };
        {
            _err = stdgo._internal.internal.profile.Profile__parseAdditionalSections._parseAdditionalSections(_l?.__copy__(), _r, _p);
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    _p = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } = { _0 : _p, _1 : (null : stdgo.Error) };
            _p = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
