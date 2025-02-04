package stdgo._internal.os.user;
function _listGroupsFromReader(_u:stdgo.Ref<stdgo._internal.os.user.User_user.User>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        if ((@:checkr _u ?? throw "null pointer dereference").username == ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.errors.Errors_new_.new_(("user: list groups: empty username" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((@:checkr _u ?? throw "null pointer dereference").gid?.__copy__()), _primaryGid:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("user: list groups for %s: invalid gid %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _u ?? throw "null pointer dereference").username), stdgo.Go.toInterface((@:checkr _u ?? throw "null pointer dereference").gid)) };
        };
        var _userCommas = (((("," : stdgo.GoString) + (@:checkr _u ?? throw "null pointer dereference").username?.__copy__() : stdgo.GoString) + ("," : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _userFirst = (_userCommas.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _userLast = (_userCommas.__slice__(0, ((_userCommas.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _userOnly = (_userCommas.__slice__((1 : stdgo.GoInt), ((_userCommas.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _groups = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(@:checkr _u ?? throw "null pointer dereference").gid?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _rd = stdgo._internal.bufio.Bufio_newreader.newReader(_r);
        var _done = (false : Bool);
        while (!_done) {
            var __tmp__ = @:check2r _rd.readBytes((10 : stdgo.GoUInt8)), _line:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    _done = true;
                } else {
                    return { _0 : _groups, _1 : _err };
                };
            };
            _line = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_line);
            if (((((_line.length) == ((0 : stdgo.GoInt)) || _line[(0 : stdgo.GoInt)] == ((35 : stdgo.GoUInt8)) : Bool) || _line[(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8)) : Bool) || (_line[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                continue;
            };
            var _listIdx = (stdgo._internal.bytes.Bytes_lastindexbyte.lastIndexByte(_line, (58 : stdgo.GoUInt8)) : stdgo.GoInt);
            if (((_listIdx == (-1 : stdgo.GoInt)) || (_listIdx == ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                continue;
            };
            if (stdgo._internal.bytes.Bytes_count.count((_line.__slice__(0, _listIdx) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.os.user.User__colon._colon) != ((2 : stdgo.GoInt))) {
                continue;
            };
            var _list = (_line.__slice__((_listIdx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (!((((stdgo._internal.bytes.Bytes_equal.equal(_list, _userOnly) || stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_list, _userFirst) : Bool) || stdgo._internal.bytes.Bytes_hassuffix.hasSuffix(_list, _userLast) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_list, _userCommas) : Bool))) {
                continue;
            };
            var _parts = stdgo._internal.bytes.Bytes_split.split((_line.__slice__(0, _listIdx) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.os.user.User__colon._colon);
            if (((_parts.length != (3 : stdgo.GoInt)) || (_parts[(0 : stdgo.GoInt)].length == (0 : stdgo.GoInt)) : Bool)) {
                continue;
            };
            var _gid = ((_parts[(2 : stdgo.GoInt)] : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_gid?.__copy__()), _numGid:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_numGid == _primaryGid) : Bool)) {
                continue;
            };
            _groups = (_groups.__append__(_gid?.__copy__()));
        };
        return { _0 : _groups, _1 : (null : stdgo.Error) };
    }
