package stdgo._internal.io.fs;
@:interface typedef ReadFileFS = stdgo.StructType & {
    @:interfacetypeffun
    function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    function open(_0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
};
