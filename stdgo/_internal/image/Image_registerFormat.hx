package stdgo._internal.image;
function registerFormat(_name:stdgo.GoString, _magic:stdgo.GoString, _decode:stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; }, _decodeConfig:stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Config.Config; var _1 : stdgo.Error; }):Void {
        stdgo._internal.image.Image__formatsMu._formatsMu.lock();
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo._internal.image.Image__atomicFormats._atomicFormats.load() : stdgo.Slice<stdgo._internal.image.Image_T_format.T_format>)) : stdgo.Slice<stdgo._internal.image.Image_T_format.T_format>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Slice<stdgo._internal.image.Image_T_format.T_format>), _1 : false };
        }, _formats = __tmp__._0, __0 = __tmp__._1;
        stdgo._internal.image.Image__atomicFormats._atomicFormats.store(stdgo.Go.toInterface((_formats.__append__((new stdgo._internal.image.Image_T_format.T_format(_name?.__copy__(), _magic?.__copy__(), _decode, _decodeConfig) : stdgo._internal.image.Image_T_format.T_format)))));
        stdgo._internal.image.Image__formatsMu._formatsMu.unlock();
    }
