package stdgo._internal.io;
function multiWriter(_writers:haxe.Rest<stdgo._internal.io.Io_Writer.Writer>):stdgo._internal.io.Io_Writer.Writer {
        var _writers = new stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>(_writers.length, 0, ..._writers);
        var _allWriters = (new stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>((0 : stdgo.GoInt).toBasic(), (_writers.length)) : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>);
        for (__3 => _w in _writers) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo.Ref<stdgo._internal.io.Io_T_multiWriter.T_multiWriter>)) : stdgo.Ref<stdgo._internal.io.Io_T_multiWriter.T_multiWriter>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_T_multiWriter.T_multiWriter>), _1 : false };
                }, _mw = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _allWriters = (_allWriters.__append__(...(_mw._writers : Array<stdgo._internal.io.Io_Writer.Writer>)));
                } else {
                    _allWriters = (_allWriters.__append__(_w));
                };
            };
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io_T_multiWriter.T_multiWriter(_allWriters) : stdgo._internal.io.Io_T_multiWriter.T_multiWriter)) : stdgo.Ref<stdgo._internal.io.Io_T_multiWriter.T_multiWriter>));
    }
