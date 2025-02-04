package stdgo._internal.io;
function multiWriter(_writers:haxe.Rest<stdgo._internal.io.Io_writer.Writer>):stdgo._internal.io.Io_writer.Writer {
        var _writers = new stdgo.Slice<stdgo._internal.io.Io_writer.Writer>(_writers.length, 0, ..._writers);
        var _allWriters = (new stdgo.Slice<stdgo._internal.io.Io_writer.Writer>((0 : stdgo.GoInt).toBasic(), (_writers.length)) : stdgo.Slice<stdgo._internal.io.Io_writer.Writer>);
        for (__3 => _w in _writers) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo.Ref<stdgo._internal.io.Io_t_multiwriter.T_multiWriter>)) : stdgo.Ref<stdgo._internal.io.Io_t_multiwriter.T_multiWriter>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_t_multiwriter.T_multiWriter>), _1 : false };
                }, _mw = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _allWriters = (_allWriters.__append__(...((@:checkr _mw ?? throw "null pointer dereference")._writers : Array<stdgo._internal.io.Io_writer.Writer>)));
                } else {
                    _allWriters = (_allWriters.__append__(_w));
                };
            };
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io_t_multiwriter.T_multiWriter(_allWriters) : stdgo._internal.io.Io_t_multiwriter.T_multiWriter)) : stdgo.Ref<stdgo._internal.io.Io_t_multiwriter.T_multiWriter>));
    }
