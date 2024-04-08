package stdgo.unicode;
/**
    // Package unicode provides data and functions to test some properties of
    // Unicode code points.
**/
private var __go2hxdoc__package : Bool;
final maxRune : Int = stdgo._internal.unicode.Unicode.maxRune;
final replacementChar : Int = stdgo._internal.unicode.Unicode.replacementChar;
final maxASCII : Int = stdgo._internal.unicode.Unicode.maxASCII;
final maxLatin1 : Int = stdgo._internal.unicode.Unicode.maxLatin1;
final upperCase : haxe.UInt64 = stdgo._internal.unicode.Unicode.upperCase;
final lowerCase = stdgo._internal.unicode.Unicode.lowerCase;
final titleCase = stdgo._internal.unicode.Unicode.titleCase;
final maxCase = stdgo._internal.unicode.Unicode.maxCase;
final upperLower : Int = stdgo._internal.unicode.Unicode.upperLower;
final version : String = stdgo._internal.unicode.Unicode.version;
var turkishCase(get, set) : stdgo._internal.unicode.Unicode.SpecialCase;
function get_turkishCase():stdgo._internal.unicode.Unicode.SpecialCase return stdgo._internal.unicode.Unicode.turkishCase;
function set_turkishCase(v:stdgo._internal.unicode.Unicode.SpecialCase):stdgo._internal.unicode.Unicode.SpecialCase return stdgo._internal.unicode.Unicode.turkishCase = v;
var azeriCase(get, set) : stdgo._internal.unicode.Unicode.SpecialCase;
function get_azeriCase():stdgo._internal.unicode.Unicode.SpecialCase return stdgo._internal.unicode.Unicode.azeriCase;
function set_azeriCase(v:stdgo._internal.unicode.Unicode.SpecialCase):stdgo._internal.unicode.Unicode.SpecialCase return stdgo._internal.unicode.Unicode.azeriCase = v;
var cc(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_cc():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cc;
function set_cc(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cc = v;
var cf(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_cf():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cf;
function set_cf(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cf = v;
var co(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_co():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.co;
function set_co(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.co = v;
var cs(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_cs():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cs;
function set_cs(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cs = v;
var digit(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_digit():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.digit;
function set_digit(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.digit = v;
var nd(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_nd():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nd;
function set_nd(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nd = v;
var letter(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_letter():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.letter;
function set_letter(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.letter = v;
var l(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_l():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.l;
function set_l(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.l = v;
var lm(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_lm():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lm;
function set_lm(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lm = v;
var lo(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_lo():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lo;
function set_lo(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lo = v;
var lower(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_lower():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lower;
function set_lower(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lower = v;
var ll(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_ll():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ll;
function set_ll(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ll = v;
var mark(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_mark():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mark;
function set_mark(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mark = v;
var m(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_m():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.m;
function set_m(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.m = v;
var mc(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_mc():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mc;
function set_mc(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mc = v;
var me(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_me():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.me;
function set_me(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.me = v;
var mn(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_mn():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mn;
function set_mn(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mn = v;
var nl(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_nl():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nl;
function set_nl(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nl = v;
var no(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_no():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.no;
function set_no(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.no = v;
var number(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_number():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.number;
function set_number(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.number = v;
var n(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_n():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.n;
function set_n(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.n = v;
var other(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_other():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other;
function set_other(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other = v;
var c(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_c():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.c;
function set_c(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.c = v;
var pc(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_pc():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pc;
function set_pc(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pc = v;
var pd(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_pd():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pd;
function set_pd(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pd = v;
var pe(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_pe():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pe;
function set_pe(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pe = v;
var pf(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_pf():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pf;
function set_pf(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pf = v;
var pi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_pi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pi;
function set_pi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pi = v;
var po(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_po():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.po;
function set_po(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.po = v;
var ps(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_ps():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ps;
function set_ps(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ps = v;
var punct(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_punct():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.punct;
function set_punct(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.punct = v;
var p(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_p():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.p;
function set_p(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.p = v;
var sc(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_sc():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sc;
function set_sc(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sc = v;
var sk(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_sk():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sk;
function set_sk(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sk = v;
var sm(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_sm():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sm;
function set_sm(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sm = v;
var so(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_so():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.so;
function set_so(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.so = v;
var space(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_space():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.space;
function set_space(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.space = v;
var z(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_z():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.z;
function set_z(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.z = v;
var symbol(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_symbol():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.symbol;
function set_symbol(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.symbol = v;
var s(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_s():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.s;
function set_s(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.s = v;
var printRanges(get, set) : Array<stdgo._internal.unicode.Unicode.RangeTable>;
function get_printRanges():Array<stdgo._internal.unicode.Unicode.RangeTable> return stdgo._internal.unicode.Unicode.printRanges;
function set_printRanges(v:Array<stdgo._internal.unicode.Unicode.RangeTable>):Array<stdgo._internal.unicode.Unicode.RangeTable> return stdgo._internal.unicode.Unicode.printRanges = v;
var title(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_title():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.title;
function set_title(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.title = v;
var lt(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_lt():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lt;
function set_lt(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lt = v;
var upper(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_upper():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.upper;
function set_upper(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.upper = v;
var lu(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_lu():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lu;
function set_lu(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lu = v;
var zl(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_zl():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.zl;
function set_zl(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.zl = v;
var zp(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_zp():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.zp;
function set_zp(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.zp = v;
var zs(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_zs():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.zs;
function set_zs(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.zs = v;
var graphicRanges(get, set) : Array<stdgo._internal.unicode.Unicode.RangeTable>;
function get_graphicRanges():Array<stdgo._internal.unicode.Unicode.RangeTable> return stdgo._internal.unicode.Unicode.graphicRanges;
function set_graphicRanges(v:Array<stdgo._internal.unicode.Unicode.RangeTable>):Array<stdgo._internal.unicode.Unicode.RangeTable> return stdgo._internal.unicode.Unicode.graphicRanges = v;
var categories(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>;
function get_categories():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.categories;
function set_categories(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.categories = v;
var adlam(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_adlam():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.adlam;
function set_adlam(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.adlam = v;
var ahom(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_ahom():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ahom;
function set_ahom(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ahom = v;
var anatolian_Hieroglyphs(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_anatolian_Hieroglyphs():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.anatolian_Hieroglyphs;
function set_anatolian_Hieroglyphs(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.anatolian_Hieroglyphs = v;
var arabic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_arabic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.arabic;
function set_arabic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.arabic = v;
var armenian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_armenian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.armenian;
function set_armenian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.armenian = v;
var avestan(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_avestan():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.avestan;
function set_avestan(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.avestan = v;
var balinese(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_balinese():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.balinese;
function set_balinese(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.balinese = v;
var bamum(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_bamum():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bamum;
function set_bamum(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bamum = v;
var bassa_Vah(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_bassa_Vah():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bassa_Vah;
function set_bassa_Vah(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bassa_Vah = v;
var batak(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_batak():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.batak;
function set_batak(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.batak = v;
var bengali(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_bengali():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bengali;
function set_bengali(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bengali = v;
var bhaiksuki(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_bhaiksuki():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bhaiksuki;
function set_bhaiksuki(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bhaiksuki = v;
var bopomofo(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_bopomofo():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bopomofo;
function set_bopomofo(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bopomofo = v;
var brahmi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_brahmi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.brahmi;
function set_brahmi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.brahmi = v;
var braille(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_braille():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.braille;
function set_braille(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.braille = v;
var buginese(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_buginese():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.buginese;
function set_buginese(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.buginese = v;
var buhid(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_buhid():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.buhid;
function set_buhid(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.buhid = v;
var canadian_Aboriginal(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_canadian_Aboriginal():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.canadian_Aboriginal;
function set_canadian_Aboriginal(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.canadian_Aboriginal = v;
var carian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_carian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.carian;
function set_carian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.carian = v;
var caucasian_Albanian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_caucasian_Albanian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.caucasian_Albanian;
function set_caucasian_Albanian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.caucasian_Albanian = v;
var chakma(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_chakma():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.chakma;
function set_chakma(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.chakma = v;
var cham(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_cham():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cham;
function set_cham(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cham = v;
var cherokee(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_cherokee():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cherokee;
function set_cherokee(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cherokee = v;
var chorasmian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_chorasmian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.chorasmian;
function set_chorasmian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.chorasmian = v;
var common(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_common():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.common;
function set_common(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.common = v;
var coptic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_coptic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.coptic;
function set_coptic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.coptic = v;
var cuneiform(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_cuneiform():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cuneiform;
function set_cuneiform(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cuneiform = v;
var cypriot(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_cypriot():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cypriot;
function set_cypriot(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cypriot = v;
var cypro_Minoan(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_cypro_Minoan():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cypro_Minoan;
function set_cypro_Minoan(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cypro_Minoan = v;
var cyrillic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_cyrillic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cyrillic;
function set_cyrillic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.cyrillic = v;
var deseret(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_deseret():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.deseret;
function set_deseret(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.deseret = v;
var devanagari(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_devanagari():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.devanagari;
function set_devanagari(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.devanagari = v;
var dives_Akuru(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_dives_Akuru():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.dives_Akuru;
function set_dives_Akuru(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.dives_Akuru = v;
var dogra(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_dogra():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.dogra;
function set_dogra(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.dogra = v;
var duployan(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_duployan():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.duployan;
function set_duployan(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.duployan = v;
var egyptian_Hieroglyphs(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_egyptian_Hieroglyphs():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.egyptian_Hieroglyphs;
function set_egyptian_Hieroglyphs(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.egyptian_Hieroglyphs = v;
var elbasan(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_elbasan():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.elbasan;
function set_elbasan(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.elbasan = v;
var elymaic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_elymaic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.elymaic;
function set_elymaic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.elymaic = v;
var ethiopic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_ethiopic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ethiopic;
function set_ethiopic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ethiopic = v;
var georgian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_georgian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.georgian;
function set_georgian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.georgian = v;
var glagolitic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_glagolitic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.glagolitic;
function set_glagolitic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.glagolitic = v;
var gothic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_gothic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.gothic;
function set_gothic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.gothic = v;
var grantha(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_grantha():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.grantha;
function set_grantha(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.grantha = v;
var greek(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_greek():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.greek;
function set_greek(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.greek = v;
var gujarati(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_gujarati():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.gujarati;
function set_gujarati(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.gujarati = v;
var gunjala_Gondi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_gunjala_Gondi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.gunjala_Gondi;
function set_gunjala_Gondi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.gunjala_Gondi = v;
var gurmukhi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_gurmukhi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.gurmukhi;
function set_gurmukhi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.gurmukhi = v;
var han(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_han():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.han;
function set_han(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.han = v;
var hangul(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_hangul():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hangul;
function set_hangul(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hangul = v;
var hanifi_Rohingya(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_hanifi_Rohingya():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hanifi_Rohingya;
function set_hanifi_Rohingya(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hanifi_Rohingya = v;
var hanunoo(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_hanunoo():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hanunoo;
function set_hanunoo(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hanunoo = v;
var hatran(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_hatran():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hatran;
function set_hatran(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hatran = v;
var hebrew(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_hebrew():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hebrew;
function set_hebrew(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hebrew = v;
var hiragana(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_hiragana():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hiragana;
function set_hiragana(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hiragana = v;
var imperial_Aramaic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_imperial_Aramaic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.imperial_Aramaic;
function set_imperial_Aramaic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.imperial_Aramaic = v;
var inherited(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_inherited():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.inherited;
function set_inherited(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.inherited = v;
var inscriptional_Pahlavi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_inscriptional_Pahlavi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.inscriptional_Pahlavi;
function set_inscriptional_Pahlavi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.inscriptional_Pahlavi = v;
var inscriptional_Parthian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_inscriptional_Parthian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.inscriptional_Parthian;
function set_inscriptional_Parthian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.inscriptional_Parthian = v;
var javanese(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_javanese():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.javanese;
function set_javanese(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.javanese = v;
var kaithi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_kaithi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kaithi;
function set_kaithi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kaithi = v;
var kannada(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_kannada():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kannada;
function set_kannada(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kannada = v;
var katakana(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_katakana():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.katakana;
function set_katakana(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.katakana = v;
var kawi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_kawi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kawi;
function set_kawi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kawi = v;
var kayah_Li(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_kayah_Li():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kayah_Li;
function set_kayah_Li(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kayah_Li = v;
var kharoshthi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_kharoshthi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kharoshthi;
function set_kharoshthi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.kharoshthi = v;
var khitan_Small_Script(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_khitan_Small_Script():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.khitan_Small_Script;
function set_khitan_Small_Script(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.khitan_Small_Script = v;
var khmer(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_khmer():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.khmer;
function set_khmer(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.khmer = v;
var khojki(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_khojki():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.khojki;
function set_khojki(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.khojki = v;
var khudawadi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_khudawadi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.khudawadi;
function set_khudawadi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.khudawadi = v;
var lao(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_lao():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lao;
function set_lao(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lao = v;
var latin(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_latin():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.latin;
function set_latin(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.latin = v;
var lepcha(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_lepcha():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lepcha;
function set_lepcha(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lepcha = v;
var limbu(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_limbu():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.limbu;
function set_limbu(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.limbu = v;
var linear_A(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_linear_A():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.linear_A;
function set_linear_A(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.linear_A = v;
var linear_B(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_linear_B():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.linear_B;
function set_linear_B(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.linear_B = v;
var lisu(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_lisu():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lisu;
function set_lisu(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lisu = v;
var lycian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_lycian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lycian;
function set_lycian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lycian = v;
var lydian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_lydian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lydian;
function set_lydian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.lydian = v;
var mahajani(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_mahajani():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mahajani;
function set_mahajani(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mahajani = v;
var makasar(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_makasar():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.makasar;
function set_makasar(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.makasar = v;
var malayalam(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_malayalam():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.malayalam;
function set_malayalam(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.malayalam = v;
var mandaic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_mandaic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mandaic;
function set_mandaic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mandaic = v;
var manichaean(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_manichaean():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.manichaean;
function set_manichaean(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.manichaean = v;
var marchen(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_marchen():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.marchen;
function set_marchen(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.marchen = v;
var masaram_Gondi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_masaram_Gondi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.masaram_Gondi;
function set_masaram_Gondi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.masaram_Gondi = v;
var medefaidrin(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_medefaidrin():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.medefaidrin;
function set_medefaidrin(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.medefaidrin = v;
var meetei_Mayek(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_meetei_Mayek():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.meetei_Mayek;
function set_meetei_Mayek(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.meetei_Mayek = v;
var mende_Kikakui(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_mende_Kikakui():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mende_Kikakui;
function set_mende_Kikakui(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mende_Kikakui = v;
var meroitic_Cursive(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_meroitic_Cursive():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.meroitic_Cursive;
function set_meroitic_Cursive(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.meroitic_Cursive = v;
var meroitic_Hieroglyphs(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_meroitic_Hieroglyphs():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.meroitic_Hieroglyphs;
function set_meroitic_Hieroglyphs(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.meroitic_Hieroglyphs = v;
var miao(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_miao():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.miao;
function set_miao(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.miao = v;
var modi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_modi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.modi;
function set_modi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.modi = v;
var mongolian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_mongolian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mongolian;
function set_mongolian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mongolian = v;
var mro(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_mro():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mro;
function set_mro(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.mro = v;
var multani(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_multani():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.multani;
function set_multani(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.multani = v;
var myanmar(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_myanmar():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.myanmar;
function set_myanmar(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.myanmar = v;
var nabataean(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_nabataean():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nabataean;
function set_nabataean(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nabataean = v;
var nag_Mundari(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_nag_Mundari():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nag_Mundari;
function set_nag_Mundari(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nag_Mundari = v;
var nandinagari(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_nandinagari():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nandinagari;
function set_nandinagari(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nandinagari = v;
var new_Tai_Lue(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_new_Tai_Lue():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.new_Tai_Lue;
function set_new_Tai_Lue(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.new_Tai_Lue = v;
var newa(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_newa():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.newa;
function set_newa(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.newa = v;
var nko(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_nko():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nko;
function set_nko(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nko = v;
var nushu(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_nushu():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nushu;
function set_nushu(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nushu = v;
var nyiakeng_Puachue_Hmong(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_nyiakeng_Puachue_Hmong():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nyiakeng_Puachue_Hmong;
function set_nyiakeng_Puachue_Hmong(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.nyiakeng_Puachue_Hmong = v;
var ogham(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_ogham():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ogham;
function set_ogham(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ogham = v;
var ol_Chiki(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_ol_Chiki():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ol_Chiki;
function set_ol_Chiki(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ol_Chiki = v;
var old_Hungarian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_old_Hungarian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Hungarian;
function set_old_Hungarian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Hungarian = v;
var old_Italic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_old_Italic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Italic;
function set_old_Italic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Italic = v;
var old_North_Arabian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_old_North_Arabian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_North_Arabian;
function set_old_North_Arabian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_North_Arabian = v;
var old_Permic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_old_Permic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Permic;
function set_old_Permic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Permic = v;
var old_Persian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_old_Persian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Persian;
function set_old_Persian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Persian = v;
var old_Sogdian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_old_Sogdian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Sogdian;
function set_old_Sogdian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Sogdian = v;
var old_South_Arabian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_old_South_Arabian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_South_Arabian;
function set_old_South_Arabian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_South_Arabian = v;
var old_Turkic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_old_Turkic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Turkic;
function set_old_Turkic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Turkic = v;
var old_Uyghur(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_old_Uyghur():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Uyghur;
function set_old_Uyghur(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.old_Uyghur = v;
var oriya(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_oriya():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.oriya;
function set_oriya(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.oriya = v;
var osage(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_osage():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.osage;
function set_osage(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.osage = v;
var osmanya(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_osmanya():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.osmanya;
function set_osmanya(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.osmanya = v;
var pahawh_Hmong(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_pahawh_Hmong():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pahawh_Hmong;
function set_pahawh_Hmong(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pahawh_Hmong = v;
var palmyrene(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_palmyrene():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.palmyrene;
function set_palmyrene(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.palmyrene = v;
var pau_Cin_Hau(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_pau_Cin_Hau():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pau_Cin_Hau;
function set_pau_Cin_Hau(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pau_Cin_Hau = v;
var phags_Pa(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_phags_Pa():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.phags_Pa;
function set_phags_Pa(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.phags_Pa = v;
var phoenician(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_phoenician():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.phoenician;
function set_phoenician(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.phoenician = v;
var psalter_Pahlavi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_psalter_Pahlavi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.psalter_Pahlavi;
function set_psalter_Pahlavi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.psalter_Pahlavi = v;
var rejang(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_rejang():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.rejang;
function set_rejang(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.rejang = v;
var runic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_runic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.runic;
function set_runic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.runic = v;
var samaritan(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_samaritan():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.samaritan;
function set_samaritan(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.samaritan = v;
var saurashtra(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_saurashtra():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.saurashtra;
function set_saurashtra(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.saurashtra = v;
var sharada(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_sharada():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sharada;
function set_sharada(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sharada = v;
var shavian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_shavian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.shavian;
function set_shavian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.shavian = v;
var siddham(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_siddham():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.siddham;
function set_siddham(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.siddham = v;
var signWriting(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_signWriting():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.signWriting;
function set_signWriting(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.signWriting = v;
var sinhala(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_sinhala():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sinhala;
function set_sinhala(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sinhala = v;
var sogdian(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_sogdian():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sogdian;
function set_sogdian(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sogdian = v;
var sora_Sompeng(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_sora_Sompeng():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sora_Sompeng;
function set_sora_Sompeng(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sora_Sompeng = v;
var soyombo(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_soyombo():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.soyombo;
function set_soyombo(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.soyombo = v;
var sundanese(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_sundanese():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sundanese;
function set_sundanese(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sundanese = v;
var syloti_Nagri(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_syloti_Nagri():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.syloti_Nagri;
function set_syloti_Nagri(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.syloti_Nagri = v;
var syriac(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_syriac():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.syriac;
function set_syriac(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.syriac = v;
var tagalog(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_tagalog():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tagalog;
function set_tagalog(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tagalog = v;
var tagbanwa(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_tagbanwa():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tagbanwa;
function set_tagbanwa(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tagbanwa = v;
var tai_Le(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_tai_Le():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tai_Le;
function set_tai_Le(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tai_Le = v;
var tai_Tham(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_tai_Tham():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tai_Tham;
function set_tai_Tham(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tai_Tham = v;
var tai_Viet(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_tai_Viet():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tai_Viet;
function set_tai_Viet(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tai_Viet = v;
var takri(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_takri():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.takri;
function set_takri(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.takri = v;
var tamil(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_tamil():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tamil;
function set_tamil(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tamil = v;
var tangsa(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_tangsa():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tangsa;
function set_tangsa(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tangsa = v;
var tangut(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_tangut():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tangut;
function set_tangut(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tangut = v;
var telugu(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_telugu():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.telugu;
function set_telugu(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.telugu = v;
var thaana(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_thaana():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.thaana;
function set_thaana(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.thaana = v;
var thai(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_thai():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.thai;
function set_thai(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.thai = v;
var tibetan(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_tibetan():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tibetan;
function set_tibetan(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tibetan = v;
var tifinagh(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_tifinagh():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tifinagh;
function set_tifinagh(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tifinagh = v;
var tirhuta(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_tirhuta():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tirhuta;
function set_tirhuta(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.tirhuta = v;
var toto(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_toto():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.toto;
function set_toto(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.toto = v;
var ugaritic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_ugaritic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ugaritic;
function set_ugaritic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ugaritic = v;
var vai(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_vai():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.vai;
function set_vai(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.vai = v;
var vithkuqi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_vithkuqi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.vithkuqi;
function set_vithkuqi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.vithkuqi = v;
var wancho(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_wancho():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.wancho;
function set_wancho(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.wancho = v;
var warang_Citi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_warang_Citi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.warang_Citi;
function set_warang_Citi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.warang_Citi = v;
var yezidi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_yezidi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.yezidi;
function set_yezidi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.yezidi = v;
var yi(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_yi():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.yi;
function set_yi(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.yi = v;
var zanabazar_Square(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_zanabazar_Square():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.zanabazar_Square;
function set_zanabazar_Square(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.zanabazar_Square = v;
var scripts(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>;
function get_scripts():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.scripts;
function set_scripts(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.scripts = v;
var ascii_Hex_Digit(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_ascii_Hex_Digit():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ascii_Hex_Digit;
function set_ascii_Hex_Digit(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ascii_Hex_Digit = v;
var bidi_Control(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_bidi_Control():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bidi_Control;
function set_bidi_Control(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.bidi_Control = v;
var dash(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_dash():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.dash;
function set_dash(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.dash = v;
var deprecated(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_deprecated():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.deprecated;
function set_deprecated(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.deprecated = v;
var diacritic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_diacritic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.diacritic;
function set_diacritic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.diacritic = v;
var extender(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_extender():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.extender;
function set_extender(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.extender = v;
var hex_Digit(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_hex_Digit():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hex_Digit;
function set_hex_Digit(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hex_Digit = v;
var hyphen(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_hyphen():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hyphen;
function set_hyphen(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.hyphen = v;
var ids_Binary_Operator(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_ids_Binary_Operator():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ids_Binary_Operator;
function set_ids_Binary_Operator(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ids_Binary_Operator = v;
var ids_Trinary_Operator(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_ids_Trinary_Operator():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ids_Trinary_Operator;
function set_ids_Trinary_Operator(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ids_Trinary_Operator = v;
var ideographic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_ideographic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ideographic;
function set_ideographic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.ideographic = v;
var join_Control(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_join_Control():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.join_Control;
function set_join_Control(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.join_Control = v;
var logical_Order_Exception(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_logical_Order_Exception():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.logical_Order_Exception;
function set_logical_Order_Exception(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.logical_Order_Exception = v;
var noncharacter_Code_Point(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_noncharacter_Code_Point():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.noncharacter_Code_Point;
function set_noncharacter_Code_Point(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.noncharacter_Code_Point = v;
var other_Alphabetic(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_other_Alphabetic():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Alphabetic;
function set_other_Alphabetic(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Alphabetic = v;
var other_Default_Ignorable_Code_Point(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_other_Default_Ignorable_Code_Point():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Default_Ignorable_Code_Point;
function set_other_Default_Ignorable_Code_Point(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Default_Ignorable_Code_Point = v;
var other_Grapheme_Extend(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_other_Grapheme_Extend():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Grapheme_Extend;
function set_other_Grapheme_Extend(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Grapheme_Extend = v;
var other_ID_Continue(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_other_ID_Continue():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_ID_Continue;
function set_other_ID_Continue(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_ID_Continue = v;
var other_ID_Start(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_other_ID_Start():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_ID_Start;
function set_other_ID_Start(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_ID_Start = v;
var other_Lowercase(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_other_Lowercase():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Lowercase;
function set_other_Lowercase(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Lowercase = v;
var other_Math(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_other_Math():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Math;
function set_other_Math(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Math = v;
var other_Uppercase(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_other_Uppercase():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Uppercase;
function set_other_Uppercase(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.other_Uppercase = v;
var pattern_Syntax(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_pattern_Syntax():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pattern_Syntax;
function set_pattern_Syntax(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pattern_Syntax = v;
var pattern_White_Space(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_pattern_White_Space():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pattern_White_Space;
function set_pattern_White_Space(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.pattern_White_Space = v;
var prepended_Concatenation_Mark(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_prepended_Concatenation_Mark():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.prepended_Concatenation_Mark;
function set_prepended_Concatenation_Mark(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.prepended_Concatenation_Mark = v;
var quotation_Mark(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_quotation_Mark():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.quotation_Mark;
function set_quotation_Mark(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.quotation_Mark = v;
var radical(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_radical():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.radical;
function set_radical(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.radical = v;
var regional_Indicator(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_regional_Indicator():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.regional_Indicator;
function set_regional_Indicator(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.regional_Indicator = v;
var sterm(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_sterm():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sterm;
function set_sterm(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sterm = v;
var sentence_Terminal(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_sentence_Terminal():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sentence_Terminal;
function set_sentence_Terminal(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.sentence_Terminal = v;
var soft_Dotted(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_soft_Dotted():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.soft_Dotted;
function set_soft_Dotted(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.soft_Dotted = v;
var terminal_Punctuation(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_terminal_Punctuation():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.terminal_Punctuation;
function set_terminal_Punctuation(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.terminal_Punctuation = v;
var unified_Ideograph(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_unified_Ideograph():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.unified_Ideograph;
function set_unified_Ideograph(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.unified_Ideograph = v;
var variation_Selector(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_variation_Selector():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.variation_Selector;
function set_variation_Selector(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.variation_Selector = v;
var white_Space(get, set) : stdgo._internal.unicode.Unicode.RangeTable;
function get_white_Space():stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.white_Space;
function set_white_Space(v:stdgo._internal.unicode.Unicode.RangeTable):stdgo._internal.unicode.Unicode.RangeTable return stdgo._internal.unicode.Unicode.white_Space = v;
var properties(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>;
function get_properties():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.properties;
function set_properties(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.properties = v;
var caseRanges(get, set) : Array<stdgo._internal.unicode.Unicode.CaseRange>;
function get_caseRanges():Array<stdgo._internal.unicode.Unicode.CaseRange> return stdgo._internal.unicode.Unicode.caseRanges;
function set_caseRanges(v:Array<stdgo._internal.unicode.Unicode.CaseRange>):Array<stdgo._internal.unicode.Unicode.CaseRange> return stdgo._internal.unicode.Unicode.caseRanges = v;
var foldCategory(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>;
function get_foldCategory():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.foldCategory;
function set_foldCategory(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.foldCategory = v;
var foldScript(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>;
function get_foldScript():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.foldScript;
function set_foldScript(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>> return stdgo._internal.unicode.Unicode.foldScript = v;
@:invalid typedef RangeTable = Dynamic;
@:invalid typedef Range16 = Dynamic;
@:invalid typedef Range32 = Dynamic;
@:invalid typedef CaseRange = Dynamic;
@:invalid typedef T_foldPair = Dynamic;
typedef SpecialCase = stdgo._internal.unicode.Unicode.SpecialCase;
typedef T_d = stdgo._internal.unicode.Unicode.T_d;
/**
    // IsDigit reports whether the rune is a decimal digit.
**/
inline function isDigit(r:Int):Bool throw "not implemented";
/**
    // IsGraphic reports whether the rune is defined as a Graphic by Unicode.
    // Such characters include letters, marks, numbers, punctuation, symbols, and
    // spaces, from categories L, M, N, P, S, Zs.
**/
inline function isGraphic(r:Int):Bool throw "not implemented";
/**
    // IsPrint reports whether the rune is defined as printable by Go. Such
    // characters include letters, marks, numbers, punctuation, symbols, and the
    // ASCII space character, from categories L, M, N, P, S and the ASCII space
    // character. This categorization is the same as IsGraphic except that the
    // only spacing character is ASCII space, U+0020.
**/
inline function isPrint(r:Int):Bool throw "not implemented";
/**
    // IsOneOf reports whether the rune is a member of one of the ranges.
    // The function "In" provides a nicer signature and should be used in preference to IsOneOf.
**/
inline function isOneOf(ranges:Array<RangeTable>, r:Int):Bool throw "not implemented";
/**
    // In reports whether the rune is a member of one of the ranges.
**/
inline function in_(r:Int, ranges:haxe.Rest<stdgo.Ref<RangeTable>>):Bool throw "not implemented";
/**
    // IsControl reports whether the rune is a control character.
    // The C (Other) Unicode category includes more code points
    // such as surrogates; use Is(C, r) to test for them.
**/
inline function isControl(r:Int):Bool throw "not implemented";
/**
    // IsLetter reports whether the rune is a letter (category L).
**/
inline function isLetter(r:Int):Bool throw "not implemented";
/**
    // IsMark reports whether the rune is a mark character (category M).
**/
inline function isMark(r:Int):Bool throw "not implemented";
/**
    // IsNumber reports whether the rune is a number (category N).
**/
inline function isNumber(r:Int):Bool throw "not implemented";
/**
    // IsPunct reports whether the rune is a Unicode punctuation character
    // (category P).
**/
inline function isPunct(r:Int):Bool throw "not implemented";
/**
    // IsSpace reports whether the rune is a space character as defined
    // by Unicode's White Space property; in the Latin-1 space
    // this is
    //
    //	'\t', '\n', '\v', '\f', '\r', ' ', U+0085 (NEL), U+00A0 (NBSP).
    //
    // Other definitions of spacing characters are set by category
    // Z and property Pattern_White_Space.
**/
inline function isSpace(r:Int):Bool throw "not implemented";
/**
    // IsSymbol reports whether the rune is a symbolic character.
**/
inline function isSymbol(r:Int):Bool throw "not implemented";
/**
    // Is reports whether the rune is in the specified table of ranges.
**/
inline function is_(rangeTab:RangeTable, r:Int):Bool throw "not implemented";
/**
    // IsUpper reports whether the rune is an upper case letter.
**/
inline function isUpper(r:Int):Bool throw "not implemented";
/**
    // IsLower reports whether the rune is a lower case letter.
**/
inline function isLower(r:Int):Bool throw "not implemented";
/**
    // IsTitle reports whether the rune is a title case letter.
**/
inline function isTitle(r:Int):Bool throw "not implemented";
/**
    // To maps the rune to the specified case: UpperCase, LowerCase, or TitleCase.
**/
inline function to(_case:Int, r:Int):Int throw "not implemented";
/**
    // ToUpper maps the rune to upper case.
**/
inline function toUpper(r:Int):Int throw "not implemented";
/**
    // ToLower maps the rune to lower case.
**/
inline function toLower(r:Int):Int throw "not implemented";
/**
    // ToTitle maps the rune to title case.
**/
inline function toTitle(r:Int):Int throw "not implemented";
/**
    // SimpleFold iterates over Unicode code points equivalent under
    // the Unicode-defined simple case folding. Among the code points
    // equivalent to rune (including rune itself), SimpleFold returns the
    // smallest rune > r if one exists, or else the smallest rune >= 0.
    // If r is not a valid Unicode code point, SimpleFold(r) returns r.
    //
    // For example:
    //
    //	SimpleFold('A') = 'a'
    //	SimpleFold('a') = 'A'
    //
    //	SimpleFold('K') = 'k'
    //	SimpleFold('k') = '\u212A' (Kelvin symbol, K)
    //	SimpleFold('\u212A') = 'K'
    //
    //	SimpleFold('1') = '1'
    //
    //	SimpleFold(-2) = -2
**/
inline function simpleFold(r:Int):Int throw "not implemented";
@:invalid typedef SpecialCase_asInterface = Dynamic;
@:invalid typedef SpecialCase_static_extension = Dynamic;
