package stdgo._internal.net.http;
function _dirList(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _f:stdgo._internal.net.http.Http_File.File):Void {
        var _dirs:stdgo._internal.net.http.Http_T_anyDirs.T_anyDirs = (null : stdgo._internal.net.http.Http_T_anyDirs.T_anyDirs);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f) : stdgo._internal.io.fs.Fs_ReadDirFile.ReadDirFile)) : stdgo._internal.io.fs.Fs_ReadDirFile.ReadDirFile), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.fs.Fs_ReadDirFile.ReadDirFile), _1 : false };
            }, _d = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _list:stdgo._internal.net.http.Http_T_dirEntryDirs.T_dirEntryDirs = new stdgo._internal.net.http.Http_T_dirEntryDirs.T_dirEntryDirs(0, 0);
                {
                    var __tmp__ = _d.readDir((-1 : stdgo.GoInt));
                    _list = __tmp__._0;
                    _err = __tmp__._1;
                };
                _dirs = stdgo.Go.asInterface(_list);
            } else {
                var _list:stdgo._internal.net.http.Http_T_fileInfoDirs.T_fileInfoDirs = new stdgo._internal.net.http.Http_T_fileInfoDirs.T_fileInfoDirs(0, 0);
                {
                    var __tmp__ = _f.readdir((-1 : stdgo.GoInt));
                    _list = __tmp__._0;
                    _err = __tmp__._1;
                };
                _dirs = stdgo.Go.asInterface(_list);
            };
        };
        if (_err != null) {
            stdgo._internal.net.http.Http__logf._logf(_r, ("http: error reading directory: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            stdgo._internal.net.http.Http_error.error(_w, ("Error reading directory" : stdgo.GoString), (500 : stdgo.GoInt));
            return;
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_dirs), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_dirs._name(_i) < _dirs._name(_j) : Bool);
        });
        _w.header().set(("Content-Type" : stdgo.GoString), ("text/html; charset=utf-8" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("<pre>\n" : stdgo.GoString));
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_dirs._len() : stdgo.GoInt);
var _n = __1, _i = __0;
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _name = (_dirs._name(_i)?.__copy__() : stdgo.GoString);
                if (_dirs._isDir(_i)) {
                    _name = (_name + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                var _url = ({ path : _name?.__copy__() } : stdgo._internal.net.url.Url_URL.URL);
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("<a href=\"%s\">%s</a>\n" : stdgo.GoString), stdgo.Go.toInterface((_url.string() : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.net.http.Http__htmlReplacer._htmlReplacer.replace(_name?.__copy__())));
            });
        };
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("</pre>\n" : stdgo.GoString));
    }
