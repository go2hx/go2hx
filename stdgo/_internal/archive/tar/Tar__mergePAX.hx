package stdgo._internal.archive.tar;
function _mergePAX(_hdr:stdgo.Ref<stdgo._internal.archive.tar.Tar_Header.Header>, _paxHdrs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.Error {
        var _err = (null : stdgo.Error);
        for (_k => _v in _paxHdrs) {
            if (_v == (stdgo.Go.str())) {
                continue;
            };
            var _id64:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            {
                final __value__ = _k;
                if (__value__ == (("path" : stdgo.GoString))) {
                    _hdr.name = _v?.__copy__();
                } else if (__value__ == (("linkpath" : stdgo.GoString))) {
                    _hdr.linkname = _v?.__copy__();
                } else if (__value__ == (("uname" : stdgo.GoString))) {
                    _hdr.uname = _v?.__copy__();
                } else if (__value__ == (("gname" : stdgo.GoString))) {
                    _hdr.gname = _v?.__copy__();
                } else if (__value__ == (("uid" : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_v?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                        _id64 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _hdr.uid = (_id64 : stdgo.GoInt);
                } else if (__value__ == (("gid" : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_v?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                        _id64 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _hdr.gid = (_id64 : stdgo.GoInt);
                } else if (__value__ == (("atime" : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.archive.tar.Tar__parsePAXTime._parsePAXTime(_v?.__copy__());
                        _hdr.accessTime = __tmp__._0?.__copy__();
                        _err = __tmp__._1;
                    };
                } else if (__value__ == (("mtime" : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.archive.tar.Tar__parsePAXTime._parsePAXTime(_v?.__copy__());
                        _hdr.modTime = __tmp__._0?.__copy__();
                        _err = __tmp__._1;
                    };
                } else if (__value__ == (("ctime" : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.archive.tar.Tar__parsePAXTime._parsePAXTime(_v?.__copy__());
                        _hdr.changeTime = __tmp__._0?.__copy__();
                        _err = __tmp__._1;
                    };
                } else if (__value__ == (("size" : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_v?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                        _hdr.size = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_k?.__copy__(), ("SCHILY.xattr." : stdgo.GoString))) {
                        if (_hdr.xattrs == null) {
                            _hdr.xattrs = ({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                        };
                        _hdr.xattrs[(_k.__slice__((("SCHILY.xattr." : stdgo.GoString).length)) : stdgo.GoString)] = _v?.__copy__();
                    };
                };
            };
            if (_err != null) {
                return stdgo._internal.archive.tar.Tar_errHeader.errHeader;
            };
        };
        _hdr.paxrecords = _paxHdrs;
        return (null : stdgo.Error);
    }
