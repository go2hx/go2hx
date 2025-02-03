package stdgo.archive.tar;
class T_block_static_extension {
    static public function _reset(_b:T_block):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>);
        stdgo._internal.archive.tar.Tar_T_block_static_extension.T_block_static_extension._reset(_b);
    }
    static public function _computeChecksum(_b:T_block):stdgo.Tuple<haxe.Int64, haxe.Int64> {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>);
        return {
            final obj = stdgo._internal.archive.tar.Tar_T_block_static_extension.T_block_static_extension._computeChecksum(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _setFormat(_b:T_block, _format:Format):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>);
        stdgo._internal.archive.tar.Tar_T_block_static_extension.T_block_static_extension._setFormat(_b, _format);
    }
    static public function _getFormat(_b:T_block):Format {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>);
        return stdgo._internal.archive.tar.Tar_T_block_static_extension.T_block_static_extension._getFormat(_b);
    }
    static public function _toSparse(_b:T_block):T_sparseArray {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>);
        return stdgo._internal.archive.tar.Tar_T_block_static_extension.T_block_static_extension._toSparse(_b);
    }
    static public function _toUSTAR(_b:T_block):T_headerUSTAR {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>);
        return stdgo._internal.archive.tar.Tar_T_block_static_extension.T_block_static_extension._toUSTAR(_b);
    }
    static public function _toSTAR(_b:T_block):T_headerSTAR {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>);
        return stdgo._internal.archive.tar.Tar_T_block_static_extension.T_block_static_extension._toSTAR(_b);
    }
    static public function _toGNU(_b:T_block):T_headerGNU {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>);
        return stdgo._internal.archive.tar.Tar_T_block_static_extension.T_block_static_extension._toGNU(_b);
    }
    static public function _toV7(_b:T_block):T_headerV7 {
        final _b = (_b : stdgo.Ref<stdgo._internal.archive.tar.Tar_T_block.T_block>);
        return stdgo._internal.archive.tar.Tar_T_block_static_extension.T_block_static_extension._toV7(_b);
    }
}
