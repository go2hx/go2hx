package stdgo._internal.encoding.gob;
var _encBufferPool : stdgo._internal.sync.Sync_pool.Pool = ({ new_ : function():stdgo.AnyInterface {
        var _e = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        (@:checkr _e ?? throw "null pointer dereference")._data = ((@:checkr _e ?? throw "null pointer dereference")._scratch.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_e));
    } } : stdgo._internal.sync.Sync_pool.Pool);
