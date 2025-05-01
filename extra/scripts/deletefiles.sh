#!/bin/bash

# List of files to delete
files=(
stdgo/_internal/archive/zip/Zip__readdirectoryheader.hx
        stdgo/_internal/bytes/Bytes_equalfold.hx
        stdgo/_internal/compress/flate/Flate_t_compressor_static_extension.hx
        stdgo/_internal/compress/flate/Flate_t_decompressor_static_extension.hx
        stdgo/_internal/compress/flate/Flate_t_deflatefast_static_extension.hx
        stdgo/_internal/compress/lzw/Lzw_reader_static_extension.hx
        stdgo/_internal/compress/lzw/Lzw_writer_static_extension.hx
        stdgo/_internal/crypto/aes/Aes_testexpandkey.hx
        stdgo/_internal/crypto/dsa/Dsa_generateparameters.hx
        stdgo/_internal/crypto/rsa/Rsa_generatemultiprimekey.hx
        stdgo/_internal/crypto/x509/X509__checkchainforkeyusage.hx
        stdgo/_internal/crypto/x509/X509__parserfc2821mailbox.hx
        stdgo/_internal/database/sql/Sql__driverargsconnlocked.hx
        stdgo/_internal/debug/dwarf/Dwarf_data_static_extension.hx
        stdgo/_internal/debug/dwarf/Dwarf_linereader_static_extension.hx
        stdgo/_internal/debug/gosym/Gosym_newtable.hx
        stdgo/_internal/debug/gosym/Gosym_obj_static_extension.hx
        stdgo/_internal/encoding/csv/Csv_reader_static_extension.hx
        stdgo/_internal/encoding/json/Json_decoder_static_extension.hx
        stdgo/_internal/encoding/json/Json_t_decodestate_static_extension.hx
        stdgo/_internal/encoding/json/Json_t_structencoder_static_extension.hx
        stdgo/_internal/encoding/xml/Xml__addfieldinfo.hx
        stdgo/_internal/encoding/xml/Xml_decoder_static_extension.hx
        stdgo/_internal/fmt/Fmt_t_pp_static_extension.hx
        stdgo/_internal/image/draw/Draw_testdraw.hx
        stdgo/_internal/image/draw/Draw_testdrawoverlap.hx
        stdgo/_internal/image/draw/Draw_testpaletted.hx
        stdgo/_internal/image/jpeg/Jpeg_t_decoder_static_extension.hx
        stdgo/_internal/index/suffixarray/Suffixarray__assignid_32.hx
        stdgo/_internal/index/suffixarray/Suffixarray__assignid_64.hx
        stdgo/_internal/index/suffixarray/Suffixarray__assignid_8_32.hx
        stdgo/_internal/index/suffixarray/Suffixarray__assignid_8_64.hx
        stdgo/_internal/internal/cpu/Cpu__processoptions.hx
        stdgo/_internal/internal/xcoff/Xcoff_newfile.hx
        stdgo/_internal/internal/zstd/Zstd_reader_static_extension.hx
        stdgo/_internal/math/Math_gamma.hx
        stdgo/_internal/math/big/Big_t_nat_static_extension.hx
        stdgo/_internal/math/rand/Rand_rand_static_extension.hx
        stdgo/_internal/net/mail/Mail_t_addrparser_static_extension.hx
        stdgo/_internal/path/Path__scanchunk.hx
        stdgo/_internal/path/Path_match.hx
        stdgo/_internal/path/filepath/Filepath__scanchunk.hx
        stdgo/_internal/path/filepath/Filepath_match.hx
        stdgo/_internal/regexp/Regexp__testfowler.hx
        stdgo/_internal/regexp/Regexp_regexp_static_extension.hx
        stdgo/_internal/regexp/Regexp_t_machine_static_extension.hx
        stdgo/_internal/regexp/syntax/Syntax__parse.hx
        stdgo/_internal/regexp/syntax/Syntax_prog_static_extension.hx
        stdgo/_internal/regexp/syntax/Syntax_t_parser_static_extension.hx
        stdgo/_internal/runtime/pprof/Pprof_t_profmap_static_extension.hx
        stdgo/_internal/strconv/Strconv__readfloat.hx
        stdgo/_internal/strconv/Strconv_t_decimal_static_extension.hx
        stdgo/_internal/strings/Strings_equalfold.hx
        stdgo/_internal/testing/Testing_b_static_extension.hx
        stdgo/_internal/testing/Testing_m_static_extension.hx
        stdgo/_internal/text/scanner/Scanner_scanner_static_extension.hx
        stdgo/_internal/text/template/parse/Parse_tree_static_extension.hx
)

for file in "${files[@]}"; do
    if [ -e "$file" ]; then
        rm "$file"
        echo "Deleted: $file"
    else
        echo "File not found: $file"
    fi
done