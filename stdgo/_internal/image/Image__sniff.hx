package stdgo._internal.image;
function _sniff(_r:stdgo._internal.image.Image_t_reader.T_reader):stdgo._internal.image.Image_t_format.T_format {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo._internal.image.Image__atomicformats._atomicFormats.load() : stdgo.Slice<stdgo._internal.image.Image_t_format.T_format>)) : stdgo.Slice<stdgo._internal.image.Image_t_format.T_format>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo._internal.image.Image_t_format.T_format>), _1 : false };
        }, _formats = __tmp__._0, __0 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/image/format.go#L74"
        for (__1 => _f in _formats) {
            var __tmp__ = _r.peek((_f._magic.length)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/image/format.go#L76"
            if (((_err == null) && stdgo._internal.image.Image__match._match(_f._magic?.__copy__(), _b) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/format.go#L77"
                return _f?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/format.go#L80"
        return (new stdgo._internal.image.Image_t_format.T_format() : stdgo._internal.image.Image_t_format.T_format);
    }
