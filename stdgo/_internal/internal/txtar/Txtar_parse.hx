package stdgo._internal.internal.txtar;
function parse(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.internal.txtar.Txtar_Archive.Archive> {
        var _a = (stdgo.Go.setRef(({} : stdgo._internal.internal.txtar.Txtar_Archive.Archive)) : stdgo.Ref<stdgo._internal.internal.txtar.Txtar_Archive.Archive>);
        var _name:stdgo.GoString = ("" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.internal.txtar.Txtar__findFileMarker._findFileMarker(_data);
            (@:checkr _a ?? throw "null pointer dereference").comment = @:tmpset0 __tmp__._0;
            _name = @:tmpset0 __tmp__._1?.__copy__();
            _data = @:tmpset0 __tmp__._2;
        };
        while (_name != (stdgo.Go.str())) {
            var _f = (new stdgo._internal.internal.txtar.Txtar_File.File(_name?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.internal.txtar.Txtar_File.File);
            {
                var __tmp__ = stdgo._internal.internal.txtar.Txtar__findFileMarker._findFileMarker(_data);
                _f.data = @:tmpset0 __tmp__._0;
                _name = @:tmpset0 __tmp__._1?.__copy__();
                _data = @:tmpset0 __tmp__._2;
            };
            (@:checkr _a ?? throw "null pointer dereference").files = ((@:checkr _a ?? throw "null pointer dereference").files.__append__(_f?.__copy__()));
        };
        return _a;
    }
