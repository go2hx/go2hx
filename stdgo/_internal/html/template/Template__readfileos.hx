package stdgo._internal.html.template;
function _readFileOS(_file:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _name = ("" : stdgo.GoString), _b = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        _name = stdgo._internal.path.filepath.Filepath_base.base(_file?.__copy__())?.__copy__();
        {
            var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_file?.__copy__());
            _b = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        return { _0 : _name, _1 : _b, _2 : _err };
    }
