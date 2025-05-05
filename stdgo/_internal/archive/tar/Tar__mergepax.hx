package stdgo._internal.archive.tar;
function _mergePAX(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>, _paxHdrs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.Error {
        var _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L262"
        for (_k => _v in _paxHdrs) {
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L263"
            if (_v == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L264"
                continue;
            };
            var _id64:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L267"
            {
                final __value__ = _k;
                if (__value__ == (("path" : stdgo.GoString))) {
                    (@:checkr _hdr ?? throw "null pointer dereference").name = _v?.__copy__();
                } else if (__value__ == (("linkpath" : stdgo.GoString))) {
                    (@:checkr _hdr ?? throw "null pointer dereference").linkname = _v?.__copy__();
                } else if (__value__ == (("uname" : stdgo.GoString))) {
                    (@:checkr _hdr ?? throw "null pointer dereference").uname = _v?.__copy__();
                } else if (__value__ == (("gname" : stdgo.GoString))) {
                    (@:checkr _hdr ?? throw "null pointer dereference").gname = _v?.__copy__();
                } else if (__value__ == (("uid" : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_v?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                        _id64 = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    (@:checkr _hdr ?? throw "null pointer dereference").uid = (_id64 : stdgo.GoInt);
                } else if (__value__ == (("gid" : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_v?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                        _id64 = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    (@:checkr _hdr ?? throw "null pointer dereference").gid = (_id64 : stdgo.GoInt);
                } else if (__value__ == (("atime" : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.archive.tar.Tar__parsepaxtime._parsePAXTime(_v?.__copy__());
                        (@:checkr _hdr ?? throw "null pointer dereference").accessTime = @:tmpset0 __tmp__._0?.__copy__();
                        _err = @:tmpset0 __tmp__._1;
                    };
                } else if (__value__ == (("mtime" : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.archive.tar.Tar__parsepaxtime._parsePAXTime(_v?.__copy__());
                        (@:checkr _hdr ?? throw "null pointer dereference").modTime = @:tmpset0 __tmp__._0?.__copy__();
                        _err = @:tmpset0 __tmp__._1;
                    };
                } else if (__value__ == (("ctime" : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.archive.tar.Tar__parsepaxtime._parsePAXTime(_v?.__copy__());
                        (@:checkr _hdr ?? throw "null pointer dereference").changeTime = @:tmpset0 __tmp__._0?.__copy__();
                        _err = @:tmpset0 __tmp__._1;
                    };
                } else if (__value__ == (("size" : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_v?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                        (@:checkr _hdr ?? throw "null pointer dereference").size = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L291"
                    if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_k?.__copy__(), ("SCHILY.xattr." : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L292"
                        if ((@:checkr _hdr ?? throw "null pointer dereference").xattrs == null) {
                            (@:checkr _hdr ?? throw "null pointer dereference").xattrs = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                        };
                        (@:checkr _hdr ?? throw "null pointer dereference").xattrs[(_k.__slice__(((("SCHILY.xattr." : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)] = _v?.__copy__();
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L298"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L299"
                return _err = stdgo._internal.archive.tar.Tar_errheader.errHeader;
            };
        };
        (@:checkr _hdr ?? throw "null pointer dereference").pAXRecords = _paxHdrs;
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/reader.go#L303"
        return _err = (null : stdgo.Error);
    }
