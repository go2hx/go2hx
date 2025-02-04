package stdgo._internal.crypto.x509;
function _loadSystemRoots():{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>; var _1 : stdgo.Error; } {
        var _roots = stdgo._internal.crypto.x509.X509_newcertpool.newCertPool();
        var _files = stdgo._internal.crypto.x509.X509__certfiles._certFiles;
        {
            var _f = (stdgo._internal.os.Os_getenv.getenv(("SSL_CERT_FILE" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_f != ((stdgo.Go.str() : stdgo.GoString))) {
                _files = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_f?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
        };
        var _firstErr:stdgo.Error = (null : stdgo.Error);
        for (__1 => _file in _files) {
            var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_file?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _roots.appendCertsFromPEM(_data);
                break;
            };
            if (((_firstErr == null) && !stdgo._internal.os.Os_isnotexist.isNotExist(_err) : Bool)) {
                _firstErr = _err;
            };
        };
        var _dirs = stdgo._internal.crypto.x509.X509__certdirectories._certDirectories;
        {
            var _d = (stdgo._internal.os.Os_getenv.getenv(("SSL_CERT_DIR" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_d != ((stdgo.Go.str() : stdgo.GoString))) {
                _dirs = stdgo._internal.strings.Strings_split.split(_d?.__copy__(), (":" : stdgo.GoString));
            };
        };
        for (__2 => _directory in _dirs) {
            var __tmp__ = stdgo._internal.crypto.x509.X509__readuniquedirectoryentries._readUniqueDirectoryEntries(_directory?.__copy__()), _fis:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (((_firstErr == null) && !stdgo._internal.os.Os_isnotexist.isNotExist(_err) : Bool)) {
                    _firstErr = _err;
                };
                continue;
            };
            for (__3 => _fi in _fis) {
                var __tmp__ = stdgo._internal.os.Os_readfile.readFile(((_directory + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _fi.name()?.__copy__() : stdgo.GoString)?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    @:check2r _roots.appendCertsFromPEM(_data);
                };
            };
        };
        if (((@:check2r _roots._len() > (0 : stdgo.GoInt) : Bool) || (_firstErr == null) : Bool)) {
            return { _0 : _roots, _1 : (null : stdgo.Error) };
        };
        return { _0 : null, _1 : _firstErr };
    }
